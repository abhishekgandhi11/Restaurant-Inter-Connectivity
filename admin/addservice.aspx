<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="addservice.aspx.vb" Inherits="admin_addserice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 587px;
        }
        .style2
        {
            width: 513px;
        }
        .style3
        {
            width: 7px;
        }
        .style4
        {
            width: 91px;
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
                <div class="container">
                
                <div class="col-md-6">
                    
                    
                    <div class="style1">
                        <form>
                       <table cellpadding="2" class="style1">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="title" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Add services"></asp:Label>
                            </td>
                            <td class="title">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="Label2" runat="server" Text="Service Name :"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="txtservnm" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtservnm" ErrorMessage="Please Enter Service Name*" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="Label3" runat="server" Text="Service Type :"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="txtsertype" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtsertype" ErrorMessage="Please Enter Service Type*" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Button ID="btnaddserv" runat="server" Text="Add Service" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            <td class="style4">
                                <asp:Button ID="btncan" runat="server" 
                                    Text="Cancel" CausesValidation="false" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderStyle="Double" 
                                    CausesValidation="false" Text="SHow Service" Width="184px" />
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
            
            </td>
        </tr>
    </table>
                       </form>
                    </div>
                </div> 
            </div>
        </div>
        </div>
    </div> 
    <!-- contact area end -->    
</asp:Content>

