Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data

Partial Class S1
    Inherits System.Web.UI.Page

    <System.Web.Services.WebMethod()> _
    Public Shadows Function getcity(ByVal prifixtext As String, ByVal ByValcount As Integer) As String()
        Dim dc As New iud()
        Dim tb As New DataTable()
        tb = dc.gettable("select cityid,citynm from citymaster where citynm like '" & prifixtext & "%'")
        Dim txtsearch As New List(Of String)
        Dim dbvalues As String
        For Each row As DataRow In tb.Rows
            dbvalues = row("citynm").ToString()
            dbvalues = dbvalues.ToLower()
            txtsearch.Add(dbvalues)
        Next
        Return txtsearch.ToArray()

    End Function

End Class