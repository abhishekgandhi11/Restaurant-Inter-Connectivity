
Partial Class admin_adminmasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("usernm") = Nothing Then
            username.Text = "Guest User"
        Else
            username.Text = Session("usernm")
        End If
    End Sub

  

    Protected Sub btnlog_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlog.Click
        Session.Clear()
        Response.Redirect("../cust/loginpage.aspx")
    End Sub
End Class

