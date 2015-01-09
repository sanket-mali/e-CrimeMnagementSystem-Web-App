<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchComplainAdmin.aspx.cs" Inherits="eCrimeManagement.SearchComplainAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 513px; top: 181px; position: absolute; font-family: 'Arial Rounded MT Bold'; font-weight: 700; font-size: x-large" 
        Text="SEARCH COMPLAINS"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 461px; top: 246px; position: absolute" 
        Text="SEARCH TYPE"></asp:Label>
    <asp:DropDownList ID="cmbType" runat="server" 
        
        style="z-index: 1; left: 602px; top: 244px; position: absolute; width: 128px" 
            AutoPostBack="True" onselectedindexchanged="cmbType_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 464px; top: 283px; position: absolute" 
        Text="SEARCH BY ID"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" 
        
        style="z-index: 1; left: 600px; top: 281px; position: absolute; width: 170px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 369px; top: 315px; position: absolute" 
        Text="SEARCH BY POLICE STATION"></asp:Label>
    <asp:DropDownList ID="cmbState" runat="server" 
        
        style="z-index: 1; left: 597px; top: 316px; position: absolute; width: 176px" 
        AutoPostBack="True" onselectedindexchanged="cmbState_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:DropDownList ID="cmbDistrict" runat="server" 
        
        style="z-index: 1; left: 598px; top: 345px; position: absolute; width: 174px" 
        AutoPostBack="True" onselectedindexchanged="cmbDistrict_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:DropDownList ID="cmbPS" runat="server" 
        
        style="z-index: 1; left: 597px; top: 375px; position: absolute; width: 185px" 
        AutoPostBack="True">
    </asp:DropDownList>
    <asp:Button ID="btnSearch" runat="server" 
        style="z-index: 1; left: 554px; top: 407px; position: absolute; width: 106px" 
        Text="Search" onclick="btnSearch_Click" />
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 333px; top: 446px; position: absolute; height: 362px; width: 715px; overflow:scroll;">
        <asp:GridView ID="GridView1" runat="server" 
    
            
            style="z-index: 1; left: 14px; top: 3px; position: absolute; height: 133px; width: 187px" 
            AutoGenerateSelectButton="True" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
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
</div>
</asp:Content>
