Imports System.Data
Imports System.Data.SqlClient
Partial Class resto_addhome
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection

  
   
   
    Protected Sub btnaddbill_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddbill.Click
        Response.Redirect("addbill.aspx")
    End Sub

    Protected Sub btnaddfood_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddfood.Click
        Response.Redirect("addfood.aspx")
    End Sub

    Protected Sub btnaddmenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddmenu.Click
        Response.Redirect("addmenu.aspx")
    End Sub

    Protected Sub btnaddunit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddunit.Click
        Response.Redirect("addunit.aspx")
    End Sub

    Protected Sub btninqreply_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninqreply.Click
        Response.Redirect("inqreply.aspx")
    End Sub

    Protected Sub btnreceivedorder_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreceivedorder.Click
        Response.Redirect("receivedorder.aspx")
    End Sub

    Protected Sub btninquirydetail_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninquirydetail.Click
        Response.Redirect("inquirydetail.aspx")
    End Sub
End Class
