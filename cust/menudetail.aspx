<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="menudetail.aspx.vb" Inherits="cust_menudetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
                     <!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>
                  <asp:TextBox ID="restoname" runat="server" ReadOnly="true"  BorderColor="White" 
                      class="col-md-6 col-sm-6" Visible="False"></asp:TextBox><br />
                  </h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>MenuDetail</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Page Banner -->

   
      <!-- Start Content -->
      <div id="Div1">
        <div class="container">
          <div class="row">
          
              <!--Sidebar-->
            <aside id="sidebar" class="col-md-3 right-sidebar">
              <!-- Search Widget -->
              

                  
                       
                        <div id="left_panel" style="width:320px;float: left;">
                            <div class="widget widget-categories">
                <h5 class="widget-title">Categories</h5>
                
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                      BackColor="Red" BorderColor="Black" BorderWidth="10px" CellPadding="10" 
                      CellSpacing="20" Font-Bold="False" Font-Italic="False" 
                      Font-Names="Yu Mincho Demibold" Font-Overline="False" Font-Strikeout="False" 
                      Font-Underline="False" ForeColor="Black" GridLines="Both" RepeatColumns="1" 
                      RepeatDirection="Horizontal" DataKeyField="catid">
                    <ItemTemplate>
                        <asp:Image ID="Image3" runat="server" Height="100px" 
                            ImageUrl='<%# "~/admin/catimages/" + Eval("catimage", "{0}") %>' Width="150px" />
                        <br />
                        catid:
                        <asp:Label ID="catidLabel" runat="server" Text='<%# Eval("catid") %>' />
                        <br />
                        catnm:
                        <asp:Label ID="catnmLabel" runat="server" Text='<%# Eval("catnm") %>' />
                        <br />
                        restoid:
                        <asp:Label ID="restoidLabel" runat="server" Text='<%# Eval("restoid") %>' />
                        <br />
                        restonm:
                        <asp:Label ID="restonmLabel" runat="server" Text='<%# Eval("restonm") %>' />
                        <br />
                        <asp:Button ID="Btnsel" runat="server" Text="SELECT" />
                        <br />
                            <br />
                    </ItemTemplate>
                  </asp:DataList>

                 

                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                      
                      
                      
                      SelectCommand="SELECT [catid], [catnm], [catimage], [restoid], [restonm] FROM [foodcat] WHERE ([restoid] = @restoid)">
                      <SelectParameters>
                          <asp:SessionParameter Name="restoid" SessionField="restoid" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>

                 

              </div>

            </div>
            <!--left panel over-->
            <!-- Right panel sta-->
               <div style="width: 815px;margin-left: 380px;">
                               <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" 
                                   RepeatColumns="2" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        catnm:
                        <asp:Label ID="catnmLabel" runat="server" Text='<%# Eval("catnm") %>' />
                        <br />
                        catimage:
                        <asp:Label ID="catimageLabel" runat="server" Text='<%# Eval("catimage") %>' />
                        <br />
                        foodid:
                        <asp:Label ID="foodidLabel" runat="server" Text='<%# Eval("foodid") %>' />
                        <br />
                        fimg:
                        <asp:Label ID="fimgLabel" runat="server" Text='<%# Eval("fimg") %>' />
                        <br />
                        foodnm:
                        <asp:Label ID="foodnmLabel" runat="server" Text='<%# Eval("foodnm") %>' />
                        <br />
                        foodtype:
                        <asp:Label ID="foodtypeLabel" runat="server" Text='<%# Eval("foodtype") %>' />
                        <br />
                        menuid:
                        <asp:Label ID="menuidLabel" runat="server" Text='<%# Eval("menuid") %>' />
                        <br />
                        price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        qty:
                        <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                        <br />
                        restoid:
                        <asp:Label ID="restoidLabel" runat="server" Text='<%# Eval("restoid") %>' />
                        <br />
                        unitid:
                        <asp:Label ID="unitidLabel" runat="server" Text='<%# Eval("unitid") %>' />
                        <br />
                        catid:
                        <asp:Label ID="catidLabel" runat="server" Text='<%# Eval("catid") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [catnm], [catimage], [foodid], [fimg], [foodnm], [foodtype], [menuid], [price], [qty], [restoid], [unitid], [catid] FROM [menudetailview] WHERE (([catid] = @catid) AND ([restoid] = @restoid))">
                    <SelectParameters>
                        <asp:SessionParameter Name="catid" SessionField="catid" Type="Int32" />
                        <asp:SessionParameter Name="restoid" SessionField="restoid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
         
            </div>


     <%--           <asp:Label ID="lbl" runat="server" Text=""></asp:Label><br />
                    <asp:DropDownList ID="ddlqty" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                  <asp:Button ID="Restopg" runat="server" Text="RESTAURANTS" />
                    <asp:Button ID="chkout" runat="server" Text="ORDER NOW" />
               --%>
            </div>
            <!-- End Page Content-->
          </div>                
                        </div>
                  </div>
              <!-- Categories Widget category -->
              

            </aside>
            <!--End sidebar-->

            <!-- Page Content -->
            
        </div>
      </div>
      <!-- End Content -->
    
     </ContentTemplate>
    </asp:UpdatePanel>
    
    </asp:Content>