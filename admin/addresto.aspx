<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="addresto.aspx.vb" Inherits="admin_addresto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tablesize
        {
            width: 100%;
        }
        .heading
        {
            text-align: center;
            font-size: large;
        }
        .background
        {
            background-image: url(images/resto1.jpg);
            opacity:0.9;
        }
        .font
        {
            font-family:Yu Mincho Demibold;
            font-style:oblique;
            font-size:20px;
      
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
                <form>
     
    <div class="">
    <table >
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="font">
            <td >
                &nbsp;</td>
            <td class="heading" colspan="5">
                <asp:Label ID="Label14" runat="server" Text="Add Restaurants" ></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Restaurant Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrestonm" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Address :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please Enter Restaurant Name*" 
                    ControlToValidate="txtrestonm" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Please Enter Restaurant's Address*" 
                    ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Pincode :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Contact No :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter Pincode*" ControlToValidate="txtpincode" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcontactno" ErrorMessage="Please Enter Valid Number*" 
                    ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Website :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtwebsite" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Please Enter Email Id*" ControlToValidate="txtemail" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="Restaurant Type :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="Ddlrtype" runat="server">
                <asp:ListItem>selected</asp:ListItem>
                    <asp:ListItem>SMALL</asp:ListItem>
                    <asp:ListItem>BIG </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Restaurant Head :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthead" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Please Enter Restaurants Head Name*" 
                    ControlToValidate="txthead" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" Text="Facilities :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfacilities" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Services :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtservices" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Please Enter Facilities*" ControlToValidate="txtfacilities" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="Please Enter Services*" ControlToValidate="txtservices" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label6" runat="server" Text="Restaurant User Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrusernm" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Restaurant User Password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrpass" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Please Enter Restaurant's User Name*" 
                    ControlToValidate="txtrusernm" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label16" runat="server" Text="City :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="Ddlcity" runat="server" DataSourceID="SqlDataSource2" 
                    DataTextField="citynm" DataValueField="cityid">
                    <asp:ListItem>SMALL</asp:ListItem>
                    <asp:ListItem>BIG </asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [cityid], [citynm] FROM [citymaster]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Re-enter Password :"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txtrrpass" runat="server"></asp:TextBox>
               </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtrpass" ControlToValidate="txtrrpass" 
                    ErrorMessage="Please Enter Same Password*" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Label ID="Label17" runat="server" Text="Restaurant Image :"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="restoupimgload" runat="server" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Update" CausesValidation="false" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndel" runat="server" Text="Delete"  CausesValidation="false" /><br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td colspan="3">
                <asp:Button ID="btnregi" runat="server" Text="Add Restaurant" /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncan" runat="server" Text="Cancel" CausesValidation="false" /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
               You want to see all restaurants then <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false">Click here...</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
  <tr>
            <td>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [citynm], [restonm], [restoid], [address], [pincode], [contactno], [email], [website], [restotype], [head], [facilities], [regdate], [rusernm] FROM [vwresto]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
      
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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




