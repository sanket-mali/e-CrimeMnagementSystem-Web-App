<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowCitizenAuthAdmin.aspx.cs" Inherits="eCrimeManagement.ShowCitizenAuth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 383px; top: 359px; position: absolute; height: 406px; width: 629px;overflow:scroll;">
        <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
    
            style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 277px; width: 607px" 
            AllowPaging="True" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="RefID" HeaderText="RefID" SortExpression="RefID" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" 
            SortExpression="UserID" />
                <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
            </Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Data Source=.\sqlexpress;Initial Catalog=project;Integrated Security=True;Pooling=False" 
    SelectCommand="SELECT * FROM [CitizenAuth]"></asp:SqlDataSource>
    </asp:Panel>
</div>
</asp:Content>
