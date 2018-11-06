<%@ Page Title="Agent Details" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminAgenct.aspx.vb" Inherits="AdminAgency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto;">
        <asp:Panel ID="MPanrel" runat="server">
        <div style="clear: both;">
    <table cellspacing="1" class="style1">
        <tr style="height: 50px;">
            <td style="width: 550px">
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </div>
    <div style="width: 550px; height: auto; float: left; display: inline-block">
    <asp:Panel ID="AgentDetails" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="AgentId" 
            DataSourceID="SqlDataSource1" GroupItemCount="2">
        
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        
        <ItemTemplate>
            <td runat="server" style="padding: 10px; border: 1px dashed #0000FF; width: 250px">
                <asp:Image ID="Image1" runat="server" Width="200px" Height="180px" ImageUrl='<%# Eval("ImagePath") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Dist:
                <asp:Label ID="DistLabel" runat="server" Text='<%# Eval("Dist") %>' />
                <br />
                <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                &nbsp;,&nbsp;
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                Pincode:
                <asp:Label ID="PincodeLabel" runat="server" Text='<%# Eval("Pincode") %>' />
                <br />
                Mobile:
                <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                <br />
                <asp:LinkButton ID="LinkAgent3" runat="server" CausesValidation="False" Text='<%# Eval("Email") %>' CommandName="SendMail1" CommandArgument='<%# Eval("Email") %>'/>
                <br /><br />
                <asp:LinkButton ID="LinkAgent1" runat="server" CausesValidation="False" Text="Edit" CommandName="AgentUpdate1" CommandArgument='<%# Eval("AgentId") %>'/>
                <asp:LinkButton ID="LinkAgent2" runat="server" CausesValidation="False" Text="Delete" CommandName="AgentDelete1" CommandArgument='<%# Eval("AgentId") %>'/>
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        
    </asp:ListView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [AgentInformation]"></asp:SqlDataSource>
        
</asp:Panel>
    </div>
    <div style="border: 2px solid #FFFF00; width: 385px; height: auto; float: right; display: inline-block; padding-left: 10px;">
        <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="ErMsg1" runat="server" Text="" />
            <br />
            <asp:Button ID="AddAgent" runat="server" Font-Size="18px" 
                Text="Add New Agent" CausesValidation="False" BackColor="Aqua" 
                Font-Bold="True" />
        
            
        <asp:Label ID="SelectId" runat="server" Visible="False">0</asp:Label>
            <br />
            <asp:Label ID="ErMsg2" runat="server"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="PanelReply" runat="server" Visible="False">
                    
                    <table cellspacing="1" class="style1">
                        <tr style="line-height: 25px; vertical-align: top;">
                            <td>
                                To<br /> From<br /> Subject<br /> Message</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="200px" ReadOnly="True"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" Width="200px" ReadOnly="True">AD Fair Advertisers</asp:TextBox>
                                <br />
                                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="TextBox5" runat="server" Height="75px" TextMode="MultiLine" 
                                    Width="250px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td style="padding: 0px 50px 10px 0px; text-align: right;">
                                <asp:Button ID="AgentMailSend" runat="server" BackColor="#0066CC" 
                                    Font-Bold="True" ForeColor="Yellow" 
                                    Text="Send" Width="70px" />
                                &nbsp;<asp:Button ID="AgentMailCancel" runat="server" BackColor="#FF3300" 
                                    CausesValidation="False" Font-Bold="True" ForeColor="White" Text="Cancel" />
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    
                </asp:Panel>
            
        <asp:Panel ID="AddAgentPanel" runat="server">
        <table cellspacing="1" class="style1">
                    <tr style="vertical-align: bottom; height: 50px;">
                        <td colspan="2" style="text-align: center; font-size: 25px; font-weight: 400">
                            <asp:Label ID="HeadLabel1" runat="server" />
                        </td><td></td>
                    </tr>
                    <tr style="line-height: 28px; vertical-align: top">
                        <td style="width: 70px">
                            Agent Id<br /> Name<br /> Address<br /> Dist<br /> State<br /> Country<br /> Pin<br /> 
                            Mobile<br /> Email<br />
                        </td>
                        <td style="width: 235px">
                            <asp:Label ID="AId2" runat="server"></asp:Label>
                            <asp:Label ID="ImgPath" runat="server" Visible="False"></asp:Label>
                            <br />
                            <asp:TextBox ID="Name1" runat="server" Width="200px"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="Address1" runat="server" Width="200px"></asp:TextBox>
                            <br />
                            <asp:DropDownList ID="District1" runat="server" Width="203px">
                                <asp:ListItem>Purba Medinipur</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:DropDownList ID="State1" runat="server" Width="203px">
                                <asp:ListItem>West Bengal</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:DropDownList ID="Country1" runat="server" Width="203px">
                                <asp:ListItem>India</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:TextBox ID="Pincode1" runat="server" Width="200px"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="Mobile1" runat="server" Width="200px"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="Email1" runat="server" Width="200px"></asp:TextBox>
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" accept="image/*" 
                                Width="200px" />
                            <br />
                            <asp:Button ID="NewSubmit" runat="server" Text="Submit" 
                                BackColor="#993333" Font-Bold="True" ForeColor="White" />
                            &nbsp;<asp:Button ID="AgentUpdate" runat="server" Text="Update" Visible="False" 
                                BackColor="#0066CC" Font-Bold="True" ForeColor="Yellow" />
                            <asp:Button ID="AgentCancel" runat="server" CausesValidation="False" 
                                Text="Cancel" BackColor="#FF3300" Font-Bold="True" ForeColor="White" />
                        </td>
                        <td style="color: #CC0000;">
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="Name1" ErrorMessage=" *"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="Address1" ErrorMessage=" *"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="Pincode1" ErrorMessage=" *"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="Pincode1" ErrorMessage="Pin" Font-Size="15px" 
                                ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="Mobile1" ErrorMessage=" *"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="Mobile1" ErrorMessage="10 digit" Font-Size="15px" 
                                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="Email1" ErrorMessage=" *"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="Email1" ErrorMessage="Email" Font-Size="15px" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                    <td colspan="3">
                        &nbsp;</td>
                    </tr>
                </table>
        </asp:Panel>
        <div>
        
        </div>
    </div>
    <div style="clear: both">

        <br />
    </div>
</asp:Panel>
    </div>
</asp:Content>

