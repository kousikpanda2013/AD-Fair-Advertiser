<%@ Page Title="AddCart Order" Language="VB" MasterPageFile="~/UserMaster2.master" AutoEventWireup="false" CodeFile="AddCartDetails.aspx.vb" Inherits="AddCartDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
       td p
        {
            display:inline-block;
            font-weight:bold;
            width:150px;
            color:White;
            font-weight:bold;
            padding:0;
            margin:0;
        }
        ul
        {
            padding:0;
            margin:0;
        }
        ul li
        {
            display:inline-block;
            width:150px;
            padding:0;
            margin:0;
        }
        h7
        {
            font-weight:bold;
            color:White;
        }
        .style2
        {
            height: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="ViewPanel1" runat="server" Visible="False" 
        BackImageUrl="~/images/backgr/c5.jpg">
  <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
      <EmptyDataTemplate>
          <span>No data was returned.</span>
      </EmptyDataTemplate>
      
      <ItemTemplate>
         <div>
      <table id="Table1" runat="server" class="style1">
      <tr>
      <td style="width: 25px; vertical-align: top;">
        <asp:Label ID="Srlno" runat="server" Text='<%# Container.DataItemIndex + 1 %>' />|
      </td>
      <td>
        <p>Order No:</p>
        <p><asp:Label ID="Label2" runat="server" Text='<%# Eval("OrderNo") %>' /></p>
        <h7>Order Date:</h7>
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("OrderDate") %>' />
        <h7>Time:</h7>
        <asp:Label ID="Label8" runat="server" Text='<%# Eval("OrderTime") %>' />
        <br />
        <p>Catagory:</p><p>Item</p><p>Price(r.s)</p>
        <br />
        <ul>
        <li><asp:Label ID="Label4" runat="server" Text='<%# Eval("Catagory") %>' /></li>
        <li><asp:Label ID="Label5" runat="server" Text='<%# Eval("ItemName") %>' /></li>
        <li><asp:Label ID="Label6" runat="server" Text='<%# Eval("TotalPrice") %>' /></li>
        </ul>
        <br />
        <p>Description:</p>
        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Description") %>' />
        </td>
      </tr>
      <tr>
        <td colspan="2" style="text-align: right">
            <asp:LinkButton ID="LinkView" runat="server" Text="Details" CommandName="ViewOrder" CommandArgument='<%# Eval("OrderNo") %>' ToolTip="Details Order" />
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkDelete" runat="server" Text="X" CommandName="DeleteOrder" CommandArgument='<%# Eval("OrderNo") %>' ToolTip="Delete Order" />
            </td>
      </tr>
      </table>
      </div>
      </ItemTemplate>
      <LayoutTemplate>
          <div ID="itemPlaceholderContainer" runat="server" style="">
              <span runat="server" id="itemPlaceholder" />
          </div>
          <div style="">
          </div>
      </LayoutTemplate>
  </asp:ListView>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            SelectCommand="SELECT DISTINCT * FROM [OrderBook] WHERE (([CustomerId] = @CustomerId) AND ([flag] = @flag))">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserId" Name="CustomerId" PropertyName="Text" 
                    Type="String" />
                    <asp:Parameter DefaultValue="temp" Name="flag" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
   <asp:Panel ID="DetailsviewPanel" runat="server" Visible="False">
       <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
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
       <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
           Font-Bold="True" Font-Size="20px" ForeColor="White">Hide</asp:LinkButton>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT DISTINCT * FROM [OrderBook] WHERE ([OrderNo] = @OrderNo)">
           <SelectParameters>
               <asp:ControlParameter ControlID="orderno" Name="OrderNo" PropertyName="Text" 
                   Type="Int32" />
           </SelectParameters>
       </asp:SqlDataSource>
       <asp:Label ID="orderno" runat="server"></asp:Label>
        </asp:Panel>
    <div style="border-width: 3px; border-color: #660066; padding-top: 5px; line-height: 30px; background-color: #FFAD77; font-size: 22px; border-bottom-style: solid; border-right-style: solid; width: 700px;">
    <table cellspacing="1" class="style1">
            <tr>
                <td style="text-align: right">
                <asp:Label ID="PageId" runat="server" Visible="False"></asp:Label>
    &nbsp;<asp:Label ID="ViewCartId" runat="server" Visible="False"></asp:Label>
                    Total Charge : R.s-
        </td>
                <td style="width: 100px">
        <asp:Label ID="Label1" runat="server" Font-Size="25px" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Panelview" runat="server" Visible="False"></asp:Label>
                <asp:Button ID="ContinueOrder" runat="server" Text="Continue To Order" 
                        Font-Size="22px" BackColor="Lime" ForeColor="#0000CC" />&nbsp;
                <asp:Button ID="PaymentBtn1" runat="server" Text="Payment" Font-Size="22px" 
                        BackColor="Maroon" ForeColor="Lime" />
                 </td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:Panel ID="ViewPanel3" runat="server" Visible="False" Width="700px" 
        BackColor="#FFAD77" Height="222px">
    <div style="border-right-style: solid; border-bottom-style: solid; border-width: 3px; border-color: #660066">
    <table cellspacing="1" class="style1">
        <tr>
            <td 
                
                
                style="line-height: 40px; " 
                class="style2">
                <asp:Image ID="Image2" runat="server" Height="104px" 
                    ImageUrl="~/images/icon/payment-options-banner.jpg" Width="698px" />
            </td>
        </tr>
        <tr>
            <td style="font-size: 22px; font-weight: 500; line-height: 30px; padding-left: 20px;">
                Customer Id :&nbsp;
                <asp:Label ID="UserId" runat="server"></asp:Label>
                <br />
                Parchase No :
                <asp:Label ID="ParchaseNo" runat="server"></asp:Label>
                <asp:Label ID="Slno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr style="vertical-align: top; line-height: 30px; text-align: center;">
            <td>
                <asp:Image ID="Image1" runat="server" Height="39px" 
                    ImageUrl="~/images/icon/direction.gif" Width="130px" />
                &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="OnlinePayBtn" runat="server" BackColor="#66FF99" 
                    BorderStyle="Solid" BorderWidth="2px" Height="39px" 
                    ImageUrl="~/images/icon/pay_online_button.png" Width="130px" />
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="OfflinePayBtn" runat="server" BackColor="Blue" 
                    Font-Bold="True" Font-Size="22px" ForeColor="Yellow" Text="Offline" 
                    Width="130px" />
            </td>
        </tr>
    </table>
    </div>
</asp:Panel>
</asp:Panel>

<div>
    
    <asp:Label ID="ErMsg" runat="server"></asp:Label>
    
    </div>
    <div>
    </div>
</asp:Content>

