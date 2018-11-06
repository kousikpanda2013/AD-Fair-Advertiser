<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster1.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 646px;
        }
        .style3
        {
            width: 328px;
        }
        .style4
        {
            width: 545px;
        }
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-position: center center; height: 684px; background-image: url('images/backgr/4940.jpg');">
    <table class="style1" style="height: 685px">
        <tr>
            <td class="style3">
                <div style="height: 676px; font-family: 'Comic Sans MS'; font-size: large; color: #00FFFF; font-weight: bold; width: 390px;">
                    &nbsp;<br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Names="Jokerman" Font-Size="X-Large" 
                        Font-Underline="True" ForeColor="#66FF33" Text="-: AD Fair Advertisers :-"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" ForeColor="#FFFF66" Text="Address:" 
                        Font-Bold="True" Font-Underline="True"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Head Office,<br />
&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; JK Super Market,2nd Floor,<br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Panskura R.S,Panskura,<br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Purba MediniPur,West Bengal,<br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 721139<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" 
                        Height="49px" 
                        ImageUrl="~/images/icon/phone-ringing-gif-130_phone_ringing_animated.2013.gif" 
                        Width="70px" />
&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#FFFF66" Text="Mobile:" Font-Bold="True" 
                        Font-Underline="True"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7557088233,9876543210<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" ForeColor="#FFFF66" Text="Email:" 
                        Font-Bold="True" Font-Underline="True"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" BackColor="#FFFFCC" 
                        ForeColor="#3333FF" Text="Adfairadvertisers@gmail.com"></asp:Label>
                </div>
            </td>
            <td class="style4">
                <div style="font-family: 'Comic Sans MS'; font-size: 23px; font-weight: bold; color: #FF0000; height: 673px; width: 594px;">
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image2" runat="server" BackColor="#FFCCFF" Height="153px" 
                        ImageUrl="~/images/icon/Privacy-Policy-Designing-Fever.gif" Width="128px" />
                    <br />
                    <br /><table class="style5">
                        <tr style="line-height: 50px; vertical-align: top;">
                            <td style="vertical-align: top; padding-left: 70px; width: 150px;">
                                Date<asp:Label ID="Slno1" runat="server"></asp:Label>
                                <br />
                                Name :<br />
                                EmailId :<br />
                                Subject :<br />
                                Message :</td>
                            <td>
                                <asp:Label ID="Date1" runat="server"></asp:Label>
                                <asp:Label ID="Time1" runat="server"></asp:Label>
                                <br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px" CssClass="textBoxStyle"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px" CssClass="textBoxStyle"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <br />
                    <asp:TextBox ID="TextBox3" runat="server" Width="250px" CssClass="textBoxStyle"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <br />
                    <asp:TextBox ID="TextBox4" runat="server" Height="55px" TextMode="MultiLine" 
                        Width="250px" CssClass="textBoxStyle"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right; padding-right: 115px;">
                                <asp:Label ID="Msgtext" runat="server" Font-Size="16px"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="44px" Width="80px" 
                        ImageUrl="~/images/icon/sendButton.gif" />
                            </td>
                        </tr>
                    </table>
                </div></td>
        </tr>
    </table>
</div>
</asp:Content>

