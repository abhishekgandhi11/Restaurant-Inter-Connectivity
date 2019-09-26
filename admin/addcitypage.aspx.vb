Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_addcitypage
Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        
    End Sub

    Protected Sub btnaddcity_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddcity.Click
        Try

            cmd.CommandText = "insert into citymaster values('" & txtcitynm.Text & "','" & txtpincode.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox(ex)
        Finally
            conn.Close()
            Response.Redirect("addcitypage.aspx")

        End Try
    End Sub

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Response.Redirect("adminhome.aspx")
    End Sub

   
End Class
