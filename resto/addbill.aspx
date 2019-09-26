<%@ Page Title="" Language="VB" MasterPageFile="~/resto/restomasterPage.master" AutoEventWireup="false" CodeFile="addbill.aspx.vb" Inherits="resto_addbill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
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
                    <div class="text-center">
                        <h3>Bill Details</h3>
                    </div>
                    
                    <div class="style1">
                        <form>
                        <table cellpadding="2" class="style1">
        <tr>
            <td>
                <table cellpadding="2" class="style1">
                    <tr>
                        <td colspan="2">
                            
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Customer Name :"></asp:Label>
                            </td>
                        <td>
                            <asp:DropDownList ID="ddlcustid" runat="server" DataSourceID="SqlDataSource2" 
                                DataTextField="custnm" DataValueField="custid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [custid], [custnm] FROM [custmast]">
                            </asp:SqlDataSource>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Order Id :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlorderid" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="ordid" DataValueField="ordid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [ordid] FROM [order1]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Service Charge :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtservcharge" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Ex. Charge :"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtexcharge" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                         &nbsp;
                            </td>
                        <td>
                             &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Delivery Charge :"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtdelcharge" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                         &nbsp;
                            </td>
                        <td>
                             &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnbill" runat="server" Text="Generate Bill" />
                         </td>
                        <td>
                            <asp:Button ID="btncan" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                            </td>
                        <td>
                             &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
            <center>
        <tr>
            <td>
           
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="billno" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="billno" HeaderText="billno" ReadOnly="True" 
                            SortExpression="billno" />
                        <asp:BoundField DataField="billdate" HeaderText="billdate" 
                            SortExpression="billdate" />
                        <asp:BoundField DataField="custnm" HeaderText="custnm" 
                            SortExpression="custnm" />
                        <asp:BoundField DataField="ordid" HeaderText="ordid" SortExpression="ordid" />
                        <asp:BoundField DataField="servicetax" HeaderText="servicetax" 
                            SortExpression="servicetax" />
                        <asp:BoundField DataField="excharge" HeaderText="excharge" 
                            SortExpression="excharge" />
                        <asp:BoundField DataField="delcharge" HeaderText="delcharge" 
                            SortExpression="delcharge" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [bill]"></asp:SqlDataSource>
            
            </td>
        </tr>
        </center>
    </table>
     </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end -->    
    
     
</asp:Content>

