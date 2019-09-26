<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="email.aspx.vb" Inherits="admin_email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style2
        {
            width: 70%;
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
                    <div class="text-center">
                        <h3>Email Send</h3>
                    </div>
                    
                    <div class="style1">
                        <form>
                        <asp:TextBox ID="txtfrom" runat="server" Width="400px" placeholder="" ReadOnly="True"></asp:TextBox><br /><br /> 
                         <asp:TextBox ID="txtto" runat="server" Width="400px" placeholder="     To"></asp:TextBox><br /><br />  
                         <asp:TextBox ID="txtsubject" runat="server" Width="400px" placeholder="     Subject"></asp:TextBox><br /><br />  
                         <asp:TextBox ID="txtdisc" runat="server" Width="400px" placeholder="   Discription" TextMode="MultiLine"></asp:TextBox><br /><br />  
                         <asp:Button ID="btnsend" runat="server" Text="Send" width="200px"/><br /><br />
                       </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end -->    
    
</asp:Content>

