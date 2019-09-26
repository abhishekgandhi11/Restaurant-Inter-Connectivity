<%@ Page Title="" Language="VB" MasterPageFile="~/cust/custMasterPage.master" AutoEventWireup="false" CodeFile="restaurantdetails.aspx.vb" Inherits="cust_restaurantdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
            width: 200px;
            float:right;
        }
        .table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        .table th, .table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Contact area start -->
    <div class="factorian-content-block">
        <div class="container">
            <div class="row wow fadeInUp">
             
                <div class="container">
                
                <div class="col-md-6">
                   
                    
                    <div class="style1">
                        <form>
                        <div class="big-title text-center">
                <strong>
                <br />
                Select Your City
                <br />
                <br />
                </strong>
              </div>
              <div  style=" margin-left: 50px"; margin-top : 85px;>
                 <asp:DropDownList ID="DropDownList1" class="big-title text-center" runat="server" AutoPostBack="True" 
              DataSourceID="SqlDataSource1" DataTextField="citynm" DataValueField="cityid">

                 </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [cityid], [citynm] FROM [citymaster] ORDER BY [citynm]">
          </asp:SqlDataSource>
          </div>
              <div>

        </div>
   <div class="big-title text-center">
                <strong>
                <br /><br />
                Select Favourite Restaurant From Here
               
                </strong>
              </div>
      <div id="datalist" style="margin-top: 100px; margin-left: 360px">                  
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
            RepeatColumns="3" RepeatDirection="Horizontal"  BorderWidth="15px" 
              CellPadding="10" CellSpacing="10" 
                        Font-Bold="True" Font-Italic="False" 
                        Font-Names="Yu Mincho Demibold" Font-Overline="True" Font-Strikeout="False" 
                        Font-Underline="False" Height="247px" Width="745px" 
              BorderColor="#6600FF" GridLines="Both">
             
             
            <ItemTemplate>
                <div class="text-center">
                    <asp:Image ID="Image1" runat="server" Height="200px" 
                        ImageUrl='<%# "~/admin/restoimages/"+ Eval("restoimage", "{0}") %>' 
                        Width="350px" />
                    <br />
                    <asp:Label ID="restonmLabel" runat="server" Text='<%# Eval("restonm") %>' />
                    <br />
                    <asp:Label ID="contactnoLabel" runat="server" Text='<%# Eval("contactno") %>' />
                    <br />
                    <asp:Label ID="restoidlabel" runat="server" Text='<%# Eval("restoid") %>' Visible="false" />
                    <br />
                    <asp:Button ID="btnselect" runat="server" BackColor="Green" 
                        class="btn btn-success btn-lg" Text="Select Restaurant" />
                    <br />
                    <br />
                </div>
            </ItemTemplate>
          
        </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [restoimage], [restonm], [contactno], [restotype],[restoid],[cityid] FROM [restomaster] WHERE ([cityid] = @cityid)">
               <SelectParameters>
                          <asp:SessionParameter Name="cityid" SessionField="cityid" Type="Int32" />
                      </SelectParameters>
          </asp:SqlDataSource>
      
        <br />
        <br />
        <br />

      </div>
 
 </div>  
  </form>
              </div>  
            </div>
           </div>
        </div>
      </div>
      <!-- End Content -->
</asp:Content>

