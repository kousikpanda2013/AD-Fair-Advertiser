Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminInternet
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim Pkey As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        cmd = New SqlCommand("Select Max(Slno) from AdminInternet", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Slno1.Text = dr(0) + 1
        End If
        con.Close()
        ErMsg1.Visible = False
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "UpdateRow" Then
            con.Open()
            cmd = New SqlCommand("Select * from AdminInternet where Slno='" + e.CommandArgument + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                updatekey.Text = e.CommandArgument
                SiteName1.Text = dr(1)
                Description1.Text = dr(2)
                DateFrom1.Text = dr(3)
                DateTo1.Text = dr(4)
                Type1.Text = dr(5)
                Price1.Text = dr(6)
            End If
            con.Close()
            PanelAdd.Visible = False
            PanelUpdate.Visible = True
            Submit1.Visible = False
            Update1.Visible = True
            Cancel1.Visible = True
        Else
            con.Open()
            cmd = New SqlCommand("Delete AdminInternet where Slno='" + e.CommandArgument + "'", con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.AppendHeader("Refresh", "0")
        End If
    End Sub

    Protected Sub Cancel1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cancel1.Click
        PanelAdd.Visible = True
        PanelUpdate.Visible = False
        Submit1.Visible = True
        Update1.Visible = False
        Cancel1.Visible = False
        SiteName1.Text = ""
        Description1.Text = ""
        DateFrom1.Text = ""
        DateTo1.Text = ""
        Type1.Text = ""
        Price1.Text = ""
        ErMsg1.Text = ""
    End Sub

    Protected Sub Submit1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.Click
        If SiteName1.Text = "" Or Description1.Text = "" Or DateFrom1.Text = "" Or DateTo1.Text = "" Or Price1.Text = "" Then
            ErMsg1.Visible = True
            ErMsg1.Text = "Please Fillup all textbox field..."
        Else
            con.Open()
            cmd = New SqlCommand("insert into AdminInternet values('" + Slno1.Text + "','" + SiteName1.Text + "','" + Description1.Text + "','" + DateFrom1.Text + "','" + DateTo1.Text + "','" + Type1.Text + "','" + Price1.Text + "')", con)
            cmd.ExecuteNonQuery()
            GridView1.DataBind()
            con.Close()
            ErMsg1.Visible = True
            ErMsg1.Text = "Insert Successful."
        End If
        SiteName1.Text = ""
        Description1.Text = ""
        DateFrom1.Text = ""
        DateTo1.Text = ""
        Type1.Text = ""
        Price1.Text = ""
    End Sub

    Protected Sub Update1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Update1.Click
        If SiteName1.Text = "" Or Description1.Text = "" Or DateFrom1.Text = "" Or DateTo1.Text = "" Or Price1.Text = "" Then
            ErMsg1.Visible = True
            ErMsg1.Text = "Please Fillup all textbox field..."
        Else
            con.Open()
            cmd = New SqlCommand("update AdminInternet set WebsiteName='" + SiteName1.Text + "', Description='" + Description1.Text + "', DateFrom='" + DateFrom1.Text + "', DateTo='" + DateTo1.Text + "', AdvertiseType='" + Type1.Text + "', Price='" + Price1.Text + "' where Slno='" + updatekey.Text + "'", con)
            cmd.ExecuteNonQuery()
            GridView1.DataBind()
            con.Close()
            PanelAdd.Visible = True
            PanelUpdate.Visible = False
            Submit1.Visible = True
            Update1.Visible = False
            Cancel1.Visible = False
            SiteName1.Text = ""
            Description1.Text = ""
            DateFrom1.Text = ""
            DateTo1.Text = ""
            Type1.Text = ""
            Price1.Text = ""
            ErMsg1.Visible = True
            ErMsg1.Text = "Successful update."
        End If
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        If LabelV.Text = 1 Then
            DateFrom1.Text = Calendar1.SelectedDate
        ElseIf LabelV.Text = 2 Then
            DateTo1.Text = Calendar1.SelectedDate
        End If
        Calendar1.Visible = False
        LabelV.Text = 0
    End Sub
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Calendar1.Visible = True
        LabelV.Text = 1
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Calendar1.Visible = True
        LabelV.Text = 2
    End Sub
End Class
