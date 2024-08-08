Imports System.Data.SqlClient
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub btn_signin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_signin.Click
        cn.Open()
        qry = "select * from admin_mstr where admail='" & txtAmail.Text & "' and adpass='" & txtApass.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            Response.Redirect("AHome.aspx")
        Else
            Label1.Text = "Record Not Found"
        End If

        cn.Close()
    End Sub
End Class
