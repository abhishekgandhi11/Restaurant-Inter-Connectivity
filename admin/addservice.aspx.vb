Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_addserice
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnaddserv_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddserv.Click
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Try
            Dim dt = DateAndTime.Today
            cmd.CommandText = "insert into service (servnm,sertype) values('" & txtservnm.Text & "','" & txtsertype.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conn.Close()
            Response.Redirect("addservice.aspx")
        End Try
    End Sub

   
    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Response.Redirect("adminhome.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("showservice.aspx")
    End Sub
End Class
