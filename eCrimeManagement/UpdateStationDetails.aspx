<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateStationDetails.aspx.cs" Inherits="eCrimeManagement.UpdateStationDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 502px; top: 156px; position: absolute; text-decoration: underline; font-family: 'Arial Narrow'; font-size: x-large" 
        Text="UPDATE STATIONS"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 367px; top: 207px; position: absolute" 
        Text="STATION ID"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 368px; top: 236px; position: absolute" 
        Text="STATION NAME"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 370px; top: 265px; position: absolute" 
        Text="IN-CHARGE ID"></asp:Label>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 372px; top: 296px; position: absolute" 
        Text="IN-CHARGE NAME"></asp:Label>
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 372px; top: 329px; position: absolute" 
        Text="IN-CHARGE PHN NO"></asp:Label>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 372px; top: 378px; position: absolute" Text="ADDRESS"></asp:Label>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 378px; top: 463px; position: absolute" Text="STATE"></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 377px; top: 489px; position: absolute" Text="DISTRICT"></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 380px; top: 520px; position: absolute" Text="PIN"></asp:Label>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 379px; top: 553px; position: absolute" Text="MAIL ID"></asp:Label>
    <asp:Label ID="Label15" runat="server" 
        style="z-index: 1; left: 380px; top: 582px; position: absolute" Text="PHONE NO"></asp:Label>
    <asp:TextBox ID="txtStnID" runat="server" Enabled="False" ReadOnly="True" 
        style="z-index: 1; left: 538px; top: 204px; position: absolute; width: 206px"></asp:TextBox>
    <asp:TextBox ID="txtStnName" runat="server" Enabled="False" ReadOnly="True" 
        style="z-index: 1; left: 538px; top: 234px; position: absolute; width: 201px"></asp:TextBox>
    <asp:TextBox ID="txtInCID" runat="server" 
        style="z-index: 1; left: 538px; top: 263px; position: absolute; width: 201px"></asp:TextBox>
    <asp:TextBox ID="txtInName" runat="server" 
        style="z-index: 1; left: 539px; top: 295px; position: absolute; width: 199px"></asp:TextBox>
    <asp:TextBox ID="txtInPhn1" runat="server" 
        style="z-index: 1; left: 541px; top: 324px; position: absolute; width: 197px"></asp:TextBox>
    <asp:TextBox ID="txtAdd" runat="server" 
        style="z-index: 1; left: 542px; top: 371px; position: absolute; width: 272px; height: 68px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:TextBox ID="txtPin" runat="server" Enabled="False" ReadOnly="True" 
        style="z-index: 1; left: 545px; top: 519px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="txtMail" runat="server" 
        style="z-index: 1; left: 545px; top: 551px; position: absolute; width: 244px"></asp:TextBox>
    <asp:TextBox ID="txtPhn1" runat="server" 
        style="z-index: 1; left: 542px; top: 582px; position: absolute; width: 243px"></asp:TextBox>
    <asp:TextBox ID="txtPhn2" runat="server" 
        style="z-index: 1; left: 543px; top: 612px; position: absolute; width: 245px"></asp:TextBox>
    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
        style="z-index: 1; left: 569px; top: 657px; position: absolute" Text="UPDATE" />
    <asp:TextBox ID="txtState" runat="server" Enabled="False" ReadOnly="True" 
        style="z-index: 1; left: 544px; top: 462px; position: absolute; width: 171px"></asp:TextBox>
    <asp:TextBox ID="txtDist" runat="server" Enabled="False" ReadOnly="True" 
        style="z-index: 1; left: 545px; top: 487px; position: absolute; width: 168px"></asp:TextBox>
</div>
</asp:Content>
