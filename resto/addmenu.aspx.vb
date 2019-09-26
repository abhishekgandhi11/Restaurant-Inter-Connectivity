Imports System.Data
Imports System.Data.SqlClient

Partial Class resto_addmenu
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Response.Redirect("restohome.aspx")
    End Sub

    Protected Sub btnaddmenu_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddmenu.Click
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Try
            cmd.CommandText = "insert into menu (foodid,price,qty,restoid,unitid) values('" & ddlfoodid.SelectedValue & "'," & txtprice.Text & ",'" & txtqty.Text & "','" & txtrestoid.Text & "','" & ddlunitid.SelectedValue & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            lbl.Text = "Menu inserted Successfully..!"
        Catch ex As Exception
            MsgBox(ex.ToString)
            lbl.Text = "Menu Not inserted Successfully..!"
        Finally
            conn.Close()
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        txtrestoid.Text = Session("restoid")
    End Sub
End Class
