<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowAllComplainsAd.aspx.cs" Inherits="eCrimeManagement.ShowAllComplainsAd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 339px; top: 319px; position: absolute; height: 432px; width: 698px; overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" 
    
            style="z-index: 1; left: 7px; top: 7px; position: absolute; height: 392px; width: 187px" 
            AllowPaging="True" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True" 
            DataKeyNames="RefID" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
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
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:BoundField DataField="RefID" HeaderText="RefID" ReadOnly="True" 
                    SortExpression="RefID" />
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
            SelectCommand="SELECT * FROM [ComplainData]"></asp:SqlDataSource>
    </asp:Panel>
</div>
</asp:Content>
