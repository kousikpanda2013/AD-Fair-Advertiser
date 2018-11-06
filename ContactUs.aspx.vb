Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class ContactUs
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        con.Open()
        Time1.Text = Format(Now, "hh:mm tt")
        cmd = New SqlCommand("insert into CustomerReport values('" + Date1.Text + "','" + Time1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Msgtext.Text = "Thank you for contact us. "
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Date1.Text = Format(Date.Now, "dd-MM-yyyy")
    End Sub
End Class
