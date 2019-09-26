<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="adminhome.aspx.vb" Inherits="admin_adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="Div_main" class="factorian-content-block">
    <div class="row">
        <div id="div_left" class="col-md-4">
            <asp:Button ID="btnaddrestaurant" class="btnsize" runat="server" Text="Add Restaurant" /><br /><br />
            <asp:Button ID="btnshowrestaurant" class="btnsize" runat="server" Text="Show Restaurant" /><br /><br />
            <asp:Button ID="btnaddadmin" class="btnsize" runat="server" Text="Add Admin" /><br /><br />
            <asp:Button ID="btnaddadvertisement" class="btnsize" runat="server" Text="Add Advertisement" /><br /><br />
            <asp:Button ID="btnshowadvertisement" class="btnsize" runat="server" Text="Show Advertisement" /><br /><br />
            <asp:Button ID="btnaddcategory" class="btnsize" runat="server" Text="Add Category" /><br /><br />
            <asp:Button ID="btnshowcategory" class="btnsize" runat="server" Text="Show Category" /><br /><br />
            <asp:Button ID="btnaddservices" class="btnsize" runat="server" Text="Add Services" /><br /><br />
            <asp:Button ID="btnshowservices" class="btnsize" runat="server" Text="Show Services" /><br /><br />
            <asp:Button ID="btnaddcity" class="btnsize" runat="server" Text="Add City" /><br /><br />
            <asp:Button ID="btnemail" class="btnsize" runat="server" Text="Email Sent" /><br /><br />
        </div>
        <div id="div_right" class="col-md-7">
               <h2 class="location">
               Message For Restaurants
               </h2>
            <asp:TextBox ID="TextBox1" class="location1" placeholder="Enter Message Display to Restaurants" TextMode="MultiLine" runat="server" Height="300px" 
                Width="500px"></asp:TextBox><br /><br />
                <asp:Button ID="btnSubmit" class="btndisp" runat="server" Text="Display" /><br /><br />
                
        </div>
                 
        </div>
    </div>
</div>


</asp:Content>