Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class Service
     Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function

    <System.Web.Services.WebMethod()> _
    Public Shadows Function getcity(ByVal prifixtext As String, ByVal ByValcount As Integer) As String
        Dim dc As New iud
        Dim tb As New DataTable
        tb = dc.gettable("select cityid,citynm from citymaster where namelike '" & prifixtext & " % '")
        Dim txtsearch As New List(Of String)
        Dim dbvalues As String
        For Each row As DataRow In tb.Rows
            dbvalues = row("citynm").ToString
            dbvalues = dbvalues.ToLower
            txtsearch.Add(dbvalues)
        Next
        Return txtsearch.ToString()

    End Function
End Class