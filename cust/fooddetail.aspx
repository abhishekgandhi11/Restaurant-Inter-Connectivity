<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="fooddetail.aspx.vb" Inherits="cust_fooddetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>Your Order</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>Fooddetails</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Page Banner -->

      <!-- Start Content -->
      <div id="content">
        <div class="container">
          <div class="row">
            <!-- Page Content -->
            <div class="col-md-12 page-content">
              <div class="big-title text-center">
                <h1>
                  Food Details
                </h1>
              </div>


              <!-- Divider -->
              <div class="hr5" style="margin-top:45px;margin-bottom:45px;"></div>

              <div class="tabs-section tabs-2">
                <h2 class="tab-title"></h2>
                <!-- Nav Tabs -->
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#tab-4" data-toggle="tab">Food Details</a></li>
                  <li><a href="#tab-5" data-toggle="tab">Customer's Details</a></li>
                </ul>
                <!-- Tab Panels -->
                <div class="tab-content">
                  <!-- Tab Content 1 -->
                  <div class="tab-pane fade in active" id="tab-4">
                    <center>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                          DataSourceID="SqlDataSource1" Width="80%"  HeaderStyle-BackColor="#CC6699" 
                            ShowFooter="True">
                          <Columns>
                              <asp:BoundField DataField="foodnm" HeaderText="foodnm" 
                                  SortExpression="foodnm" />
                              <asp:BoundField DataField="ordid" HeaderText="ordid" 
                                  SortExpression="ordid" />
                              <asp:BoundField DataField="foodid" HeaderText="foodid" 
                                  SortExpression="foodid" />
                              <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                              <asp:BoundField DataField="price" HeaderText="price" 
                                  SortExpression="price"/>
                              <asp:BoundField DataField="Total" HeaderText="Total" 
                                  SortExpression="Total" ReadOnly="True" />
                              <asp:BoundField DataField="custid" HeaderText="custid" 
                                  SortExpression="custid" />
                          </Columns>

<HeaderStyle BackColor="#CC6699" Font-Bold="True" Font-Names="Yu Mincho Demibold" 
                              HorizontalAlign="Center"></HeaderStyle>
                          <RowStyle HorizontalAlign="Center" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          
                            
                            
                            
                            SelectCommand="SELECT * FROM [fooddetail] WHERE (([ordid] = @ordid) AND ([custid] = @custid)) ORDER BY [foodnm]">
                          <SelectParameters>
                              <asp:SessionParameter Name="ordid" SessionField="orderid1" Type="Int32" />
                              <asp:SessionParameter Name="custid" SessionField="custid" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                    </center>
                  </div>
                  <!-- Tab Content 2 -->
                  <div class="tab-pane fade" id="tab-5">
                      <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" Width="80%">
                          <HeaderStyle ForeColor="#F50A9D" HorizontalAlign="Center" />
                      </asp:GridView>

                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [custnm], [usernm], [address], [pincode], [mobile], [email], [landmark], [custid] FROM [custmast] WHERE ([custid] = @custid) ">
                          <SelectParameters>
                              <asp:SessionParameter Name="custid" SessionField="custid" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>

                  </div>
                 
                </div>
                <!-- End Tab Panels -->
              </div>
              
              <!-- Divider -->
              <div class="hr5" style="margin-top:45px;margin-bottom:45px;"></div>
                <asp:Button ID="btnpayment" runat="server" Text="Payment Option" />
              
            </div>
            <!-- End Page Content -->
          </div>
        </div>
      </div>
      <!-- End Content -->

</asp:Content>

