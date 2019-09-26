Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic

Public Class search
    Public Shared Function getcity(ByVal prefixText As String, ByVal count As Integer) As List(Of String)
        Dim conn As New SqlConnection
        Dim cmd As SqlCommand = New SqlCommand
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True"

        cmd.CommandText = "select cityid,citynm from citymaster where" & " citynm like @SearchText + '%'"
        cmd.Parameters.AddWithValue("@txtsearch", prefixText)
        cmd.Connection = conn
        conn.Open()
        Dim citymaster As List(Of String) = New List(Of String)
        Dim sdr As SqlDataReader = cmd.ExecuteReader
        While sdr.Read
            citymaster.Add(sdr("citynm").ToString)
        End While
        conn.Close()
        Return citymaster
    End Function

End Class
