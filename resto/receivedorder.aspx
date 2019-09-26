<%@ Page Title="" Language="VB" MasterPageFile="~/resto/restomasterPage.master" AutoEventWireup="false" CodeFile="receivedorder.aspx.vb" Inherits="resto_receivedorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Contact area start -->
    <div class="factorian-content-block">
        <div class="container">
            <div class="row wow fadeInUp">
                <div class="container">
                
                
                    <div class="style1">
                        <form>
<!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>Received Order</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Restohome</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>Received Order</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Page Banner -->
      <!-- Start Content Section -->
      <div id="content">
        <div class="container">
          <!-- End Big Heading -->
          <div class="row">
            <div class="main-desc">
              <!-- Start Big Heading -->
              <h1 class="big-title">
                See New Order Here..
              </h1>
            </div>
            <!-- Accordion -->
            <div class="panel-group" id="accordion">
              <!-- Start Accordion 1 -->
              <div class="panel panel-default">
                <!-- Toggle Heading -->
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse-1">
                    <i class="fa fa-angle-up control-icon">
                    </i>
                    <i class="fa fa-desktop">
                    </i>
                    Order List
                    </a>
                  </h4>
                </div>
                <!-- Toggle Content -->
                <div id="collapse-1" class="panel-collapse collapse in">
                  <div class="panel-body">

                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                          DataKeyNames="ordid" DataSourceID="SqlDataSource1" AllowPaging="True" 
                          PageSize="5" HeaderStyle-HorizontalAlign="Center" EditRowStyle-HorizontalAlign="Center">
                          <Columns >
                              <asp:BoundField DataField="ordid" HeaderText="ordid" ReadOnly="True" 
                                  SortExpression="ordid" />
                              <asp:BoundField DataField="orddate" HeaderText="orddate" 
                                  SortExpression="orddate" />
                              <asp:BoundField DataField="custid" HeaderText="custid" 
                                  SortExpression="custid" />
                              <asp:BoundField DataField="restoid" HeaderText="restoid" 
                                  SortExpression="restoid" Visible="false" />
                              <asp:BoundField DataField="foodid" HeaderText="foodid" 
                                  SortExpression="foodid" />
                              <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                              <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                              <asp:ButtonField ButtonType="Button" CommandName="Select" 
                                  HeaderText="ORDER RECEIVED" ShowHeader="True" Text="Button"  />
                          </Columns>

                           <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle"></EditRowStyle>

                          <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />

                           <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                      </asp:GridView>

                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [ordid], [orddate], [custid], [restoid], [foodid], [qty], [price] FROM [custorder] WHERE ([restoid] = @restoid) ORDER BY [orddate] DESC">
                          <SelectParameters>
                              <asp:SessionParameter Name="restoid" SessionField="restoid" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>

                    </div>
                </div>
              </div>
              <!-- End Accordion 1 -->
              
            </div>
            <!-- End Accordion -->
           
          </div>
        </div>
      </div>
    </div>
    </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end --> 
</asp:Content>

