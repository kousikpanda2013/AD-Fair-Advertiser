Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail

Partial Class AdminLogin
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles AdminSubmit.Click
            con.Open()
        cmd = New SqlCommand("select AdminId from AdminLogin where AdminId='" + Adminid.Text + "' and AdminPassword='" + Adminpass.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Adminid.Text = ""
            Adminpass.Text = ""
            Session("AdminMaster") = dr(0)
            con.Close()
                Response.Redirect("AdminHome.aspx")
            Else
                ErMsg.Text = "User Name or Password is incorrect."
            End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Panel1.Visible = False
        Panel2.Visible = True
        MultiView1.ActiveViewIndex = "0"

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cancel1.Click
        Panel2.Visible = False
        Panel1.Visible = True

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.Click
        Try
            con.Open()
            cmd = New SqlCommand("select AdminPassword from AdminLogin where Email='" + AdminEmail.Text + "' and Mobile='" + AdminMobile.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Dim Rno As New Random
                Dim i, TRno As Integer
                For i = 1 To 6
                    TRno = TRno & Rno.Next(0, 9)
                Next
                SendCode.Text = TRno

                'msgsend to email
                Dim mm As New MailMessage("adfair2016@gmail.com", AdminEmail.Text)
                mm.Subject = "Account Verification"
                mm.Body = "Dear customer, you have forget your Online Advertisement Account Password. To get your account password please put the given 6 digit number. Account verification code is " & TRno
                mm.IsBodyHtml = False
                Dim smtp As New SmtpClient
                smtp.Host = "smtp.gmail.com"
                smtp.EnableSsl = True
                Dim NetCred As New NetworkCredential("adfair2016@gmail.com", "onlineadvertisingagency")
                smtp.Credentials = NetCred
                smtp.Port = 587
                smtp.Send(mm)
                ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('Email sent.');", True)
                'msgsend end
            Else
                ErMsg1.Text = "Email and mobile does not exsist"
            End If
            con.Close()
        Catch ex As Exception
            ErMsg1.Text = ex.Message
        End Try
        
        MultiView1.ActiveViewIndex = "1"
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit2.Click
        If TextBox3.Text <> SendCode.Text Then
            ErMsg1.Text = "Did Not Match varification code."
        Else
            con.Open()
            cmd = New SqlCommand("select AdminPassword from AdminLogin where AdminId='" + Adminid.Text + "' and Email='" + AdminEmail.Text + "' and Mobile='" + AdminMobile.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                ErMsg1.Text = "Your Password is : " & dr(0)
                Gologin.Visible = True
            Else
                ErMsg1.Text = "Id,Email or Mobile is incorrect."
            End If
            con.Close()
        End If

    End Sub

    Protected Sub Gologin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Gologin.Click
        Panel2.Visible = False
        Panel1.Visible = True
    End Sub
End Class
