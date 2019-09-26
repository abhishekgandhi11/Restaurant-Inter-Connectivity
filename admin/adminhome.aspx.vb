Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_adminhome
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Try
            cmd.CommandText = "insert into ins values('" & TextBox1.Text & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox(ex.ToString)
        Finally
            TextBox1.Text = ""
            Response.Redirect("addminhome.aspx")
        End Try

    End Sub

    Protected Sub btnaddrestaurant_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddrestaurant.Click
        Response.Redirect("addresto.aspx")
    End Sub

    Protected Sub btnshowrestaurant_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshowrestaurant.Click
        Response.Redirect("showresto.aspx")
    End Sub

    Protected Sub btnaddadmin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddadmin.Click
        Response.Redirect("addadmin.aspx")
    End Sub

    Protected Sub btnaddadvertisement_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddadvertisement.Click
        Response.Redirect("addadvertise.aspx")
    End Sub

    Protected Sub btnshowadvertisement_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshowadvertisement.Click
        Response.Redirect("showadd.aspx")
    End Sub

    Protected Sub btnaddcategory_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddcategory.Click
        Response.Redirect("addcategory.aspx")
    End Sub

    Protected Sub btnshowcategory_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshowcategory.Click
        Response.Redirect("showcat.aspx")
    End Sub

    Protected Sub btnaddservices_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddservices.Click
        Response.Redirect("addservice.aspx")
    End Sub

    Protected Sub btnshowservices_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshowservices.Click
        Response.Redirect("showservice.aspx")
    End Sub

    Protected Sub btnaddcity_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddcity.Click
        Response.Redirect("addcitypage.aspx")
    End Sub

    Protected Sub btnemail_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnemail.Click
        Response.Redirect("email.aspx")
    End Sub
End Class
