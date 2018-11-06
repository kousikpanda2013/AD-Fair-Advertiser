<%@ Page Title="" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="CustomerWebsite.aspx.vb" Inherits="CWebsite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="ecmascript" type="text/javascript">

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="WebsitePanel" runat="server" Width="960px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" 
            GridLines="None" Width="960px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="WebsiteName" HeaderText="WebsiteName" 
                    SortExpression="WebsiteName" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                    SortExpression="DateFrom" />
                <asp:BoundField DataField="DateTo" HeaderText="DateTo" 
                    SortExpression="DateTo" />
                <asp:BoundField DataField="AdvertiseType" HeaderText="AdvertiseType" 
                    SortExpression="AdvertiseType" />
                <asp:BoundField DataField="Price" HeaderText="Price" 
                    SortExpression="Price" />
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
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT DISTINCT [WebsiteName], [Description], [DateFrom], [DateTo], [AdvertiseType], [Price] FROM [AdminInterNet] ORDER BY [WebsiteName], [AdvertiseType], [DateFrom]">
        </asp:SqlDataSource>
        <asp:LinkButton ID="GridStch" runat="server" Font-Size="20px" 
            CausesValidation="False">Hide Table</asp:LinkButton>
        <asp:Label ID="GridLbl" runat="server" Visible="False"></asp:Label>
    </asp:Panel>
<div style="height:auto; font-family: 'Comic Sans MS'; font-size: 20px; font-weight: bold; color: #FFFF00; float: left; display: inline-block; background-image: url('images/backgr/bg1.jpg');">
    <table cellspacing="1" class="style1">
        <tr style="">
            <td style="padding: 15px 0px 15px 40px; width: 250px; height: auto; line-height: 35px; vertical-align: top;">
                Website Name<br />
                Description<br />
                Advertise Date : From-<br />
                Total Validity<br />
                Advertise Type<br />
                Height(sq/cm.)<br />
                Width(sq/cm.)<br />
                Upload your File<br />
                Total Price<br />
            </td>
            <td style="padding: 15px 0px 0px 5px; width: 300px; height: auto; line-height: 35px; vertical-align: top;">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataTextField="WebsiteName" DataValueField="WebsiteName" Width="110px" 
                    DataSourceID="SqlDataSource1" AppendDataBoundItems="True">
                </asp:DropDownList>
                <br />
                <asp:Label ID="Descrioption1" runat="server" ForeColor="Aqua">
                </asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataTextField="DateFrom" DataValueField="DateFrom" Width="110px" 
                    DataSourceID="SqlDataSource2">
                </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    DataTextField="DateTo" DataValueField="DateTo" Width="110px" 
                    DataSourceID="SqlDataSource3">
                </asp:DropDownList>
                <br />
                <asp:Label ID="Tdayas" runat="server" ForeColor="Aqua"></asp:Label>
                &nbsp;(month)<br />
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    DataTextField="AdvertiseType" DataValueField="AdvertiseType" Width="110px" 
                    DataSourceID="SqlDataSource4">
                </asp:DropDownList>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Width="110px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox2" ForeColor="#CC0000" 
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Width="110px" AutoPostBack="True"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox3" ForeColor="#CC0000" 
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Width="220px" accept="image/*"/>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="FileUpload1" ForeColor="#CC0000" 
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Totalprice" runat="server" ForeColor="Aqua"></asp:Label>
                (<asp:Label ID="Tprice1" runat="server" />
                 /month)</td>
            <td rowspan="5" 
                
                
                style="border-left-style: dashed; border-width: 2px; border-color: #99FF99; ">
                                <asp:Image ID="Image1" runat="server" Height="159px" Width="170px" 
                                    ImageUrl="~/images/icon/w4.gif" />
                                <asp:Image ID="Image4" runat="server" Height="159px" 
                    Width="170px" ImageUrl="~/images/icon/w2.gif" />
                                    <br />
                                <asp:Image ID="Image2" runat="server" Height="159px" 
                    Width="170px" ImageUrl="~/images/icon/w5.gif" />
                                <asp:Image ID="Image6" runat="server" Height="159px" 
                    Width="170px" ImageUrl="~/images/icon/Facebook-Advertising.jpg" />
                <br />
                                <asp:Image ID="Image3" runat="server" Height="159px" 
                    Width="170px" ImageUrl="~/images/icon/w6.gif" />
                                <asp:Image ID="Image5" runat="server" Height="159px" 
                    Width="170px" ImageUrl="~/images/icon/w3.gif" />
                <br />
                                </td>
        </tr>
        <tr style="line-height: 30px; vertical-align: top;">
            <td colspan="2" style="text-align: right; padding-right: 50px;">
                <asp:Button ID="Button2" runat="server" Height="36px" Text="Submit" 
                    Font-Size="18px" BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="36px" Text="View Cart" 
                    Font-Size="18px" BackColor="#CC6600" Font-Bold="True" ForeColor="White" 
                    CausesValidation="False" />
            </td>
        </tr>
        <tr style="line-height: 30px; vertical-align: top;">
            <td colspan="2" style="text-align: center">
                <asp:Label ID="MessageBox1" runat="server" />
            </td>
        </tr>
        <tr style="line-height: 30px; vertical-align: top;">
            <td colspan="2">
                <asp:Label ID="ErMsg" runat="server" Font-Names="Bodoni MT" ForeColor="#009933"></asp:Label>
                <br />
            </td>
            
        </tr>
        <tr>
            <td colspan="2" style="font-size: 15px; line-height: 20px;">
                <asp:Panel ID="temppanel" runat="server" Height="32px">
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
        SelectCommand="SELECT DISTINCT [WebsiteName] FROM [AdminInterNet]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT DISTINCT [DateFrom] FROM [AdminInterNet] WHERE ([WebsiteName] = @WebsiteName)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="WebsiteName" 
            PropertyName="SelectedValue" Type="String" DefaultValue="" />
    </SelectParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT [DateTo] FROM [AdminInterNet] WHERE (([WebsiteName] = @WebsiteName) AND ([DateFrom] = @DateFrom))">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="WebsiteName" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
            PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT [AdvertiseType] FROM [AdminInterNet] WHERE (([WebsiteName] = @WebsiteName) AND ([DateFrom] = @DateFrom) AND ([DateTo] = @DateTo))">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="WebsiteName" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="DropDownList3" Name="DateTo" 
            PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

