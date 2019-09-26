
Partial Class cust_forgetpass
    Inherits System.Web.UI.Page

    Protected Sub btncust_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncust.Click
        Response.Redirect("custfgpwd.aspx")
    End Sub

    Protected Sub btnresto_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnresto.Click
        Response.Redirect("restofgpwd.aspx")
    End Sub
End Class
