Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminMagazine
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        cmd = New SqlCommand("Select Max(Slno) from AdminMagazine", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Slno1.Text = dr(0) + 1
        End If
        con.Close()
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "UpdateRow" Then
            con.Open()
            cmd = New SqlCommand("Select * from AdminMagazine where Slno='" + e.CommandArgument + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                updatekey.Text = e.CommandArgument
                Magazine1.Text = dr(1)
                Description1.Text = dr(2)
                DateFrom1.Text = dr(3)
                DateTo1.Text = dr(4)
                Type1.Text = dr(5)
                Validity1.Text = dr(6)
                Price1.Text = dr(7)
            End If
            con.Close()
            PanelAdd.Visible = False
            PanelUpdate.Visible = True
            Submit1.Visible = False
            Update1.Visible = True
            Cancel1.Visible = True
        Else
            con.Open()
            cmd = New SqlCommand("Delete AdminMagazine where Slno='" + e.CommandArgument + "'", con)
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
        Magazine1.Text = ""
        Description1.Text = ""
        DateFrom1.Text = ""
        DateTo1.Text = ""
        Type1.Text = ""
        Validity1.Text = ""
        Price1.Text = ""
    End Sub

    Protected Sub Submit1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.Click
        con.Open()
        cmd = New SqlCommand("insert into AdminMagazine values('" + Slno1.Text + "','" + Magazine1.Text + "','" + Description1.Text + "','" + DateFrom1.Text + "','" + DateTo1.Text + "','" + PageNo1.Text + "','" + Type1.Text + "','" + Validity1.Text + "','" + Price1.Text + "')", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub Update1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Update1.Click
        con.Open()
        cmd = New SqlCommand("update AdminMagazine set MagazineName='" + Magazine1.Text + "', Description='" + Description1.Text + "', DateFrom='" + DateFrom1.Text + "', DateTo='" + DateTo1.Text + "', Page='" + PageNo1.Text + "', AdvertiseType='" + Type1.Text + "', Validity='" + Validity1.Text + "', Price='" + Price1.Text + "' where Slno='" + updatekey.Text + "'", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Response.AppendHeader("Refresh", "0")
    End Sub
End Class
