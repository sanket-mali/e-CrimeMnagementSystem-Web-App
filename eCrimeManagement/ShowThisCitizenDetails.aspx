<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowThisCitizenDetails.aspx.cs" Inherits="eCrimeManagement.ShowThisCitizenDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 509px; top: 148px; position: absolute; width: 239px; height: 26px; text-decoration: underline; font-size: x-large;" 
        Text="CITIZEN DETAILS"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 403px; top: 192px; position: absolute" Text="USER ID"></asp:Label>
    <asp:TextBox ID="txtUserId" runat="server" 
        
        style="z-index: 1; left: 530px; top: 189px; position: absolute; width: 136px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 403px; top: 226px; position: absolute" Text="NAME"></asp:Label>
    <asp:TextBox ID="txtName" runat="server" 
        
        style="z-index: 1; left: 530px; top: 224px; position: absolute; width: 241px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 404px; top: 259px; position: absolute" Text="GENDER"></asp:Label>
    <asp:TextBox ID="txtGender" runat="server" 
        style="z-index: 1; left: 528px; top: 258px; position: absolute" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 406px; top: 294px; position: absolute" Text="DOB"></asp:Label>
    <asp:TextBox ID="txtDOB" runat="server" 
        style="z-index: 1; left: 527px; top: 290px; position: absolute" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 402px; top: 330px; position: absolute" Text="ADDRESS"></asp:Label>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 401px; top: 409px; position: absolute; height: 22px" 
        Text="PHONE NO"></asp:Label>
    <asp:TextBox ID="txtAddr" runat="server" 
        style="z-index: 1; left: 526px; top: 325px; position: absolute; width: 370px; height: 70px" 
        TextMode="MultiLine" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtPhn" runat="server" 
        
        style="z-index: 1; left: 525px; top: 407px; position: absolute; width: 181px" 
        Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtVoterId" runat="server" 
        
        style="z-index: 1; left: 525px; top: 487px; position: absolute; width: 184px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 400px; top: 488px; position: absolute" 
        Text="VOTER ID NO."></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 400px; top: 521px; position: absolute" 
        Text="PAN CARD NO."></asp:Label>
    <asp:TextBox ID="txtPan" runat="server" 
        
        style="z-index: 1; left: 526px; top: 520px; position: absolute; width: 184px" 
        Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtAadhar" runat="server" 
        
        style="z-index: 1; left: 526px; top: 563px; position: absolute; width: 187px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 400px; top: 553px; position: absolute; height: 45px; width: 95px" 
        Text="AADHAR CARD NO."></asp:Label>
    <asp:Button ID="btnOk" runat="server" 
        style="z-index: 1; left: 549px; top: 656px; position: absolute" Text="OK" 
        onclick="btnOk_Click" />
    <asp:Label ID="lblAuth" runat="server" 
        style="z-index: 1; left: 394px; top: 619px; position: absolute; width: 253px" 
        Text="THESE DETAILS ARE VERIFIED BY:"></asp:Label>
    <asp:Label ID="lblStn" runat="server" 
        style="z-index: 1; left: 666px; top: 620px; position: absolute" Text="Label"></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 401px; top: 445px; position: absolute" Text="MAIL ID"></asp:Label>
    <asp:TextBox ID="txtMail" runat="server" Enabled="False" 
        style="z-index: 1; left: 525px; top: 443px; position: absolute; width: 182px"></asp:TextBox>
</div>
</asp:Content>
