<%@ Page Title="" Language="VB" MasterPageFile="~/resto/restomasterPage.master" AutoEventWireup="false" CodeFile="addfood.aspx.vb" Inherits="resto_addfood" %>

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

<table cellpadding="2" class="nav-justified">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                <table class="nav-justified">
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Add Food"  BackColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Food Name :"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtfoodnm" runat="server"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="foodnm" runat="server" 
                                ErrorMessage="Please Enter Food Name **" ControlToValidate="txtfoodnm" 
                                ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                           <asp:Label ID="Label3" runat="server" Text="Food Type :"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtfoodtype" runat="server"></asp:TextBox>
                           </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:RequiredFieldValidator ID="foodtype" runat="server" 
                                ControlToValidate="txtfoodtype" ErrorMessage="Please Enter Food Type**" 
                                ForeColor="#CC0000"></asp:RequiredFieldValidator>                             
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                           <asp:Label ID="Label5" runat="server" Text="Category :"></asp:Label></td>
                        <td>
                           <asp:DropDownList ID="ddlcat" runat="server" DataSourceID="SqlDataSource2" 
                                DataTextField="catnm" DataValueField="catid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [catid], [catnm] FROM [category]"></asp:SqlDataSource>
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
                           <asp:Label ID="Label6" runat="server" Text="Food Image :"></asp:Label></td>
                        </td>
                        <td>
                            <asp:FileUpload ID="fupload" runat="server" />
                           
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtrestoid" runat="server" ></asp:TextBox>   
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            <asp:Button ID="btnaddfood" runat="server" Text="Add Food" />
                            <asp:Button ID="btncan" runat="server" Text="Cencel" />
                            
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                            </td>
                    </tr>
                </table>
                <br />
                <br />
                 </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="foodid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="foodid" HeaderText="foodid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="foodid" />
                            <asp:BoundField DataField="foodnm" HeaderText="foodnm" 
                                SortExpression="foodnm" />
                            <asp:BoundField DataField="foodtype" HeaderText="foodtype" 
                                SortExpression="foodtype" />
                            <asp:BoundField DataField="catid" HeaderText="catid" SortExpression="catid" />
                            <asp:BoundField DataField="fimg" HeaderText="fimg" SortExpression="fimg" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [foodmaster]"></asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </form>
                    </div>
                </div> 
            </div>
        </div>
    </div> 
    <!-- contact area end --> 
</asp:Content>

