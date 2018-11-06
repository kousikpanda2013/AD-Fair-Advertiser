<%@ Page Title="Banner Advertise" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminBanner.aspx.vb" Inherits="AdminBanner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image: url('images/backgr/c4.jpg'); font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: #FFFFFF; height: auto;">
    <p style="background-color: #00FF00; color: #0000FF; font-family: Jokerman; font-size: 26px; font-weight: bold;height: 30px; padding-top: 5px; text-align: center;">
        -:Banner Registration:-</p>
    <div style="border: 2px solid #FFFF00">
    <asp:Panel ID="PanelAdd" runat="server">
    <p style="font-family: Jokerman; font-size: x-large; font-weight: bold; color: #0000FF; background-color: #E6E600;height: 25px; padding-top: 5px; text-align: center;">
                -:Add Banner Details:-</p>
    </asp:Panel>
    <asp:Panel ID="PanelUpdate" runat="server" Visible="False">
    <p style="font-family: Jokerman; font-size: x-large; font-weight: bold; color: #0000FF; background-color: #E6E600;height: 25px; padding-top: 5px; text-align: center;">
                -:Update Banner Details:-</p>
    </asp:Panel>
    <table cellspacing="1" class="style1" style="border: 2px solid #CC0000">
                <tr style="border: 2px solid #FF0000; color: #000000;">
                    <td>Banner Type</td>
                    <td>State</td>
                    <td>District</td>
                    <td>Location<asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            ToolTip="Click here to select date">Date From</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" 
                            ToolTip="Click here to select date">Date To</asp:LinkButton>
                    </td>
                    <td>Price/s.f</td>
                </tr>
                <tr style="vertical-align: top">
                    <td><asp:TextBox ID="BannerType1" runat="server" Width="150px" PlaceHolder="Banner Type" /></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="State" DataValueField="State" 
                            Width="150px" ToolTip="Select State">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource3" DataTextField="District" 
                            DataValueField="District" Width="150px" ToolTip="Select District">
                        </asp:DropDownList>
                    </td>
                    <td><asp:TextBox ID="Location1" runat="server" Width="150px" 
                            ToolTip="Location where you give banner" PlaceHolder="Location" /></td>
                    <td><asp:TextBox ID="DateFrom1" runat="server" Width="80px" PlaceHolder="DD-MM-YYYY"
                            ToolTip="Enter Date format &quot;DD-MM-YYYY&quot;" /></td>
                    <td><asp:TextBox ID="DateTo1" runat="server" Width="80px" PlaceHolder="DD-MM-YYYY"
                            ToolTip="Enter Date format &quot;DD-MM-YYYY&quot;" /></td>
                    <td><asp:TextBox ID="Price1" runat="server" Width="80px" PlaceHolder="RS. (000.00)" /></td>
                </tr>
                <tr style="vertical-align: top">
                    <td colspan="3" style="padding-left: 10px">
                    <asp:Label ID="ErMsg1" runat="server" />
                    <asp:Label ID="updatekey" runat="server" Visible="False" />
                    </td>
                    <td colspan="4" style="text-align: right; padding-right: 10px;">
                    <asp:Label ID="Slno1" runat="server" Visible="False" />
                    <asp:Button ID="Submit1" runat="server" Text="Submit" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" 
                            ForeColor="White" />
                        <asp:Button ID="Update1" runat="server" Text="Update" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" 
                            ForeColor="White" Visible="False" />
                        &nbsp;<asp:Button ID="Cancel1" runat="server" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" ForeColor="White" 
                            Text="Cancel" Visible="False" />
                    </td>
                </tr>
            </table>
    </div>
    <div>
    <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
    </div>
    <!---------------------->
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" DataKeyNames="Slno" Width="960px" 
            EmptyDataText="Data is empty.">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BannerType" HeaderText="BannerType" 
                SortExpression="BannerType" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="District" HeaderText="District" 
                SortExpression="District" />
            <asp:BoundField DataField="Location" HeaderText="Location" 
                SortExpression="Location" />
            <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                SortExpression="DateFrom" />
            <asp:BoundField DataField="DateTo" HeaderText="DateTo" 
                SortExpression="DateTo" />
                <asp:BoundField DataField="Price" HeaderText="Price" 
                SortExpression="Price" />
                <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="Update1" runat="server" Text="Edit" CommandName="UpdateRow" CommandArgument='<%# Bind("Slno") %>' Font-Size="16px" />
                <br />
                <asp:LinkButton ID="Delete1" runat="server" Text="Delete" CommandName="DeleteRow" CommandArgument='<%# Bind("Slno") %>' Font-Size="16px"/>
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#FF6666" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#FF6600" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT DISTINCT [Slno], [BannerType], [State], [District], [Location], [DateFrom], [DateTo], [Price] FROM [AdminBanner] ORDER BY [BannerType], [State], [District], [Location], [DateFrom], [DateTo]">
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [State] FROM [CountryTable]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [District] FROM [CountryTable] WHERE ([State] = @State)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="State" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</div>
</asp:Content>

