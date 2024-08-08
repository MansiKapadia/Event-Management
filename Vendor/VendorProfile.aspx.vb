Imports System.Data.SqlClient
Partial Class Vendor_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            cn.Open()
            qry = "select * from vendor_mstr where vid=" & Session("vid")
            cmd = New SqlCommand(qry, cn)
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                txtvname.Text = dr("vname")
                txtvmail.Text = dr("vmail")
                ddlcat.SelectedValue = dr("catid")
                txtprice.Text = dr("vprice")
                ddlcity.SelectedItem.Text = dr("city")
                txtvcontact.Text = dr("vcontact")
                ddlstate.SelectedItem.Text = dr("state")
            End If
            cn.Close()
        End If

       
    End Sub

    

    Protected Sub btn_vUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_vUpdate.Click
        cn.Open()
        qry = "update vendor_mstr set vname='" & txtvname.Text & "',vmail='" & txtvmail.Text & "',vdesc='" & ddlcat.SelectedItem.Text & "',vprice='" & txtprice.Text & "',city='" & ddlcity.SelectedItem.Text & "',vcontact='" & txtvcontact.Text & "',state='" & ddlstate.SelectedItem.Text & "' where vid=" & Session("vid")
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Label1.Text = "Record Updated..."
    End Sub
End Class
