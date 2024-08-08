Imports System.Data.SqlClient
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub btn_sub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_sub.Click
        Label1.Text = ""
        If pimage.HasFile Then
            If pimage.PostedFile.ContentType = "image/jpeg" Or pimage.PostedFile.ContentType = "image/png" Then
                If pimage.PostedFile.ContentLength < 5000000 Then
                    Dim fname As String
                    fname = pimage.FileName
                    pimage.SaveAs(Server.MapPath("~/PImage/" & fname))
                    Label1.Text = "File Uploaded Successfully"
                    Image1.ImageUrl = "~/PImage/" & fname

                    cn.Open()
                    qry = "insert into category_mstr values('" & txtcatname.Text & "','" & txtcatdesc.Text & "','" & fname & "')"
                    cmd = New SqlCommand(qry, cn)
                    cmd.ExecuteNonQuery()
                    cn.Close()
                    Label1.Text = "Record Inserted..."
                End If
            Else
                Label1.Text = "Please Select Image File"
            End If
        Else
            Label1.Text = "Please Select File..."
        End If

    End Sub

    Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_search.Click
        cn.Open()
        qry = "select * from category_mstr where catid=" & txtcid.Text
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            txtcatname.Text = dr("catname")
            txtcatdesc.Text = dr("catdesc")
            
            Image1.ImageUrl = "~/pimage/" & dr("catimage")

        Else
            Label1.Text = "Record not Found"
        End If
        cn.Close()
    End Sub

    Protected Sub btn_update_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_update.Click

        cn.Open()
        qry = "update category_mstr set catname='" & txtcatname.Text & "',catdesc='" & txtcatdesc.Text & "' where catid=" & txtcid.Text
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Label1.Text = "Record Updated"
    End Sub

    Protected Sub btn_delete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_delete.Click
        cn.Open()
        qry = "delete from category_mstr where catid=" & txtcid.Text
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Label1.Text = "Record Deleted..."
    End Sub
End Class
