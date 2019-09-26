<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="loginpage.aspx.vb" Inherits="cust_loginpage" %>

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

<!-- Start Contact Us Section -->
      <section id="content">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h2 class="title1 upper">
                <i class="fa fa-envelope-o"></i>
                Log-in 
              </h2>
              <!-- Form -->
              <!-- Start Contact Form -->
              <form role="form" id="contactForm" class="contact-form" data-toggle="validator" class="shake">
              <div>
                <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="lbl1" runat="server" Text="User Name :"></asp:Label></h3>  
                    <asp:TextBox ID="txtusernm" CssClass ="email form-control" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label1" runat="server" Text="Password :"></asp:Label></h3>  
                    <asp:TextBox ID="txtpass" CssClass ="email form-control" runat="server" TextMode="Password"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
             <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label2" runat="server" Text="User Type :"></asp:Label></h3>  
                    <asp:DropDownList ID="ddlutype" runat="server">
                        <asp:ListItem>ADMIN</asp:ListItem>
                        <asp:ListItem>RESTAURANT</asp:ListItem>
                        <asp:ListItem>CUSTOMER</asp:ListItem>
                      </asp:DropDownList> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                 <a href="#" class="btn btn-dark btn-lg">	                 
                <asp:Button ID="btnsub" runat="server" Cssclass="btn btn-effect" Text="LOG-IN"></asp:Button>  <i class="fa fa-lock pr-10">
                <div id="msgSubmit" class="h3 text-center hidden"></div> 
                <div class="clearfix"></div>   
                      </i>
                      	                
	                </a>
                    <h3><asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></h3>
                    <asp:LinkButton ID="fgpwd" runat="server">Forgotten your password?</asp:LinkButton>
              </form>     
              <!-- End Contact Form -->
            </div>
          </div>
        </div>
    </section>
    </div>
     </div>
  </div>
  </div>
  </div>

    <!-- contact area end -->      
        
</asp:Content>

