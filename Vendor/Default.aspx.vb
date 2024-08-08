Imports System.Data.SqlClient
Imports System.Data
Partial Class Vendor_Vhome
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub btn_VSignUp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_VSignUp.Click
        Label1.Text = ""
        If Vimage.HasFile Then
            If Vimage.PostedFile.ContentType = "image/jpeg" Or Vimage.PostedFile.ContentType = "image/png" Then
                If Vimage.PostedFile.ContentLength < 50000000 Then
                    Dim fname As String
                    fname = Vimage.FileName
                    Vimage.SaveAs(Server.MapPath("~/VImage/" & fname))
                    Label1.Text = "File Uploaded Successfully"
                    cn.Open()
                    qry = "insert into vendor_mstr values('" & txtvname.Text & "','" & txtvmail.Text & "','" & txtvcontact.Text & "','" & txtvdesc.Text & "','" & txtvprice.Text & "','" & ddlcatid.SelectedItem.Value & "','" & ddlvstate.Text & "','" & ddlvcity.Text & "','" & txtvpass.Text & "','" & fname & "')"
                    cmd = New SqlCommand(qry, cn)
                    cmd.ExecuteNonQuery()
                    cn.Close()
                End If
            Else
                Label1.Text = "Please Select Image File"
            End If
        Else
            Label1.Text = "Please select File"
        End If
    End Sub

    Protected Sub btn_Vlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Vlogin.Click
        cn.Open()
        qry = "select * from vendor_mstr where vmail='" & txtvmail1.Text & "' and vpass='" & txtvpass1.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            Session("vid") = dr("vid")
            Session("vname") = dr("vname")
            Session("vimage") = dr("vimage")
            Response.Redirect("Dashboard.aspx")
        Else
            Label1.Text = "Record Not Found"
        End If
        cn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            qry = "select * from category_mstr"
            dap = New SqlDataAdapter(qry, cn)
            dap.Fill(ds)
            ddlcatid.DataTextField = "catname"
            ddlcatid.DataValueField = "catid"
            ddlcatid.DataSource = ds.Tables(0)
            ddlcatid.DataBind()

        End If
    End Sub
End Class
