<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="CustomerHome.aspx.vb" Inherits="CustomerHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #FF9966; line-height: 25px; padding-right: 30px; font-size: 20px; text-align: right;">
    <asp:Label ID="UserId" runat="server" Font-Bold="True" ForeColor="#006600" 
            Visible="False"></asp:Label>
    &nbsp;
    <asp:Label ID="UserPassword" runat="server" Font-Bold="True" ForeColor="#660033" 
            Visible="False"></asp:Label>
    &nbsp;
    <asp:Label ID="UserMobile" runat="server" Font-Bold="True" ForeColor="#0000CC" 
            Visible="False"></asp:Label>
    &nbsp;&nbsp; Hi..[ <asp:Label ID="UserName" runat="server" Font-Bold="True"></asp:Label>
        &nbsp;]
        <asp:Image ID="Image7" runat="server" Height="26px" 
            ImageUrl="~/images/icon/WELCOME FIRE GIF.gif" Width="100px" />
        to ADF</div>
        
        <div style="font-size: 25px; font-weight: 300;">
            &lt;|
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                Font-Names="Bookman Old Style" ForeColor="#0000CC" 
                CausesValidation="False">Order Report</asp:LinkButton>
            &nbsp; ||
            <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                Font-Names="Bookman Old Style" ForeColor="#0000CC" 
                CausesValidation="False">Notification</asp:LinkButton>
            &nbsp;|&gt;<br /><br />
    </div>
    <asp:Panel ID="Panel1" runat="server" Visible="False" BackColor="#CC99FF">
    <div style="text-align: center; font-size: 25px; font-weight: bold; text-decoration: underline; background-color: #9933FF;">
        -|| Notification ||-<br /><br /></div><br />
    <asp:GridView ID="GridOrder2" runat="server" DataSourceID="SqlDataSource11" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
            AutoGenerateColumns="False" AllowPaging="True" PageSize="5">
            <Columns>
            <asp:TemplateField>
            <ItemTemplate>
            <asp:LinkButton ID="LinkReply2" runat="server" CommandName="ReplyAdmin" 
                    Text="Reply" CommandArgument='<%# Bind("OrderNo") %>' CausesValidation="False" />
            </ItemTemplate>
            </asp:TemplateField>
                <asp:BoundField DataField="OrderNo" HeaderText="OrderNo" 
                    SortExpression="OrderNo" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="MsgSub" HeaderText="MsgSub" 
                    SortExpression="MsgSub" />
                <asp:BoundField DataField="MsgBody" HeaderText="MsgBody" 
                    SortExpression="MsgBody" />
            </Columns>
        <HeaderStyle BackColor="#3366CC" Font-Size="18px" ForeColor="White" />
        <RowStyle BackColor="#E1E1E1" />
        </asp:GridView>
        <asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False">Hide</asp:LinkButton>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT * FROM [FeedbackTable] WHERE ([MailTo] = @MailTo)">
        <SelectParameters>
            <asp:ControlParameter ControlID="UserId" Name="MailTo" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" Font-Bold="True" Visible="False" 
        BackColor="#CC99FF">
    <div style="text-align: center; font-size: 25px; text-decoration: underline; background-color: #9933FF;">-|| My 
        Order Report ||-<br /><br /></div><br />
        &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="20px" 
            Text="Select Advertise Type"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource8" DataTextField="Catagory" 
            DataValueField="Catagory" Height="21px" Width="85px">
        </asp:DropDownList>
        <br />
        <asp:GridView ID="GridOrder1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" 
            BorderWidth="1px" DataSourceID="SqlDataSource7" PageSize="5">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkShow1" runat="server" CausesValidation="False" 
                            CommandArgument='<%# Bind("OrderNo") %>' CommandName="DetailOrder" 
                            Text="Details " />
                        <asp:LinkButton ID="LinkReply1" runat="server" CausesValidation="False" 
                            CommandArgument='<%# Bind("OrderNo") %>' CommandName="ReplyAdmin" 
                            Text="Reply" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="OrderNo" HeaderText="OrderNo" 
                    SortExpression="OrderNo" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                    SortExpression="OrderDate" />
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                    SortExpression="ItemName" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                    SortExpression="TotalPrice" />
                    <asp:BoundField DataField="flag" HeaderText="Order Type" SortExpression="flag" />
            </Columns>
            <EmptyDataTemplate>
                <div style="width: auto; height: 50px; font-size: 30px; font-family: 'Bauhaus 93'; color: #009933">
                    No Data Available.</div>
            </EmptyDataTemplate>
            <HeaderStyle BackColor="#3366CC" Font-Size="18px" ForeColor="White" />
            <RowStyle BackColor="#E1E1E1" />
        </asp:GridView>
        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False">Hide</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT * FROM [OrderBook] WHERE (([CustomerId] = @CustomerId) AND ([Catagory] = @Catagory))">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserId" Name="CustomerId" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Catagory" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [Catagory] FROM [OrderBook] WHERE ([CustomerId] = @CustomerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserId" Name="CustomerId" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="ReplyPanel" runat="server" Visible="false" BackColor="#CC99FF">
        <div style="width: 400px; font-size: 22px; line-height: 30px; margin-right: auto;">
            <table cellspacing="1" class="style3">
                <tr style="vertical-align: top;">
                    <td>
                        Subject<br /> Message</td>
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
                    <td colspan="2" style="vertical-align: top">
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
    <asp:Panel ID="DetailOrderPanel" runat="server" Visible="False" 
        BackColor="#CC99FF">
    <div style="text-align: center; font-size: 25px; font-weight: bold; text-decoration: underline; background-color: #9933FF;">
        -|| Order Details ||-<br /><br /></div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource10">
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
            Payment Option:
            <asp:Label ID="FlagLabel" runat="server" Text='<%# Bind("Flag") %>' />
            <br />
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
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT * FROM [OrderBook] WHERE ([OrderNo] = @OrderNo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DetailView" Name="OrderNo" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="20px" 
            CausesValidation="False">Hide</asp:LinkButton>
        <asp:Label ID="DetailView" runat="server" Visible="False"></asp:Label>
    </asp:Panel>
    <div style="height: auto; background-position: center; background-image: url('images/backgr/bg10.jpg').; font-size: 20px; line-height: 25px; vertical-align: top; background-color: #6666FF;">
    
        <table class="style1">
            <tr>
                <td colspan="6" style="text-align: center; font-size: 28px; color: #FFFFCC;">
                    ||&nbsp;&nbsp; Advertise Index&nbsp; ||</td>
            </tr>
            <tr style="color: #660033; background-color: #FFFFFF;">
                <td class="style2" style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Radio</td>
                <td class="style2" style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Television</td>
                <td class="style2" style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; News Paper</td>
                <td class="style2" style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Magazine</td>
                <td class="style2" style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Internet</td>
                <td class="style2" style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Banner</td>
            </tr>
            <tr style="vertical-align: top">
                <td class="style3">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Width="155px" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Frequency" HeaderText="Frequency" 
                                SortExpression="Frequency" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td class="style3">
                    <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Width="155px" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="ChannelName" HeaderText="ChannelName" 
                                SortExpression="ChannelName" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td class="style3">
                    <asp:GridView ID="GridView3" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Width="155px" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:BoundField DataField="PaperName" HeaderText="PaperName" 
                                SortExpression="PaperName" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td class="style3">
                    <asp:GridView ID="GridView4" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Width="155px" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource4">
                        <Columns>
                            <asp:BoundField DataField="MagazineName" HeaderText="MagazineName" 
                                SortExpression="MagazineName" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td class="style3">
                    <asp:GridView ID="GridView5" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Width="155px" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource5">
                        <Columns>
                            <asp:BoundField DataField="BannerType" HeaderText="BannerType" 
                                SortExpression="BannerType" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td class="style3">
                    <asp:GridView ID="GridView6" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Width="155px" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource6">
                        <Columns>
                            <asp:BoundField DataField="WebsiteName" HeaderText="WebsiteName" 
                                SortExpression="WebsiteName" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
            </tr>
            </table>
            <div style="line-height: 25px; color: #CC0000; text-align: center; background-color: #CC99FF;">
                || - - - - - - - - - - ||</div>
    </div>
    <div style="width: 960px">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [Frequency] FROM [AdminRadio] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [ChannelName] FROM [AdminTelevision] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [PaperName] FROM [AdminNewspaper] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [MagazineName] FROM [AdminMagazine] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [BannerType] FROM [AdminBanner] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [WebsiteName] FROM [AdminInterNet] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

