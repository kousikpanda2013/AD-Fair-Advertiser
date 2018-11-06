Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminBanner
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        cmd = New SqlCommand("Select Max(Slno) from AdminBanner", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Slno1.Text = dr(0) + 1
        End If
        con.Close()
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "UpdateRow" Then
            con.Open()
            cmd = New SqlCommand("Select * from AdminBanner where Slno='" + e.CommandArgument + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                updatekey.Text = e.CommandArgument
                BannerType1.Text = dr(1)
                'State1.Text = dr(2)
                'Dist1.Text = dr(3)
                Location1.Text = dr(4)
                DateFrom1.Text = dr(5)
                DateTo1.Text = dr(6)
                Price1.Text = dr(7)
            End If
            ErMsg1.Text = ""
            con.Close()
            PanelAdd.Visible = False
            PanelUpdate.Visible = True
            Submit1.Visible = False
            Update1.Visible = True
            Cancel1.Visible = True
        Else
            con.Open()
            cmd = New SqlCommand("Delete AdminBanner where Slno='" + e.CommandArgument + "'", con)
            cmd.ExecuteNonQuery()
            GridView1.DataBind()
            con.Close()
            'Response.AppendHeader("Refresh", "0")
            ErMsg1.Text = "Row Deleted."
        End If
    End Sub

    Protected Sub Submit1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.Click
        If BannerType1.Text = "" Or Location1.Text = "" Or DateFrom1.Text = "" Or DateTo1.Text = "" Or Price1.Text = "" Then
            ErMsg1.Text = "Must be fillup all field."
        Else
            con.Open()
            cmd = New SqlCommand("insert into AdminBanner values('" + Slno1.Text + "','" + BannerType1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + Location1.Text + "','" + DateFrom1.Text + "','" + DateTo1.Text + "','" + Price1.Text + "')", con)
            cmd.ExecuteNonQuery()
            GridView1.DataBind()
            ErMsg1.Text = "Insert successful."
            con.Close()
            Location1.Text = ""
            DateFrom1.Text = ""
            DateTo1.Text = ""
            Price1.Text = ""
            'Response.AppendHeader("Refresh", "0")
        End If
    End Sub

    Protected Sub Update1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Update1.Click
        If BannerType1.Text = "" Or Location1.Text = "" Or DateFrom1.Text = "" Or DateTo1.Text = "" Or Price1.Text = "" Then
            ErMsg1.Text = "Must be fillup all field."
        Else
            con.Open()
            cmd = New SqlCommand("update AdminBanner set BannerType='" + BannerType1.Text + "', State='" + DropDownList1.SelectedItem.Text + "', District='" + DropDownList2.SelectedItem.Text + "', Location='" + Location1.Text + "', DateFrom='" + DateFrom1.Text + "', DateTo='" + DateTo1.Text + "', Price='" + Price1.Text + "' where Slno='" + updatekey.Text + "'", con)
            cmd.ExecuteNonQuery()
            GridView1.DataBind()
            ErMsg1.Text = "Row Update successful."
            con.Close()
            PanelAdd.Visible = True
            PanelUpdate.Visible = False
            Submit1.Visible = True
            Update1.Visible = False
            Cancel1.Visible = False
            BannerType1.Text = ""
            'State1.Text = ""
            'Dist1.Text = ""
            Location1.Text = ""
            DateFrom1.Text = ""
            DateTo1.Text = ""
            Price1.Text = ""
            'Response.AppendHeader("Refresh", "0")
        End If
    End Sub

    Protected Sub Cancel1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cancel1.Click
        PanelAdd.Visible = True
        PanelUpdate.Visible = False
        Submit1.Visible = True
        Update1.Visible = False
        Cancel1.Visible = False
        BannerType1.Text = ""
        'State1.Text = ""
        'Dist1.Text = ""
        Location1.Text = ""
        DateFrom1.Text = ""
        DateTo1.Text = ""
        Price1.Text = ""
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        If Label3.Text = 1 Then
            DateFrom1.Text = Calendar1.SelectedDate
        ElseIf Label3.Text = 2 Then
            DateTo1.Text = Calendar1.SelectedDate
        End If
        Calendar1.Visible = False
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Calendar1.Visible = True
        Label3.Text = 1
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Calendar1.Visible = True
        Label3.Text = 2
    End Sub
End Class
