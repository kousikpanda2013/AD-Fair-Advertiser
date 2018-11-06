<%@ Page Title="Admin Radio" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="AdminRadio.aspx.vb" Inherits="Extra2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image: url('images/backgr/c4.jpg'); font-family: Arial, Helvetica, sans-serif; font-size: 18px; color: #FFFFFF; height: auto;">
    <p style="margin: 0px; background-color: #00FF00; color: #0000FF; font-family: Jokerman; font-size: 26px; font-weight: bold; height: 30px; padding-top: 5px; text-align: center;">-:Radio Registration:-</p>
        <div style="border: 2px solid #FFFF00">
    <asp:Panel ID="PanelAdd" runat="server">
    <p style="font-family: Jokerman; font-size: x-large; font-weight: bold; color: #0000FF; background-color: #E6E600;height: 25px; padding-top: 5px; text-align: center;">
                -:Add Radio Details:-</p>
    </asp:Panel>
    <asp:Panel ID="PanelUpdate" runat="server" Visible="False">
    <p style="font-family: Jokerman; font-size: x-large; font-weight: bold; color: #0000FF; background-color: #E6E600;height: 25px; padding-top: 5px; text-align: center;">
                -:Update Radio Details:-</p>
    </asp:Panel>
    <table cellspacing="1" class="style1" style="border: 2px solid #CC0000">
                <tr style="border: 2px solid #FF0000; color: #000000;">
                    <td>
                        Frequency</td>
                    <td>
                        Time-From</td>
                    <td>
                        Time-To</td>
                    <td>
                        Description</td>
                    <td>
                        Duration</td>
                    <td>
                        Repeat time</td>
                    <td>
                        Period for</td>
                    <td>
                        Price/10sec</td>
                </tr>
                <tr style="vertical-align: top">
                    <td>
                        <asp:TextBox ID="TextFrequency" runat="server" Width="150px" PlaceHolder="Enter Frequency name"/>
                    </td>
                    <td>
                        <asp:TextBox ID="TextTimef" runat="server" Width="80px" PlaceHolder="00.00am/pm" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextTimet" runat="server" Width="80px" PlaceHolder="00.00am/pm" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextDescrip" runat="server" Width="200px" PlaceHolder="Channel Programm" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextDur" runat="server" Width="80px" PlaceHolder="Prog Time" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextRepeat" runat="server" Width="80px" PlaceHolder="Repeat" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextValid" runat="server" Width="80px" PlaceHolder="Validity" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextPrice" runat="server" Width="80px" PlaceHolder="Price/10sec" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: left; padding-left: 15px;">
                    <asp:Label ID="ErMsg1" runat="server" />
                    <asp:Label ID="updatekey" runat="server" />
                    </td>
                    <td colspan="4" style="padding-right: 10px;text-align: right;">
                    <asp:Label ID="Slno1" runat="server" />
                    &nbsp;<asp:Button ID="Submit1" runat="server" Text="Submit" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" 
                            ForeColor="White" />
                        <asp:Button ID="Update1" runat="server" Text="Update" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" 
                            ForeColor="White" Visible="False" />
                        <asp:Button ID="Cancel1" runat="server" BackColor="#993333" 
                            Font-Bold="True" Font-Names="Arial Black" Font-Size="12pt" ForeColor="White" 
                            Text="Cancel" Visible="False" />&nbsp;
                    </td>
                </tr>
            </table>
    </div>
    <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Width="960px" DataKeyNames="Slno">
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
                <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="Update1" runat="server" Text="Edit" CommandName="UpdateRow" CommandArgument='<%# Bind("Slno") %>' Font-Size="16px" />
                <br />
                <asp:LinkButton ID="Delete1" runat="server" Text="Delete" CommandName="DeleteRow" CommandArgument='<%# Bind("Slno") %>' Font-Size="16px"/>
            </ItemTemplate>
            </asp:TemplateField>
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
            SelectCommand="SELECT * FROM [AdminRadio] WHERE ([Slno] &gt; @Slno) ORDER BY [Frequency], [TimeFrom], [TimeTo]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="Slno" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>
            
</div>
</asp:Content>

