<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster1.master" AutoEventWireup="false" CodeFile="MainPageaspx.aspx.vb" Inherits="MainPageaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 650px;
            height: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Panel ID="Panel1" runat="server" Height="332px" Width="650px">

                    <asp:Image ID="Image9" runat="server" Height="332px" Width="650px" 
                        ImageUrl="~/images/Slide.gif" />

                </asp:Panel>

            </td>
            <td>
                <asp:Panel ID="Panel2" runat="server" Height="332px" 
                    BackImageUrl="~/images/backgr/c5.jpg" ForeColor="White" Font-Bold="True" 
                    Font-Size="20px">
                    <asp:Image ID="Image1" runat="server" Height="71px" 
                        ImageUrl="~/images/icon/bb2.gif" Width="300px" />
                    <br />
                    <br />
                    <br />
                    &nbsp;User Name&nbsp;<asp:TextBox ID="CuserName" runat="server" Placeholder="Enter User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="CuserName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    &nbsp;Password&nbsp; &nbsp;<asp:TextBox ID="Cpassword" runat="server"  
                        Placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="Cpassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="ErMsg" runat="server" Font-Size="15px" ForeColor="Aqua"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" 
                        ImageUrl="~/images/icon/Login8.jpg" Width="89px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Lime" 
                        CausesValidation="False">Not Yet Registered?</asp:LinkButton>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        ForeColor="#FFCCFF">Forget Password?</asp:LinkButton>
                </asp:Panel>

            </td>
        </tr>
    </table>
    <div style="background-position: center; background-image: url('images/backgr/Abstract BG_001.jpg'); color: #FFFF00; font-size: large; font-family: 'Comic Sans MS'; width: 960px; height: auto;">

    <table class="style1">
        <tr style="background-color: #FF3300; color: #FFFFFF; text-align:center;">
            <td style="width: 315px">
                Television</td>
            <td style="width: 315px">
                News Paper</td>
            <td style="width: 315px">
                Radio</td>
        </tr>
        <tr>
            <td style="width: 315px">
                    <asp:Image ID="Image8" runat="server" Height="250px" 
                        ImageUrl="~/images/icon/4.brown-apron-gif-1.gif" Width="315px" />
                </td>
            <td style="width: 315px">
                    <asp:Image ID="Image2" runat="server" Height="250px" Width="315px" 
                        ImageUrl="~/images/icon/newspaper.gif" />
                </td>
            <td>
                    <asp:Image ID="Image3" runat="server" Height="250px" 
                        ImageUrl="~/images/icon/radio_icon.jpg" Width="315px" />
                </td>
        </tr>
        <tr style="vertical-align: top; line-height: 25px">
            <td style="padding: 8px; width: 315px">
                        We specialized incorporate advertisement for satellite TV Channels.We focus on 
                        leading channels such as&nbsp; DD network, Zee network,STAR Network Etc.,</td>
            <td style="padding: 8px; width: 315px">
                We give the best advertising, creative design, idea, packaging, advertising 
                method for your NEWSPAPER advertisement and commercial production.</td>
            <td style="padding: 8px">
                Our Advertising Agency specialized in Radio Advertising in various cities.We 
                voice your Ads in a bunch of different radio stations,Red Fm,Mirchi 
                FM,Rainbow,Friends FM Etc.,</td>
        </tr>
        <tr style="background-color: #00FF00; color: #000000; text-align:center;">
            <td>
                Banner</td>
            <td>Magazine</td>
            <td>Website</td>
        </tr>
        <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" Height="250px" 
                        ImageUrl="~/images/icon/banner_advertising.jpg" Width="315px" />
                </td>
                <td>
                    <asp:Image ID="Image5" runat="server" Height="250px" Width="315px" 
                        ImageUrl="~/images/icon/magazine_advertising.jpg" />
                </td>
                <td>
                    <asp:Image ID="Image6" runat="server" Height="250px" 
                        ImageUrl="~/images/icon/website_advertising.jpg" Width="315px" />
                </td>
            </tr>
            <tr style="vertical-align: top; line-height: 25px">
                <td style="padding: 8px">
                    Our creative department is geared specifically for Banner design and production. 
                    we take pride in maintaining the most current state-of-the-art equipment and 
                    softwares..</td>
                <td style="padding: 8px">
                    Fill the Pages of the Magazine with your Advertisement in low cost,Ads can be in 
                    both mono and color of any fixed size,Distribute to you AD Fair Advertisers.</td>
                <td style="padding: 8px">
                    Users are allowed to give their company info and navigation links on the main 
                    website home page&nbsp;.Though which we can increase the traffic for your site..</td>
            </tr>
    </table>

</div>
    <div style="height: auto">
    </div>
</div>
</asp:Content>

