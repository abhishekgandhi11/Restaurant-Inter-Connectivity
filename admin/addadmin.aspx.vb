Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_addadmin
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dc As New iud

    Protected Sub Btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnadd.Click
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Try
            cmd.CommandText = "insert into admin values('" & Textnm.Text & "','" & Textusrnm.Text & "','" & Textpass.Text & "','" & "admin" & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            lbl.Text = "Admin Added Successfully..!!"
        Catch ex As Exception
            MsgBox(ex)
        Finally
            Textnm.Text = ""
            Textpass.Text = ""
            Textusrnm.Text = ""
            Response.Redirect("addadmin.aspx")
        End Try
    End Sub

    Protected Sub Btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btncan.Click
        Response.Redirect("adminhome.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If IsPostBack = False Then
        '    gdadmin.DataSource = dc.gettable("select adminid,adminname,usrnm,pass from admin")
        '    gdadmin.DataMember = ""
        'End If
    End Sub

    Protected Sub Textnm_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Textnm.TextChanged

    End Sub
End Class



Class iud

End Class
