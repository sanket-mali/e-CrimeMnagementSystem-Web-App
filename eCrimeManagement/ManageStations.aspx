<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageStations.aspx.cs" Inherits="eCrimeManagement.ManageStations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

<div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 488px; top: 153px; position: absolute; font-family: 'Arial Black'; font-weight: 700; font-size: large; text-decoration: underline" 
        Text="ALL POLICE STATION"></asp:Label>
       <div id="GridScroll" class="grid_scroll"> 
   

           <asp:Panel ID="Panel1" runat="server" 
               
               
               style="z-index: 1; left: 337px; top: 338px; position: absolute; height: 404px; width: 703px;overflow:scroll;">
               <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
    style="z-index: 1; left: 12px; top: 8px; position: absolute; height: 133px; width: 187px" 
                   AllowPaging="True" AutoGenerateSelectButton="True" 
                   onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                   ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="StationID" HeaderText="StationID" 
            SortExpression="StationID" />
                       <asp:BoundField DataField="StationName" HeaderText="StationName" 
            SortExpression="StationName" />
                       <asp:BoundField DataField="InChargeName" HeaderText="InChargeName" 
            SortExpression="InChargeName" />
                       <asp:BoundField DataField="InChargeID" HeaderText="InChargeID" 
            SortExpression="InChargeID" />
                       <asp:BoundField DataField="InChargePhnNo" HeaderText="InChargePhnNo" 
            SortExpression="InChargePhnNo" />
                       <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
                       <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                       <asp:BoundField DataField="District" HeaderText="District" 
            SortExpression="District" />
                       <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
                       <asp:BoundField DataField="MailID" HeaderText="MailID" 
            SortExpression="MailID" />
                       <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
            SortExpression="PhoneNo" />
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
    SelectCommand="SELECT * FROM [StationDetails]"></asp:SqlDataSource>
              


           </asp:Panel>
           
           <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
               style="z-index: 1; left: 510px; top: 289px; position: absolute" 
               Text="AUTHENTICATION DETAILS" />
           
    </div>
    
        <asp:Button ID="btnSubmit" runat="server" onclick="Button1_Click"
        Text="SEARCH " 
        
        
        style="top: 244px; left: 603px; position: absolute; height: 26px; width: 61px" />

</div>
</asp:Content>
