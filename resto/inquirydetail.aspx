<%@ Page Title="" Language="VB" MasterPageFile="~/resto/restomasterPage.master" AutoEventWireup="false" CodeFile="inquirydetail.aspx.vb" Inherits="cust_inquirydetail" %>

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
              <h2>Inquiry Details</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>Inquiry</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Page Banner -->      
      <br />
      <br />
      <br />
      <br />
      <br />

<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="inqid" DataSourceID="SqlDataSource1" CellPadding="10" 
        ForeColor="#333333" GridLines="None" Width="60%" CellSpacing="10">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="inqid" HeaderText="inqid" InsertVisible="False" 
                ReadOnly="True" SortExpression="inqid" />
            <asp:BoundField DataField="details" HeaderText="details" 
                SortExpression="details" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" 
                SortExpression="contactno" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="inqdate" HeaderText="inqdate" 
                SortExpression="inqdate" />
            <asp:BoundField DataField="restoid" HeaderText="restoid" 
                SortExpression="restoid"  Visible="false"/>
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Reply to" 
                ShowHeader="True" Text="Reply"  ControlStyle-Width="100px" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [inqid], [details], [contactno], [email], [inqdate], [restoid] FROM [inquiry] WHERE ([restoid] = @restoid) ORDER BY [inqid] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="restoid" SessionField="restoid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </center>
     <br />
      <br />
      <br />
      <br />
      <br />
 </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end --> 
</asp:Content>

