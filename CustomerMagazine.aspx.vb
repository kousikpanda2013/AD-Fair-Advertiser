Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class CustomerMagazine
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        UserId.Text = Session("useremail")
    End Sub

    Protected Sub SubmitOrder1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles SubmitOrder1.Click
        'Dim datetime, extsn, filepath As String
        'Dim validity, duration As Integer
        'validity = 0
        'duration = 1
        'con.Open()
        'cmd = New SqlCommand("select max(Slno),max(OrderNo) from OrderBook1", con)
        'dr = cmd.ExecuteReader
        'If dr.Read Then
        'TSlno.Text = dr(0) + 1
        'Orderid.Text = dr(1) + 1
        'End If
        'con.Close()
        'extsn = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower)
        'If extsn = ".jpg" Or extsn = ".doc" Then
        'con.Open()
        'filepath = "~\\CustomerFile\Magazine\\" + FileUpload1.FileName.ToString
        'DateTime = DateAndTime.Today.ToString
        'cmd = New SqlCommand("insert into OrderBook1 values('" + TSlno.Text + "','" + Orderid.Text + "','" + UserId.Text + "','" + DateTime + "','Magazine','" + DropDownList1.SelectedItem.Text + "','" + DescriptionText1.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','','','','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','','','','','','" + HeightText1.Text + "','" + WidthText1.Text + "','" + filepath + "','" + Rate.Text + "','" + Tprice.Text + "','','','','AddCart','temp')", con)
        'cmd.ExecuteNonQuery()
        'FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\CustomerFile\Magazine\\" + FileUpload1.FileName)
        'con.Close()
        'Else
        'ErMsg.Text = "Only .mp3 file suported."
        'End If
        'Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        'Session("pageid") = "CustomerMagazine.aspx"
        'Session("customerid") = UserId.Text
        'Response.Redirect("AddCartDetails.aspx")
    End Sub
End Class
