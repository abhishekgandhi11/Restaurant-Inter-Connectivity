Imports System.Data
Imports System.Data.SqlClient

Partial Class admin_addresto
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            cmd.CommandText = "update restomaster set restonm='" + txtrestonm.Text + "', address= '" + txtaddress.Text + "', pincode= '" + txtpincode.Text + "', contactno= '" + txtcontactno.Text + "', email= '" + txtemail.Text + "', website= '" + txtwebsite.Text + "', head= '" + txthead.Text + "', facilities= '" + txtfacilities.Text + "', rusernm= '" + txtrusernm.Text + "' Where restoid= '" + Session("restoid") + "'"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.ToString)
        Finally
            conn.Close()
        End Try
        Response.Redirect("addresto.aspx")
    End Sub

    Protected Sub btncan_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncan.Click
        Response.Redirect("adminhome.aspx")
    End Sub

    Protected Sub btndel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndel.Click
        Try
            cmd.CommandText = "delete from restomaster where restoid=" & Session("restoid") & ""
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.ToString)
        Finally
            conn.Close()

        End Try
        Response.Redirect("addresto.aspx")

    End Sub

   

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("showresto.aspx")
    End Sub

    Protected Sub btnregi_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregi.Click
        Try
            Dim dt = DateAndTime.Today
            cmd.CommandText = "insert into restomaster(restonm,address,pincode,contactno,email,website,restotype,head,facilities,services,rusernm,rpass,cityid,regdate,usertype,restoimage) values('" & txtrestonm.Text & "','" & txtaddress.Text & "','" & txtpincode.Text & "','" & txtcontactno.Text & "','" & txtemail.Text & "','" & txtwebsite.Text & "','" & Ddlrtype.SelectedIndex & "','" & txthead.Text & "','" & txtfacilities.Text & "','" & txtservices.Text & "','" & txtrusernm.Text & "','" & txtrpass.Text & "','" & Ddlcity.SelectedValue & "'," & dt & ",'" & "restaurant" & "','" & restoupimgload.FileName & "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            Dim filename1 As String
            filename1 = Server.MapPath("restoimages")
            restoupimgload.SaveAs(filename1 & "\" & restoupimgload.FileName)
            lbl.Text = "Restaurant Info. Inserted Successfully"
        Catch ex As Exception
            lbl.Text = "Restaurant Info. Not Inserted Successfully"
        Finally
            conn.Close()
            Response.Redirect("addresto.aspx")
        End Try
    End Sub
End Class
