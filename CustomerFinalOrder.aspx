<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="CustomerFinalOrder.aspx.vb" Inherits="CustomerFinalOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<asp:Panel ID="Panel1" runat="server" ScrollBars="Horizontal">
<asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        Width="960px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Slno" HeaderText="Slno" SortExpression="Slno" />
            <asp:TemplateField HeaderText="Order Id">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Bind("OrderId") %>' CommandName="IdSelect" CommandArgument='<%# Bind("Slno") %>' />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustomerId">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("CustomerId") %>' CommandName="IdSelect" CommandArgument='<%# Bind("Slno") %>' />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                SortExpression="DateFrom" />
            <asp:BoundField DataField="DateTo" HeaderText="DateTo" 
                SortExpression="DateTo" />
            <asp:BoundField DataField="Payment" HeaderText="Payment" 
                SortExpression="Payment" />
            <asp:BoundField DataField="PaymentOption" HeaderText="PaymentOption" 
                SortExpression="PaymentOption" />
            <asp:BoundField DataField="Ammount" HeaderText="Ammount" 
                SortExpression="Ammount" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
</asp:Panel>
<div style="font-size: 20px">

    <asp:Button ID="Button1" runat="server" Font-Size="18px" 
        Text="View Detail's Order" BackColor="#FF33CC" ForeColor="White" />
    <asp:Button ID="Button2" runat="server" Font-Size="18px" Text="Print" 
        BackColor="Lime" Font-Bold="True" ForeColor="#0000CC" />

</div>
<div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [FirstOrder]"></asp:SqlDataSource>
</div>
</div>

<div>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        
        
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="SlnoLabel" runat="server" Text='<%# Eval("Slno") %>' />
                </td>
                <td>
                    <asp:Label ID="OrderIdLabel" runat="server" Text='<%# Eval("OrderId") %>' />
                </td>
                <td>
                    <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Eval("OrderDate") %>' />
                </td>
                <td>
                    <asp:Label ID="CustomerIdLabel" runat="server" 
                        Text='<%# Eval("CustomerId") %>' />
                </td>
                <td>
                    <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                </td>
                <td>
                    <asp:Label ID="DateFromLabel" runat="server" Text='<%# Eval("DateFrom") %>' />
                </td>
                <td>
                    <asp:Label ID="DateToLabel" runat="server" Text='<%# Eval("DateTo") %>' />
                </td>
                <td>
                    <asp:Label ID="PaymentLabel" runat="server" Text='<%# Eval("Payment") %>' />
                </td>
                <td>
                    <asp:Label ID="PaymentOptionLabel" runat="server" 
                        Text='<%# Eval("PaymentOption") %>' />
                </td>
                <td>
                    <asp:Label ID="AmmountLabel" runat="server" Text='<%# Eval("Ammount") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                <asp:LinkButton ID="LinkButton3" runat="server" Text="Sl No" CommandName="Exit" CommandArgument='<%# Eval("Slno") %>' />
                                    Slno</th>
                                <th runat="server">
                                    OrderId</th>
                                <th runat="server">
                                    OrderDate</th>
                                <th runat="server">
                                    CustomerId</th>
                                <th runat="server">
                                    Type</th>
                                <th runat="server">
                                    DateFrom</th>
                                <th runat="server">
                                    DateTo</th>
                                <th runat="server">
                                    Payment</th>
                                <th runat="server">
                                    PaymentOption</th>
                                <th runat="server">
                                    Ammount</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
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
    </div>
</asp:Content>

