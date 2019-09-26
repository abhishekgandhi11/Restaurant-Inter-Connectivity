<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="addadvertise.aspx.vb" Inherits="admin_addadertice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 865px;
        }
        .style2
        {
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Contact area start -->
    <div class="factorian-content-block">
        <div class="container">
            <div class="row wow fadeInUp">
                <div class="">
                    
                </div>
                <div class="col-md-6">
                    <div>
                        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Advertise</h3>
                    </div>
                    <div class="style1">
                        <form>
                           
                       
                        <table class="nav-justified">
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="Restaurant Name :"></asp:Label><br />
                                </td>
                                <td>
                                    <br /><asp:DropDownList ID="ddlcity" runat="server" DataSourceID="SqlDataSource1" 
                                         DataValueField="restonm">
                                    </asp:DropDownList><br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [restonm] FROM [restomaster]">
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Advertice Image :"></asp:Label><br />
                                </td>
                                <td>
                                    <asp:FileUpload ID="advupload" runat="server" /><br />
                                </td>
                            </tr>
                            <tr>
                               
                                <td>
                <asp:Label ID="lbl" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2" colspan="2">
                                    <asp:Button ID="btnadv" runat="server" Text="SUBMIT" />
                                    <asp:Button ID="btncan" runat="server" Text="CANCEL" /><br /><br />
                                    <asp:Button ID="Button1" runat="server" Text="Show Advertise" /><br /><br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [restonm] FROM [advertice]"></asp:SqlDataSource>
                                </td>
                             </tr>
                        </table>
                        </form>
                    </div>
                </div> 
        </div>
    </div> 
    </div>
                            
    <!-- contact area end -->    
</asp:Content>

