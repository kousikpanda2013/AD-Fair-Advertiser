Imports System.Data
Imports System.Data.SqlClient
Partial Class CustomerHome
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim tdate, ttime As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        cmd = New SqlCommand("select Email from CustomerRegistration where Email='" + Session("useremail") + "' and Password='" + Session("userpassword") + "'", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            'Session("useremail") = dr(6)
        Else
            Response.Redirect("MainPageaspx.aspx")
        End If
        con.Close()
        UserId.Text = Session("useremail")
        UserName.Text = Session("username")
        UserMobile.Text = Session("usermobile")
        UserPassword.Text = Session("userpassword")
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Panel5.Visible = True
        Panel1.Visible = False
    End Sub
    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Panel5.Visible = False
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        Panel1.Visible = True
        Panel5.Visible = False
    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click
        Panel1.Visible = False
    End Sub
    Protected Sub GridOrder1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridOrder1.RowCommand
        If e.CommandName = "ReplyAdmin" Then
            ReplyPanel.Visible = True
            Orderadrs.Text = e.CommandArgument
        Else
            DetailView.Text = e.CommandArgument
            DetailOrderPanel.Visible = True
        End If
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        DetailOrderPanel.Visible = False
    End Sub

    Protected Sub ReplyMail_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReplyMail.Click
        tdate = System.DateTime.Now.ToString("dd-MM-yyyy")
        ttime = System.DateTime.Now.ToString("hh : mm tt")
        con.Open()
        cmd = New SqlCommand("insert into FeedbackTable values('" + UserId.Text + "','" + UserName.Text + "','" + UserId.Text + "','" + Orderadrs.Text + "','Admin','" + TextBoxsub.Text + "','" + TextMsgBody.Text + "','" + tdate + "','" + ttime + "')", con)
        cmd.ExecuteNonQuery()
        Msgtext.Text = "Message send successful."
        con.Close()
    End Sub

    Protected Sub CancelReply_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CancelReply.Click
        ReplyPanel.Visible = False
    End Sub

    Protected Sub GridOrder2_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridOrder2.RowCommand
            Orderadrs.Text = e.CommandArgument
            ReplyPanel.Visible = True
    End Sub
End Class
