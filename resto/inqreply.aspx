<%@ Page Title="" Language="VB" MasterPageFile="~/resto/restomasterPage.master" AutoEventWireup="false" CodeFile="inqreply.aspx.vb" Inherits="resto_inqreply" %>

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
  <!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>Inquiry Reply</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>inqreply</span>
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
                <i class="fa fa-envelope-o"></i>
                Reply to Customer
              </h2>
              <!-- Form -->
              <!-- Start Contact Form -->
              <form role="form" id="contactForm" class="contact-form" data-toggle="validator" class="shake">
                <div class="form-group">
                  <div class="controls">
                  <asp:TextBox ID="txtmailto" runat="server" class="form-control" placeholder="" ReadOnly="true"></asp:TextBox>
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <asp:TextBox ID="txtmailby" runat="server" class="form-control" placeholder="" ReadOnly="true" Visible="false"></asp:TextBox>
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <asp:TextBox ID="txtsubject" runat="server" class="form-control" placeholder="" ReadOnly="true"></asp:TextBox>
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <asp:TextBox ID="txtreply" runat="server" class="form-control" placeholder="Reply for Inquiry" TextMode="MultiLine"></asp:TextBox>
                    <div class="help-block with-errors"></div>
                  </div>  
                </div>
                <asp:Button ID="btnsend" runat="server" Text="Send E-Mail" class="btn btn-effect"></asp:Button>
                
                <div id="msgSubmit" class="h3 text-center hidden"></div> 
                <div class="clearfix"></div>   

              </form>     
              <!-- End Contact Form -->
            </div>
           
          </div>
        </div>
      </section>
      <!-- End Contact Us Section  -->
 </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end --> 

</asp:Content>

