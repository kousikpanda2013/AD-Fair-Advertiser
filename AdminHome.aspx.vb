Imports System.IO
Imports System.Drawing
Imports System.Drawing.Imaging
Imports iTextSharp.text.pdf
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text
Imports System.Threading
Imports System.Net
Imports System.Net.Mail
Imports System.Data
Imports System.Data.SqlClient

Partial Class AdminHome
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim tdate, ttime As String

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "SelectRow" Then
            ReplyPanel.Visible = True
            toaddrs.Text = e.CommandArgument
        End If
    End Sub

    Protected Sub ReplyMail_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ReplyMail.Click
        Try
            'msgsend to email
            Dim mm As New MailMessage("adfair2016@gmail.com", toaddrs.Text)
            mm.Subject = "Account Verification"
            mm.Body = "Dear customer, you have forget your Online Advertisement Account Password. To get your account password please put the given 6 digit number. Account verification code is "
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
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CancelReply.Click
        ReplyPanel.Visible = False
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles FirstOrderList.Click
        ordertemp.Text = "temp"
        PanelFirstOrder.Visible = True
        PanelSecondorder.Visible = False
        OrderViewPane.Visible = True
    End Sub

    Protected Sub FinalOrderList_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles FinalOrderList.Click
        ordertemp.Text = "offline"
        PanelFirstOrder.Visible = False
        PanelSecondorder.Visible = True
        OrderViewPane.Visible = True
    End Sub
    Protected Sub LinkHideView_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkHideView.Click
        OrderViewPane.Visible = False
        PanelFirstOrder.Visible = False
        PanelSecondorder.Visible = False
    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ExportExcelButton.Click
        Try
            Dim form As New HtmlForm()
            Response.Clear()
            Response.Buffer = True
            Response.Charset = ""
            Response.AddHeader("content-disposition", String.Format("attachment;filename={0}", "AdvertiseOrderTemporary.xls"))
            Response.ContentType = "application/ms-excel"
            Dim sw As New StringWriter()
            Dim hw As New HtmlTextWriter(sw)
            GridOrder1.AllowPaging = False
            GridOrder1.DataBind()
            form.Attributes("runat") = "server"
            form.Controls.Add(GridOrder1)
            Me.Controls.Add(form)
            form.RenderControl(hw)
            Dim style As String = "<style> .textmode { mso-number-format:\@;}</style>"
            Response.Write(style)
            Response.Output.Write(sw.ToString())
            Response.Flush()
            Response.[End]()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView2_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView2.RowCommand
        con.Open()
        cmd = New SqlCommand("select MailFrom from FeedbackTable where OrderNo='" + e.CommandArgument + "'", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            toaddrs2.Text = dr(0)
        End If
        con.Close()
        If e.CommandName = "SelectRow" Then
            Orderaddr2.Text = e.CommandArgument
            ReplyPanel2.Visible = True

        End If
    End Sub

    Protected Sub Send2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Send2.Click
        tdate = System.DateTime.Now.ToString("dd-MM-yyyy")
        ttime = System.DateTime.Now.ToString("hh : mm tt")
        con.Open()
        cmd = New SqlCommand("insert into FeedbackTable values('Admin','Admin','Admin','" + Orderaddr2.Text + "','" + toaddrs2.Text + "','" + MsgSub1.Text + "','" + MsgBody1.Text + "','" + tdate + "','" + ttime + "')", con)
        cmd.ExecuteNonQuery()
        Msgtext2.Text = "Message send."
        con.Close()
        MsgSub1.Text = ""
        MsgBody1.Text = ""
    End Sub

    Protected Sub Cancel2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cancel2.Click
        ReplyPanel2.Visible = False
    End Sub

    Protected Sub GridOrder1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridOrder1.RowCommand
        Detailorder.Text = e.CommandArgument
        DetailPanel.Visible = True
    End Sub

    Protected Sub HideDetail_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles HideDetail.Click
        DetailPanel.Visible = False
    End Sub
End Class
