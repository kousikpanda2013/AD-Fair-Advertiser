Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class CWebsite
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim filex, filepath, odate, otime As String

    Protected Sub Descrioption1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Descrioption1.Load
        Try
            con.Open()
            cmd = New SqlCommand("select Description from AdminInterNet where WebsiteName='" + DropDownList1.SelectedItem.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Descrioption1.Text = dr(0)
            End If
        Catch ex As Exception
        End Try
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        UserId.Text = Session("useremail")
        Try
            con.Open()
            cmd = New SqlCommand("select Distinct Description from AdminInterNet where WebsiteName='" + DropDownList1.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Descrioption1.Text = dr(0)
            End If
        Catch ex As Exception
        End Try
        con.Close()
    End Sub

    Protected Sub Tdayas_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Tdayas.Load
        Try
            'For Date Difference
            Dim date1, date2 As Date
            Dim d As Long
            date1 = DropDownList2.Text
            date2 = DropDownList3.Text
            d = DateDiff("m", date1, date2) + 1
            Tdayas.Text = d.ToString
        Catch ex As Exception
            Tdayas.Text = "Please Enter correct format"
        End Try
    End Sub

    Protected Sub Tprice1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Tprice1.Load
        Try
            con.Open()
            cmd = New SqlCommand("select Price from AdminInterNet where WebsiteName='" + DropDownList1.SelectedItem.Text + "' and DateFrom='" + DropDownList2.SelectedItem.Text + "' and DateTo='" + DropDownList3.SelectedItem.Text + "' and AdvertiseType='" + DropDownList4.SelectedItem.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Tprice1.Text = dr(0)
            End If
        Catch ex As Exception
        End Try
        con.Close()
    End Sub

    Protected Sub Totalprice_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Totalprice.Load
        Try
            Dim a, b, c As Integer
            Dim d, ee As Double
            a = TextBox2.Text
            b = TextBox3.Text
            c = Tdayas.Text
            d = Tprice1.Text
            ee = ((a * b) * d) * c
            Totalprice.Text = ee & ".00"
        Catch ex As Exception
        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        filex = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower)
        If filex = ".jpg" Or filex = ".jpeg" Or filex = ".gif" Then
            ''''''''''''''''''
            con.Open()
            cmd = New SqlCommand("select max(Slno),max(OrderNo) from OrderBook", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                TSlno.Text = dr(0) + 1
                Orderid.Text = dr(1) + 1
            Else
                ErMsg.Text = "not read"
            End If
            con.Close()
            filepath = "~\\CustomerFile\Radio\\" + FileUpload1.FileName.ToString
            odate = System.DateTime.Now.ToString("dd-MM-yyyy || dddd")
            otime = System.DateTime.Now.ToString("hh : mm tt")
            Try
                con.Open()
                cmd = New SqlCommand("insert into OrderBook values('" + TSlno.Text.ToString + "','" + Orderid.Text.ToString + "','" + UserId.Text.ToString + "','" + odate.ToString + "','" + otime.ToString + "','Website','" + DropDownList1.SelectedItem.Text.ToString + "','" + Descrioption1.Text.ToString + "','" + DropDownList4.SelectedItem.Text.ToString + "','" + DropDownList2.SelectedItem.Text.ToString + "','" + DropDownList3.SelectedItem.Text + "','" + Tdayas.Text.ToString + "','','','','','" + TextBox2.Text.ToString + "','" + TextBox3.Text.ToString + "','','','','" + Tprice1.Text.ToString + "','" + Totalprice.Text.ToString + "','" + filepath + "','temp')", con)
                cmd.ExecuteNonQuery()
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\CustomerFile\Internet\\" + FileUpload1.FileName)
                ErMsg.Text = " Order Submited"
                con.Close()
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            ''''''''''''''''''
        Else
            ErMsg.Text = "Select Date"
        End If
        
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("pageid") = "CustomerWebsite.aspx"
        Response.Redirect("AddCartDetails.aspx")
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
