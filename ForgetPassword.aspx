<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster1.master" AutoEventWireup="false" CodeFile="ForgetPassword.aspx.vb" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server">
        <div style="width: 1000px; margin-left: auto; margin-right: auto">
            <table cellspacing="1" class="style6">
                <tr>
                    <td style="width: 200px">
                        <asp:Image ID="Image4" runat="server" Height="204px" 
                            ImageUrl="~/images/icon/f1 (2).jpg" Width="200px" />
                    </td>
                    <td>
                        <asp:Image ID="Image5" runat="server" Height="200px" 
                            ImageUrl="~/images/icon/f1 (4).jpg" Width="794px" />
                    </td>
                </tr>
            </table>
        </div>
    <div style="padding: 20px 0px 20px 100px; width: 900px; margin-left: auto; margin-right: auto; background-image: url('images/backgr/bg4.jpg'); line-height: 40px; font-size: 22px; height: 250px;">
            <div>
                <asp:Label ID="ErMsg1" runat="server"></asp:Label>
                <asp:Label ID="ErMsg2" runat="server" Visible="False"></asp:Label>
        </div>
            <asp:Panel ID="Panel3" runat="server">
            <table cellspacing="1" class="style6">
            <tr style="vertical-align: top;">
                <td style="width: 250px; font-weight: bold;">
                    Enter Email<br /> Enter Mobile No</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="16px" 
                        PlaceHolder="Enter Your Email" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" Font-Size="18px" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="16px" 
                        PlaceHolder="Enter Your Mobile No" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" Font-Size="18px" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <br />
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
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
            </asp:Panel>
        
        <asp:Panel ID="verifypanel" runat="server" Visible="False" Font-Bold="True">
        Enter verification Number&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="16px" 
                    PlaceHolder="Enter Varification Code" Width="200px"></asp:TextBox>
                &nbsp;<asp:Button ID="Submit2" runat="server" 
                    Font-Size="18px" Text="Submit" BackColor="#FF0066" Font-Bold="True" 
                ForeColor="White" />
                <asp:Button ID="Gologin" runat="server" CausesValidation="False" 
                    Font-Size="18px" Text="Login" Visible="False" BackColor="#CC9900" 
                Font-Bold="True" ForeColor="Blue" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage=" Must Fill" Font-Size="18px"></asp:RequiredFieldValidator>
                &nbsp;<asp:Label ID="SendCode" runat="server" Visible="False"></asp:Label>
                
        </asp:Panel>
    </div>
    </asp:Panel>
</asp:Content>

