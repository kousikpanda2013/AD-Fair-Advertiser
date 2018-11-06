<%@ Page Language="VB" AutoEventWireup="false" CodeFile="OflinePayment.aspx.vb" Inherits="OflinePayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Off line Payment</title>
    <style type="text/css">
        .printPage
{
    border: 1px solid #000000;
     width: 100%;
}
.printPage tr td
{
    border-width: .5px;
    border-color: #000000;
    border-bottom-style: solid;
    padding-left: 15px;
}
.tds
{
    border-right-style: solid;
    border-width: 1px;
    border-color: #000000;
    width: 200px;
    
}
    </style>
    <script type="text/javascript">
        function Printpage2() {
            var printButton = document.getElementById("printpagebutton");
            printButton.style.visibility = 'hidden';
            window.print()
            printButton.style.visibility = 'visible';
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 960px; height: auto; margin-right: auto; margin-left: auto">
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Font-Size="18px">
    
        <table cellspacing="1" class="printPage" 
            style="color: #000000">
            <tr>
                <td style="font-weight: bold">
                
                    (Buyer Copy)
                    <br /> &nbsp;AD Fair Advertisers<br />
                    <asp:Image ID="Image2" runat="server" Height="62px" 
                        ImageUrl="~/images/icon/sbi.jpg" Width="55px" />
                    <br /> &nbsp;STATE BANK OF INDIA</td>
            </tr>
            <tr>
                <td>
                    Cash can be tendered at any Branch of State Bank Of India</td>
            </tr>
            <tr>
                <td style="padding: 10px">
                    <table cellspacing="1" class="printPage" style="text-align: left;">
                        <tr>
                            <td class="tds">
                                Order Id</td>
                            <td>
                                <asp:Label ID="Oid1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Customer Id</td>
                            <td>
                                <asp:Label ID="Cid1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Customer Name</td>
                            <td>
                                <asp:Label ID="Cname1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Order Date</td>
                            <td>
                                <asp:Label ID="Odate1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Mobile No</td>
                            <td>
                                <asp:Label ID="Mobile1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Email</td>
                            <td>
                                <asp:Label ID="Email1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                To be Pay ( in Rs. )</td>
                            <td>
                                <asp:Label ID="Price1" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp; (Including Bank Charge Rs. 12.00)
                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 15px;">
                    <br style="padding-right: 15px" />
                    Signature of the Candidate</td>
            </tr>
            <tr>
                <td>
                    (To be filled by Bank)</td>
            </tr>
            <tr>
                <td style="padding: 10px">
                    <table cellspacing="1" class="printPage" style="text-align: left">
                        <tr>
                            <td class="tds">
                                Bank Brunch Name</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Diposit Date</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 15px;">
                    <br />
                    Authorized Signature</td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 15px;">
                    <br />
                    Branch Stamp</td>
            </tr>
        </table>
    <br />
            ----------------------------------------------------------------------------------------------------------------------------------------------------------------<br /><br />
    <table cellspacing="1" class="printPage" 
            style="color: #000000">
            <tr>
                <td style="font-weight: bold">
                
                    (Bank Copy)
                    <br /> &nbsp;&nbsp;AD Fair Advertisers<br /> &nbsp;STATE BANK OF INDIA</td>
            </tr>
            <tr>
                <td>
                    Cash can be tendered at any Branch of State Bank Of India</td>
            </tr>
            <tr>
                <td style="padding: 10px">
                    <table cellspacing="1" class="printPage" style="text-align: left;">
                        <tr>
                            <td class="tds">
                                Order Id</td>
                            <td>
                                <asp:Label ID="Oid2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Customer Id</td>
                            <td>
                                <asp:Label ID="Cid2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Customer Name</td>
                            <td>
                                <asp:Label ID="Cname2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Order Date</td>
                            <td>
                                <asp:Label ID="Odate2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Mobile No</td>
                            <td>
                                <asp:Label ID="Mobile2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Email</td>
                            <td>
                                <asp:Label ID="Email2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tds">
                                To be Pay ( in Rs. )</td>
                            <td>
                                <asp:Label ID="Price2" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp; (Including Bank Charge Rs. 12.00)
                                </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 15px;">
                    <br style="padding-right: 15px" />
                    Signature of the Candidate</td>
            </tr>
            <tr>
                <td>
                    (To be filled by Bank)</td>
            </tr>
            <tr>
                <td style="padding: 10px">
                    <table cellspacing="1" class="printPage" style="text-align: left">
                        <tr>
                            <td class="tds">
                                Bank Brunch Name</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="tds">
                                Diposit Date</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 15px;">
                    <br />
                    Authorized Signature</td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 15px;">
                    <br />
                    Branch Stamp</td>
            </tr>
        </table>

    </asp:Panel>
    <div style="text-align: center">
    <input id="printpagebutton" type="button" value="Print" onclick="Printpage2()" 
            
            style="width: 100px; color: #FFFFFF; font-size: 18px; background-color: #3366FF; font-weight: bold;" />
    </div>
    </div>
    </form>
</body>
</html>
