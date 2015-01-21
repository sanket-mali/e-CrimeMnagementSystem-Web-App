<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminShowComplains.aspx.cs" Inherits="eCrimeManagement.AdminShowComplains" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 18px">

    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 342px; top: 372px; position: absolute; height: 414px; width: 693px; overflow:scroll;">
        <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
    
            style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 133px; width: 187px" 
            AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" 
            SortExpression="UserID" />
                <asp:BoundField DataField="ComplainID" HeaderText="ComplainID" 
            SortExpression="ComplainID" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" 
            SortExpression="Subject" />
                <asp:BoundField DataField="DateTimeOfIncident" HeaderText="DateTimeOfIncident" 
            SortExpression="DateTimeOfIncident" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="District" HeaderText="District" 
            SortExpression="District" />
                <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" 
            SortExpression="PoliceStation" />
                <asp:BoundField DataField="PlaceOfIncident" HeaderText="PlaceOfIncident" 
            SortExpression="PlaceOfIncident" />
                <asp:BoundField DataField="DetailedReport" HeaderText="DetailedReport" 
            SortExpression="DetailedReport" />
                <asp:BoundField DataField="Suspects" HeaderText="Suspects" 
            SortExpression="Suspects" />
                <asp:BoundField DataField="SuspectDetails" HeaderText="SuspectDetails" 
            SortExpression="SuspectDetails" />
                <asp:BoundField DataField="DateTimeOfReport" HeaderText="DateTimeOfReport" 
            SortExpression="DateTimeOfReport" />
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
    ConnectionString="<%$ ConnectionStrings:eCMConnectionString %>" 
    SelectCommand="SELECT * FROM [ComplainData]"></asp:SqlDataSource>
    </asp:Panel>

</div>
</asp:Content>
