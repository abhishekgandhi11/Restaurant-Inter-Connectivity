Imports System.Data
Imports System.Data.SqlClient

Partial Class cust_restaurantdetails
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection

    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        Dim index = e.Item.ItemIndex
        Session("restoid") = CType(DataList1.Items(index).FindControl("restoidlabel"), Label).Text
        Session("restonm") = CType(DataList1.Items(index).FindControl("restonmlabel"), Label).Text
        'MsgBox(Session("restoid"))
        'MsgBox(Session("restonm"))
        Response.Redirect("menudetail.aspx")
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Session("cityid") = DropDownList1.SelectedItem.Value

        ' MsgBox(Session("cityid"))
    End Sub
End Class
