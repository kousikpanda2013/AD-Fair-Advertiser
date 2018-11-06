
Partial Class MasterPage2
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        AdminMaster.Text = Session("AdminMaster")
        If AdminMaster.Text = "" Then
            Response.Redirect("AdminLogin.aspx")
        End If
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session.RemoveAll()
        Response.Redirect("AdminLogin.aspx")
    End Sub
End Class

