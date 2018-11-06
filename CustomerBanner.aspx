<%@ Page Title="Banner" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="CustomerBanner.aspx.vb" Inherits="CustomerBanner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="MagazinePanel" runat="server" Width="960px">
        <div style="height: 30px; background-color: #99FF33;">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" Width="960px">
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
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
        <asp:LinkButton ID="GridStch" runat="server" Font-Size="20px" 
            CausesValidation="False">Hide Table</asp:LinkButton>
        <asp:Label ID="GridLbl" runat="server" Visible="False"></asp:Label>
    </asp:Panel>
    <br />
<div style="height:auto; font-family: 'Comic Sans MS'; font-size: 20px; font-weight: bold; color: #FFFF00; background-image: url('images/backgr/bg1.jpg');">
        <table cellspacing="1" class="style1">
                            <tr style="line-height: 32px; vertical-align: top;">
                                <td style="padding: 15px 0px 15px 40px; width: 250px;">
                                    Banner Type<br />
                                    Banner Frame Size:-<br />
                                    Height
                                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="X"></asp:Label>
&nbsp;Width<br />
                                    State<br />
                                    District<br />
                                    Location<br />
                                    Advertise Date:&nbsp; From<br />
                                    Validity<br />
                                    Upload your File<br />
                                    Total Price<br />
                                </td>
                                <td style="padding-top: 15px; width: 300px;">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="BannerType" DataValueField="BannerType">
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server" Width="60px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="X"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="60px" AutoPostBack="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;(in ft&quot;)<br />
                                    <asp:DropDownList ID="DropDownList2" runat="server" Width="150px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource3"  DataTextField="State" DataValueField="State">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:DropDownList ID="DropDownList3" runat="server" Width="150px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource4"  DataTextField="District" DataValueField="District">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:DropDownList ID="DropDownList4" runat="server" Width="150px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Location" DataValueField="Location">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:DropDownList ID="DropDownList5" runat="server" Width="110px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource6"  DataTextField="DateFrom" 
                                        DataValueField="DateFrom">
                                    </asp:DropDownList>
                                    &nbsp;To
                                    <asp:DropDownList ID="DropDownList6" runat="server" Width="110px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource7"  DataTextField="DateTo" 
                                        DataValueField="DateTo">
                                    </asp:DropDownList>
                                    <br />
                <asp:Label ID="Tdayas" runat="server" ForeColor="Aqua"></asp:Label>
                                    (month)<br />
                        <asp:FileUpload ID="FileUpload1" runat="server" accept="Image/.jpg" Width="227px"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="FileUpload1" ForeColor="#CC0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:Label ID="GrandPrice1" runat="server" ForeColor="Aqua"></asp:Label>
                                    (<asp:Label ID="Tprice1" runat="server" />
                                    /)</td>
                                <td rowspan="5" 
                
                
                style="border-left-style: dashed; border-width: 2px; border-color: #99FF99; ">
                                <asp:Image ID="Image1" runat="server" Height="159px" Width="175px" 
                                    ImageUrl="~/images/icon/Birla-Gold-OOH-Bus-Ad.jpg" />
                                <asp:Image ID="Image4" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/news_29082013_05.gif" />
                                    <br />
                                <asp:Image ID="Image2" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/ad_3_2.jpg" />
                                <asp:Image ID="Image6" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/banner2.jpg" />
                <br />
                                <asp:Image ID="Image3" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/slide-11.jpg" />
                                <asp:Image ID="Image5" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/First Image in the first frame (Custom).jpg" />
                <br />
                                </td>
                            </tr>
                            <tr style="line-height: 30px; vertical-align: top;">
                                <td colspan="2" style="text-align: right; padding-right: 50px;">
                        &nbsp;<asp:Button ID="Button3" runat="server" Height="36px" Text="Submit" 
                    Font-Size="18px" BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
                                &nbsp;<asp:Button ID="Button2" runat="server" Font-Size="18px" Height="36px" 
                                        Text="View Cart" BackColor="#CC6600" Font-Bold="True" ForeColor="White" 
                                        CausesValidation="False" />
                                </td>
                            </tr>
                            <tr style="line-height: 30px; vertical-align: top;">
                                <td colspan="2" style="text-align: center">
                                    <asp:Label ID="MessageBox1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="line-height: 30px; vertical-align: top;">
                                <td colspan="2" 
                                    style="border-bottom-style: dashed; border-width: 2px; border-color: #CC0000">
                                    <asp:Label ID="ErMsg" runat="server" Font-Names="Bodoni MT" ForeColor="#009933"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                            <td colspan="2" style="font-size: 15px; line-height: 20px;">
                <asp:Panel ID="temppanel" runat="server">
                    <asp:Label ID="UserId" runat="server" />
                    <asp:Label ID="TSlno" runat="server" />
                    <asp:Label ID="Orderid" runat="server" />
                    <asp:Label ID="Rate" runat="server" />
                    <asp:Label ID="Tprice" runat="server" />
                 </asp:Panel>
           </td>
                            </tr>
                        </table>
    </div>
<div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
        
            SelectCommand="SELECT [BannerType], [State], [District], [Location], [DateFrom], [DateTo], [Price] FROM [AdminBanner] WHERE ([Slno] &gt; @Slno)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT DISTINCT [BannerType] FROM [AdminBanner] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT DISTINCT [State] FROM [AdminBanner] WHERE ([BannerType] = @BannerType)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="BannerType" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT DISTINCT [District] FROM [AdminBanner] WHERE (([BannerType] = @BannerType) AND ([State] = @State))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="BannerType" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="State" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [Location] FROM [AdminBanner] WHERE (([BannerType] = @BannerType) AND ([District] = @District))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="BannerType" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="District" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT [DateFrom] FROM [AdminBanner] WHERE (([BannerType] = @BannerType) AND ([Location] = @Location))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="BannerType" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList4" Name="Location" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT [DateTo] FROM [AdminBanner] WHERE (([BannerType] = @BannerType) AND ([Location] = @Location) AND ([DateFrom] = @DateFrom))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="BannerType" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList4" Name="Location" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList5" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>

</div>






















</asp:Content>

