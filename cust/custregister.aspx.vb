Imports System.Data
Imports System.Data.SqlClient
Partial Class cust_custregister
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        Try

            Dim dt As DateTime
            dt = DateTime.Now
            cmd.CommandText = "insert into custmast(custnm,usernm,pass,usertype,address,cityid,pincode,phone,mobile,email,landmark,regdate) values('" & txtcustnm.Text & "','" & txtusernm.Text & "','" & txtpass.Text & "','" & "customer" & "','" & txtaddress.Text & "','" & ddlcity.SelectedValue & "','" & txtpincode.Text & "','" & txtphone.Text & "','" & txtmobile.Text & "','" & txtemail.Text & "','" & txtlendmark.Text & "','" + dt + "')"
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conn.Close()
            Response.Redirect("loginpage.aspx")

        End Try

    End Sub
End Class
