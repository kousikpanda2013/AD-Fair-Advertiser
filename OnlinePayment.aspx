<%@ Page Title="Online Payment" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="OnlinePayment.aspx.vb" Inherits="OnlinePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 179px;
        }
        .style4
        {
            width: 362px;
        }
        .style5
        {
            width: 362px;
            height: 29px;
        }
        .style6
        {
            width: 392px;
            height: 29px;
        }
        .style7
        {
            width: 392px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="font-family: 'Comic Sans MS'; font-size: large; font-weight: bold; background-image: url('images/backgr/banner.jpg'); color: #FFFF00; height: auto;">
    <table class="style1" style="height: auto">
        <tr>
            <td class="style2" colspan="2" 
                style="background-position: center center; background-image: url('images/icon/billpay_banner.jpg')">
            </td>
            <td rowspan="4">
                <div style="height: 723px">
                    <asp:Panel ID="Panel1" runat="server" Height="179px">
                        <asp:Image ID="Image1" runat="server" Height="179px" 
                            ImageUrl="~/images/icon/plastc.gif" Width="289px" />
                    </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server" Height="182px">
                        <asp:Image ID="Image2" runat="server" Height="182px" 
                            ImageUrl="~/images/icon/debit-1.png" Width="289px" />
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server" Height="179px">
                        <asp:Image ID="Image3" runat="server" Height="179px" 
    Width="289px" ImageUrl="~/images/icon/OnlinePayment.gif" />
                    </asp:Panel>
                    <asp:Panel ID="Panel4" runat="server" Height="179px" BackColor="#66FFFF">
                        <asp:Image ID="Image4" runat="server" Height="179px" 
    Width="285px" ImageUrl="~/images/icon/payment_vector.png" />
                    </asp:Panel>
                </div>
            </td>
        </tr>
        <tr style="vertical-align: top; line-height: 30px">
            <td class="style5" height="30px" style="padding-left: 20px">
                <br />
                Customer ID<br />
                Customer Name<br />
                Mobile Number<br />
                Email ID<br />
                Total Rs.<br />
                Pay Through<br />
                Select Bank<br />
                Card Number<br />
                Card Holder Name<br />
                Card Expeiry Date<br />
                Pin Number<br />
                Date<br />
                Order ID<br />
                Payment ID</td>
            <td class="style6" height="30px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label" />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label" />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label" />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Label" />
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" />
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" />
                <br />
                <asp:TextBox ID="TextBox3" runat="server" />
                <br />
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Label" />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Label" />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Label" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; vertical-align: top;">
            &nbsp;
            <asp:Label ID="Label9" runat="server" ForeColor="Aqua" Text="Label" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <br />
                <br />
            </td>
            <td class="style7" style="vertical-align: top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                    ImageUrl="~/images/icon/submit1.jpg" Width="102px" />
                <br />
                <br />
            </td>
        </tr>
        </table>
</div>
</asp:Content>

