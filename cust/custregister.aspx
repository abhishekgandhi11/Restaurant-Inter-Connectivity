<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="custregister.aspx.vb" Inherits="cust_custregister" %>

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
                Registration from
              </h2>
              <!-- Form -->
              <!-- Start Contact Form -->
              <div>
                <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="lbl1" runat="server" Text="Customer Name"></asp:Label></h3>  
                    <asp:TextBox ID="txtcustnm" CssClass ="" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label1" runat="server" Text="User Id"></asp:Label></h3>  
                    <asp:TextBox ID="txtusernm" CssClass ="" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></h3>  
                    <asp:TextBox ID="txtpass" CssClass ="" runat="server" 
                          TextMode="Password"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                    <h3><asp:Label ID="Label3" runat="server" Text="Address"></asp:Label></h3>  
                    <asp:TextBox ID="txtaddress" CssClass ="" runat="server" 
                          TextMode="MultiLine"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>  
                </div>
             </div>
             <div>
             <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="Label4" runat="server" Text="City"></asp:Label></h3>  
                    <asp:DropDownList ID="ddlcity" runat="server" 
                          DataSourceID="SqlDataSource1" DataTextField="citynm" 
                          DataValueField="cityid"></asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [cityid], [citynm] FROM [citymaster]"></asp:SqlDataSource>
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="Label5" runat="server" Text="Pincode"></asp:Label></h3>  
                    <asp:TextBox ID="txtpincode" CssClass ="" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="Label6" runat="server" Text="Phone No"></asp:Label></h3>  
                    <asp:TextBox ID="txtphone" CssClass ="" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="Label9" runat="server" Text="Mobile No"></asp:Label></h3>  
                    <asp:TextBox ID="txtmobile" CssClass="" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="Label7" runat="server" Text="Email Id"></asp:Label></h3>  
                    <asp:TextBox ID="txtemail" CssClass ="" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="controls">
                   <h3><asp:Label ID="Label8" runat="server" Text="Landmark"></asp:Label></h3>  
                    <asp:TextBox ID="txtlendmark" CssClass ="" runat="server"></asp:TextBox> 
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
             </div>
             <a href="#" class="btn btn-gray btn-lg">
	                                
                <asp:Button ID="btnsub" runat="server" Text="Registration"></asp:Button><i class="fa fa-check pl-10">	
                <div id="msgSubmit" class="h3 text-center hidden"></div> 
                <div class="clearfix"></div>   
                 
                  </i>
	                </a>
              <!-- End Contact Form -->
            </div>
            <div class="col-md-6">
               <asp:DataList ID="DataList1" runat="server" 
                   DataSourceID="SqlDataSource2" BackColor="White" BorderColor="Aqua" 
                    BorderWidth="10px" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Yu Mincho Demibold" Font-Overline="False" Font-Strikeout="False" 
                    Font-Underline="False" ForeColor="Navy" GridLines="Both" 
                    HorizontalAlign="Center" RepeatColumns="2" RepeatDirection="Horizontal">
                   <ItemTemplate>
                       <asp:Image ID="Image1" runat="server" Height="150px" 
                           ImageUrl='<%# "~/admin/advimages/"+ Eval("image", "{0}") %>' Width="250px" />
                       <br />
                       <asp:Label ID="restonmLabel" runat="server" Text='<%# Eval("restonm") %>' />
                       <br />
                       <br />
                   </ItemTemplate>

               </asp:DataList>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                   SelectCommand="SELECT [image], [restonm] FROM [advertice]"></asp:SqlDataSource>
                    </section>
                    </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    </div>
    <!-- contact area end -->      
        
   
      
    
</asp:Content>

