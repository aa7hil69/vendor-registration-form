<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="final.aspx.cs" Inherits="_4312.final" %>

<!DOCTYPE html>

<head runat="server">
     <section id="main-content" >
  <section id="wrapper">
      <div class="row">
          <div class="col-lg-12">
              <section class="panel">
                  <header class="panel-heading">
                      <div class="col-md-4 col-md-offset-4">
                          <h1 style="font-family:'Times New Roman', Times, serif; font-size: xx-large;";>Vendor Registration</h1>
                             </div>
                      </header>
                  </section>
              </div>
          </div>
      </section>
        </section>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 165%;
            margin-left: 0px;
        }
        .auto-style9 {
            height: 27px;
            width: 393px;
        }
        .auto-style12 {
            height: 28px;
            width: 393px;
        }
        .auto-style13 {
            width: 163px;
        }
        .auto-style14 {
            height: 28px;
            width: 163px;
        }
        .auto-style15 {
            height: 27px;
            width: 163px;
        }
        .auto-style16 {
            width: 393px;
        }
        .auto-style19 {
            width: 163px;
            height: 26px;
        }
        .auto-style20 {
            width: 393px;
            height: 26px;
        }
        .auto-style33 {
            height: 28px;
            width: 301px;
        }
        .auto-style34 {
            height: 27px;
            width: 301px;
        }
        .auto-style35 {
            width: 301px;
            height: 26px;
        }
        .auto-style36 {
            width: 301px;
            height: 29px;
        }
        .auto-style38 {
            width: 163px;
            height: 29px;
        }
        .auto-style39 {
            width: 393px;
            height: 29px;
        }
        .auto-style41 {
            width: 301px;
            height: 124px;
        }
        .auto-style42 {
            height: 124px;
            margin-left: 40px;
            width: 140px;
        }
        .auto-style43 {
            width: 163px;
            height: 124px;
        }
        .auto-style44 {
            width: 393px;
            height: 124px;
        }
        .auto-style45 {
            margin-left: 67px;
        }
        .auto-style46 {
            width: 301px;
            height: 48px;
        }
        .auto-style48 {
            width: 163px;
            height: 48px;
        }
        .auto-style49 {
            width: 393px;
            height: 48px;
        }
        .auto-style50 {
            width: 140px;
            height: 29px;
        }
        .auto-style51 {
            width: 140px;
        }
        .auto-style52 {
            height: 28px;
            width: 140px;
        }
        .auto-style53 {
            height: 27px;
            width: 140px;
        }
        .auto-style54 {
            width: 140px;
            height: 26px;
        }
        .auto-style55 {
            width: 140px;
            height: 48px;
        }
        .auto-style56 {
            margin-left: 0px;
        }
        .auto-style57 {
            width: 301px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">  
           <table class="auto-style2">
       
    
        <tr>  
            <td class="auto-style57">  
             
                    <tr>
                        <td class="auto-style36">Registration No</td>
                        <td class="auto-style50">
                            <asp:TextBox ID="txtreg" runat="server" Required="True"></asp:TextBox>
                        </td>
                        <td class="auto-style38">Registration Type</td>
                        <td class="auto-style39">
                            <asp:DropDownList ID="DropDownList5" runat="server" Width="162px">
                                <asp:ListItem Selected="True" Value="0" Text="--Select--"></asp:ListItem>
                                <asp:ListItem>New vendor registration</asp:ListItem>
                                <asp:ListItem>Existing vendor registration</asp:ListItem>
                                <asp:ListItem>Pre-qualification registration</asp:ListItem>
                                <asp:ListItem>Joint venture registration</asp:ListItem>
                                <asp:ListItem>Subcontractor registration</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style33">Type of Vendor</td>
                        <td class="auto-style52">  
                            <asp:data ID="ddvendor" runat="server" Height="19px">
                                <asp:ListItem Selected="True" Value="0" Text="--Select--"></asp:ListItem>
                                <asp:ListItem>Manufacturer</asp:ListItem>
                                <asp:ListItem>Service Provider</asp:ListItem>
                                <asp:ListItem>Trader</asp:ListItem>
                                <asp:ListItem>Dealer/Distributor</asp:ListItem>
                            </asp:data>
                        </td>
                        <td class="auto-style14">Vendor Group</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txtvendorgrp" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style36"></td>
                        <td class="auto-style50"></td>
                        <td class="auto-style38"></td>
                        <td class="auto-style39"></td>
                    </tr>
                    <tr>
                        <td class="auto-style34">Vendor Name</td>
                        <td class="auto-style53">  
                            <asp:TextBox ID="txtvendor" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style15">PAN </td>
                        <td class="auto-style9">
                            <asp:FileUpload ID="FileUpload3" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style36">Address 1</td>
                        <td class="auto-style50">  
                            <asp:TextBox ID="txtadd1" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style38">GST</td>
                        <td class="auto-style39">
                            <asp:FileUpload ID="FileUpload4" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">Address 2</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtadd2" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style13">TAN No</td>
                        <td class="auto-style16">
                            <asp:FileUpload ID="FileUpload5" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">Country</td>
                        <td class="auto-style51">  
                <asp:DropDownList ID="ddcountry" runat="server" AutoPostBack="True"   
                    DataTextField="country_name" DataValueField="country_id" AppendDataBoundItems="true"   
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="20px" Width="156px" CssClass="auto-style56">  
                    <asp:ListItem Value="0">--Select Country--</asp:ListItem>  
                </asp:DropDownList>  
                        </td>
                        <td class="auto-style13">Bank Name</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtbankname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">State</td>
                        <td class="auto-style54">  
                <asp:DropDownList ID="ddstate" runat="server" AppendDataBoundItems="true" DataTextField="state_name"   
                    DataValueField="state_id" AutoPostBack="True"   
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Height="22px" Width="156px">  
                    <asp:ListItem Value="0">-- Select State--</asp:ListItem>  
                </asp:DropDownList>  
                        </td>
                        <td class="auto-style19">Branch Name</td>
                        <td class="auto-style20">
                            <asp:TextBox ID="txtbranchname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">City</td>
                        <td class="auto-style51">  
                <asp:DropDownList ID="ddcity" runat="server" AppendDataBoundItems="true" DataTextField="city_name"   
                    DataValueField="city_id" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Height="20px" Width="157px">  
                    <asp:ListItem Value="0">-- Select City--</asp:ListItem>  
                </asp:DropDownList>  
                        </td>
                        <td class="auto-style13">Bank City</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtbankcity" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">Pincode</td>
                        <td class="auto-style54">
                            <asp:TextBox ID="txtpincode" runat="server" type="number" ></asp:TextBox>
                        </td>
                        <td class="auto-style19">Bank Account No</td>
                        <td class="auto-style20">
                            <asp:TextBox ID="txtbankactno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style36">Telephone</td>
                        <td class="auto-style50">
                            <asp:TextBox ID="txttelephone" runat="server" type="tel" ></asp:TextBox>
                        </td>
                        <td class="auto-style38">IFSC Code</td>
                        <td class="auto-style39">
                            <asp:TextBox ID="txtifsccode" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">Contact Person Name 1</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtcp1" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style13">Web Address if any</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtwebaddress" runat="server" placeholder="ex: www.example.com"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">Contact Person Name 2</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtcp2" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style34">Primary Email ID</td>
                        <td class="auto-style53">
                            <asp:TextBox ID="txtpemail" runat="server" placeholder="ex:abc@gmail.com" OnTextChanged="txtpemail_TextChanged" type="Email" Required="True" ></asp:TextBox>
                        </td>
                        <td class="auto-style15">Primary Mobile No</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtprimarymobileno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">Secondary Email ID 1</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtsemail1" runat="server" placeholder="ex:abc@gmail.com" Height="25px" Width="168px" type="Email"></asp:TextBox>
                        </td>
                        <td class="auto-style13">Secondary Email ID 2</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtsemail2" runat="server" placeholder="ex:abc@gmail.com" type="Email" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">Secondary Email ID 3</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtsemail3" runat="server" placeholder="ex:abc@gmail.com" type="Email"></asp:TextBox>
                        </td>
                        <td class="auto-style13">Secondary Email ID 4</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtsemail4" runat="server" placeholder="ex:abc@gmail.com" type="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35"></td>
                        <td class="auto-style54"></td>
                        <td class="auto-style19"></td>
                        <td class="auto-style20"></td>
                    </tr>
                    <tr>
                        <td class="auto-style41">MSME</td>
                        <td class="auto-style42">
                            <asp:TextBox ID="txtMSME" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style43">MSME Type</td>
                        <td class="auto-style44">
                            <asp:TextBox ID="txtmsmetype" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">MSME Validity Date from</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtdate1" runat="server" type="date" OnTextChanged="txtdate1_TextChanged" required="true"></asp:TextBox>
                        </td>
                        <td class="auto-style13">MSME Validity Date to</td>
                        <td class="auto-style16">
                            <asp:TextBox ID="txtdate2" runat="server" type="date" required="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style46">MSME Certificate attachement</td>
                        <td class="auto-style55">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td class="auto-style48"></td>
                        <td class="auto-style49"></td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">ITR Filled</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtitr" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">Introduction about your Organisation</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtIntro" runat="server" TextMode="MultiLine" OnTextChanged="txtIntro_TextChanged" Height="81px" Width="275px"></asp:TextBox>  
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">List your product /service details</td>
                        <td class="auto-style51">
                            <asp:TextBox ID="txtList" runat="server" TextMode="MultiLine" OnTextChanged="txtList_TextChanged" Height="80px" Width="272px"></asp:TextBox>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">Vendor Declaration</td>
                        <td class="auto-style51">
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">
                            &nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Width="137px" />
                            &nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" Width="142px" CssClass="auto-style45" />
                        </td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <td colspan="2">
                         <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>  
         
                    </td>
                    </tr>
                    <tr>
                        <td class="auto-style57">
          
                            <asp:Label ID="lblErrorMesssage" runat="server" Text="" ForeColor="Red"></asp:Label>
         
                        </td>
                        <td colspan="2">
                        <td>
          
                            &nbsp;</td>
 <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style57">&nbsp;</td>
                        <td class="auto-style51">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                    </tr>
                </table>
            </td>  
            <td class="auto-style5">  
                </td>  
            <td>  
                 &nbsp;</td>  
        </tr>  
        <tr>  
            <td class="auto-style6">  
                &nbsp;</td>  
            <td class="auto-style5">  
                &nbsp;</td>  
            <td>  
                 &nbsp;</td>  
        </tr>  
        <tr>  
            <td class="auto-style6">  
                &nbsp;</td>  
            <td class="auto-style5">  
                &nbsp;</td>  
            <td>  
                 &nbsp;</td>  
        </tr>  
  
    <div>  
   </div>  
</form>  
</body>

</html>
