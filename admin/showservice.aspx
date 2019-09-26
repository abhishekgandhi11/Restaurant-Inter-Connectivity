<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="showservice.aspx.vb" Inherits="admin_showservice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- Contact area start -->
    <div class="factorian-content-block">
        <div class="container">
            <div class="row wow fadeInUp">
                
                <div class="container">
                <div class="text-center">
                        <h3> Show service</h3>
                 </div>
                <div class="col-md-6">
                <div class="style1">
                        <form>
<center>
<br />
<br />
<asp:TextBox ID="txtservnm" runat="server" placeholder="service name" ></asp:TextBox><br /><br />
<asp:TextBox ID="txtsertype" runat="server" placeholder="service type"></asp:TextBox><br /><br />
    <asp:Button ID="btndel" runat="server" Text="Delete" /><br /><br />
    <asp:Button ID="btnupdate" runat="server" Text="Update" /><br />

    <br /><br />
    <asp:GridView ID="GridView1" class="table-condensed" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="servid" DataSourceID="SqlDataSource1">
         <Columns>
           
            <asp:BoundField DataField="servid" HeaderText="sr.No." InsertVisible="False" 
                ReadOnly="True" SortExpression="servid" />
            <asp:BoundField DataField="servnm" HeaderText="Service Name" 
                SortExpression="servnm" />
            <asp:BoundField DataField="sertype" HeaderText="Service Type" 
                SortExpression="sertype" />
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" 
                ShowHeader="True" Text="Select" />
        </Columns>
        
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [servid], [servnm], [sertype] FROM [service]">
    </asp:SqlDataSource>
</center>
<br />
<br /><br /><br />
<br />
<br /><br /><br />
<br />
<br /><br /><br />
        </form>
        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end -->    
    
</asp:Content>

