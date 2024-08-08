Imports System.Data.SqlClient

Partial Class User_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            Try
                cn.Open()
                qry = "select * from user_mstr where uid=" & Session("uid")
                cmd = New SqlCommand(qry, cn)
                dr = cmd.ExecuteReader()
                If dr.HasRows Then
                    dr.Read()
                    txtuname.Text = dr("uname")
                    txtumail.Text = dr("email")
                    txtucontact.Text = dr("contact")
                End If
                cn.Close()
            Catch ex As Exception
                Response.Redirect("Default.aspx")

            End Try


        End If

    End Sub
End Class
