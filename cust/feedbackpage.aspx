<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="feedbackpage.aspx.vb" Inherits="cust_feedbackpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Start Contact Us Section -->
      <section id="content">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <h2 class="title1 upper">
                <i class="fa fa-envelope-o"></i>
                FeedBack Form
              </h2>
              <!-- Form -->
              <!-- Start Contact Form -->
              <form role="form" id="contactForm" class="contact-form" data-toggle="validator" class="shake">
              <div>
                <div class="form-group">
                  <div class="controls">
                    
                    <asp:TextBox ID="txtemail" CssClass ="email form-control" runat="server" placeholder="Email Id"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                      
                    <asp:TextBox ID="txtcontactno" CssClass ="email form-control" runat="server" placeholder="Contact Number"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                   
                    <asp:TextBox ID="txtfd" CssClass ="email form-control" runat="server" TextMode="MultiLine" placeholder="Feed Back"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    
                    <asp:TextBox ID="txtstatus" CssClass ="email form-control" runat="server" placeholder="Status"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <asp:TextBox ID="custid" CssClass ="email form-control" runat="server" Visible="false"></asp:TextBox>
                <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label4" runat="server" Text="Select Restaurant :"></asp:Label></h3>  
                    <asp:DropDownList ID="ddlresto" runat="server" DataSourceID="SqlDataSource1" 
                          DataTextField="restonm" DataValueField="restoid" placeholder="Select Restaurant"></asp:DropDownList> 
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [restoid], [restonm] FROM [restomaster]">
                      </asp:SqlDataSource>
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
             <a href="#" class="btn btn-gray btn-lg">
	                                
                <asp:Button ID="btnfd" runat="server" class="btn btn-effect" Text="Submit"></asp:Button><i class="fa fa-check pl-10">
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
                    </div>
              </form>     
              <!-- End Contact Form -->
                 </div>
          <div class="col-md-5 col-md-offset-1">
          <div class="information">
            <asp:Image ID="Image1" runat="server" Width="400" Height="250" ImageUrl="~/cust/thankyou image/feedback2.jpg"></asp:Image>
            </div>
              </div>
           
            </div>
         
        </div>
    </section>
    


                <%--<div class="col-md-5 col-md-offset-1">
              <h2 class="title1 upper">
                <i class="fa fa-pencil"></i> 
                Contact Information
              </h2>
              <div class="information">
                <div class="contact-datails">
                  <div class="icon">
                    <i class="fa fa-map-marker icon-radius"></i>
                  </div>
                  <div class="info">
                    <h3>Address</h3>
                    <span class="detail">Main Office: NO.22-23 Street Name- City,Country</span>
                    <span class="datail">Customer Center: NO.130-45 Streen Name- City, Country</span>
                  </div>
                </div>                
                <div class="contact-datails">
                  <div class="icon">
                    <i class="fa fa-phone icon-radius"></i>
                  </div>
                  <div class="info">
                    <h3>Phone Numbers</h3>
                    <span class="detail">Main Office: +880 123 456 789</span>
                    <span class="datail">Customer Supprort: +880 123 456 789 </span>
                  </div>
                </div>
                <div class="contact-datails">
                  <div class="icon">
                    <i class="fa fa-location-arrow icon-radius"></i>
                  </div>
                  <div class="info">
                    <h3>Email Address</h3>
                    <span class="detail">Customer 
                    Support: info@mail.com</span>
                    <span class="datail">Technical Support: support@mail.com</span>
                  </div>
                </div>
                <div class="contact-datails">
                  <div class="icon">
                    <i class="fa fa-pencil icon-radius"></i>
                  </div>
                  <div class="info">
                    <h3>Other Datails</h3>
                    <span class="detail">Site Name: <a href="http://graygrids.com/">Graygrids.com</a></span>
                  </div>
                </div>
              </div>--%>

</asp:Content>


