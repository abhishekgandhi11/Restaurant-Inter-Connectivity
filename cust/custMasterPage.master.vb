Imports System.Data
Imports System.Data.SqlClient

Partial Class cust_custMasterPage
    Inherits System.Web.UI.MasterPage
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnlog_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlog.Click
        Session.Clear()
        Response.Redirect("mainhomepage.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        If Session("usernm") = Nothing Then
            username.Text = "Guest User"
            btnlog.Visible = False
        Else
            username.Text = Session("usernm")
            btnlog.Visible = True
        End If

        Try
            cmd.CommandText = "select count(*) from cart"
            cmd.Connection = conn
            conn.Open()
            lblcart.Text = cmd.ExecuteScalar()

        Catch ex As Exception
            MsgBox(ex.ToString)
        Finally
            conn.Close()

        End Try
    End Sub
End Class

