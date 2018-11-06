<%@ Page Title="Admin Home" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminHome.aspx.vb" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Font-Size="17px">
        <div style="background-color: #CC99FF; font-size: 20px;">
        <div style="text-align: center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Algerian" 
        Font-Size="X-Large" ForeColor="#000066" Text="Page viewer Report"></asp:Label>
        </div>
            <br />
            Select Date
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="Date" DataValueField="Date" 
        Width="120px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT [Date] FROM [CustomerReport]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
                
                SelectCommand="SELECT DISTINCT [Email], [Name], [Date], [Time], [Subject], [Message] FROM [CustomerReport] WHERE ([Date] = @Date) ORDER BY [Date], [Email]">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Date" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Width="960px" BackColor="White" 
            BorderColor="#660066" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" AllowPaging="True" PageSize="5" AllowSorting="True">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
                <asp:BoundField DataField="Date" HeaderText="Date" 
                    SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" 
                    SortExpression="Time" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" 
                    SortExpression="Subject" />
                <asp:BoundField DataField="Message" HeaderText="Message" 
                    SortExpression="Message" />
                    <asp:TemplateField>
                    <ItemTemplate>
                    <asp:LinkButton ID="LinkMail1" runat="server" Text="Reply"
                     CommandName="SelectRow" CommandArgument='<%# Bind("Email") %>' />
                    </ItemTemplate>
                    </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="ReplyPanel" runat="server" Visible="false">
        <div style="width: 400px; margin-left: auto; font-size: 22px; line-height: 30px;">
            <table cellspacing="1" class="style3">
                <tr style="vertical-align: top;">
                    <td>
                        Subject<br /> Message<br />
                        <asp:Label ID="toaddrs" runat="server" Font-Size="16px" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxsub" runat="server" Width="280px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBoxsub" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TextMsgBody" runat="server" Height="55px" TextMode="MultiLine" 
                            Width="280px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextMsgBody" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" 
                        style="vertical-align: top; text-align: right; padding-right: 50px;">
                        <asp:Label ID="Msgtext" runat="server" Font-Size="16px"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Orderadrs" runat="server" Font-Size="16px" Visible="False"></asp:Label>
                        <asp:Button ID="ReplyMail" runat="server" Font-Size="18px" Text="Send" 
                            BackColor="#009933" Font-Bold="True" ForeColor="#66FFFF" />
                        <asp:Button ID="CancelReply" runat="server" Font-Size="18px" Text="Cancel" 
                            BackColor="Red" Font-Bold="True" ForeColor="#FFFF99" 
                            CausesValidation="False" />
                    </td>
                </tr>
            </table>
            </div>
        </asp:Panel><br />
    <asp:Panel ID="Panel2" runat="server">
    <div style="text-align: center; font-size: 25px; font-weight: bold; line-height: 30px; background-color: #CC99FF;">
        User Report</div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#660066" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" DataSourceID="SqlDataSource3" 
                Width="960px" AllowPaging="True" PageSize="5" AllowSorting="True">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="MailFrom" HeaderText="MailFrom" 
                        SortExpression="MailFrom" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" 
                        SortExpression="UserName" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" 
                        SortExpression="UserId" />
                    <asp:BoundField DataField="OrderNo" HeaderText="OrderNo" 
                        SortExpression="OrderNo" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="MsgSub" HeaderText="MsgSub" 
                        SortExpression="MsgSub" />
                    <asp:BoundField DataField="MsgBody" HeaderText="MsgBody" 
                        SortExpression="MsgBody" />
                        <asp:TemplateField>
                    <ItemTemplate>
                    <asp:LinkButton ID="LinkMail2" runat="server" Text="Reply"
                     CommandName="SelectRow" CommandArgument='<%# Bind("OrderNo") %>' CausesValidation="False" />
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT DISTINCT [MailFrom], [UserName], [UserId], [OrderNo], [Date], [Time], [MsgSub], [MsgBody] FROM [FeedbackTable] WHERE ([MailTo] = @MailTo)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Admin" Name="MailTo" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="ReplyPanel2" runat="server" Visible="false">
        <div style="width: 400px; margin-left: auto; font-size: 22px; line-height: 30px; background-color: #CC99FF;">
            <table cellspacing="1" class="style3">
                <tr style="vertical-align: top;">
                    <td>
                        Subject<br /> Message<br />
                        <asp:Label ID="toaddrs2" runat="server" Font-Size="16px" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="MsgSub1" runat="server" Width="280px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="MsgSub1" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="MsgBody1" runat="server" Height="55px" TextMode="MultiLine" 
                            Width="280px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="MsgBody1" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" 
                        style="vertical-align: top; text-align: right; padding-right: 50px;">
                        <asp:Label ID="Msgtext2" runat="server" Font-Size="16px"></asp:Label>
                        <asp:Label ID="Orderaddr2" runat="server" Font-Size="16px" Visible="False"></asp:Label>
                        <asp:Button ID="Send2" runat="server" Font-Size="18px" Text="Send" 
                            BackColor="#009933" Font-Bold="True" ForeColor="#66FFFF" />
                        <asp:Button ID="Cancel2" runat="server" Font-Size="18px" Text="Cancel" 
                            BackColor="Red" Font-Bold="True" ForeColor="#FFFF99" 
                            CausesValidation="False" />
                    </td>
                </tr>
            </table>
            </div>
        </asp:Panel>
    <br /><br />
    <div>
        <asp:Button ID="FirstOrderList" runat="server" Font-Size="16px" 
            Text="First Order View" BackColor="#0066FF" Font-Bold="True" 
            ForeColor="White" Height="40px" />
        &nbsp;<asp:Button ID="FinalOrderList" runat="server" Font-Size="16px" 
            Text="Final Order View" BackColor="#FF6600" Font-Bold="True" 
            ForeColor="Aqua" Height="40px" />
        &nbsp;<asp:Label ID="Viewkey" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Viewkey2" runat="server" Visible="False"></asp:Label>
    </div>
    <asp:Panel ID="PanelFirstOrder" runat="server" BackColor="#999966" 
        Font-Size="18px" ForeColor="#003300" Visible="False">
    <div style="font-size: 35px; font-weight: bold; text-align: center; padding: 10px 0px 10px 0px; color: #66FFFF; text-decoration: underline;">
        Customer First Order List</div>

    </asp:Panel>
        <asp:Panel ID="PanelSecondorder" runat="server" BackColor="#999966" 
        Font-Size="18px" ForeColor="#003300" Visible="False">
    <div style="font-size: 35px; font-weight: bold; text-align: center; padding: 10px 0px 10px 0px; color: #66FFFF; text-decoration: underline;">
        Customer Final Order List</div>
    </asp:Panel>
    <asp:Panel ID="OrderViewPane" runat="server" ScrollBars="Horizontal" 
        Visible="False">
    <asp:GridView ID="GridOrder1" runat="server" DataSourceID="SqlDataGridView1" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
            AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
            <EmptyDataTemplate>
            <div style="width: auto; height: 50px; font-size: 30px; font-family: 'Bauhaus 93'; color: #009933"> No Data Available.</div>
            </EmptyDataTemplate>
        <Columns>
        <asp:TemplateField>
        <ItemTemplate>
        <asp:LinkButton ID="SelectRow" runat="server" Text="Details" CommandArgument='<%# Bind("OrderNo") %>' />
        </ItemTemplate>
        </asp:TemplateField>
            <asp:BoundField DataField="OrderNo" HeaderText="OrderNo" 
                SortExpression="OrderNo" />
            <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" 
                SortExpression="CustomerId" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="OrderTime" HeaderText="OrderTime" 
                SortExpression="OrderTime" />
            <asp:BoundField DataField="Catagory" HeaderText="Catagory" 
                SortExpression="Catagory" />
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                SortExpression="ItemName" />
            <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                SortExpression="DateFrom" />
            <asp:BoundField DataField="DateTo" HeaderText="DateTo" 
                SortExpression="DateTo" />
            <asp:BoundField DataField="Validity" HeaderText="Validity" 
                SortExpression="Validity" />
            <asp:BoundField DataField="Rate" HeaderText="Rate" 
                SortExpression="Rate" />
            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                SortExpression="TotalPrice" />
        </Columns>
        <HeaderStyle BackColor="#3366CC" Font-Size="18px" ForeColor="White" />
        <RowStyle BackColor="#E1E1E1" />
        </asp:GridView>
            <asp:Button ID="ExportExcelButton" runat="server" BackColor="#0033CC" Font-Bold="True" 
            Font-Size="16px" ForeColor="Yellow" Text="Export To Excel" Width="150px" 
            Visible="False" />
        <asp:Label ID="ordertemp" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:LinkButton ID="LinkHideView" runat="server" Text="Hide" Font-Size="20px" />
    </asp:Panel>
    <div>
    <asp:SqlDataSource ID="SqlDataGridView1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            
            SelectCommand="SELECT DISTINCT [OrderNo], [CustomerId], [OrderDate], [OrderTime], [Catagory], [ItemName], [DateFrom], [DateTo], [Validity], [Rate], [TotalPrice] FROM [OrderBook] WHERE ([flag] = @flag)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ordertemp" Name="flag" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    </div>
    
    <asp:Panel ID="DetailPanel" runat="server" Visible="False">
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource5">
            <ItemTemplate>
            <div style="background-color: #CCCCCC; font-size: 20px; line-height: 25px;">
            <table cellspacing="1" class="style1">
            <tr>
                <td colspan="2" style="border: 1px solid #000000; width: 470px">
                OrderNo:
                <asp:Label ID="OrderNoLabel" runat="server" Text='<%# Bind("OrderNo") %>' />
                <br />
                CustomerId:
                <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Bind("CustomerId") %>' />
                </td>
                <td style="border-style: solid; border-width: 1px 0px 1px 0px; border-color: #000000; width: 235px">
                    &nbsp;</td>
               <td style="border: 1px solid #000000; width: 235px">
                 OrderDate:
                <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Bind("OrderDate") %>' />
                <br />
                OrderTime:
                <asp:Label ID="OrderTimeLabel" runat="server" Text='<%# Bind("OrderTime") %>' />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-style: solid; border-width: 0px 1px 1px 1px; border-color: #000000; width: 470px">
                Catagory:
                <asp:Label ID="CatagoryLabel" runat="server" Text='<%# Bind("Catagory") %>' />
                <br />
                ItemName:
                <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Bind("ItemName") %>' />
                </td>
                <td colspan="2" style="border-style: solid; border-width: 0px 1px 1px 0px; border-color: #000000; width: 470px">
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Bind("Description") %>' />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-style: solid; border-width: 0px 1px 1px 1px; border-color: #000000;">
                AdvertiseType:
                <asp:Label ID="AdvertiseTypeLabel" runat="server" 
                    Text='<%# Bind("AdvertiseType") %>' />
                <br />
                DateFrom:
                <asp:Label ID="DateFromLabel" runat="server" Text='<%# Bind("DateFrom") %>' />
                <br />
                DateTo:
                <asp:Label ID="DateToLabel" runat="server" Text='<%# Bind("DateTo") %>' />
                <br />
                Validity:
                <asp:Label ID="ValidityLabel" runat="server" Text='<%# Bind("Validity") %>' />
                <br /><br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                <br />
                District:
                <asp:Label ID="DistrictLabel" runat="server" Text='<%# Bind("District") %>' />
                <br />
                Location:
                <asp:Label ID="LocationLabel" runat="server" Text='<%# Bind("Location") %>' />
                <br />
                </td>
                <td colspan="2" style="border-style: solid; border-width: 0px 1px 1px 0px; border-color: #000000">
                TimeFrom:
                <asp:Label ID="TimeFromLabel" runat="server" Text='<%# Bind("TimeFrom") %>' />
                <br />
                TimeTo:
                <asp:Label ID="TimeToLabel" runat="server" Text='<%# Bind("TimeTo") %>' />
                <br />
                Duration:
                <asp:Label ID="DurationLabel" runat="server" Text='<%# Bind("Duration") %>' />
                <br />
                RepeatTime:
                <asp:Label ID="RepeatTimeLabel" runat="server" 
                    Text='<%# Bind("RepeatTime") %>' />
                <br /><br />
                Heigh:
                <asp:Label ID="HeighLabel" runat="server" Text='<%# Bind("Heigh") %>' />
                <br />
                Width:
                <asp:Label ID="WidthLabel" runat="server" Text='<%# Bind("Width") %>' />
                <br />
                </td>
            </tr>
            <tr>
            <td colspan="4" style="border-style: solid; border-width: 0px 1px 1px 1px; border-color: #000000;">
            Rate:
                <asp:Label ID="RateLabel" runat="server" Text='<%# Bind("Rate") %>' />
                <br />
                TotalPrice:
                <asp:Label ID="TotalPriceLabel" runat="server" 
                    Text='<%# Bind("TotalPrice") %>' />
            </td>
            </tr>
        </table>
            </div>
            </ItemTemplate>
        </asp:FormView>
        <asp:LinkButton ID="HideDetail" runat="server" Font-Size="20px">Hide</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT [OrderNo], [CustomerId], [OrderDate], [OrderTime], [Catagory], [ItemName], [Description], [AdvertiseType], [DateFrom], [DateTo], [Validity], [TimeFrom], [TimeTo], [Duration], [RepeatTime], [Heigh], [Width], [State], [District], [Location], [Rate], [TotalPrice] FROM [OrderBook] WHERE ([OrderNo] = @OrderNo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Detailorder" Name="OrderNo" 
                    PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Detailorder" runat="server"></asp:Label>
    </asp:Panel>
    </asp:Content>

