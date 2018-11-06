Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class MainPageaspx
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        con.Open()
        cmd = New SqlCommand("select Email,Name,Mobile,Password from CustomerRegistration where Email='" + CuserName.Text + "' and Password='" + Cpassword.Text + "'", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Session("useremail") = dr(0)
            Session("username") = dr(1)
            Session("usermobile") = dr(2)
            Session("userpassword") = dr(3)
            con.Close()
            Response.Redirect("CustomerHome.aspx")
        Else
            ErMsg.Text = "UserName or Password is incorrect."
            con.Close()
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("CustomerRegistration.aspx")
    End Sub

    Protected Sub CuserName_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CuserName.TextChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Response.Redirect("ForgetPassword.aspx")
    End Sub
End Class
