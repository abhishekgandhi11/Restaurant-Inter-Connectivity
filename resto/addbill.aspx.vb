Imports System.Data
Imports System.Data.SqlClient

Partial Class resto_addbill
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnbill_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnbill.Click
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Try
            Dim dt = DateAndTime.Today
            cmd.CommandText = "insert into bill (billdate,custid,ordid,servicetax,excharge,delcharge) values('" & dt & "','" & ddlcustid.SelectedValue & "','" & ddlorderid.SelectedIndex & "','" & txtservcharge.Text & "','" & txtexcharge.Text & "','" & txtdelcharge.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            lbl.Text = "Menu inserted Successfully..!"
        Catch ex As Exception
            MsgBox(ex.ToString)
            lbl.Text = "Menu Not inserted Successfully..!"
        Finally
            conn.Close()
            Response.Redirect("addbill.aspx")
        End Try
    End Sub
End Class
