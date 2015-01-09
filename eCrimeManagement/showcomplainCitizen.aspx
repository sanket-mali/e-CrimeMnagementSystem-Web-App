<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.Master" AutoEventWireup="true" CodeBehind="showcomplainCitizen.aspx.cs" Inherits="eCrimeManagement.show_complaincitizen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="Panel1" runat="server">
        <asp:Panel ID="Panel2" runat="server" 
            
            style="top: 207px; left: 375px; position: absolute; height: 340px; width: 651px; overflow :scroll">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
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
    </asp:Panel>
     
</asp:Content>
