
Imports System.Data.SqlClient


Partial Class User_Default2
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Try
            If Session("uid") <> "" Then

            Else
                Response.Redirect("default.aspx")
            End If
        Catch ex As Exception

        End Try
        If Not IsPostBack Then

            cn.Open()
            qry = "select * from user_mstr where uid=" & Session("uid")
            cmd = New SqlCommand(qry, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                txtname.Text = dr("uname")
                txtmail.Text = dr("email")
                txtcontact.Text = dr("contact")
            End If
            cn.Close()
        End If


    End Sub

    Protected Sub btn_submit_quote_Click(sender As Object, e As EventArgs) Handles btn_submit_quote.Click
        Dim vid As Integer
        vid = Request.QueryString.Get("vid")

        cn.Open()
        qry = "insert into Request_Quote values('" & vid & "','" & Session("uid") & "','" & txtname.Text & "','" & txtmail.Text & "','" & txtcontact.Text & "','" & txtdate.Text & "','" & txtcomment.Text & "')"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
    End Sub
End Class
