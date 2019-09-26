Imports System.Configuration
Imports System.Data
Imports System.Data.SqlClient

Partial Class cust_paymentdetail
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        txtprice.Text = Session("totprice")
        txtqty.Text = Session("tqty")
        txtcustid.Text = Session("custid")
        txtordid.Text = Session("orderid1")

    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim billid As Integer
        Try
            cmd.CommandText = "select max(billno) from bill"
            cmd.Connection = conn
            conn.Open()
            billid = cmd.ExecuteScalar()

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            conn.Close()
        End Try

        If credit.Checked Then
            Try
                cmd.CommandText = "insert into payment(paydate,ordid,custid,amount,paytype,billno) values('" & Date.Now & "'," & txtordid.Text & "," & txtcustid.Text & "," & txtprice.Text & ",'" & "Credit Card" & "'," & billid & ")"
                cmd.Connection = conn
                conn.Open()
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox(ex.ToString)
            Finally
                conn.Close()

            End Try

            Dim uname As String
            uname = Session("custnm")
            Dim redirecturl As String = ""
            'redirecturl= redirecturl & "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["abhishekgandhi1125462gmail.com"]
            redirecturl = redirecturl & "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + "restaurantinterconnecitivity@gmail.com"
            redirecturl = redirecturl & "&first_name=" & uname
            redirecturl = redirecturl & "&city=Navsari"
            redirecturl = redirecturl & "&state=Gujarat"
            redirecturl = redirecturl & "&item_name=Online Payment"
            redirecturl = redirecturl & "&amount=" & txtprice.Text
            redirecturl = redirecturl & "&shipping=5"
            redirecturl = redirecturl & "&quantity=" & txtqty.Text
            redirecturl = redirecturl & "&currency=USD"
            redirecturl = redirecturl & "&return=" + ""
            redirecturl = redirecturl & "&cancel_return=" + ""
            Response.Redirect(redirecturl)

        ElseIf debit.Checked Then

            Try
                cmd.CommandText = "insert into payment(paydate,ordid,custid,amount,paytype,billno) values('" & Date.Now & "'," & txtordid.Text & "," & txtcustid.Text & "," & txtprice.Text & ",'" & "Debit Card" & "'," & billid & ")"
                cmd.Connection = conn
                conn.Open()
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox(ex.ToString)
            Finally
                conn.Close()

            End Try

            Dim uname As String
            uname = Session("custnm")
            Dim redirecturl As String = ""
            'redirecturl= redirecturl & "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["abhishekgandhi1125462gmail.com"]
            redirecturl = redirecturl & "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + "restaurantinterconnecitivity@gmail.com"
            redirecturl = redirecturl & "&first_name=" & uname
            redirecturl = redirecturl & "&city=Navsari"
            redirecturl = redirecturl & "&state=Gujarat"
            redirecturl = redirecturl & "&item_name=Online Payment"
            redirecturl = redirecturl & "&amount=" & txtprice.Text
            redirecturl = redirecturl & "&shipping=5"
            redirecturl = redirecturl & "&quantity=" & txtqty.Text
            redirecturl = redirecturl & "&currency=USD"
            redirecturl = redirecturl & "&return=" + ""
            redirecturl = redirecturl & "&cancel_return=" + ""
            Response.Redirect(redirecturl)

        ElseIf netbank.Checked Then
            Try
                cmd.CommandText = "insert into payment(paydate,ordid,custid,amount,paytype,billno) values('" & Date.Now & "'," & txtordid.Text & "," & txtcustid.Text & "," & txtprice.Text & ",'" & "Net Banking" & "'," & billid & ")"
                cmd.Connection = conn
                conn.Open()
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox(ex.ToString)
            Finally
                conn.Close()

            End Try

            Dim uname As String
            uname = Session("custnm")
            Dim redirecturl As String = ""
            'redirecturl= redirecturl & "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["abhishekgandhi1125462gmail.com"]
            redirecturl = redirecturl & "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + "restaurantinterconnecitivity@gmail.com"
            redirecturl = redirecturl & "&first_name=" & uname
            redirecturl = redirecturl & "&city=Navsari"
            redirecturl = redirecturl & "&state=Gujarat"
            redirecturl = redirecturl & "&item_name=Online Payment"
            redirecturl = redirecturl & "&amount=" & txtprice.Text
            redirecturl = redirecturl & "&shipping=5"
            redirecturl = redirecturl & "&quantity=" & txtqty.Text
            redirecturl = redirecturl & "&currency=USD"
            redirecturl = redirecturl & "&return=" + ""
            redirecturl = redirecturl & "&cancel_return=" + ""
            Response.Redirect(redirecturl)

        ElseIf cod.Checked Then

            Try
                cmd.CommandText = "insert into payment(paydate,ordid,custid,amount,paytype,billno) values('" & Date.Now & "'," & txtordid.Text & "," & txtcustid.Text & "," & txtprice.Text & ",'" & "COD" & "'," & billid & ")"
                cmd.Connection = conn
                conn.Open()
                cmd.ExecuteNonQuery()
            Catch ex As Exception
                MsgBox(ex.ToString)
            Finally
                conn.Close()

            End Try

            Response.Redirect("cod.aspx")
        Else
            lbl.Text = "Please Select Any Payment Option For Pay..."
        End If
    End Sub
End Class
