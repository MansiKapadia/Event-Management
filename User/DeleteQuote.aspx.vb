
Imports System.Data.SqlClient

Partial Class User_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim rqid As Integer
        rqid = Request.QueryString.Get("rqid")
        cn.Open()
        qry = "delete from request_quote where rqid=" & rqid
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("RequestQuote.aspx")
    End Sub
End Class
