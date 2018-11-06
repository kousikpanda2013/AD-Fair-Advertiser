Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class CustomerBanner
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim odate, otime, filex, filepath As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        UserId.Text = Session("useremail")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Session("pageid") = "CustomerBanner.aspx"
        Session("customerid") = UserId.Text
        Response.Redirect("AddCartDetails.aspx")
    End Sub

    Protected Sub Tdayas_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Tdayas.Load
        Try
            'For Date Difference
            Dim date1, date2 As Date
            Dim d As Long
            date1 = DropDownList5.SelectedItem.Text
            date2 = DropDownList6.SelectedItem.Text
            d = DateDiff("m", date1, date2) + 1
            Tdayas.Text = d.ToString
        Catch ex As Exception
        End Try
    End Sub

    Protected Sub Tprice1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Tprice1.Load
        Try
            con.Open()
            cmd = New SqlCommand("select Price from AdminBanner where BannerType='" + DropDownList1.SelectedItem.Text + "' and State='" + DropDownList2.SelectedItem.Text + "' and District='" + DropDownList3.SelectedItem.Text + "' and Location='" + DropDownList4.SelectedItem.Text + "'and DateFrom='" + DropDownList5.SelectedItem.Text + "'and DateTo='" + DropDownList6.SelectedItem.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Tprice1.Text = dr(0)
            End If
        Catch ex As Exception
        End Try
        con.Close()
    End Sub

    Protected Sub GrandPrice1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles GrandPrice1.Load
        Try
            Dim a, b, c As Integer
            Dim d, ee As Double
            a = TextBox1.Text
            b = TextBox2.Text
            c = Tdayas.Text
            d = Tprice1.Text
            ee = ((a * b) * d) * c
            GrandPrice1.Text = ee & ".00"
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        filex = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower)
        If filex = ".jpg" Then
            con.Open()
            cmd = New SqlCommand("select max(Slno),max(OrderNo) from OrderBook", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                TSlno.Text = dr(0) + 1
                Orderid.Text = dr(1) + 1
            End If
            con.Close()

            con.Open()
            filepath = "~\\CustomerFile\Banner\\" + FileUpload1.FileName.ToString
            odate = System.DateTime.Now.ToString("dd-MM-yyyy || hh:mm tt || dddd")
            otime = System.DateTime.Now.ToString("hh:mm tt")
            cmd = New SqlCommand("insert into OrderBook values('" + TSlno.Text + "','" + Orderid.Text + "','" + UserId.Text + "','" + odate + "','" + otime + "','Banner','Banner','','" + DropDownList1.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "','" + Tdayas.Text + "','','','','','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + Tprice1.Text + "','" + GrandPrice1.Text + "','" + filepath.ToString + "','temp')", con)
            cmd.ExecuteNonQuery()
            ErMsg.Text = "Order Submited."
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\CustomerFile\Banner\\" + FileUpload1.FileName)
            con.Close()
            TextBox1.Text = ""
            TextBox2.Text = ""
        Else
            ErMsg.Text = "Only .jpg file suported."
        End If
    End Sub

    Protected Sub GridStch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridStch.Click
        GridLbl.Text = Val(GridLbl.Text) + 1
        If GridLbl.Text = 1 Then
            GridView1.Visible = False
            GridStch.Text = "Show Table"
        Else
            GridView1.Visible = True
            GridStch.Text = "Hide Table"
            GridLbl.Text = 0
        End If
    End Sub
End Class
