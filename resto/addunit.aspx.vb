Imports System.Data
Imports System.Data.SqlClient

Partial Class resto_addunit
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnaddunit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddunit.Click
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Try
            cmd.CommandText = "insert into unit (unitnm,sortnm) values('" & txtunitnm.Text & "','" & txtsortnm.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            lbl.Text = "Unit Inserted Successfully..!"
        Catch ex As Exception
            MsgBox(ex.ToString)
            lbl.Text = "Unit Not Inserted Successfully..!"

            conn.Close()
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Response.Redirect("restohome.aspx")
    End Sub
End Class
