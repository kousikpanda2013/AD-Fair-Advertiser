Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminNewsPaper
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        cmd = New SqlCommand("select Max(Slno) from AdminNewspaper", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Slno1.Text = dr(0) + 1
        End If
        con.Close()
    End Sub

    Protected Sub Submit1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.Click
        con.Open()
        cmd = New SqlCommand("insert into AdminNewspaper values('" + Slno1.Text + "','" + PaperName.Text + "','" + PaperDescription.Text + "','" + DateFrom.Text + "','" + DateTo.Text + "','" + PageNo.Text + "','" + Pattern.Text + "','" + Price1.Text + "')", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub Update1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Update1.Click
        con.Open()
        cmd = New SqlCommand("update AdminNewspaper set PaperName='" + PaperName.Text + "', Description='" + PaperDescription.Text + "', DateFrom='" + DateFrom.Text + "', DateTo='" + DateTo.Text + "', Page='" + PageNo.Text + "', Pattern='" + Pattern.Text + "', Price='" + Price1.Text + "' where Slno='" + updatekey.Text + "'", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "UpdateRow" Then
            con.Open()
            cmd = New SqlCommand("select * from AdminNewspaper where Slno='" + e.CommandArgument + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                updatekey.Text = e.CommandArgument
                PaperName.Text = dr(1)
                PaperDescription.Text = dr(2)
                DateFrom.Text = dr(3)
                DateTo.Text = dr(4)
                PageNo.Text = dr(5)
                Pattern.Text = dr(6)
                Price1.Text = dr(7)
                con.Close()
            End If
            CancelUpdate.Visible = True
            Submit1.Visible = False
            Update1.Visible = True
        Else
            con.Open()
            cmd = New SqlCommand("delete AdminNewspaper where Slno='" + e.CommandArgument + "'", con)
            cmd.ExecuteNonQuery()
            con.Close()
        End If
    End Sub

    Protected Sub CancelUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CancelUpdate.Click
        Update1.Visible = False
        Submit1.Visible = True
        CancelUpdate.Visible = False
        PaperName.Text = ""
        PaperDescription.Text = ""
        DateFrom.Text = ""
        DateTo.Text = ""
        PageNo.Text = ""
        Pattern.Text = ""
        Price1.Text = ""
    End Sub
End Class
