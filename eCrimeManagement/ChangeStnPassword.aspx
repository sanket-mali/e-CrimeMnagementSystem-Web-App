<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangeStnPassword.aspx.cs" Inherits="eCrimeManagement.ChangeStnPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:TextBox ID="txtStnN" runat="server" 
        
        style="z-index: 1; left: 588px; top: 265px; position: absolute; width: 195px"></asp:TextBox>
    <asp:TextBox ID="txtStnID" runat="server" 
        
        style="z-index: 1; left: 587px; top: 300px; position: absolute; width: 198px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 451px; top: 266px; position: absolute" 
        Text="STATION NAME"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 452px; top: 301px; position: absolute" 
        Text="STATION ID"></asp:Label>
        <asp:Button ID="btnSubmit" runat="server" 
        style="z-index: 1; left: 719px; top: 401px; position: absolute" 
        Text="SUBMIT" onclick="btnSubmit_Click" />
        
    <asp:Panel ID="Panel1" runat="server" 
        
        
        style="z-index: 1; left: 376px; top: 435px; position: absolute; height: 173px; width: 549px">
        <asp:TextBox ID="txtPass" runat="server" 
        style="z-index: 1; left: 167px; top: 40px; position: absolute; width: 204px" 
        TextMode="Password"></asp:TextBox>
    <asp:TextBox ID="txtPassRe" runat="server" 
        style="z-index: 1; left: 167px; top: 68px; position: absolute; width: 201px" 
        TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 70px; top: 41px; position: absolute" Text="PASSWORD"></asp:Label>
         <asp:Button ID="btnUpdate" runat="server" ValidationGroup='valGroup1'
        style="z-index: 1; left: 229px; top: 135px; position: absolute" 
            Text="UPDATE" onclick="btnUpdate_Click" />
        <asp:Label ID="Label2" runat="server" 
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
        
        
        style="z-index: 1; left: 590px; top: 405px; position: absolute; width: 109px;" 
        ontextchanged="txtRef_TextChanged"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 428px; top: 405px; position: absolute" 
        Text="TYPE ADMIN REF ID"></asp:Label>
        
    <asp:Button ID="Button9" runat="server" onclick="Button9_Click1" 
        style="z-index: 1; left: 562px; top: 331px; position: absolute" 
        Text="CHANGE PASSWORD" />
        
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 826px; top: 380px; position: absolute" Text="Label"></asp:Label>
        
</div>
</asp:Content>
