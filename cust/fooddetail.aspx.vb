
Partial Class cust_fooddetail
    Inherits System.Web.UI.Page
    Dim t As Integer = 0
    Dim tqty As Integer = 0

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        If Not e.Row.RowType = DataControlRowType.Header And Not e.Row.RowType = DataControlRowType.Footer Then
            t = t + e.Row.Cells(5).Text
            tqty = tqty + e.Row.Cells(3).Text
            Session("tqty") = tqty
            Session("totprice") = t
        End If
        If e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(5).Text = t


        End If

    End Sub

    Protected Sub btnpayment_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnpayment.Click
        Response.Redirect("paymentdetail.aspx")
    End Sub
End Class
