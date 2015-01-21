<%@ Page Title="" Language="C#" MasterPageFile="~/Station.Master" AutoEventWireup="true" CodeBehind="ShowComplainPS.aspx.cs" Inherits="eCrimeManagement.ShowComplainPS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 513px; top: 181px; position: absolute; font-family: 'Arial Rounded MT Bold'; font-weight: 700; font-size: x-large" 
        Text="SHOW COMPLAINS"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 463px; top: 246px; position: absolute" 
        Text="SEARCH TYPE"></asp:Label>
        <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 464px; top: 283px; position: absolute" 
        Text="BY COMPLAIN ID"></asp:Label>
    <asp:TextBox ID="txtID" runat="server" 
        
        style="z-index: 1; left: 598px; top: 281px; position: absolute; width: 188px"></asp:TextBox>

    <asp:Panel ID="Panel1" runat="server" 
        
            style="z-index: 1; left: 354px; top: 421px; position: absolute; height: 377px; width: 691px; overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" 
        style="z-index: 1; left: 11px; top: 20px; position: absolute; height: 179px; width: 664px" 
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
        <asp:DropDownList ID="cmbStatus" runat="server" AutoPostBack="True" 
            style="z-index: 1; left: 599px; top: 313px; position: absolute; width: 193px">
        </asp:DropDownList>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 466px; top: 316px; position: absolute" 
            Text="BY STATUS"></asp:Label>
        <asp:DropDownList ID="cmbType" runat="server" AutoPostBack="True" 
            onselectedindexchanged="cmbType_SelectedIndexChanged" 
            style="z-index: 1; left: 599px; top: 246px; position: absolute; width: 187px">
        </asp:DropDownList>
        <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
            style="z-index: 1; left: 626px; top: 347px; position: absolute" 
            Text="SEARCH" />
</div>
</asp:Content>
