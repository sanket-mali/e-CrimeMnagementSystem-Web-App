<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CloseThisFileAdmin.aspx.cs" Inherits="eCrimeManagement.CloseThisFileAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 386px; top: 211px; position: absolute" 
        Text="COMPLAIN ID"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 498px; top: 142px; position: absolute; text-decoration: underline; font-size: xx-large" 
        Text="CLOSE FILE"></asp:Label>
    <asp:TextBox ID="txtComID" runat="server" 
        
        style="z-index: 1; left: 524px; top: 210px; position: absolute; width: 187px" 
        Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 390px; top: 279px; position: absolute; height: 19px" 
        Text="CITIZEN ID"></asp:Label>
    <asp:TextBox ID="txtSub" runat="server" 
        
        style="z-index: 1; left: 524px; top: 244px; position: absolute; width: 187px" 
        Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 388px; top: 247px; position: absolute" Text="SUBJECT"></asp:Label>
    <asp:TextBox ID="txtCitizenID" runat="server" 
        
        style="z-index: 1; left: 524px; top: 274px; position: absolute; width: 186px" 
        Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 389px; top: 313px; position: absolute" 
        Text="CITIZEN NAME"></asp:Label>
    <asp:TextBox ID="txtCitizenN" runat="server" 
        
        style="z-index: 1; left: 524px; top: 315px; position: absolute; width: 190px" 
        Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 390px; top: 348px; position: absolute; height: 20px" 
        Text="POLICE STATION"></asp:Label>
    <asp:TextBox ID="txtPS" runat="server" 
        
        style="z-index: 1; left: 524px; top: 347px; position: absolute; width: 191px" 
        Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:TextBox ID="txtPlace" runat="server" 
        style="z-index: 1; left: 523px; top: 380px; position: absolute; width: 196px" 
        TextMode="MultiLine" Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 390px; top: 376px; position: absolute; height: 42px; width: 114px" 
        Text="PLACE OF INCIDENT"></asp:Label>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 391px; top: 469px; position: absolute" Text="STATUS"></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 390px; top: 422px; position: absolute; height: 38px; width: 121px" 
        Text="TIME OF INCIDENT"></asp:Label>
    <asp:TextBox ID="txtTime" runat="server" 
        
        style="z-index: 1; left: 525px; top: 433px; position: absolute; width: 194px" 
        Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:TextBox ID="txtStatus" runat="server" 
        
        style="z-index: 1; left: 526px; top: 463px; position: absolute; width: 193px" 
        Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 392px; top: 500px; position: absolute; height: 35px; width: 122px" 
        Text="DETAILED REPORT"></asp:Label>
    <asp:TextBox ID="txtReport" runat="server" 
        style="z-index: 1; left: 526px; top: 503px; position: absolute; width: 300px; height: 96px" 
        TextMode="MultiLine" Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 400px; top: 628px; position: absolute" Text="SUSPECTS"></asp:Label>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 398px; top: 676px; position: absolute; height: 38px; width: 121px" 
        Text="SUSPECT DETAILS"></asp:Label>
    <asp:TextBox ID="txtSusName" runat="server" 
        style="z-index: 1; left: 524px; top: 620px; position: absolute; width: 306px; height: 42px" 
        TextMode="MultiLine" Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:TextBox ID="txtSusDetail" runat="server" 
        style="z-index: 1; left: 524px; top: 672px; position: absolute; width: 301px; height: 60px" 
        TextMode="MultiLine" Enabled="False" ReadOnly="True"></asp:TextBox>
    <asp:Button ID="btnClose" runat="server" onclick="btnClose_Click" 
        style="z-index: 1; left: 521px; top: 756px; position: absolute; right: 437px" 
        Text="CLOSE FILE" />
    <asp:Label ID="lblTime" runat="server" 
        style="z-index: 1; left: 421px; top: 180px; position: absolute" 
        Text="This file reported at  "></asp:Label>
    <asp:Button ID="btnOK" runat="server" onclick="btnOK_Click" 
        style="z-index: 1; left: 562px; top: 756px; position: absolute" Text="OK" />
    <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
        style="z-index: 1; left: 696px; top: 755px; position: absolute" Text="CANCEL" />
</div>
</asp:Content>
