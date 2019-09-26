Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail

Partial Class resto_inqreply
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend.Click
        Dim toid As String
        Dim fromid As String
        Dim subject As String
        Dim body As String
        Dim port As String
        Dim pwd As String

        fromid = "restaurantinterconnecitivity@gmail.com"
        pwd = "9979550407"
        toid = txtmailto.Text
        subject = txtsubject.Text
        body = txtreply.Text
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


        cmd.CommandText = "insert into email(emaildate,emailto,emailby,subject,detail) values(" & Date.Now & ",'" & txtmailto.Text & "','" & txtmailby.Text & "','" & txtsubject.Text & "','" & txtreply.Text & "')"
        cmd.Connection = conn
        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        txtmailto.Text = Session("email")
        txtsubject.Text = Session("detail")
        txtmailby.Text = "nisha13gandhi13@gmail.com"
    End Sub
End Class
