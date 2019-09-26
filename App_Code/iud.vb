Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient


Public Class iud
    Dim conn As New SqlConnection

    Public Sub New()
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\Database.mdf;Integrated Security=True;User Instance=True"
    End Sub
    Public Function edit(ByVal cmd As SqlCommand) As Boolean
        Dim res As Boolean
        Try
            conn.Open()
            cmd.Connection = conn
            cmd.ExecuteNonQuery()
            res = True


        Catch ex As Exception
            res = False
        Finally
            conn.Close()

        End Try
        Return res
    End Function

    Public Function gettable(ByVal query As String) As DataTable
        Dim ds As New DataSet
        Dim tb As New DataTable
        Try
            conn.Open()
            Dim da As New SqlDataAdapter(query, conn)
            da.Fill(ds)
            tb = ds.Tables(0)

        Catch ex As Exception
            tb = Nothing
        Finally
            conn.Close()

        End Try
        Return tb
    End Function
    Public Function getrow(ByVal query As String) As DataRow
        Dim ds As New DataSet
        Dim tb As New DataTable
        Dim rw As DataRow
        Try
            conn.Open()
            Dim da As New SqlDataAdapter(query, conn)
            da.Fill(ds)
            tb = ds.Tables(0)
            rw = tb.Rows(0)
        Catch ex As Exception
            rw = Nothing
        Finally
            conn.Close()

        End Try
        Return rw

    End Function
    Public Function getrow1(ByVal query As String) As DataRow
        Dim ds As New DataSet
        Dim tb As New DataTable
        Dim rw As DataRow
        Try
            conn.Open()
            Dim da As New SqlDataAdapter(query, conn)
            da.Fill(ds)
            tb = ds.Tables(0)
            rw = tb.Rows(0)
        Catch ex As Exception
            rw = Nothing
        Finally
            conn.Close()

        End Try
        Return rw

    End Function


    Public Function getname(ByVal query As String) As String
        Dim rw As DataRow
        Dim name As String

        Try
            conn.Open()
            Dim da As New SqlDataAdapter(query, conn)
            Dim ds As New DataSet
            Dim tb As New DataTable
            da.Fill(ds)
            tb = ds.Tables(0)
            rw = tb.Rows(0)
            name = rw(0)

        Catch ex As Exception
            name = Nothing
        Finally
            conn.Close()
        End Try
        Return name
    End Function
    Public Function checkunique(ByVal query As String) As Boolean
        Dim cmd As New SqlCommand
        Dim dr As SqlDataReader = Nothing
        Dim result As Boolean
        Try
            conn.Open()
            cmd.CommandText = query
            cmd.Connection = conn
            dr = cmd.ExecuteReader
            dr.Read()
            result = True
        Catch ex As Exception
            result = False
        Finally
            dr.Close()
            conn.Close()

        End Try
        Return result
    End Function

    Public Function getid(ByVal query As String) As Integer
        Dim rw As DataRow
        Dim value As Integer
        Try
            conn.Open()
            Dim da As New SqlDataAdapter(query, conn)
            Dim ds As New DataSet
            Dim tb As New DataTable
            da.Fill(ds)
            tb = ds.Tables(0)
            rw = tb.Rows(0)
            value = rw(0)
        Catch ex As Exception
            value = Nothing
        Finally
            conn.Close()
        End Try
        Return value
    End Function

End Class
