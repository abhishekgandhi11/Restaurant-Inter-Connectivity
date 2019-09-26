<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="addcitypage.aspx.vb" Inherits="admin_addcitypage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Contact area start -->
    <div class="factorian-content-block">
        <div class="container">
            <div class="row wow fadeInUp">
                <div class="">
                    
                </div>
                <div class="col-md-6">
                    <div class="style1">
                        <h3>Add City</h3>
                    </div>
                    <div class="style1">
                        <form>

                        <asp:TextBox ID="txtcitynm" placeholder="City Name" runat="server"></asp:TextBox><br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtcitynm" ErrorMessage="Please Enter City Name*" 
                                    ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="txtpincode" placeholder="Pincode" runat="server"></asp:TextBox><br /><br />
                        
                        <asp:Button ID="btnaddcity" runat="server" Text="Add City" /><br /><br />
                        
                         <asp:Button ID="btncan" runat="server" Text="Cancel" /><br /><br />
                  <asp:GridView ID="GridView1" class="table-condensed" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="cityid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="cityid" HeaderText="Sr.No." InsertVisible="False" 
                            ReadOnly="True" SortExpression="cityid" />
                        <asp:BoundField DataField="citynm" HeaderText="City Name" 
                            SortExpression="citynm" />
                        <asp:BoundField DataField="pincode" HeaderText="City Pincode" 
                            SortExpression="pincode" />
                    </Columns>
                </asp:GridView><br /><br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [citymaster]"></asp:SqlDataSource>
                
                       </form>
                    </div>
                </div>
                
        </div>
    </div> 
    <!-- contact area end -->  
</asp:Content>


