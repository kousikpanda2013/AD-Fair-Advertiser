Imports System.Data
Imports System.Data.SqlClient
Partial Class MasterPage2
    Inherits System.Web.UI.MasterPage
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'userlbl.Text = Session("useremail")
        UserMasterLabel.Text = Session("useremail")
        If UserMasterLabel.Text = "" Then
            Response.Redirect("MainPageaspx.aspx")
        End If
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session.RemoveAll()
        Response.Redirect("MainPageaspx.aspx")
    End Sub
    Protected Sub LinkCart_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkCart.Click
        Session("pageid") = "CustomerHome.aspx"
        Response.Redirect("AddCartDetails.aspx")
    End Sub

    Protected Sub Tocart_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Tocart.Load
        con.Open()
        cmd = New SqlCommand("select count(OrderNo) from OrderBook where CustomerId='" + Session("useremail") + "' and flag='temp' ", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Tocart.Text = dr(0)
            If Tocart.Text <> 0 Then
                Panel1.Visible = True
            End If
        End If
        con.Close()
    End Sub
End Class