<%@ Page Title="" Language="C#" MasterPageFile="~/Station.Master" AutoEventWireup="true" CodeBehind="allcomplain.aspx.cs" Inherits="eCrimeManagement.allcomplain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div _designerregion="0">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Panel ID="Panel2" runat="server" 
            
            style="top: 258px; left: 424px; position: absolute; height: 325px; width: 833px; overflow :scroll">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" Height="282px" 
                style="top: 13px; left: 19px; position: absolute" Width="783px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" 
                        SortExpression="UserID" />
                    <asp:BoundField DataField="ComplainId" HeaderText="ComplainId" 
                        SortExpression="ComplainId" />
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
                    <asp:BoundField DataField="Suspects" HeaderText="Suspects" 
                        SortExpression="Suspects" />
                    <asp:BoundField DataField="DatetimeOfReport" HeaderText="DatetimeOfReport" 
                        SortExpression="DatetimeOfReport" />
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" 
                
                SelectCommand="SELECT [UserID], [ComplainId], [Subject], [DateTimeOfIncident], [State], [District], [PoliceStation], [PlaceOfIncident], [Suspects], [DatetimeOfReport], [Status] FROM [ComplainDetails] WHERE ([District] = @District)">
                <SelectParameters>
                    <asp:SessionParameter Name="District" SessionField="Dist" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:Panel>
    </div> 
</asp:Content>
