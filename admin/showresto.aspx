<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmasterPage.master" AutoEventWireup="false" CodeFile="showresto.aspx.vb" Inherits="admin_showresto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
 Show Category
 <br />
<br />

    <br /><br />
    <asp:GridView ID="GridView1" class="table-condensed" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="restoid" 
        DataSourceID="SqlDataSource1" >
        
        <Columns>
            <asp:BoundField DataField="restoid" HeaderText="resto id" InsertVisible="False" 
                ReadOnly="True" SortExpression="restoid" />
            <asp:BoundField DataField="restonm" HeaderText="resto name" 
                SortExpression="restonm" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="cityid" HeaderText="city id" 
                SortExpression="cityid" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" 
                SortExpression="pincode" />
            <asp:BoundField DataField="contactno" HeaderText="contact no" 
                SortExpression="contactno" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="website" HeaderText="website" 
                SortExpression="website" />
            <asp:BoundField DataField="restotype" HeaderText="resto type" 
                SortExpression="restotype" />
            <asp:BoundField DataField="head" HeaderText="head" SortExpression="head" />
            <asp:BoundField DataField="facilities" HeaderText="facilities" 
                SortExpression="facilities" />
            <asp:BoundField DataField="services" HeaderText="services" 
                SortExpression="services" />
            <asp:BoundField DataField="regdate" HeaderText="register date" 
                SortExpression="regdate" />
        </Columns>
        
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [restoid], [restonm], [address], [cityid], [pincode], [contactno], [email], [website], [restotype], [head], [facilities], [services], [regdate] FROM [restomaster]">
    </asp:SqlDataSource>
    <br />
    You Want to add update or add new restaurant then <asp:LinkButton ID="LinkButton1" runat="server">Click here..</asp:LinkButton>
</center>
<br />
<br /><br /><br />
<br />

</asp:Content>

