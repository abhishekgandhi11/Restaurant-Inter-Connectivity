<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="inquirypage.aspx.vb" Inherits="cust_inquirypage" %>

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
                        <!-- Start Contact Us Section -->
      <section id="content">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h2 class="title1 upper">
                <i class="fa fa-envelope-o"></i>
                Inquiry Form
              </h2>
              <!-- Form -->
              <!-- Start Contact Form -->
              <form role="form" id="contactForm" class="contact-form" data-toggle="validator" class="shake">
              <div>
                <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="lbl1" runat="server" Text="Inquiry Details :"></asp:Label></h3>  
                    <asp:TextBox ID="txtinqdetails" CssClass ="email form-control" runat="server" 
                          TextMode="MultiLine"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label1" runat="server" Text="Contact No :"></asp:Label></h3>  
                    <asp:TextBox ID="txtcontactno" CssClass ="email form-control" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label2" runat="server" Text="Email Id :"></asp:Label></h3>  
                    <asp:TextBox ID="txtemail" CssClass ="email form-control" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label3" runat="server" Text="Restaurant :"></asp:Label></h3>  
                    <asp:DropDownList ID="ddlresto" runat="server" DataSourceID="SqlDataSource1" 
                          DataTextField="restonm" DataValueField="restoid"></asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [restoid], [restonm] FROM [restomaster]">
                      </asp:SqlDataSource>
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
             <a href="#" class="btn btn-gray btn-lg">
	                                
                <asp:Button ID="btninq" runat="server" class="btn btn-effect" Text="Send"></asp:Button><i class="fa fa-check pl-10">
                <div id="msgSubmit" class="h3 text-center hidden"></div> 
                <div class="clearfix"></div> 
                  </i>
	                </a>

              <a href="#" class="btn btn-gray btn-lg">
                    <asp:Button ID="btncan" runat="server" class="btn btn-effect" Text="cancel"></asp:Button><i class="fa fa-check pl-10">	
                <div id="Div1" class="h3 text-center hidden"></div> 
                <div class="clearfix"></div>
                    </i>
	                </a>

              </form>     
              <!-- End Contact Form -->
            </div>
          </div>
        </div>
    </section>

 </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end --> 
</asp:Content>

