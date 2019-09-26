<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="forgetpass.aspx.vb" Inherits="cust_forgetpass" %>

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
                
                <div class="col-md-6">
                    
                    
                    <div class="style1">
                    </div>
                        
                        <form>


<!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>Forgot Password</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>forgetpassword</span>
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
            <center>
              <asp:Image ID="Image1" runat="server" Height="300px" 
                    ImageUrl="~/cust/profile/resto1.jpg" Width="400px"></asp:Image><br /><br />
                          <h2><b>Restaurant</b></h2><br /><br />
              <asp:Button ID="btnresto" runat="server" Text="Open"  Width="200px" Font-Size="25px"></asp:Button>
              </center>
             </div>

            <div class="col-md-5 col-md-offset-1">
                <center>
              <asp:Image ID="Image2" runat="server" Height="300px" 
                        ImageUrl="~/cust/profile/users.jpg" Width="400px"></asp:Image><br /><br />
                            <h2><b>Users</b></h2><br /><br />
              <asp:Button ID="btncust" runat="server" Text="Open" Width="200px" Font-Size="25px"></asp:Button>
              </center>
              
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

