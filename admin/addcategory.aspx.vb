Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_addcategory
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand


    Protected Sub btnaddcat_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddcat.Click
        Try
            Dim dt = DateAndTime.Today
            cmd.CommandText = "insert into category (catnm,catimage) values('" & txtcatnm.Text & "','" & catupload.FileName & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            Dim filename1 As String
            filename1 = Server.MapPath("catimages")
            catupload.SaveAs(filename1 & "\" & catupload.FileName)
            lbl.Text = "Category Inserted Successfully"
        Catch ex As Exception
            lbl.Text = "Category Not Inserted Successfully"
        Finally
            conn.Close()
            Response.Redirect("addcategory.aspx")
        End Try
    End Sub

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Response.Redirect("adminhome.aspx")
    End Sub

    Protected Sub showcat_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles showcat.Click
        Response.Redirect("showcat.aspx")

    End Sub

    'Protected Sub btndelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete.Click
    '    Try
    '        Dim dt = DateAndTime.Today
    '        cmd.CommandText = "delete from category where catnm='" & txtcatnm.Text & "'"
    '        cmd.Connection = conn
    '        conn.Open()
    '        cmd.ExecuteNonQuery()
    '        lbl.Text = "Category Inserted Successfully"
    '    Catch ex As Exception
    '        MsgBox(ex.Message)
    '        lbl.Text = "Category Not Inserted Successfully"
    '    Finally
    '        conn.Close()
    '    End Try
    'End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
    End Sub
End Class
