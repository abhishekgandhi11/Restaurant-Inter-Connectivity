<%@ Page Title="" Language="VB" MasterPageFile="~/resto/restomasterPage.master" AutoEventWireup="false" CodeFile="addmenu.aspx.vb" Inherits="resto_addmenu" %>

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
                
                
                    <div class="style1">
                        <form>
                        <table class="nav-justified">
        <tr>
            <td>
                <table cellpadding="2" class="nav-justified">
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Add Menu"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Food Name :"></asp:Label></td>
                        <td>
                           <asp:DropDownList ID="ddlfoodid" runat="server" DataSourceID="SqlDataSource3" 
                                DataTextField="foodnm" DataValueField="foodid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [foodid], [foodnm] FROM [foodmaster]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtrestoid" runat="server" Visible="false"></asp:TextBox>
                        <td>
                        <td>
                           &nbsp;
                        <td>
                          
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Unit Name :"></asp:Label></td>
                        <td>
                           <asp:DropDownList ID="ddlunitid" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="unitnm" DataValueField="unitid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [unitnm], [unitid] FROM [unit]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Price :"></asp:Label>
                           </td>
                        <td>
                            <asp:TextBox ID="txtprice" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Quantity :"></asp:Label></td>
                        <td>
                           <asp:TextBox ID="txtqty" runat="server"></asp:TextBox></td>
                           </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnaddmenu" runat="server" Text="Add Menu" />
                           </td>
                        <td>
                            <asp:Button ID="btncan" runat="server" Text="Cancel" />
                          </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl" runat="server" Text=""></asp:Label></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                   
                </asp:Panel>
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

