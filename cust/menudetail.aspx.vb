Imports System.Data
Imports System.Data.SqlClient

Partial Class cust_menudetail
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Dim cmd As New SqlCommand

    Dim dc As New iud


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\project1\App_Data\Database.mdf;Integrated Security=True;User Instance=True"



            SqlDataSource1.SelectCommand = "SELECT [catid], [catnm], [catimage], [restoid], [restonm] FROM [foodcat] WHERE ([restoid] =  @restoid) order by catid"
            restoname.Text = Session("restonm")
            
        End If

    End Sub

    ''Protected Sub Restopg_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Restopg.Click
    ''    Response.Redirect("restaurantdetails.aspx")
    ''End Sub

   
   
       

   

    
   
   
    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        Dim index = e.Item.ItemIndex
        Session("catid") = CType(DataList1.Items(index).FindControl("catidLabel"), Label).Text
        ' MsgBox(Session("catid"))
    End Sub

   
    
   
End Class
