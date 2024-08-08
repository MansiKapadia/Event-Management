Imports System.Data.SqlClient
Partial Class Vendor_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Protected Sub btn_vInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_vInsert.Click
        If FileUpload1.HasFile Then
            If FileUpload1.PostedFile.ContentType = "image/jpeg" Then
                If FileUpload1.PostedFile.ContentLength < 500000 Then
                    Dim fname As String
                    fname = FileUpload1.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/Gallery/" & fname))
                    Label1.Text = "FileUpload Successfully.."
                    cn.Open()
                    qry = "insert into gallery_mstr values(" & Session("vid") & ",'" & fname & "')"
                    cmd = New SqlCommand(qry, cn)
                    cmd.ExecuteNonQuery()
                    cn.Close()
                    Label1.Text = "Record Inserted..."
                Else
                    Label1.Text = "File Size is too large"
                End If
            Else
                Label1.Text = "Please select image file.."
            End If

        End If
    End Sub
End Class
