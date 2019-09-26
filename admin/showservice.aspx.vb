Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_showservice
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btndel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndel.Click
        Try
            cmd.CommandText = "delete from service where servid=" & Session("serviceid") & ""
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.ToString)
        Finally
            conn.Close()

        End Try
        Response.Redirect("showservice.aspx")
    End Sub

    Protected Sub GridView1_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PageIndexChanged
       
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            cmd.CommandText = "update service set servnm='" + txtservnm.Text + "', sertype= '" + txtsertype.Text + "' Where servid= '" + Session("serviceid") + "'"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.ToString)
        Finally
            conn.Close()
        End Try
        Response.Redirect("showservice.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Session("serviceid") = GridView1.SelectedRow.Cells(0).Text
        txtservnm.Text = GridView1.SelectedRow.Cells(1).Text
        txtsertype.Text = GridView1.SelectedRow.Cells(2).Text
        ' MsgBox(GridView1.SelectedRow.Cells(1).Text)
    End Sub
End Class
