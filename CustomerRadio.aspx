<%@ Page Title="Radio" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="CustomerRadio.aspx.vb" Inherits="CustomerRadio" %>

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
                <asp:BoundField DataField="Frequency" HeaderText="Frequency" 
                    SortExpression="Frequency" />
                <asp:BoundField DataField="TimeFrom" HeaderText="TimeFrom" 
                    SortExpression="TimeFrom" />
                <asp:BoundField DataField="TimeTo" HeaderText="TimeTo" 
                    SortExpression="TimeTo" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" 
                    SortExpression="Duration" />
                <asp:BoundField DataField="Repeat" HeaderText="Repeat" 
                    SortExpression="Repeat" />
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
            
            
            SelectCommand="SELECT [Frequency], [TimeFrom], [TimeTo], [Description], [Duration], [Repeat], [Validity], [Price] FROM [AdminRadio] WHERE ([Slno] &gt; @Slno)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="Slno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
<div style="height:auto; font-family: 'Comic Sans MS'; font-size: 20px; font-weight: bold; color: #FFFF00; float: left; display: inline-block; background-image: url('images/backgr/bg1.jpg'); width: 960px;">
    <table cellspacing="1" class="style1">
        <tr style=" vertical-align: top;">
            <td style="padding: 15px 0px 15px 40px; width: 250px; line-height: 32px;">
                Frequency Name<br />
                Description<br />
                Date :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From<br />
                Time :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From<br />
                Duration<br />
                Repeat Time<br />
                Total Days<br />
                Upload your File<br />
                Total Price<br />
            </td>
            <td style="padding-top: 15px; width: 300px; line-height: 32px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="107px" 
                    AutoPostBack="True" DataSourceID="SqlDataSource2" 
                    DataTextField="Frequency" DataValueField="Frequency"/>
                <br />
                <asp:Label ID="DescriptionLabel1" runat="server" ForeColor="Aqua" Text="Label"></asp:Label>
                <br />
                <asp:TextBox ID="DFrom" runat="server" Width="100px" PlaceHolder="dd-mm-yyyy" 
                    AutoPostBack="True"></asp:TextBox>
                &nbsp;To
                <asp:TextBox ID="DTo" runat="server" Width="100px" PlaceHolder="dd-mm-yyyy" 
                    AutoPostBack="True"></asp:TextBox>
                <br />
                <asp:DropDownList ID="DropDownList4" runat="server" Width="103px" 
                    AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="TimeFrom" 
                    DataValueField="TimeFrom"/>
&nbsp;To
                <asp:DropDownList ID="DropDownList5" runat="server" Width="103px" 
                    DataSourceID="SqlDataSource6"  DataTextField="TimeTo" 
                    DataValueField="TimeTo" AutoPostBack="True"/>
                <br />
                <asp:TextBox ID="Duration1" runat="server" AutoPostBack="True"></asp:TextBox>
                <br />
                <asp:TextBox ID="Repeattime" runat="server" AutoPostBack="True"></asp:TextBox>
                <br />
                <asp:Label ID="Validity1" runat="server" ForeColor="Aqua"></asp:Label>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" accept="audio/mp3"/>
                <br />
                <asp:Label ID="TRate" runat="server" ForeColor="Aqua"></asp:Label>
            &nbsp;(<asp:Label ID="ratecharge" runat="server" ForeColor="Aqua"></asp:Label>
                /10sec)</td>
            <td rowspan="5" 
                
                
                style="border-left-style: dashed; border-width: 2px; border-color: #99FF99; ">
                                <asp:Image ID="Image1" runat="server" Height="159px" Width="175px" 
                                    ImageUrl="~/images/icon/91.9.jpg" />
                                <asp:Image ID="Image4" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/92.7.jpg" />
                                    <br />
                                <asp:Image ID="Image2" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/98.3.jpg" />
                                <asp:Image ID="Image6" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/105.5.gif" />
                <br />
                                <asp:Image ID="Image3" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/102_FM.gif" />
                                <asp:Image ID="Image5" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/12-MorningRadio.gif" />
                <br />
                                </td>
        </tr>
        <tr style="line-height: 30px; vertical-align: top;">
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Proceed To Pay" Width="132px" BackColor="Red" 
                Font-Bold="True" Font-Size="Medium" ForeColor="Aqua" Height="35px" />&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" Width="100px" ImageUrl="~/images/icon/submit1.jpg" />
                &nbsp;<asp:Button ID="Button2" runat="server" Height="36px" Text="View Cart" 
                    Font-Size="18px" BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
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
        SelectCommand="SELECT DISTINCT [Frequency] FROM [AdminRadio]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT DISTINCT [TimeFrom] FROM [AdminRadio] WHERE ([Frequency] = @Frequency)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Frequency" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT DISTINCT [TimeTo] FROM [AdminRadio] WHERE (([Frequency] = @Frequency) AND ([TimeFrom] = @TimeFrom))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Frequency" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList4" Name="TimeFrom" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>
</asp:Content>

