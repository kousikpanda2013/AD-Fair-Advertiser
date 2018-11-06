<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminLogin.aspx.vb" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="Shortcut Icon" href="css\india.ico" />
    <style type="text/css">
        .style1
        {
            width: 200px;
        }
        .style5
        {
            width: 1263px;
        }
        .style6
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <div style="height: auto; background-image: url('images/backgr/Abstract BG_001.jpg'); ">
    <table class="style5" style="width: 1271px">
        <tr style="height: 200px">
            <td class="style1">
                <asp:Image ID="Image2" runat="server" Height="204px" 
                    ImageUrl="~/images/icon/admin (1).jpg" Width="200px" />
            </td>
            <td class="style12" style="background-color: #FFFFFF">
                <asp:Image ID="Image1" runat="server" Height="200px" 
                    ImageUrl="~/images/icon/Header_Login_eng.jpg" Width="863px" />
              </td>
            <td class="style13">
                <asp:Image ID="Image3" runat="server" Height="204px" 
                    ImageUrl="~/images/icon/Adminlog1.jpg" Width="211px" />
            </td>
        </tr>
        <tr>
            <td class="style1" style="color: #FFFF00; font-size: x-large;">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
            <td class="style9">
                <div style="height: 100%; color: #0000CC; font-size: 26px; font-family: 'Comic Sans MS'; font-weight: bold; background-color: #CC3399; background-image: url('images/backgr/bg4.jpg'); background-attachment: scroll;">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; User Name&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Adminid" runat="server" BorderColor="#FF9933" 
                        Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="35px" 
                        Width="250px" PlaceHolder="Enter Admin Id"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Adminid" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                        ID="Adminpass" runat="server" BorderColor="#FF9933" 
                        Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="35px" 
                        Width="250px" PlaceHolder="Enter Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="Adminpass" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="ErMsg" runat="server" ForeColor="Red" 
                        Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:ImageButton ID="AdminSubmit" runat="server" Height="45px" 
                        ImageUrl="~/images/icon/login5.jpg" Width="148px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#990033" 
                        CausesValidation="False">Forgot Password?</asp:LinkButton>
                    <br />
                    <br />
                </div></td>
            <td class="style6" style="color: #FFFF00; font-size: x-large">
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackImageUrl="~/images/backgr/c5.jpg" 
        Visible="False">
        <div style="width: 1000px; margin-left: auto; margin-right: auto">
            <table cellspacing="1" class="style6">
                <tr>
                    <td style="width: 200px">
                        <asp:Image ID="Image4" runat="server" Height="204px" 
                            ImageUrl="~/images/icon/admin (1).jpg" Width="200px" />
                    </td>
                    <td style="background-image: url('images/icon/f1 (4).jpg')">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    <div style="padding: 100px 20px 20px 100px; width: 850px; margin-left: auto; margin-right: auto; background-image: url('images/backgr/bg4.jpg'); line-height: 40px; font-size: 22px; height: 250px;">
        <asp:MultiView ID="MultiView1" runat="server">
        
            <asp:View ID="View1" runat="server">
            <table cellspacing="1" class="style6">
            <tr style="vertical-align: top;">
                <td style="width: 250px; ">
                    Enter Email<br /> Enter Mobile No</td>
                <td>
                    <asp:TextBox ID="AdminEmail" runat="server" Font-Size="16px" Width="200px" 
                        PlaceHolder="Enter Your Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="AdminEmail" ErrorMessage="Must fill" Font-Size="18px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="AdminMobile" runat="server" Font-Size="16px" Width="200px" 
                        PlaceHolder="Enter Your Mobile No"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="AdminMobile" ErrorMessage="Must Fill" Font-Size="18px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Submit1" runat="server" Font-Size="18px" Text="Continue" 
                        BackColor="#00CC00" Font-Bold="True" ForeColor="White" />
                    <asp:Button ID="Cancel1" runat="server" CausesValidation="False" 
                        Font-Size="18px" Text="Cancel" BackColor="Red" Font-Bold="True" 
                        ForeColor="Yellow" />
                </td>
            </tr>
        </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                Enter verification Number&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="16px" 
                    PlaceHolder="Enter Varification Code" Width="200px"></asp:TextBox>
                &nbsp;<asp:Button ID="Submit2" runat="server" 
                    Font-Size="18px" Text="Submit" BackColor="#FF0066" Font-Bold="True" 
                    ForeColor="White" />
                <asp:Button ID="Gologin" runat="server" CausesValidation="False" 
                    Font-Size="18px" Text="Login" Visible="False" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage=" Must Fill" Font-Size="18px"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="SendCode" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="ErMsg1" runat="server"></asp:Label>
            </asp:View>
        
        </asp:MultiView>
        
        
    </div>
    </asp:Panel>
    </form>
</body>
</html>
