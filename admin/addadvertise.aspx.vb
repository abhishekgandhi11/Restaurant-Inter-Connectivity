Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_addadertice
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
    End Sub

    Protected Sub btnadv_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadv.Click

        Try
            Dim dt = DateAndTime.Today
            cmd.CommandText = "insert into advertice values ('" & ddlcity.SelectedValue & "','" & advupload.FileName & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            Dim filename1 As String
            filename1 = Server.MapPath("advimages")
            advupload.SaveAs(filename1 & "\" & advupload.FileName)
            lbl.Text = "Advertisement Inserted Successfully"
        Catch ex As Exception
            MsgBox(ex.ToString)
            lbl.Text = "Advertisement Not Inserted Successfully"
        Finally
            conn.Close()
            Response.Redirect("addadvertise.aspx")
        End Try
    End Sub

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Response.Redirect("adminhome.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadv.Click
        Response.Redirect("showadd.aspx")
    End Sub
End Class
