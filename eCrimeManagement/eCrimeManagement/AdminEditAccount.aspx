<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminEditAccount.aspx.cs" Inherits="eCrimeManagement.AdminEditAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Button ID="Button9" runat="server" 
        style="z-index: 1; left: 641px; top: 206px; position: absolute" 
        Text="CHANGE PASSWORD" onclick="Button9_Click" />
        
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; left: 386px; top: 242px; position: absolute; height: 173px; width: 549px">
        <asp:TextBox ID="txtPass" runat="server" 
        style="z-index: 1; left: 167px; top: 40px; position: absolute; width: 204px" 
        TextMode="Password"></asp:TextBox>
    <asp:TextBox ID="txtPassRe" runat="server" 
        style="z-index: 1; left: 167px; top: 68px; position: absolute; width: 201px" 
        TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 70px; top: 41px; position: absolute" Text="PASSWORD"></asp:Label>
         <asp:Button ID="btnUpdate" runat="server" ValidationGroup='valGroup1'
        style="z-index: 1; left: 229px; top: 135px; position: absolute" 
            Text="UPDATE" onclick="btnUpdate_Click" />
        <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 12px; top: 69px; position: absolute" 
        Text="RETYPE PASSWORD"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Required" ValidationGroup='valGroup1' 
            
            style="z-index: 1; left: 377px; top: 42px; position: absolute; color: #FF3300;" 
            ControlToValidate="txtPass"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ErrorMessage="Passwords doesn't match" ValidationGroup='valGroup1' 
        
            
            style="z-index: 1; left: 189px; top: 106px; position: absolute; color: #FF3300" 
            ControlToCompare="txtPass" ControlToValidate="txtPassRe"></asp:CompareValidator>
    </asp:Panel>
    
   
    <asp:TextBox ID="txtRef" runat="server" 
        style="z-index: 1; left: 506px; top: 208px; position: absolute; width: 109px;"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 410px; top: 209px; position: absolute" 
        Text="TYPE REF ID"></asp:Label>
        
        </div>
</asp:Content>
