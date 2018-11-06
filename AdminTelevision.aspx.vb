Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class AdminTelevision
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim Pkey As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        cmd = New SqlCommand("select Max(Slno) from AdminTelevision", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Slno1.Text = dr(0) + 1
        End If
        con.Close()
    End Sub

    Protected Sub Submit1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.Click
        con.Open()
        cmd = New SqlCommand("Insert into AdminTelevision values('" + Slno1.Text + "','" + Channel1.Text + "','" + Description1.Text + "','" + TimeFrom1.Text + "','" + TimeTo1.Text + "','" + Duration1.Text + "','" + Repeat1.Text + "','" + DateFrom1.Text + "','" + Validity1.Text + "','" + Price1.Text + "')", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Channel1.Text = ""
        Description1.Text = ""
        TimeFrom1.Text = ""
        TimeTo1.Text = ""
        Duration1.Text = ""
        Repeat1.Text = ""
        DateFrom1.Text = ""
        Price1.Text = ""
        Response.AppendHeader("Refresh", "0")
        ErMsg1.Text = "New Row Inserted."
    End Sub

    Protected Sub Cancel1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cancel1.Click
        'All is OK
        Channel1.Text = ""
        Description1.Text = ""
        TimeFrom1.Text = ""
        TimeTo1.Text = ""
        Repeat1.Text = ""
        DateFrom1.Text = ""
        Price1.Text = ""
        PanelAdd.Visible = True
        PanelUpdate.Visible = False
        Submit1.Visible = True
        Update1.Visible = False
        Cancel1.Visible = False
    End Sub

    Protected Sub Update1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Update1.Click
        con.Open()
        cmd = New SqlCommand("update AdminTelevision set ChannelName='" + Channel1.Text + "', Description='" + Description1.Text + "', TimeFrom='" + TimeFrom1.Text + "', TimeTo='" + TimeTo1.Text + "', Duration='" + Duration1.Text + "', Repeat='" + Repeat1.Text + "', DateFrom='" + DateFrom1.Text + "', Validity='" + Validity1.Text + "', Price='" + Price1.Text + "' where (Slno='" + updatekey.Text + "')", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "UpdateRow1" Then
            con.Open()
            cmd = New SqlCommand("Select * from AdminTelevision where Slno='" + e.CommandArgument + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                updatekey.Text = e.CommandArgument
                Channel1.Text = dr(1)
                Description1.Text = dr(2)
                TimeFrom1.Text = dr(3)
                TimeTo1.Text = dr(4)
                Duration1.Text = dr(5)
                Repeat1.Text = dr(6)
                DateFrom1.Text = dr(7)
                Validity1.Text = dr(8)
                Price1.Text = dr(9)
            End If
            con.Close()
            PanelAdd.Visible = False
            PanelUpdate.Visible = True
            Submit1.Visible = False
            Update1.Visible = True
            Cancel1.Visible = True
        Else
            con.Open()
            cmd = New SqlCommand("Delete AdminTelevision where Slno='" + e.CommandArgument + "'", con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.AppendHeader("Refresh", "0")
        End If
    End Sub
End Class
