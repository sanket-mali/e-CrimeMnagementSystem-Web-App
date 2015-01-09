<%@ Page Title="" Language="C#" MasterPageFile="~/Station.Master" AutoEventWireup="true" CodeBehind="ChangeStatusPS.aspx.cs" Inherits="eCrimeManagement.ChangeStatusPS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div>
    <asp:Panel ID="Panel1" runat="server" 
        
        
         style="z-index: 1; left: 333px; top: 321px; position: absolute; height: 393px; width: 712px;overflow:scroll;">
        <asp:GridView ID="GridView1" runat="server" 
    
            
            style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 133px; width: 187px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onrowediting="GridView1_RowEditing" AutoGenerateSelectButton="True" 
            onrowcommand="GridView1_RowCommand1">
      </asp:GridView>
    </asp:Panel>
    <asp:TextBox ID="txtComplainID" runat="server" 
        style="z-index: 1; left: 556px; top: 211px; position: absolute; width: 219px"></asp:TextBox>
    <asp:TextBox ID="txtUserID" runat="server" 
        style="z-index: 1; left: 555px; top: 241px; position: absolute; width: 219px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 438px; top: 211px; position: absolute" 
        Text="COMPLAIN ID"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 441px; top: 242px; position: absolute" Text="USER ID"></asp:Label>
    <asp:DropDownList ID="cmbType" runat="server" 
        
         style="z-index: 1; left: 558px; top: 181px; position: absolute; width: 147px" 
         AutoPostBack="True" onselectedindexchanged="cmbType_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
        style="z-index: 1; left: 557px; top: 272px; position: absolute; width: 115px" 
        Text="SEARCH" />
        <asp:Label ID="Label5" runat="server" Enabled="False" 
         style="z-index: 1; left: 750px; top: 276px; position: absolute; width: 160px"></asp:Label>
</div>
</asp:Content>
