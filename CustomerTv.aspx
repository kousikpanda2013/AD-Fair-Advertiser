<%@ Page Title="Television" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="CustomerTv.aspx.vb" Inherits="CustomerTv" %>

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
                <asp:BoundField DataField="ChannelName" HeaderText="ChannelName" 
                    SortExpression="ChannelName" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="TimeFrom" HeaderText="TimeFrom" 
                    SortExpression="TimeFrom" />
                <asp:BoundField DataField="TimeTo" HeaderText="TimeTo" 
                    SortExpression="TimeTo" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" 
                    SortExpression="Duration" />
                <asp:BoundField DataField="Repeat" HeaderText="Repeat" 
                    SortExpression="Repeat" />
                <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                    SortExpression="DateFrom" />
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
    </asp:Panel>
    <br />
<div style="height:auto; font-family: 'Comic Sans MS'; font-size: 20px; font-weight: bold; color: #FFFF00; background-image: url('images/backgr/bg1.jpg');">
        <table cellspacing="1" class="style1">
                            <tr style="line-height: 32px; vertical-align: top;">
                                <td style="padding: 15px 0px 15px 40px; width: 250px;">
                                    Channel Name<br />
                                    Description<br />
                                    Advertise Date:&nbsp;&nbsp;From-<br />
                                    Advertise Time:&nbsp; From-<br />
                                    Advertise Type<br />
                                    Total Days<br />
                                    Duration<br />
                                    Repeat Time<br />
                                    Upload your File<br />
                                    Total Price<br />
                                </td>
                                <td style="padding-top: 15px; width: 300px;">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="150px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource2"  DataTextField="ChannelName" DataValueField="ChannelName">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" ForeColor="Aqua" Text="Label"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="DropDownList2" runat="server" Width="100px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="DateFrom" DataValueField="DateFrom"/>
&nbsp;To-
                                    <asp:DropDownList ID="DropDownList3" runat="server" Width="100px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Validity" DataValueField="Validity"/>
                                    <br />
                                    <asp:DropDownList ID="DropDownList4" runat="server" Width="100px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="TimeFrom" DataValueField="TimeFrom">
                                    </asp:DropDownList>
&nbsp;To-
                                    <asp:DropDownList ID="DropDownList5" runat="server" Width="100px" 
                                        AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="TimeTo" DataValueField="TimeTo">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:DropDownList ID="DropDownList6" runat="server">
                                    </asp:DropDownList>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" ForeColor="Aqua" Text="Label"></asp:Label>
                                    <br />
                                    <asp:Label ID="Validity1" runat="server"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="DurationText" runat="server" AutoPostBack="True"></asp:TextBox>
                                    <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" accept="mp3,mp4,jpg" Width="264px"/>
                                    <br />
                                    <asp:Label ID="GrandPrice1" runat="server" ForeColor="Aqua"></asp:Label>
                                    (<asp:Label ID="evgRate1" runat="server" ForeColor="Aqua"></asp:Label>
                                    /10sec)</td>
                                <td rowspan="5" 
                
                
                style="border-left-style: dashed; border-width: 2px; border-color: #99FF99; ">
                                <asp:Image ID="Image1" runat="server" Height="159px" Width="175px" 
                                    ImageUrl="~/images/icon/STAR_Sports_Logo_New.jpg" BackColor="Red" 
                                        BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" />
                                <asp:Image ID="Image4" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/DDBangla.png" BorderColor="Red" BorderStyle="Solid" 
                                        BorderWidth="1px" />
                                    <br />
                                <asp:Image ID="Image2" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/sonymax.gif" BorderColor="Red" BorderStyle="Solid" 
                                        BorderWidth="1px" />
                                <asp:Image ID="Image6" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/star-jalsha.png" />
                <br />
                                <asp:Image ID="Image3" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/t1.png" BorderColor="Red" BorderStyle="Solid" 
                                        BorderWidth="1px" />
                                <asp:Image ID="Image5" runat="server" Height="159px" 
                    Width="175px" ImageUrl="~/images/icon/discovery_channel_logo.gif" BorderColor="Red" 
                                        BorderStyle="Solid" BorderWidth="1px" />
                <br />
                                </td>
                            </tr>
                            <tr style="line-height: 30px; vertical-align: top;">
                                <td colspan="2" style="text-align: center">
                                    <asp:Button 
                            ID="ProceedToPay1" runat="server" Text="Proceed To Pay" Width="132px" BackColor="Red" 
                            Font-Bold="True" Font-Size="Medium" ForeColor="Aqua" Height="35px" />
                        &nbsp;&nbsp;&nbsp; <asp:ImageButton ID="SubmitOrder1" runat="server" Height="36px" Width="100px" 
                            ImageUrl="~/images/icon/submit1.jpg" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" Height="35px" Text="View Cart" 
                                        Font-Size="18px" BackColor="#CC6600" Font-Bold="True" ForeColor="White" />
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
                                    &nbsp;&nbsp;
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
        
            SelectCommand="SELECT [ChannelName], [Description], [TimeFrom], [TimeTo], [Duration], [Repeat], [DateFrom], [Validity], [Price] FROM [AdminTelevision] WHERE ([Slno] &gt; @Slno)">
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
        
            
            SelectCommand="SELECT DISTINCT [DateFrom] FROM [AdminTelevision] WHERE ([ChannelName] = @ChannelName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ChannelName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            
            SelectCommand="SELECT DISTINCT [Validity] FROM [AdminTelevision] WHERE (([ChannelName] = @ChannelName) AND ([DateFrom] = @DateFrom))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ChannelName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT [TimeFrom] FROM [AdminTelevision] WHERE (([ChannelName] = @ChannelName) AND ([DateFrom] = @DateFrom) AND ([Validity] = @Validity))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ChannelName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="Validity" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [TimeTo] FROM [AdminTelevision] WHERE (([ChannelName] = @ChannelName) AND ([DateFrom] = @DateFrom) AND ([Validity] = @Validity) AND ([TimeFrom] = @TimeFrom))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ChannelName" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="DateFrom" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="Validity" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList4" Name="TimeFrom" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>

</div>
</asp:Content>

