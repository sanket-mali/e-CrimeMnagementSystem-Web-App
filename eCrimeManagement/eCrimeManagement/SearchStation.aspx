<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchStation.aspx.cs" Inherits="eCrimeManagement.SearchStation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:TextBox ID="txtSearch" runat="server" 
        style="z-index: 1; left: 551px; top: 261px; position: absolute; width: 156px"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" 
        style="z-index: 1; left: 573px; top: 370px; position: absolute; width: 99px" 
        Text="SEARCH" onclick="btnSearch_Click" />
    <asp:DropDownList ID="cmbType" runat="server" 
        
        style="z-index: 1; left: 552px; top: 220px; position: absolute; width: 166px" 
        AutoPostBack="True" onselectedindexchanged="cmbType_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 397px; top: 263px; position: absolute" 
        Text="SEARCH BY NAME"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 375px; top: 304px; position: absolute" 
        Text="SEARCH BY DISTRICT"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 398px; top: 221px; position: absolute" 
        Text="SEARCH TYPE"></asp:Label>
    <asp:DropDownList ID="cmbState" runat="server" 
        
        style="z-index: 1; left: 551px; top: 300px; position: absolute; width: 186px" 
        AutoPostBack="True" onselectedindexchanged="cmbState_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:DropDownList ID="cmbDist" runat="server" 
        
        style="z-index: 1; left: 553px; top: 334px; position: absolute; width: 174px" 
        AutoPostBack="True">
    </asp:DropDownList>
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 342px; top: 409px; position: absolute; height: 354px; width: 691px; overflow:scroll">
        <asp:GridView ID="GridView2" runat="server" 
        
            
            
            style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 179px; width: 664px" 
            AutoGenerateSelectButton="True" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </asp:Panel>
    
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 775px; top: 256px; position: absolute" Text="Label"></asp:Label>
    
</div>
</asp:Content>
