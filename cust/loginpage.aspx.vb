Imports System.Data
Imports System.Data.SqlClient

Partial Class cust_loginpage
    Inherits System.Web.UI.Page
    Dim dc As New iud



    Protected Sub btnsub_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsub.Click
        Dim rw As DataRow

        Try
            If ddlutype.Text = "ADMIN" Then
                rw = dc.getrow("select * from admin where usernm ='" + txtusernm.Text + "'")
                Session("adminid") = rw("adminid")
                Session("usrnm") = rw("usrnm")

                If rw("apass") = txtpass.Text Then
                    If rw("usertype") = "admin" Then
                        Response.Redirect("../admin/adminhome.aspx")
                    End If
                End If
            ElseIf ddlutype.Text = "RESTAURANT" Then
                rw = dc.getrow("select * from restomaster where rusernm ='" + txtusernm.Text + "'")
                Session("restoid") = rw("restoid")
                Session("rusernm") = rw("rusernm")

                If rw("rpass") = txtpass.Text Then
                    If rw("usertype") = "restaurant" Then
                        Response.Redirect("../resto/restohome.aspx")
                    End If

                End If

            ElseIf ddlutype.Text = "CUSTOMER" Then
                rw = dc.getrow("select * from custmast where usernm ='" + txtusernm.Text + "'")
                Session("custid") = rw("custid")
                Session("usernm") = rw("usernm")

                If rw("pass") = txtpass.Text Then
                    If rw("usertype") = "customer" Then
                        Response.Redirect("../cust/custhome.aspx")
                    End If
                End If

            Else

                lblmsg.Text = "Invalid Password"
                txtpass.Text = ""
                txtpass.Focus()
            End If
        Catch ex As Exception
            lblmsg.Text = "User not Found"
            txtusernm.Text = ""
            txtusernm.Focus()
        End Try

    End Sub

    Protected Sub fgpwd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles fgpwd.Click
        Response.Redirect("forgetpass.aspx")
    End Sub

   

  
End Class

