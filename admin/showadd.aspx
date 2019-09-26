<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="showadd.aspx.vb" Inherits="admin_showadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Contact area start -->
    <div class="factorian-content-block">
        <div class="container">
            <div class="row wow fadeInUp">
                <div class="">
                    
                </div>
                <div class="container">
                
                
                     <form action = "">
                    <div class="style1"><asp:TextBox ID="txtrestonm" runat="server" placeholder="restaurant name"></asp:TextBox><br /><br />
                <asp:Button ID="btndel" runat="server" Text="Delete" />
    </div>
                 <br /><br />
                        <asp:GridView ID="GridView1" class="table-condensed" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="addid" DataSourceID="SqlDataSource1">
        
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="addid" HeaderText="advertice id" InsertVisible="False" 
                ReadOnly="True" SortExpression="addid" />
            <asp:BoundField DataField="restonm" HeaderText="restaurant name" 
                SortExpression="restonm" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
        </Columns>
        



    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [addid], [restonm], [image] FROM [advertice]">
    </asp:SqlDataSource>
   
                       
                        
                       </form>
                    </div>
                </div> 
            </div>
        </div>
     
    <!-- contact area end -->    

</asp:Content>

