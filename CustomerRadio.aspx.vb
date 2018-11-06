Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class CustomerRadio
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        UserId.Text = Session("useremail")
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        'con.Open()
        'cmd = New SqlCommand("select Price from AdminRadio where Frequency='" + DropDownList1.SelectedItem.Text + "' and TimeFrom='" + DropDownList4.SelectedItem.Text + "' and TimeTo='" + DropDownList5.SelectedItem.Text + "' ", con)
        'dr = cmd.ExecuteReader
        'If dr.Read Then
        'ratecharge.Text = dr(0)
        'End If
        'con.Close()
        Dim datetime, extsn, filepath As String
        con.Open()
        cmd = New SqlCommand("select max(Slno),max(OrderNo) from OrderBook1", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            TSlno.Text = dr(0) + 1
            Orderid.Text = dr(1) + 1
        End If
        con.Close()
        extsn = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower)
        If extsn = ".mp3" Then
            con.Open()
            filepath = "~\\CustomerFile\Radio\\" + FileUpload1.FileName.ToString
            DateTime = DateAndTime.Today.ToString
            cmd = New SqlCommand("insert into OrderBook1 values('" + TSlno.Text + "','" + Orderid.Text + "','" + UserId.Text + "','" + datetime + "','Radio','" + DropDownList1.SelectedItem.Text + "','" + DescriptionLabel1.Text + "','','','','','','" + DFrom.Text + "','" + DTo.Text + "','" + Validity1.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + Duration1.Text + "','" + Repeattime.Text + "','','','" + filepath + "','" + ratecharge.Text.ToString + "','" + TRate.Text + "','','','','AddCart','temp')", con)
            cmd.ExecuteNonQuery()
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\CustomerFile\Radio\\" + FileUpload1.FileName)
            con.Close()
        Else
            ErMsg.Text = "Only .mp3 file suported."
        End If
        Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        cmd = New SqlCommand("select max(Slno) from OrderBook1", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            TSlno.Text = dr(0) + 1
        End If
        con.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Session("pageid") = "CustomerRadio.aspx"
        Session("customerid") = UserId.Text
        Response.Redirect("AddCartDetails.aspx")
    End Sub

    Protected Sub TRate_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles TRate.Load
        Try
            Dim dd, rr As Integer
            dd = Duration1.Text \ 10
            rr = Duration1.Text Mod 10
            If rr > 0 And rr <= 9 Then
                dd = dd + 1
            End If
            TRate.Text = (dd * Integer.Parse(Repeattime.Text) * Integer.Parse(Validity1.Text)) * Double.Parse(ratecharge.Text)
            ErMsg.Text = dd.ToString
        Catch ex As Exception
            TRate.Text = "0.00"
        End Try
    End Sub

    Protected Sub ratecharge_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ratecharge.Load
        'If DropDownList1.SelectedItem.Text <> "" And DropDownList4.SelectedItem.Text <> "" And DropDownList5.SelectedItem.Text <> "" Then
        If Duration1.Text <> "" Then
            con.Open()
            cmd = New SqlCommand("select Price from AdminRadio where Frequency='" + DropDownList1.SelectedItem.Text + "' and TimeFrom='" + DropDownList4.SelectedItem.Text + "' and TimeTo='" + DropDownList5.SelectedItem.Text + "' ", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                ratecharge.Text = dr(0)
            End If
            con.Close()
        End If
    End Sub

    Protected Sub Validity1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Validity1.Load
        Try
            'For Date Difference
            Dim date1, date2 As Date
            Dim d As Long
            date1 = DFrom.Text
            date2 = DTo.Text
            d = DateDiff("d", date1, date2) + 1
            Validity1.Text = d.ToString
        Catch ex As Exception
            Validity1.Text = "Please Enter correct format"
        End Try
    End Sub
End Class
