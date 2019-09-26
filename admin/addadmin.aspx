<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="addadmin.aspx.vb" Inherits="admin_addadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    
     <!-- Contact area start -->
    <div class="factorian-content-block">
        <div class="container">
            <div class="row wow fadeInUp">
             
                <div class="container">
                
                <div class="col-md-6">
                    <div class="space">
                        <h2>Add Admin Account</h2>
                    </div>
                    
                    <div class="style1">
                        <form>
                            <asp:TextBox ID="Textnm" placeholder="Name" class="form-control" runat="server"></asp:TextBox><br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please Enter Admin Name*" ControlToValidate="textnm" ForeColor="Red"></asp:RequiredFieldValidator>
   
                            <asp:TextBox ID="Textusrnm" placeholder="User Name" class="form-control" runat="server"></asp:TextBox><br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter User Name*" ControlToValidate="textusrnm" ForeColor="Red"></asp:RequiredFieldValidator>     
                            <asp:TextBox ID="Textpass" placeholder="User Password" class="form-control" runat="server"></asp:TextBox><br />
                            <asp:TextBox ID="Textcpass" placeholder="confirm Password" class="form-control" runat="server"></asp:TextBox><br />
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="textpass" ControlToValidate="textcpass" 
                    ErrorMessage="Please Enter Same Password" ForeColor="Red"></asp:CompareValidator>
                                        <asp:Button ID="Btnadd" class="form-control" runat="server" Text="Add Admin" />
                                        <br />  
                                        <asp:Button ID="Btncan" class="form-control" runat="server" Text="cancel" /><br /><br />
                            <br /><br />
                                   <asp:Label ID="lbl" runat="server" Text=""></asp:Label><br />
                </div>
                

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
                        
                    SelectCommand="SELECT [adminid], [adminnm], [usrnm], [pass] FROM [admin]">
                    </asp:SqlDataSource>
                     </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end -->    
    
</asp:Content>



    



