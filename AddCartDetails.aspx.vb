Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AddCartDetails
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
        'If e.CommandName = "DeleteRow" Then
        'con.Open()
        'cmd = New SqlCommand("delete AddCartTable where Slno='" + e.CommandArgument + "'", con)
        ' cmd.ExecuteNonQuery()
        '  con.Close()
        '   Response.AppendHeader("Refresh", "0")
        'End If

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        PageId.Text = Session("pageid")
        UserId.Text = Session("useremail")
        If UserId.Text <> "" Then
            con.Open()
            cmd = New SqlCommand("select count(OrderNo) from OrderBook where CustomerId='" + UserId.Text + "'and flag='temp'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Panelview.Text = dr(0)
            End If
            con.Close()
            If Panelview.Text <> "0" Then
                con.Open()
                cmd = New SqlCommand("select sum(cast(TotalPrice as float)) from OrderBook where CustomerId='" + UserId.Text + "'and flag='temp'", con)
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Label1.Text = dr(0)
                End If
                con.Close()
                ViewPanel1.Visible = True
            Else
                ErMsg.Text = "Have not Order."
            End If
        Else
            ViewPanel1.Visible = False

        End If

    End Sub

    Protected Sub PaymentBtn1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles PaymentBtn1.Click
        con.Open()
        cmd = New SqlCommand("select max(PurchaseId),max(Slno) from PaymentTable", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            ParchaseNo.Text = dr(0) + 1
            Slno.Text = dr(1) + 1
        End If
        ViewPanel3.Visible = True
    End Sub

    Protected Sub OfflinePayBtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles OfflinePayBtn.Click
        con.Open()
        cmd = New SqlCommand("insert into PaymentTable values('" + Slno.Text + "','" + UserId.Text + "','" + ParchaseNo.Text + "','offline')", con)
        cmd.ExecuteNonQuery()
        con.Close()
        con.Open()
        cmd = New SqlCommand("update OrderBook set flag='offline' where CustomerId='" + UserId.Text + "'", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Session("userid") = UserId.Text
        Session("purchaseid") = ParchaseNo.Text
        Session("tprice") = Label1.Text
        Response.Redirect("OflinePayment.aspx")
    End Sub

    Protected Sub ListView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ListViewCommandEventArgs) Handles ListView1.ItemCommand
        If e.CommandName = "DeleteOrder" Then
            con.Open()
            cmd = New SqlCommand("delete OrderBook where OrderNo='" + e.CommandArgument + "'", con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.AppendHeader("Refresh", "0")
        Else
            DetailsviewPanel.Visible = True
            orderno.Text = e.CommandArgument
        End If
    End Sub

    Protected Sub ContinueOrder_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ContinueOrder.Click
        Response.Redirect(PageId.Text)
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles OnlinePayBtn.Click
        Response.Redirect("OnlinePayment.aspx")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        DetailsviewPanel.Visible = False
    End Sub
End Class
