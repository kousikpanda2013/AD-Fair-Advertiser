<%@ Page Title="News Paper" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="CustomerNewspaper.aspx.vb" Inherits="CustomerNewspaper" %>

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
            GridLines="None" Width="960px" DataKeyNames="Slno">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Slno" HeaderText="Slno" 
                    SortExpression="Slno" ReadOnly="True" />
                <asp:BoundField DataField="PaperName" HeaderText="PaperName" 
                    SortExpression="PaperName" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                    SortExpression="DateFrom" />
                <asp:BoundField DataField="DateTo" HeaderText="DateTo" 
                    SortExpression="DateTo" />
                <asp:BoundField DataField="Page" HeaderText="Page" 
                    SortExpression="Page" />
                <asp:BoundField DataField="Pattern" HeaderText="Pattern" 
                    SortExpression="Pattern" />
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
            
            
            SelectCommand="SELECT * FROM [AdminNewspaper] WHERE ([Slno] &gt; @Slno)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
<div style="height:auto; font-family: 'Comic Sans MS'; font-size: 20px; font-weight: bold; color: #FFFF00; float: left; display: inline-block; background-image: url('images/backgr/bg1.jpg'); width: 960px;">
    <table cellspacing="1" class="style1">
        <tr style=" vertical-align: top;">
            <td style="padding: 15px 0px 15px 40px; width: 250px; line-height: 32px;">
                Select Newspaper<br />
                Description<br />
                Date :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From<br />
                Total Days<br />
                Advertise Type<br />
                Page No<br />
                Height(cm)<br />
                How Many Days/Month<br />
                Upload your File<br />
                Total Price<br />
            </td>
            <td style="padding-top: 15px; width: 300px; line-height: 32px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="107px" 
                    AutoPostBack="True" DataSourceID="SqlDataSource2" 
                    DataTextField="PaperName" DataValueField="PaperName"/>
                <br />
                <asp:Label ID="DescriptionLabel" runat="server" ForeColor="Aqua" Text="Label"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" Width="107px" 
                    DataSourceID="SqlDataSource3"  DataTextField="DateFrom" 
                    DataValueField="DateFrom" AutoPostBack="True"/>
                &nbsp;To
                <asp:DropDownList ID="DropDownList3" runat="server" Width="107px" 
                    DataSourceID="SqlDataSource4"  DataTextField="DateTo" 
                    DataValueField="DateTo" AutoPostBack="True"/>
                <br />
                <asp:Label ID="Validity1" runat="server" ForeColor="Aqua"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList4" runat="server" Width="107px" 
                    DataSourceID="SqlDataSource5"  DataTextField="Pattern" 
                    DataValueField="Pattern" AutoPostBack="True"/>
                <br />
                <asp:DropDownList ID="DropDownList5" runat="server" Width="107px" 
                    DataSourceID="SqlDataSource6"  DataTextField="Page" 
                    DataValueField="Page" AutoPostBack="True"/>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Width="55px"></asp:TextBox>
                &nbsp;Width(cm)
                <asp:TextBox ID="TextBox3" runat="server" Width="55px"></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" ToolTip="Description"></asp:TextBox>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Aqua"></asp:Label>
            </td>
            <td rowspan="5" 
                
                
                style="border-left-style: dashed; border-width: 2px; border-color: #99FF99; ">
                                <asp:Image ID="Image1" runat="server" Height="159px" Width="175px" 
                                    ImageUrl="~/images/icon/newspaper.gif" />
                                <asp:Image ID="Image4" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/subsriptions.gif" />
                                    <br />
                                <asp:Image ID="Image2" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/download.jpg" />
                                <asp:Image ID="Image6" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/Statesman.png" BorderColor="Red" BorderStyle="Solid" 
                                    BorderWidth="1px" />
                <br />
                                <asp:Image ID="Image3" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/Obetuary-Ad-in-Times-of-india.gif" 
                                    BorderColor="Aqua" BorderStyle="Solid" BorderWidth="1px" />
                                <asp:Image ID="Image5" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/times-of-india-newspaper-myadvtcorner.gif" />
                <br />
                                </td>
        </tr>
        <tr style="line-height: 30px; vertical-align: top;">
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Proceed To Pay" Width="132px" BackColor="Red" 
                Font-Bold="True" Font-Size="Medium" ForeColor="Aqua" Height="35px" />&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" Width="100px" ImageUrl="~/images/icon/submit1.jpg" />
            &nbsp;<asp:Button ID="Button2" runat="server" Font-Size="18px" Height="36px" 
                    Text="View Cart" BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
            </td>
        </tr>
        <tr style="line-height: 30px; vertical-align: top;">
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label3" runat="server" Text="Are you" />
            </td>
        </tr>
        <tr style="line-height: 30px; vertical-align: top;">
            <td colspan="2">
                <asp:Label ID="ErMsg" runat="server"></asp:Label>
                <br />
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
        
        SelectCommand="SELECT DISTINCT [PaperName] FROM [AdminNewspaper] WHERE ([Slno] &gt; @Slno)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        
        SelectCommand="SELECT DISTINCT [DateFrom] FROM [AdminNewspaper] WHERE ([PaperName] = @PaperName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="PaperName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        
        
        SelectCommand="SELECT DISTINCT [PaperName], [DateTo] FROM [AdminNewspaper] WHERE (([PaperName] = @PaperName) AND ([DateFrom] = @DateFrom))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="PaperName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        
        SelectCommand="SELECT DISTINCT [Pattern] FROM [AdminNewspaper] WHERE (([PaperName] = @PaperName) AND ([DateFrom] = @DateFrom) AND ([DateTo] = @DateTo))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="PaperName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="DateTo" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        
        
        SelectCommand="SELECT DISTINCT [Page] FROM [AdminNewspaper] WHERE (([PaperName] = @PaperName) AND ([DateFrom] = @DateFrom) AND ([DateTo] = @DateTo) AND ([Pattern] = @Pattern))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="PaperName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="DateTo" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList4" Name="Pattern" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>
</asp:Content>

