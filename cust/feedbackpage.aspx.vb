Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports AjaxControlToolkit

Partial Class cust_feedbackpage
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnfd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfd.Click
        Try
            Dim dt = DateAndTime.Today
            cmd.CommandText = "insert into feedback(fddate,email,contactno,fd,status,restoid,custid) values(" & dt & ",'" & txtemail.Text & "','" & txtcontactno.Text & "','" & txtfd.Text & "','" & txtstatus.Text & "',' " & ddlresto.SelectedValue & " ','" & custid.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox("data insert properly")
        Finally
            conn.Close()
            Response.Redirect("feedbackpage.aspx")
        End Try
    End Sub

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Response.Redirect("custhome.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        custid.Text = Session("custid")
    End Sub
End Class
