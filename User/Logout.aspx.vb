
Partial Class User_Default2
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("Default.aspx")
    End Sub
End Class
