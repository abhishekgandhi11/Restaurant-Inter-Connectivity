Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail
Imports sendsms

Partial Class cust_custfgped
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim emailid As String
    Dim phone As String
    Dim pass As String
    Dim sms As New message

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Try
            cmd.CommandText = "select email from custmast where email= '" & txtemail.Text & "' "
            cmd.Connection = conn
            conn.Open()
            Session("emailid") = cmd.ExecuteScalar()
            If Session("emailid") = Nothing Then
                lbl.Text = "Please enter valid emailid1"
            End If
        Catch ex As Exception
            lbl.Text = "Please enter valid emailid1"
        Finally
            conn.Close()

        End Try

        Try
            cmd.CommandText = "select phone from custmast where email= '" & txtemail.Text & "' "
            cmd.Connection = conn
            conn.Open()
            Session("phone") = cmd.ExecuteScalar()
            If Session("phone") = Nothing Then
                lbl.Text = "Please enter valid emailid2"
            End If
        Catch ex As Exception
            lbl.Text = "Please enter valid emailid2"
        Finally
            conn.Close()


        End Try

        Try
            cmd.CommandText = "select custnm from custmast where email= '" & txtemail.Text & "' "
            cmd.Connection = conn
            conn.Open()
            Session("custnm") = cmd.ExecuteScalar()
            If Session("custnm") = Nothing Then
                lbl.Text = "Please enter valid emailid3"
            End If
        Catch ex As Exception
            lbl.Text = "Please enter valid emailid3"
        Finally
            conn.Close()


        End Try


        Try
            cmd.CommandText = "select pass from custmast where email= '" & txtemail.Text & "' "
            cmd.Connection = conn
            conn.Open()
            Session("pass") = cmd.ExecuteScalar()
            Session("msg") = "Hello " + Session("custnm") + " your password of " + Session("emailid") + " email id is " + Session("pass") + " City Corner..."
            If Session("pass") = Nothing Then
                lbl.Text = "Please enter valid emailid"
            End If
        Catch ex As Exception
            lbl.Text = "Please enter valid emailid4"
        Finally
            conn.Close()


        End Try
    End Sub

    Protected Sub btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend.Click
        If radioemail.Checked Then



            Dim toid As String
            Dim fromid As String
            Dim subject As String
            Dim body As String
            Dim port As String
            Dim pwd As String

            fromid = "restaurantinterconnecitivity@gmail.com"
            pwd = "9979550407"
            toid = Session("emailid")
            subject = "Your Password"
            body = Session("msg")
            port = "587"
            Dim mailmsg As New MailMessage()
            Dim smtp As SmtpClient = New SmtpClient
            mailmsg.From = New MailAddress(fromid)
            mailmsg.Subject = subject
            mailmsg.IsBodyHtml = True
            mailmsg.Body = body
            mailmsg.To.Add(New MailAddress(toid))
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim networkcred As NetworkCredential = New System.Net.NetworkCredential
            networkcred.UserName = fromid
            networkcred.Password = pwd
            smtp.UseDefaultCredentials = True
            smtp.Credentials = networkcred
            smtp.Port = port
            smtp.Send(mailmsg)
            lbl.Text = "Password sent to your mail-id"
        ElseIf radiophone.Checked Then
            sms.sendmessage(Session("phone"), Session("msg"))
            lbl.Text = "Password sent to your number"
        Else
            lbl.Text = "Please select any option"
        End If
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
    End Sub
End Class
