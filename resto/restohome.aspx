<%@ Page Title="" Language="VB" MasterPageFile="~/resto/restomasterPage.master" AutoEventWireup="false" CodeFile="restohome.aspx.vb" Inherits="resto_addhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Div_main" class="factorian-content-block">
    <div class="row">
        <div id="div_left" class="col-md-4">
            <asp:Button ID="btnaddbill" class="btnsize" runat="server" Text="Add Bill" /><br /><br />
            <asp:Button ID="btnaddfood" class="btnsize" runat="server" Text="Add Food" /><br /><br />
            <asp:Button ID="btnaddmenu" class="btnsize" runat="server" Text="Add Menu" /><br /><br />
            <asp:Button ID="btnaddunit" class="btnsize" runat="server" Text="Add Unit" /><br /><br />
            <asp:Button ID="btninqreply" class="btnsize" runat="server" Text="Inquiry Reply" /><br /><br />
            <asp:Button ID="btninquirydetail" class="btnsize" runat="server" Text="Inquiry Details" /><br /><br />
            <asp:Button ID="btnreceivedorder" class="btnsize" runat="server" Text="Received Order" /><br /><br />
            
        </div>
        <div id="div_right" class="col-md-7">
               <h2 class="location">
               Message From Admin
               </h2>
            <asp:TextBox ID="TextBox1" class="location1" placeholder="Message From System Administrator" TextMode="MultiLine" runat="server" Height="300px" 
                Width="500px" ReadOnly="true" ></asp:TextBox><br /><br />                
        </div>                 
        </div>
    </div>  
</asp:Content>

