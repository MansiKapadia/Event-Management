Imports System.Data.SqlClient
Partial Class User_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Protected Sub btn_SignUp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_SignUp.Click
        cn.Open()
        qry = "insert into user_mstr values('" & txtname.Text & "','" & txtmail.Text & "','" & txtcontact.Text & "','" & txtpass.Text & "')"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Label1.Text = "Record Inserted Successfully...."
    End Sub

    Protected Sub btn_login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_login.Click
        cn.Open()
        qry = "select * from user_mstr where email='" & txtmail1.Text & "' and password='" & txtpass1.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            Session("uid") = dr("uid")
            Session("uname") = dr("uname")
            Response.Redirect("Home.aspx")
        Else
            Label1.Text = "Record Not Found"
        End If
        cn.Close()
    End Sub
End Class
