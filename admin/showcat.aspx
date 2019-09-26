<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="showcat.aspx.vb" Inherits="admin_showcat" %>

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
                
                <div class="col-md-6">
                    <div class="text-center">
                        <h3> Show Category</h3>
                    </div>
                        <asp:TextBox ID="txtcatnm" runat="server" placeholder="category name" ></asp:TextBox><br />
                        <asp:Button ID="btndel" runat="server" Text="Delete" /> <br />
                    <asp:GridView ID="GridView1" class="table-condensed" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="catid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="catid" HeaderText="Sr. No." InsertVisible="False" 
                                ReadOnly="True" SortExpression="catid" />
                            <asp:BoundField DataField="catnm" HeaderText="Category Name" SortExpression="catnm" />
                             <asp:BoundField DataField="catimage" HeaderText="Category Image" SortExpression="catnm" />
                            <asp:ButtonField HeaderText="Select" CommandName="Select" ShowHeader="True" Text="Select" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString6 %>" 
                        SelectCommand="SELECT [catid], [catnm], [catimage] FROM [category]">
                    </asp:SqlDataSource>
                    You Want to add more category <asp:LinkButton ID="LinkButton1" runat="server">Click here..</asp:LinkButton>
            </div>
          </div>
    </div>
</div>
</div>
    <!-- contact area end -->    

</asp:Content>

