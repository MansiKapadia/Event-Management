
Imports System.Data.SqlClient

Partial Class User_Default2
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Protected Sub btnsub_Click(sender As Object, e As EventArgs) Handles btnsub.Click
        cn.Open()
        qry = "select * from user_mstr where uid=" & Session("uid") & " and password='" & txtolpass.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            cn.Close()

            If txtnewpass.Text = txtcpass.Text Then
                cn.Open()
                qry = "update user_mstr set password='" & txtnewpass.Text & "' where uid=" & Session("uid")
                cmd = New SqlCommand(qry, cn)
                cmd.ExecuteNonQuery()
                Response.Redirect("Default.aspx")
            Else
                lblmsg.Text = "New password and Confirm Password Doent Match"
            End If
        Else
            lblmsg.Text = "Old password Doent Match"
        End If
        cn.Close()
    End Sub
End Class
