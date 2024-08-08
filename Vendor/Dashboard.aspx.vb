
Imports System.Data.SqlClient

Partial Class Vendor_Default2
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim rq, cm As Integer
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        qry = "select count(*) from request_quote where vid=" & Session("vid")
        cmd = New SqlCommand(qry, cn)
        rq = cmd.ExecuteScalar
        lblreq.Text = rq
        cn.Close()

        cn.Open()
        qry = "select count(*) from category_mstr"
        cmd = New SqlCommand(qry, cn)
        cm = cmd.ExecuteScalar
        lblcategory.Text = cm
        cn.Close()

    End Sub
End Class
