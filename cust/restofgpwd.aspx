<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="restofgpwd.aspx.vb" Inherits="cust_restofgpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
            width: 50%;
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
                    </div>
                        
                        <form>
                        <!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>User Forgot Password</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>User</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Page Banner -->        
      
      <!-- Start Contact Us Section -->
      <section id="content">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h2 class="title1 upper">
                <i class="fa fa-cog pl-10">
	                  </i>
                Change Your Password
              </h2>
              <!-- Form -->
              <!-- Start Contact Form -->
              
                <div class="form-group">
                  <div class="controls">
                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter your e-mail id"></asp:TextBox>(Case sensitive)
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <asp:Button ID="btnsearch" runat="server" Text="Select"></asp:Button>
                <br /><br />
               
  
                <table align="center" cellpadding="5" cellspacing="5" class="style1">
                    <tr>
                        <td>
                            Via Email</td>
                        <td>
                            <asp:RadioButton ID="radioemail" runat="server"  GroupName="cust1"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Via Registered Number</td>
                        <td>
                            <asp:RadioButton ID="radiophone" runat="server" GroupName="cust1" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                          &nbsp;  
                        </td>
                        <td>                            
                       &nbsp;
                       </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnsend" runat="server" Text="send"  Width="130px" />
                        </td>
                        <td>                            
                       <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                       </td>
                    </tr>
                </table>
               
  
              <!-- End Contact Form -->
            </div>
          </div>
        </div>
      </section>
      </form>
      <!-- End Contact Us Section  -->
        </div>
     </div>
  </div>
  </div>
  </div>

    <!-- contact area end --> 


</asp:Content>

