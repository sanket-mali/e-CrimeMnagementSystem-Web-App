<%@ Page Title="" Language="C#" MasterPageFile="~/Station.Master" AutoEventWireup="true" CodeBehind="CitizenAuthenticatePS.aspx.cs" Inherits="eCrimeManagement.CitizenAuthenticatePS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 409px; top: 225px; position: absolute; width: 79px" 
        Text="Select Type"></asp:Label>
    <asp:DropDownList ID="cmbType" runat="server" AutoPostBack="True" 
        
        style="z-index: 1; left: 528px; top: 223px; position: absolute; height: 26px; width: 158px" 
        onselectedindexchanged="cmbType_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 411px; top: 288px; position: absolute; width: 67px" 
        Text="REF ID"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 409px; top: 336px; position: absolute; width: 73px" 
        Text="USER ID"></asp:Label>
    <asp:TextBox ID="txtRefId" runat="server" 
        
        style="z-index: 1; left: 528px; top: 286px; position: absolute; width: 157px; height: 25px;"></asp:TextBox>
    <asp:TextBox ID="txtUserId" runat="server" 
        
        style="z-index: 1; left: 529px; top: 335px; position: absolute; width: 157px; height: 26px;"></asp:TextBox>
    <asp:Button ID="btnAuth" runat="server" 
        style="z-index: 1; left: 529px; top: 422px; position: absolute; width: 67px" 
        Text="OK" onclick="btnAuth_Click" />
    <asp:Label ID="Label6" runat="server" Enabled="False" 
        style="z-index: 1; left: 773px; top: 284px; position: absolute; width: 184px"></asp:Label>
    </div>
</asp:Content>
