using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Policy;
using System.Xml.Linq;
using System.CodeDom;
using System.Text.RegularExpressions;
using System.Windows;
using System.Data.SqlTypes;

namespace _4312
{
    public partial class final : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=LAPTOP-GRG49QT0\SQLEXPRESS;Initial Catalog=4312;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
             
               
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\sithi\source\repos\4312\4312\App_Data\sq.mdf; Integrated Security = True");
                SqlCommand cmd = new SqlCommand("select * from tbl_country", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ddcountry.DataSource = dt;
                ddcountry.DataBind();

            }

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)   
        {
            ddstate.Items.Clear();
            ddstate.Items.Add("Select State");

          
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\sithi\source\repos\4312\4312\App_Data\sq.mdf; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("select * from tbl_state where country_id=" + ddcountry.SelectedItem.Value, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ddstate.DataSource = dt;
            ddstate.DataBind();
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddcity.Items.Clear();
            ddcity.Items.Add("Select City");

            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\sithi\source\repos\4312\4312\App_Data\sq.mdf; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("select * from tbl_city where state_id=" + ddstate.SelectedItem.Value, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            ddcity.DataSource = dt;
            ddcity.DataBind();

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
           
            txtreg.Text = txtvendor.Text = txtadd1.Text = txtadd2.Text = txtadd1.Text = txtpincode.Text = txttelephone.Text = txtcp1.Text = txtcp2.Text = txtpemail.Text = txtsemail1.Text = txtsemail3.Text = txtMSME.Text = txtdate1.Text = txtitr.Text = txtIntro.Text = txtList.Text = txtvendorgrp.Text = txtbankname.Text = txtbranchname.Text = txtbankcity.Text = txtbankactno.Text = txtifsccode.Text = txtwebaddress.Text = txtprimarymobileno.Text = txtsemail2.Text = txtsemail4.Text = txtmsmetype.Text = txtdate2.Text = "";
            lblSuccessMessage.Text = lblErrorMesssage.Text = "";
            btnSave.Text = "Save";
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Regex Emailexpression = new Regex(@"^([a-zA-Z0-9_\-])([a-zA-Z0-9_\-\.]*)@(\[((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9][0-9])\.){3}|((([a-zA-Z0-9\-]+)\.)+))([a-zA-Z]{2,}|(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\])$");
            Regex Phonenumber = new Regex(@"^\+(?:[0-9] ?){6,14}[0-9]$");
            Regex Telephone = new Regex(@"^\+?(\d{1,3})?(\d{3})?(\d{4})?(\d{4})?$");
            byte[] MSMECertificate;

            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                MSMECertificate = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }
            byte[] VendorDeclaration;
            using (BinaryReader br = new BinaryReader(FileUpload2.PostedFile.InputStream))
            {
                VendorDeclaration = br.ReadBytes(FileUpload2.PostedFile.ContentLength);
            }
            byte[] pan;
            using (BinaryReader br = new BinaryReader(FileUpload3.PostedFile.InputStream))
            {
                pan = br.ReadBytes(FileUpload3.PostedFile.ContentLength);
            }
            byte[] GST;
            using (BinaryReader br = new BinaryReader(FileUpload4.PostedFile.InputStream))
            {
                GST = br.ReadBytes(FileUpload4.PostedFile.ContentLength);
            }
            byte[] Tanno;
            using (BinaryReader br = new BinaryReader(FileUpload5.PostedFile.InputStream))
            {
                Tanno = br.ReadBytes(FileUpload5.PostedFile.ContentLength);
            }




            if (txtprimarymobileno.Text.Trim() != string.Empty)
            {
                if (!Phonenumber.IsMatch(txtprimarymobileno.Text.Trim()))
                {
                    MessageBox.Show("Should be of the format '+ 91 xxxx - nnnnnn'", "Invalid Phone number");

                    txtprimarymobileno.Focus();
                    return;



                }

            }




            // Get the from and to dates from the textboxe
            DateTime fromDate = DateTime.Parse(txtdate1.Text);
            DateTime toDate = DateTime.Parse(txtdate2.Text);

            // Check if the from date is greater than the to date
            if (fromDate > toDate)
            {
                MessageBox.Show("To date should be greater than From date");
                return;
            }





            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("VENDORCREATE", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
           
            sqlCmd.Parameters.AddWithValue("@RegNo", txtreg.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@VendorType", ddvendor.SelectedItem.Value);
            sqlCmd.Parameters.AddWithValue("@VendorName", txtvendor.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Address1", txtadd1.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Address2", txtadd2.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Country", ddcountry.SelectedItem.Value);
            sqlCmd.Parameters.AddWithValue("@State", ddstate.SelectedItem.Value);
            sqlCmd.Parameters.AddWithValue("@City", ddcity.SelectedItem.Value);
            sqlCmd.Parameters.AddWithValue("@Pincode", txtpincode.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Telephone", txttelephone.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@ContactP1", txtcp1.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@ContactP2", txtcp2.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@PrimaryEmail", txtpemail.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@SecondaryEmaiID1", txtsemail1.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@SecondaryEmaiID3", txtsemail3.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@MSME", txtMSME.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@MSMEdateF", txtdate1.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@ITR", txtitr.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Intro", txtIntro.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Details", txtList.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@RegType", txtreg.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@VendorGrp", txtvendorgrp.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@BankName", txtbankname.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@BranchName", txtbranchname.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@BankCity", txtbankcity.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@BankActNo", txtbankactno.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@IFSCcode", txtifsccode.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@WebAddress", txtwebaddress.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@PrimaryMobileNo", txtprimarymobileno.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@SecondaryEmaiID2", txtsemail2.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@SecondaryEmaiID4", txtsemail4.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@MSMEType", txtmsmetype.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@PAN", pan);
            sqlCmd.Parameters.AddWithValue("@GST", GST);
            sqlCmd.Parameters.AddWithValue("@TanNo", Tanno);
            sqlCmd.Parameters.AddWithValue("@VendorDeclaration", VendorDeclaration);
            sqlCmd.Parameters.AddWithValue("@MSMECertificate", MSMECertificate);
            sqlCmd.Parameters.AddWithValue("@MSMEDateTo", txtdate2.Text.Trim());


            int rowsCount = sqlCmd.ExecuteNonQuery();
            if (rowsCount > 0)
            {
                Response.Write("<script>alert('Data has been submitted successfully') </script>");
            }
            else
            {
                MessageBox.Show("contact with your IT Department");
            }
            sqlCon.Close();
        }





            protected void txtIntro_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtList_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtdate1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtpemail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}