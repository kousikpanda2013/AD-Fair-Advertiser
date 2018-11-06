<%@ Page Title="Magazine" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="CustomerMagazine.aspx.vb" Inherits="CustomerMagazine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 30px; background-color: #99FF33;">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
    <asp:Panel ID="MagazinePanel" runat="server" Width="960px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" Width="960px">
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
                <asp:BoundField DataField="AdvertiseType" HeaderText="AdvertiseType" 
                    SortExpression="AdvertiseType" />
                <asp:BoundField DataField="Validity" HeaderText="Validity" 
                    SortExpression="Validity" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT [MagazineName], [Description], [DateFrom], [DateTo], [AdvertiseType], [Validity], [Price] FROM [AdminMagazine] WHERE ([Slno] &gt; @Slno)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
<div style="height:auto; font-family: 'Comic Sans MS'; font-size: 20px; font-weight: bold; color: #FFFF00; background-image: url('images/backgr/bg1.jpg');">
        <table cellspacing="1" class="style1">
                            <tr style="line-height: 32px; vertical-align: top;">
                                <td style="padding: 15px 0px 15px 40px; width: 250px;">
                                    Magazine Name<br />
                                    Description<br />
                                    Advertise Date:&nbsp;&nbsp; From-<br />
                                    Total Days<br />
                                    Advertise Page<br />
                                    Height(Sq.cm)<br />
                                    Width(sq.cm)<br />
                                    Pattern<br />
                                    Upload your File<br />
                                    Total Price<br />
                                </td>
                                <td style="padding-top: 15px; width: 300px;">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="110px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="MagazineName" 
                                        DataValueField="MagazineName">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:Label ID="DescriptionLabel1" runat="server" ForeColor="Aqua" Text="Label"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="DropDownList2" runat="server" Width="110px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="DateFrom" 
                                        DataValueField="DateFrom">
                                    </asp:DropDownList>
                        &nbsp;To-
                                    <asp:DropDownList ID="DropDownList3" runat="server" Width="110px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="DateTo" 
                                        DataValueField="DateTo">
                                    </asp:DropDownList>
                                    <br />
                <asp:Label ID="Validity1" runat="server" ForeColor="Aqua"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="DropDownList6" runat="server">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:TextBox ID="HeightText1" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:TextBox ID="HeightText2" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:DropDownList ID="DropDownList7" runat="server">
                                    </asp:DropDownList>
                                    <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="210px"/>
                                    <br />
                                    <asp:Label ID="GrandPrice1" runat="server" ForeColor="Aqua"></asp:Label>
                                    <br />
                                </td>
                                <td rowspan="5" 
                
                
                style="border-left-style: dashed; border-width: 2px; border-color: #99FF99; ">
                                <asp:Image ID="Image1" runat="server" Height="159px" Width="175px" 
                                    ImageUrl="~/images/icon/m1.jpg" />
                                <asp:Image ID="Image4" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/m2.jpg" />
                                    <br />
                                <asp:Image ID="Image2" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/m3.jpg" />
                                <asp:Image ID="Image6" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/m4.jpg" />
                <br />
                                <asp:Image ID="Image3" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/backgr/M6.jpg" />
                                <asp:Image ID="Image5" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/m5.jpg" />
                <br />
                                </td>
                            </tr>
                            <tr style="line-height: 30px; vertical-align: top;">
                                <td colspan="2" style="text-align: center">
                                    <asp:Button 
                            ID="ProceedToPay1" runat="server" Text="Proceed To Pay" Width="132px" BackColor="Red" 
                            Font-Bold="True" Font-Size="Medium" ForeColor="Aqua" Height="35px" Visible="False" />
                        &nbsp;<asp:ImageButton ID="SubmitOrder1" runat="server" Height="36px" Width="100px" 
                            ImageUrl="~/images/icon/submit1.jpg" />
                                &nbsp;<asp:Button ID="Button2" runat="server" Font-Size="18px" Height="36px" 
                                        Text="View Cart" BackColor="#CC6600" ForeColor="White" Font-Bold="True" />
                                </td>
                            </tr>
                            <tr style="line-height: 30px; vertical-align: top;">
                                <td colspan="2" style="text-align: center">
                                    <asp:Label ID="MessageBox1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="line-height: 30px; vertical-align: top;">
                                <td colspan="2">
                                    <asp:Label ID="ErMsg" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="available1" runat="server" />
                                </td>
                            </tr>
                            <tr style="line-height: 30px; vertical-align: top;">
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

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT [MagazineName] FROM [AdminMagazine] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT [DateFrom] FROM [AdminMagazine] WHERE ([MagazineName] = @MagazineName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="MagazineName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT DISTINCT [DateTo] FROM [AdminMagazine] WHERE (([MagazineName] = @MagazineName) AND ([DateFrom] = @DateFrom))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="MagazineName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT [Page] FROM [AdminMagazine] WHERE (([MagazineName] = @MagazineName) AND ([DateFrom] = @DateFrom) AND ([DateTo] = @DateTo))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="MagazineName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="DateTo" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>
</asp:Content>

