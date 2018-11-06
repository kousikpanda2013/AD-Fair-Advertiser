<%@ Page Title="Admin Magazine" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminMagazine.aspx.vb" Inherits="AdminMagazine" %>

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
    <p style="margin: 0px; background-color: #00FF00; color: #0000FF; font-family: Jokerman; font-size: 26px; font-weight: bold; height: 30px; padding-top: 5px; text-align: center;">
        -:Magazine Registration:-</p>
        <br />
    <div style="border: 2px solid #FFFF00">
    <asp:Panel ID="PanelAdd" runat="server">
    <p style="font-family: Jokerman; font-size: x-large; font-weight: bold; color: #0000FF; background-color: #E6E600;height: 25px; padding-top: 5px; text-align: center;">
                -:Add Magazine Details:-</p>
    </asp:Panel>
    <asp:Panel ID="PanelUpdate" runat="server" Visible="False">
    <p style="font-family: Jokerman; font-size: x-large; font-weight: bold; color: #0000FF; background-color: #E6E600;height: 25px; padding-top: 5px; text-align: center;">
                -:Update Magazine Details:-</p>
    </asp:Panel>
    <table cellspacing="1" class="style1" style="border: 2px solid #CC0000">
                <tr style="border: 2px solid #FF0000; color: #000000;">
                    <td>Magazine Name</td>
                    <td>Description</td>
                    <td>Date-From</td>
                    <td>Date-To</td>
                    <td>Page</td>
                    <td>Advertise Type</td>
                    <td>Period for</td>
                    <td>Price/cm</td>
                </tr>
                <tr style="vertical-align: top">
                    <td><asp:TextBox ID="Magazine1" runat="server" Width="150px" PlaceHolder="Magazine Name"/></td>
                    <td><asp:TextBox ID="Description1" runat="server" Width="200px" PlaceHolder="Description"/></td>
                    <td><asp:TextBox ID="DateFrom1" runat="server" Width="80px" PlaceHolder="DD/MM/YYYY"/></td>
                    <td><asp:TextBox ID="DateTo1" runat="server" Width="80px" PlaceHolder="DD/MM/YYYY"/></td>
                    <td><asp:TextBox ID="PageNo1" runat="server" Width="80px" PlaceHolder="Type"/></td>
                    <td><asp:TextBox ID="Type1" runat="server" Width="80px" PlaceHolder="Type"/></td>
                    <td><asp:TextBox ID="Validity1" runat="server" Width="80px" PlaceHolder="* month"/></td>
                    <td><asp:TextBox ID="Price1" runat="server" Width="80px" PlaceHolder="000.00"/></td>
                </tr>
                <tr style="vertical-align: top">
                <td colspan="3" style="padding-left: 10px">
                <asp:Label ID="ErMsg1" runat="server" />
                <asp:Label ID="updatekey" runat="server" />
                </td>
                    <td colspan="5" style="text-align: right; padding-right: 10px;">
                    <asp:Label ID="Slno1" runat="server" />
                    <asp:Button ID="Submit1" runat="server" Text="Submit" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" 
                            ForeColor="White" />
                        <asp:Button ID="Update1" runat="server" Text="Update" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" 
                            ForeColor="White" Visible="False" />
                        <asp:Button ID="Cancel1" runat="server" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" ForeColor="White" 
                            Text="Cancel" Visible="False" />
                    &nbsp;&nbsp;
                    </td>
                </tr>
            </table>
    </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" AutoGenerateColumns="False" 
            DataSourceID="AdminMagazineView" Width="960px" DataKeyNames="Slno">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MagazineName" HeaderText="MagazineName" 
                SortExpression="MagazineName" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                SortExpression="DateFrom" />
            <asp:BoundField DataField="DateTo" HeaderText="DateTo" 
                SortExpression="DateTo" />
            <asp:BoundField DataField="Page" HeaderText="Page" 
                SortExpression="Page" />
            <asp:BoundField DataField="AdvertiseType" HeaderText="AdvertiseType" 
                SortExpression="AdvertiseType" />
            <asp:BoundField DataField="Validity" HeaderText="Validity" 
                SortExpression="Validity" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
    <asp:SqlDataSource ID="AdminMagazineView" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [AdminMagazine] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
            <br />
    
</div>
</asp:Content>

