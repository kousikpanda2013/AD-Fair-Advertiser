<%@ Page Title="Agent" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="CustomerAgent.aspx.vb" Inherits="CustomerAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .mailus
{
    border: 1px dashed #FF9999;
    float: right;
    width: 450px;
    height: 310px;
    padding: 20px 0px 0px 10px;
    margin-left: 10px;
    line-height: 35px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="AgentId" 
            DataSourceID="SqlDataSource1" GroupItemCount="4">
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td1" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        
        <ItemTemplate>
            <td id="Td2" runat="server" style="padding: 10px; border: 1px dashed #0000FF; width: 210px; font-size: 18px; font-weight: 500;">
            <div style="text-align: center">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Width="180px" Height="150px" />
            </div>
            
            <br />
            <asp:Label ID="AgentIdLabel" runat="server" Text='<%# Eval("AgentId") %>' />
            <br />Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />Dist:
            <asp:Label ID="DistLabel" runat="server" Text='<%# Eval("Dist") %>' />
            <br />State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
            <br />Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
            <br />Pincode:
            <asp:Label ID="PincodeLabel" runat="server" Text='<%# Eval("Pincode") %>' />
            <br />Mobile:
            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
            <br />
            <asp:LinkButton ID="LinkAgent3" runat="server" CausesValidation="False" Text='<%# Eval("Email") %>' CommandName="SendMail1" CommandArgument='<%# Eval("AgentId") %>'/>
            <br /><br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td3" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td4" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        
    </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [AgentInformation] WHERE ([AgentId] &gt; @AgentId)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="AgentId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </asp:Content>

