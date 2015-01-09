<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowCitizenAdmin.aspx.cs" Inherits="eCrimeManagement.ShowCitizen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Panel ID="Panel1" runat="server" 
        
            
            style="z-index: 1; left: 351px; top: 394px; position: absolute; height: 396px; width: 697px; overflow:scroll">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1" 
            
                
                style="z-index: 1; left: 7px; top: 6px; position: absolute; height: 133px; width: 187px" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
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
    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
        style="z-index: 1; left: 863px; top: 297px; position: absolute; width: 176px; height: 42px;" 
        Text="AUTHENTICATION DETAILS" />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 427px; top: 185px; position: absolute" 
            Text="SEARCH TYPE"></asp:Label>
        <asp:DropDownList ID="cmbType" runat="server" AutoPostBack="True" 
            onselectedindexchanged="cmbType_SelectedIndexChanged" 
            style="z-index: 1; left: 605px; top: 185px; position: absolute; width: 132px">
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 426px; top: 214px; position: absolute" 
            Text="SEARCH BY USER ID"></asp:Label>
        <asp:TextBox ID="txtUserID" runat="server" 
            style="z-index: 1; left: 604px; top: 213px; position: absolute; width: 132px"></asp:TextBox>
        <asp:DropDownList ID="cmbState" runat="server" AutoPostBack="True" 
            onselectedindexchanged="cmbState_SelectedIndexChanged" 
            style="z-index: 1; left: 607px; top: 264px; position: absolute; width: 176px">
        </asp:DropDownList>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 465px; top: 269px; position: absolute" Text="STATE"></asp:Label>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 466px; top: 296px; position: absolute" Text="DISTRICT"></asp:Label>
        <asp:DropDownList ID="cmbDist" runat="server" AutoPostBack="True" 
            onselectedindexchanged="cmbDist_SelectedIndexChanged" 
            style="z-index: 1; left: 606px; top: 294px; position: absolute; width: 178px">
        </asp:DropDownList>
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; left: 465px; top: 322px; position: absolute" 
            Text="POLICE STATION"></asp:Label>
        <asp:DropDownList ID="cmbPS" runat="server" AutoPostBack="True" 
            onselectedindexchanged="cmbPS_SelectedIndexChanged" 
            style="z-index: 1; left: 606px; top: 321px; position: absolute; width: 184px">
        </asp:DropDownList>
        <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
            style="z-index: 1; left: 596px; top: 349px; position: absolute; width: 90px" 
            Text="SEARCH" />
        
</div>
</asp:Content>
