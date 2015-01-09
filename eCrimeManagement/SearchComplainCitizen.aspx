<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.Master" AutoEventWireup="true" CodeBehind="SearchComplainCitizen.aspx.cs" Inherits="eCrimeManagement.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 463px; top: 237px; position: absolute; height: 19px; width: 57px" 
        Text="STATUS"></asp:Label>
    <asp:DropDownList ID="cmbType" runat="server" 
        onselectedindexchanged="cmbType_SelectedIndexChanged" 
        
    style="z-index: 1; left: 595px; top: 176px; position: absolute; height: 21px; width: 150px" 
    AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label3" runat="server" 
        style="top: 206px; left: 462px; position: absolute; height: 17px; width: 111px" 
        Text="COMPLAIN ID"></asp:Label>
    <asp:DropDownList ID="cmbComplainId" runat="server" 
        
        
        style="z-index: 1; left: 595px; top: 209px; position: absolute; width: 130px; height: 24px" 
        AutoPostBack="True" 
    onselectedindexchanged="cmbComplainId_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 463px; top: 177px; position: absolute" 
        Text="SEARCH TYPE"></asp:Label>
    <br />
        
    <asp:Panel ID="Panel1" runat="server" 
        
        
        style="z-index: 1; left: 347px; top: 354px; position: absolute; height: 277px; width: 691px; overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" 
        
            
            
            
            style="z-index: 1; left: 29px; top: 12px; position: absolute; height: 179px; width: 664px" 
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
    <br />
    <asp:DropDownList ID="cmbStatus" runat="server" 
        
        
        style="z-index: 1; left: 593px; top: 241px; position: absolute; width: 194px; height: 23px" 
        AutoPostBack="True" 
    onselectedindexchanged="cmbStatus_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Button ID="btnSearch" runat="server" 
        style="z-index: 1; left: 620px; top: 281px; position: absolute; height: 26px; width: 79px" 
        Text="SEARCH" onclick="btnSearch_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p style="height: 97px">
    </p>
    <p style="height: 97px">
    </p>
    <p style="height: 97px">
    </p>
</asp:Content>

