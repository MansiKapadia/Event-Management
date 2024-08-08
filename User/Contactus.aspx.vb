Imports System.Data.SqlClient
Partial Class User_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Protected Sub btn_contsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_contsub.Click
        cn.Open()
        qry = "insert into contact_mstr values('" & txtfname.Text & "','" & txtlname.Text & "','" & txtmail.Text & "','" & txtcontact.Text & "','" & txtmsg.Text & "')"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Label1.Text = "Your Record Inserted Successfully..."
    End Sub
End Class
