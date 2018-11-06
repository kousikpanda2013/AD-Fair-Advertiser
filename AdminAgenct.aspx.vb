Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class AdminAgency
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim imagepath, extsn As String
    Dim id1 As Integer
    Protected Sub AddAgent_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AddAgent.Click
        con.Open()
        cmd = New SqlCommand("select max(Cast(AgentId as int))from AgentInformation", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            AId2.Text = dr(0) + 1
            NewSubmit.Visible = True
            AgentUpdate.Visible = False
            con.Close()
            HeadLabel1.Text = "Add New Agent"
        End If
    End Sub

    Protected Sub NewSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles NewSubmit.Click
        If FileUpload1.HasFile Then
            extsn = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower)
            If extsn = ".jpg" Or extsn = ".jpeg" Then
                con.Open()
                cmd = New SqlCommand("select max(Cast(AgentId as int))from AgentInformation", con)
                dr = cmd.ExecuteReader
                If dr.Read Then
                    AId2.Text = dr(0) + 1
                    NewSubmit.Visible = True
                    AgentUpdate.Visible = False
                    con.Close()
                    HeadLabel1.Text = "Add New Agent"
                End If

                id1 = AId2.Text
                con.Open()
                imagepath = "~\\AgentPhoto\\" + FileUpload1.FileName.ToString
                cmd = New SqlCommand("insert into AgentInformation values('" + AId2.Text + "','" + Name1.Text + "','" + Address1.Text + "','" + District1.SelectedItem.Text + "','" + State1.SelectedItem.Text + "','" + Country1.Text + "','" + Pincode1.Text + "','" + Mobile1.Text + "','" + Email1.Text + "','" + imagepath + "')", con)
                cmd.ExecuteNonQuery()
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\AgentPhoto\\" + FileUpload1.FileName)
                con.Close()
                Response.AppendHeader("Refresh", "0")
            Else
                ErMsg2.Text = "Please upload .jpeg , .jpg only."
            End If
        Else
            ErMsg2.Text = "Please upload File."
        End If
        
    End Sub

    Protected Sub AgentUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AgentUpdate.Click
        If FileUpload1.HasFile Then
            ImgPath.Text = "~\\AgentPhoto\\" + FileUpload1.FileName.ToString
            extsn = System.IO.Path.GetExtension(FileUpload1.FileName.ToLower)
            If extsn = ".jpg" Or extsn = ".jpeg" Then
                ImgPath.Text = "~\\AgentPhoto\\" + FileUpload1.FileName.ToString
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\AgentPhoto\\" + FileUpload1.FileName)

                con.Open()
                cmd = New SqlCommand("select ImagePath from AgentInformation where AgentId='" + AId2.Text + "'", con)
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Dim temppath As String = dr(0)
                    File.Delete(Server.MapPath(temppath))
                End If
                con.Close()
            Else
                ErMsg2.Text = "Please upload .jpg or jpeg image only."
            End If
        End If
        con.Open()
        cmd = New SqlCommand("update AgentInformation set Name='" + Name1.Text + "', Address='" + Address1.Text + "', Dist='" + District1.SelectedItem.Text + "', Country='" + Country1.SelectedItem.Text + "',Pincode='" + Pincode1.Text + "', Mobile='" + Mobile1.Text + "', Email='" + Email1.Text + "', ImagePath='" + ImgPath.Text + "' where AgentId='" + AId2.Text + "'", con)
        cmd.ExecuteReader()
        'FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\AgentPhoto\\" + FileUpload1.FileName)
        con.Close()
        Response.AppendHeader("Refresh", "0")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub AgentCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AgentCancel.Click
        Name1.Text = ""
        Address1.Text = ""
        Pincode1.Text = ""
        Mobile1.Text = ""
        Email1.Text = ""
        
    End Sub

    Protected Sub ListView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ListViewCommandEventArgs) Handles ListView1.ItemCommand
        'Agent Delete
        If e.CommandName = "AgentDelete1" Then
            con.Open()
            cmd = New SqlCommand("select ImagePath from AgentInformation where AgentId='" + e.CommandArgument + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                Dim temppath As String = dr(0)
                File.Delete(Server.MapPath(temppath))
            End If
            con.Close()
            con.Open()
            cmd = New SqlCommand("delete AgentInformation where AgentId='" + e.CommandArgument + "'", con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.AppendHeader("Refresh", "0")
        ElseIf e.CommandName = "AgentUpdate1" Then
            con.Open()
            cmd = New SqlCommand("select * from AgentInformation where AgentId='" + e.CommandArgument + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                AId2.Text = dr(0)
                Name1.Text = dr(1)
                Address1.Text = dr(3)
                Pincode1.Text = dr(6)
                Mobile1.Text = dr(7)
                Email1.Text = dr(8)
                ImgPath.Text = dr(9)
                NewSubmit.Visible = False
                AgentUpdate.Visible = True
                con.Close()
                HeadLabel1.Text = "Update Agent Details"
            End If
        Else
            TextBox1.Text = e.CommandArgument
            PanelReply.Visible = True
        End If
    End Sub

    Protected Sub AgentMailSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AgentMailSend.Click

    End Sub

    Protected Sub AgentMailCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles AgentMailCancel.Click
        panelreply.visible = False
    End Sub
End Class
