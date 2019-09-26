Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Collections.Generic

Partial Class resto_addfood
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Private Property Path As String

    Protected Sub btnaddfood_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddfood.Click
        lbl.Text = ""
        Try
            cmd.CommandText = "insert into foodmaster (foodnm,foodtype,catid,fimg,restoid) values('" & txtfoodnm.Text & "','" & txtfoodtype.Text & "','" & ddlcat.SelectedValue & "','" & fupload.FileName & "','" & txtrestoid.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            Dim filename1 As String
            filename1 = Server.MapPath("foodimages")
            ' filename1 = Server.MapPath("../foodimages")
            fupload.SaveAs(filename1 & "\" & fupload.FileName)

            ' Dim Path As String
            ' Dim GetFileName As String

            'fupload.SaveAs(Path & "\" & fupload.FileName)
            ' Dim fileName As String = Path.GetFileName(fupload.FileName)
            'fupload.SaveAs(Server.MapPath("~/foodimages/") & filename1)
            lbl.Text = "Food Added Successfully..!"
        Catch ex As Exception
            MsgBox(ex.ToString)
            lbl.Text = "Food Added Not Successfully..!"
        Finally
            conn.Close()
            txtfoodnm.Text = ""
            txtfoodtype.Text = ""
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        txtrestoid.Text = Session("restoid")
    End Sub
End Class
