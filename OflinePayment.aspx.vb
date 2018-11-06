Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class OflinePayment
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MasterBrain.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Oid1.Text = Session("purchaseid")
        Oid2.Text = Oid1.Text
        Cid1.Text = Session("userid")
        Cid2.Text = Session("userid")
        Price1.Text = Session("tprice") + 12
        Price2.Text = Price1.Text
        Odate1.Text = DateAndTime.Today.ToString
        Odate2.Text = Odate1.Text
        con.Open()
        cmd = New SqlCommand("select Name,Mobile,Email from CustomerRegistration where Email='" + Cid1.Text + "'", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Cname1.Text = dr(0)
            Cname2.Text = dr(0)
            Mobile1.Text = dr(1)
            Mobile2.Text = dr(1)
            Email1.Text = dr(2)
            Email2.Text = dr(2)
        End If
        con.Close()
    End Sub
End Class
