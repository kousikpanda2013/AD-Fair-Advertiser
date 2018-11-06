<%@ Page Title="Registration" Language="VB" MasterPageFile="~/UserMaster1.master" AutoEventWireup="false" CodeFile="CustomerRegistration.aspx.vb" Inherits="CustomerRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 677px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-position: center center; height: auto; background-image: url('images/backgr/banner.jpg'); background-attachment: scroll;">
    <div>
        <asp:Image ID="Image1" runat="server" Height="150px" Width="225px" 
            ImageUrl="~/images/icon/New User.jpg" />
        <asp:Image ID="Image2" runat="server" Height="150px" Width="500px" 
            ImageUrl="~/images/icon/new-user-register-banner.jpg" />
        <asp:Image ID="Image3" runat="server" Height="150px" Width="225px" 
            ImageUrl="~/images/icon/a1.jpg" />
    </div>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td style="vertical-align: top; width: 673px;">
            <div style="height: 671px; font-size: 20px; background-color: #409FFF; color: #FFFFFF; width: 673px;">
                
                <table class="style5" style="width: 673px; height: 533px;">
                    <tr>
                        <td style="width: 15px" rowspan="15">
                            &nbsp;</td>
                        <td align="right" class="style12" colspan="2">
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="19px" 
                                ForeColor="#660066" 
                                ToolTip="Go to LogIn" Font-Bold="True" NavigateUrl="~/MainPageaspx.aspx">Already have an account..?</asp:HyperLink>
                        </td>
                        <td class="style16">
                            &nbsp;</td>
                    </tr>
                    <tr style="vertical-align: top">
                        <td align="right" class="style12" colspan="2" 
                            style="color: #CC0000; font-size: 16px;">
                            <br />
                            [ 
                            All&nbsp; Fields are Mandatory&nbsp; ]<br />
                        </td>
                        <td class="style16">
                           
                        </td>
                    </tr>
                    <tr>
                        <td class="style13" 
                            style="width: 206px; height: 36px; font-size: large; font-weight: bold; font-family: 'Comic Sans MS';">
                            Organisation Name<br />
                        </td>
                        <td style="height: 36px; width: 243px">
                            <asp:TextBox ID="orgName" runat="server" ToolTip="Company,organization's Name" 
                                PlaceHolder="Enter Your Organization Name" CssClass="textstyle2"/>
                            <br />
                        </td>
                        <td class="style17" style="color: #CC0000; height: 36px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="orgName" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style13" 
                            style="width: 206px; height: 35px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            Name<br />
                        </td>
                        <td style="height: 35px; width: 243px">
                            <asp:TextBox ID="CustomerName" runat="server" ToolTip="Enter your Name" 
                                PlaceHolder="Your Name" CssClass="textstyle2"/>
                            <br />
                        </td>
                        <td class="style17" style="color: #CC0000; height: 35px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="CustomerName" ForeColor="#CC0000" 
                                ErrorMessage="Must Fill">*</asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style4" 
                            style="width: 206px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            Address<br />
                            <br />
                        </td>
                        <td style="width: 243px">
                            <asp:TextBox ID="CustomerAddress" runat="server" BackColor="#FFCCFF" 
                                BorderColor="#008C00" BorderStyle="Ridge" Font-Bold="False" 
                                Font-Names="Eras Medium ITC" Font-Size="16px" ForeColor="#003300" Height="68px" 
                                ToolTip="Enter your requerd Address" Width="220px" TextMode="MultiLine" PlaceHolder="Enter Your Address"></asp:TextBox>
                            <br />
                        </td>
                        <td class="style17" style="color: #CC0000">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="CustomerAddress" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style12" 
                            style="width: 206px; height: 33px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">&nbsp; Pin</td>
                        <td style="height: 33px; width: 243px">
                            <asp:TextBox ID="CustomerPin" runat="server" ToolTip="Enter Mobile Number" 
                                PlaceHolder="6 Digit Postal code" CssClass="textstyle2"></asp:TextBox>
                            </td>
                        <td class="style16" style="height: 33px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="CustomerPin" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="CustomerPin" ErrorMessage="Must 6 digit" Font-Size="15px" 
                                ForeColor="#CC0000" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12" 
                            style="width: 206px; height: 33px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            &nbsp; Mobile No</td>
                        <td style="height: 33px; width: 243px">
                            <asp:TextBox ID="CustomerMobile" runat="server" ToolTip="Enter your Email Id" 
                                PlaceHolder="10 Digit Mobile no" CssClass="textstyle2" />
                            </td>
                        <td class="style16" style="height: 33px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="CustomerMobile" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="CustomerMobile" ErrorMessage="Must 10 digit" 
                                Font-Size="15px" ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style12" 
                            style="width: 206px; height: 32px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            Email</td>
                        <td style="height: 32px; width: 243px">
                            <asp:TextBox ID="CustomerEmail" runat="server" ToolTip="Create new Password" 
                                PlaceHolder="Enter Your Email" CssClass="textstyle2"></asp:TextBox>
                            </td>
                        <td class="style16" style="height: 32px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="CustomerEmail" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="CustomerEmail" ErrorMessage="It is not Email" 
                                Font-Size="15px" ForeColor="#CC0000" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style12" 
                            style="width: 206px; height: 32px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            Nationality</td>
                        <td style="height: 32px; width: 243px">
                            <asp:Label ID="CustomerCountry" runat="server" Text="India"></asp:Label>
                            </td>
                        <td class="style16" style="height: 32px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style12" 
                            style="width: 206px; height: 32px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            State</td>
                        <td style="height: 32px; width: 243px">
                            <asp:DropDownList ID="CustomerState" runat="server" BackColor="#FFCCFF" 
                                Width="223px">
                                <asp:ListItem>West Bengal</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                        <td class="style16" style="height: 32px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="CustomerState" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style12" 
                            style="width: 206px; height: 32px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            District</td>
                        <td style="height: 32px; width: 243px">
                            <asp:DropDownList ID="CustomerDist" runat="server" BackColor="#FFCCFF" 
                                Width="223px">
                                <asp:ListItem>Purba Medinipur</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                        <td class="style16" style="height: 32px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="CustomerDist" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style12" 
                            style="width: 206px; height: 31px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            Create Password</td>
                        <td style="height: 31px; width: 243px">
                            <asp:TextBox ID="CustomerPassword" runat="server" BackColor="#FFCCFF" 
                                BorderColor="#008C00" BorderStyle="Ridge" Font-Bold="False" 
                                Font-Names="Eras Medium ITC" Font-Size="16px" ForeColor="#003300" Height="20px" 
                                ToolTip="Re-type Password" Width="220px" PlaceHolder="Create Password"></asp:TextBox>
                            </td>
                        <td class="style16" style="color: #CC0000; height: 31px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="CustomerPassword" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style4" 
                            style="width: 206px; font-family: 'Comic Sans MS'; font-size: large; font-weight: bold;">
                            Re-type Password</td>
                        <td style="width: 243px">
                            <asp:TextBox ID="CustomerRePass" runat="server" BackColor="#FFCCFF" 
                                BorderColor="#008C00" BorderStyle="Ridge" Font-Bold="False" 
                                Font-Names="Eras Medium ITC" Font-Size="16px" ForeColor="#003300" Height="20px" 
                                ToolTip="Re-type Password" Width="220px" PlaceHolder="Re- type Password"></asp:TextBox>
                            </td>
                        <td class="style16" style="color: #CC0000">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="CustomerRePass" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                ControlToCompare="CustomerPassword" ControlToValidate="CustomerRePass" Font-Size="15px" 
                                ErrorMessage="Wrong Entry" ForeColor="Red">Not Match</asp:CompareValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 206px">
                            &nbsp;</td>
                        <td style="width: 243px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" style="width: 206px">
                            &nbsp;</td>
                        <td style="width: 243px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="White" 
                                Height="29px" 
                                Width="116px" ToolTip="Submit" 
                                ImageUrl="~/images/icon/submit1.jpg" />
                        </td>
                        <td class="style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding-left: 20px;" colspan="4">
                            <asp:Label ID="ERmsg" runat="server" Font-Size="20px" ForeColor="#CC0000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 20px;" colspan="4">
                         <asp:Label ID="CSlno" runat="server" Font-Bold="True" Font-Size="20px" 
                                ForeColor="#000066" />
                         <asp:Label ID="CustomerId1" runat="server" Font-Bold="True" Font-Size="20px" 
                                ForeColor="#000066" />
                         <asp:Label ID="CustomerEmail2" runat="server" Font-Bold="True" Font-Size="20px" 
                                ForeColor="#000066" />
                         <asp:Label ID="CustomerOrg" runat="server" Font-Bold="True" Font-Size="20px" 
                                ForeColor="#000066" />
                        </td>
                    </tr>
                </table>
           
                
                </div>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
            

</div>
</asp:Content>

