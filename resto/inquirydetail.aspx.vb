
Partial Class cust_inquirydetail
    Inherits System.Web.UI.Page

    

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Session("email") = GridView1.SelectedRow.Cells(3).Text
        Session("detail") = GridView1.SelectedRow.Cells(1).Text
        Session("cno") = GridView1.SelectedRow.Cells(2).Text
        'MsgBox(Session("email"))
        'MsgBox(Session("detail"))
        Response.Redirect("inqreply.aspx")
    End Sub


   
End Class
