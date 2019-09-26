Imports System.Data
Imports System.Data.SqlClient

Partial Class cust_inquirypage
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btninq_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninq.Click
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Try
            Dim dt = DateAndTime.Today
            cmd.CommandText = "insert into inquiry(inqdate,details,contactno,email,restoid) values(" & dt & ",'" & txtinqdetails.Text & "','" & txtcontactno.Text & "','" & txtemail.Text & "','" & ddlresto.SelectedValue & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            MsgBox("SUCCESS")
            txtcontactno.Text = ""
            txtemail.Text = ""
            txtinqdetails.Text = ""
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conn.Close()
        End Try
    End Sub

End Class
