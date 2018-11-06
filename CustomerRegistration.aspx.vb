Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class CustomerRegistration
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd, cmd2 As New SqlCommand
    Dim dr, dr2 As SqlDataReader
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        con.Open()
        cmd = New SqlCommand("select Max(SlNo) from CustomerRegistration", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            CSlno.Text = dr(0) + 1
            CustomerId1.Text = "OAA-" + CSlno.Text
        Else
            ERmsg.Text = "does not find"
        End If
        con.Close()

        'Chech for this email already exsist or not.
        con.Open()
        cmd = New SqlCommand("select OrgName,Email,CustomerId from CustomerRegistration where Email='" + CustomerEmail.Text + "'", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            CustomerOrg.Text = dr(0)
            CustomerEmail2.Text = dr(1)
        End If
        con.Close()
        If CustomerEmail.Text = CustomerEmail2.Text Then
            ERmsg.Text = "This email already exsist."
        Else
            'create new account
            con.Open()
            cmd = New SqlCommand("insert into CustomerRegistration values('" + CSlno.Text + "','" + orgName.Text + "','" + CustomerName.Text + "','" + CustomerAddress.Text + "','" + CustomerPin.Text + "','" + CustomerMobile.Text + "','" + CustomerEmail.Text + "','" + CustomerCountry.Text + "','" + CustomerState.SelectedItem.Text + "','" + CustomerDist.SelectedItem.Text + "','" + CustomerId1.Text + "','" + CustomerRePass.Text + "')", con)
            cmd.ExecuteNonQuery()
            ERmsg.Text = "successful Register."
            con.Close()
            orgName.Text = ""
            CustomerName.Text = ""
            CustomerAddress.Text = ""
            CustomerPin.Text = ""
            CustomerMobile.Text = ""
            CustomerEmail.Text = ""
            CustomerPassword.Text = ""
            CustomerRePass.Text = ""
            CSlno.Text = ""
            CustomerId1.Text = ""
            CustomerEmail2.Text = ""
            CustomerOrg.Text = ""
        End If
    End Sub
End Class
