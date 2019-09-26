Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_showadd
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand



    Protected Sub btndel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndel.Click
        Try
            cmd.CommandText = "delete from advertice where addid=" & Session("addid") & ""
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.ToString)
        Finally
            conn.Close()

        End Try
        Response.Redirect("showadd.aspx")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Session("addid") = GridView1.SelectedRow.Cells(1).Text
        txtrestonm.Text = GridView1.SelectedRow.Cells(2).Text
    End Sub
End Class
