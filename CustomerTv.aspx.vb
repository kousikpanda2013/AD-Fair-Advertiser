Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class CustomerTv
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    'Reserv Code Not use
    Protected Sub SubmitOrder1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles SubmitOrder1.Click
        'Dim datetime, extsn, filepath As String
        'con.Open()
        'cmd = New SqlCommand("select max(Slno),max(OrderNo) from OrderBook1", con)
        'dr = cmd.ExecuteReader
        'If dr.Read Then
        'TSlno.Text = dr(0) + 1
        'Orderid.Text = dr(1) + 1
        'End If
        'con.Close()
        'extsn = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower)
        'If extsn = ".mp3" Or extsn = ".mp4" Or extsn = ".jpg" Then
        'con.Open()
        'filepath = "~\\CustomerFile\Television\\" + FileUpload1.FileName.ToString
        'datetime = System.DateTime.Now.ToString("dd-MM-yyyy || hh:mm tt || dddd")
        'cmd = New SqlCommand("insert into OrderBook1 values('" + TSlno.Text + "','" + Orderid.Text + "','" + UserId.Text + "','" + datetime + "','Television','" + DropDownList1.SelectedItem.Text + "','" + DescriptionText1.Text + "','baner+audio','','','','','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + Validity1.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DurationText.Text + "','" + RepeatText1.Text + "','','','" + filepath + "','" + Rate.Text + "','" + GrandPrice1.Text + "','','','','AddCart','temp')", con)
        'cmd.ExecuteNonQuery()
        'FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\CustomerFile\Television\\" + FileUpload1.FileName)
        'con.Close()
        'Else
        'ErMsg.Text = "Only .mp4,.mp3,.jpg file suported."
        'End If
        'Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Session("pageid") = "CustomerTv.aspx"
        'Session("customerid") = UserId.Text
        'Response.Redirect("AddCartDetails.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'UserId.Text = Session("useremail")
    End Sub

    Protected Sub Validity1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Validity1.Load
        'Try
        'For Date Difference
        'Dim date1, date2 As Date
        'Dim d As Long
        'date1 = DropDownList2.SelectedItem.Text
        'date2 = DropDownList3.SelectedItem.Text
        'd = DateDiff("d", date1, date2) + 1
        'Validity1.Text = d.ToString
        'Catch ex As Exception
        'Validity1.Text = "Please Enter correct format"
        'End Try
    End Sub

    Protected Sub GrandPrice1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles GrandPrice1.Load
        'Try
        'Dim dd, rr As Integer
        'dd = DurationText.Text \ 10
        'rr = DurationText.Text Mod 10
        'If rr > 0 And rr <= 9 Then
        'dd = dd + 1
        'End If
        'GrandPrice1.Text = (dd * Integer.Parse(RepeatText1.Text) * Integer.Parse(Validity1.Text)) * Double.Parse(evgRate1.Text)
        'ErMsg.Text = dd.ToString
        'Catch ex As Exception
        'GrandPrice1.Text = "0.00"
        'End Try
    End Sub

    Protected Sub evgRate1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles evgRate1.Load
        'Try
        'con.Open()
        'cmd = New SqlCommand("select Price from AdminTelevision where ChannelName='" + DropDownList1.SelectedItem.Text + "' and DateFrom='" + DropDownList2.SelectedItem.Text + "' and Validity='" + DropDownList3.SelectedItem.Text + "' and TimeFrom='" + DropDownList4.SelectedItem.Text + "' and TimeTo='" + DropDownList5.SelectedItem.Text + "'", con)
        'dr = cmd.ExecuteReader
        'If dr.Read Then
        'evgRate1.Text = dr(0)
        'Else
        'evgRate1.Text = "could not"
        'End If
        'con.Close()
        'Catch ex As Exception

        'End Try
    End Sub
End Class
