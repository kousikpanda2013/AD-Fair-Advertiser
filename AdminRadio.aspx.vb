Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Extra2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        cmd = New SqlCommand("select Max(Slno) from AdminRadio", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Slno1.Text = dr(0) + 1
        End If
        con.Close()
        'Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "DeleteRow" Then
            con.Open()
            cmd = New SqlCommand("delete AdminRadio where Slno='" + e.CommandArgument + "'", con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.AppendHeader("Refresh", "0")
        Else
            con.Open()
            cmd = New SqlCommand("select * from AdminRadio where Slno='" + e.CommandArgument + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextFrequency.Text = dr(1)
                TextTimef.Text = dr(2)
                TextTimet.Text = dr(3)
                TextDescrip.Text = dr(4)
                TextDur.Text = dr(5)
                TextRepeat.Text = dr(6)
                TextValid.Text = dr(7)
                TextPrice.Text = dr(8)
                updatekey.Text = e.CommandArgument
            End If
            con.Close()
            PanelAdd.Visible = False
            PanelUpdate.Visible = True
            Submit1.Visible = False
            Update1.Visible = True
            Cancel1.Visible = True
        End If
    End Sub

    Protected Sub Update1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Update1.Click
        con.Open()
        cmd = New SqlCommand("update AdminRadio set Slno='" + Slno1.Text + "', Frequency='" + TextFrequency.Text + "', TimeFrom='" + TextTimef.Text + "', TimeTo='" + TextTimet.Text + "', Description='" + TextDescrip.Text + "', Duration='" + TextDur.Text + "', Repeat='" + TextRepeat.Text + "', Validity='" + TextValid.Text + "', Price='" + TextPrice.Text + "' where Slno='" + updatekey.Text + "' ", con)
        cmd.ExecuteReader()
        con.Close()
        Response.AppendHeader("Refresh", "0")

    End Sub

    Protected Sub Submit1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit1.Click
        con.Open()
        cmd = New SqlCommand("insert into AdminRadio values('" + Slno1.Text + "','" + TextFrequency.Text + "','" + TextTimef.Text + "','" + TextTimet.Text + "','" + TextDescrip.Text + "','" + TextDur.Text + "','" + TextRepeat.Text + "','" + TextValid.Text + "','" + TextPrice.Text + "')", con)
        cmd.ExecuteNonQuery()
        con.Close()

        Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub Cancel1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cancel1.Click
        PanelAdd.Visible = True
        PanelUpdate.Visible = False
        Submit1.Visible = True
        Update1.Visible = False
        Cancel1.Visible = False
        TextFrequency.Text = ""
        TextTimef.Text = ""
        TextTimet.Text = ""
        TextDescrip.Text = ""
        TextDur.Text = ""
        TextRepeat.Text = ""
        TextValid.Text = ""
        TextPrice.Text = ""
    End Sub
End Class
