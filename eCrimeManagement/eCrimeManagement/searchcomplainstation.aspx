<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchcomplainstation.aspx.cs" Inherits="eCrimeManagement.searchcomplainstation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div _designerregion="0">
    <asp:GridView ID="GridView1" runat="server" 
        
        
        style="top: 269px; left: 332px; height: 108px; width: 697px; position: absolute" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
       
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" />
            <asp:BoundField DataField="ComplainId" HeaderText="ComplainId" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" />
            <asp:BoundField DataField="Subject" HeaderText="DateTimeOfIncident" />
            <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" />
            <asp:BoundField DataField="Suspects" HeaderText="Suspects" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:ButtonField Text="Control" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:Label ID="Label3" runat="server" 
        style="top: 200px; left: 382px; position: absolute; height: 19px; width: 84px" 
        Text="Search By"></asp:Label>
    <asp:DropDownList ID="cmbSearch" runat="server" 
        
        style="top: 202px; left: 465px; position: absolute; height: 22px; width: 77px" 
        onselectedindexchanged="cmbSearch_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:TextBox ID="txtsearch" runat="server" 
        style="top: 234px; left: 464px; position: absolute; height: 22px; width: 76px"></asp:TextBox>
    </div> 
</asp:Content>
