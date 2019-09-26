<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="paymentdetail.aspx.vb" Inherits="cust_paymentdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 70%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 </header>
      <!-- End Header Section --> 

      <!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>Payment Option</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>Payment</span>
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
                Payment Methods...
              </h2>
              <!-- Form -->
              <!-- Start Contact Form -->
                   Total price <asp:TextBox ID="txtprice" runat="server" ReadOnly="true"></asp:TextBox>
                   Total Quantity <asp:TextBox ID="txtqty" runat="server" ReadOnly="true"></asp:TextBox>
                   <asp:TextBox ID="txtordid" runat="server"  Visible="false"></asp:TextBox>
                   <asp:TextBox ID="txtcustid" runat="server"  Visible="false"></asp:TextBox>
              <!-- End Contact Form -->
                <table cellpadding="5" cellspacing="5" class="style1">
                 <tr>
                        <td>
                            Credit Card</td>
                        <td>
                            <asp:RadioButton ID="credit" runat="server" GroupName="payment"></asp:RadioButton></td>
                    </tr>
                    <tr>
                        <td>
                            Debit Card</td>
                        <td>
                            <asp:RadioButton ID="debit" runat="server" GroupName="payment"></asp:RadioButton></td>
                    </tr>
                    <tr>
                        <td>
                            Net Banking</td>
                        <td>
                            <asp:RadioButton ID="netbank" runat="server" GroupName="payment"></asp:RadioButton></td>
                    </tr>
                    <tr>
                        <td>
                            cash on Delivery</td>
                        <td>
                            <asp:RadioButton ID="cod" runat="server" GroupName="payment"></asp:RadioButton></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit"></asp:Button></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>

                <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-md-5 col-md-offset-1">
              
                <table cellpadding="5" cellspacing="5" class="style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="200px" 
                                ImageUrl="~/cust/cards/h-wealth-card.png" Width="300px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="200px" 
                                ImageUrl="~/cust/cards/h9-titanium-master-credit-card.png" Width="300px" />
                         </td>
                    </tr>
                </table>
              
            </div>
          </div>
        </div>
      </section>
      <!-- End Contact Us Section  -->

</asp:Content>

