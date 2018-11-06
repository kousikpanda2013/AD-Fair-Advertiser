Imports System.Data
Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.Net
Partial Class ForgetPassword
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub
    Protected Sub Submit1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.Click
        Try
            con.Open()
            cmd = New SqlCommand("select Name,Password from CustomerRegistration where Email='" + TextBox1.Text + "' and Mobile='" + TextBox2.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Dim Rno As New Random
                Dim i, TRno As Integer
                Dim Nameas As String = dr(0)
                ErMsg2.Text = "Your Password is : " & dr(0)
                For i = 1 To 6
                    TRno = TRno & Rno.Next(0, 9)
                Next
                SendCode.Text = TRno
                'msgsend to email
                Dim mm As New MailMessage("adfair2016@gmail.com", TextBox1.Text)
                mm.Subject = "Account Verification"
                mm.Body = "Dear " & Nameas & ", Your Adfaire account verification number is " & TRno
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
                ErMsg1.Text = "Please check your mail and enter the 6 digits number"
                verifypanel.Visible = True
                Panel3.Visible = False
            Else
                ErMsg1.Text = "Email or Mobileno is incorrect."
            End If
            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        
    End Sub

    Protected Sub Cancel1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cancel1.Click
        Response.Redirect("MainPageaspx.aspx")
    End Sub

    Protected Sub Submit2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit2.Click
        If SendCode.Text <> TextBox3.Text Then
            ErMsg1.Text = "You have enter wrong code."
        Else
            ErMsg2.Visible = True
            Gologin.Visible = True
        End If
        con.Close()
    End Sub

    Protected Sub Gologin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Gologin.Click
        Response.Redirect("MainPageaspx.aspx")
    End Sub
End Class
