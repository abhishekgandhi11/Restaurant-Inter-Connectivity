Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail

Partial Class admin_email
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
        toid = txtto.Text
        subject = txtsubject.Text
        body = txtdisc.Text
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
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True"
        txtfrom.Text = "restaurantinterconnecitivity@gmail.com"
    End Sub
End Class
