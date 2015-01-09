<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.Master" AutoEventWireup="true" CodeBehind="showreportdetailsCitizen.aspx.cs" Inherits="eCrimeManagement.showreportdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
 <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 389px; top: 227px; position: absolute" 
        Text="COMPLAIN ID"></asp:Label>
    <asp:TextBox ID="txtComID" runat="server" 
        
        style="z-index: 1; left: 524px; top: 226px; position: absolute; width: 187px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 389px; top: 293px; position: absolute; height: 19px" 
        Text="CITIZEN ID"></asp:Label>
    <asp:TextBox ID="txtSub" runat="server" 
        
        style="z-index: 1; left: 524px; top: 257px; position: absolute; width: 187px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 391px; top: 266px; position: absolute" 
        Text="SUBJECT"></asp:Label>
    <asp:TextBox ID="txtCitizenID" runat="server" 
        
        style="z-index: 1; left: 524px; top: 288px; position: absolute; width: 186px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 388px; top: 322px; position: absolute" 
        Text="CITIZEN NAME"></asp:Label>
    <asp:TextBox ID="txtCitizenN" runat="server" 
        
        style="z-index: 1; left: 524px; top: 320px; position: absolute; width: 190px"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 389px; top: 357px; position: absolute; height: 20px" 
        Text="POLICE STATION"></asp:Label>
    <asp:TextBox ID="txtPS" runat="server" 
        
        style="z-index: 1; left: 525px; top: 355px; position: absolute; width: 191px" 
        Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtPlace" runat="server" 
        style="z-index: 1; left: 525px; top: 401px; position: absolute; width: 196px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 390px; top: 401px; position: absolute; height: 42px; width: 114px" 
        Text="PLACE OF INCIDENT"></asp:Label>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 391px; top: 509px; position: absolute" 
        Text="STATUS"></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 390px; top: 458px; position: absolute; height: 38px; width: 121px" 
        Text="TIME OF INCIDENT"></asp:Label>
    <asp:TextBox ID="txtTime" runat="server" 
        
        style="z-index: 1; left: 526px; top: 466px; position: absolute; width: 194px"></asp:TextBox>
    <asp:TextBox ID="txtStatus" runat="server" 
        
        style="z-index: 1; left: 526px; top: 506px; position: absolute; width: 193px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 392px; top: 545px; position: absolute; height: 35px; width: 122px" 
        Text="DETAILED REPORT"></asp:Label>
    <asp:TextBox ID="txtReport" runat="server" 
        style="z-index: 1; left: 526px; top: 543px; position: absolute; width: 300px; height: 96px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 398px; top: 656px; position: absolute" 
        Text="SUSPECTS"></asp:Label>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 398px; top: 712px; position: absolute; height: 38px; width: 121px" 
        Text="SUSPECT DETAILS"></asp:Label>
    <asp:TextBox ID="txtSusName" runat="server" 
        style="z-index: 1; left: 524px; top: 653px; position: absolute; width: 306px; height: 42px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:TextBox ID="txtSusDetail" runat="server" 
        style="z-index: 1; left: 523px; top: 709px; position: absolute; width: 305px; height: 60px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="btnClose" runat="server" onclick="btnClose_Click" 
        style="z-index: 1; left: 646px; top: 799px; position: absolute; right: 355px; height: 26px; width :100px" 
        Text="OK" />
    <asp:Label ID="lblTime" runat="server" 
        style="z-index: 1; left: 409px; top: 193px; position: absolute" 
        Text="This file reported at  "></asp:Label>
    <asp:Label ID="Label15" runat="server" Font-Names="Angsana New" 
        Font-Size="XX-Large" Font-Underline="True" 
        style="top: 147px; left: 524px; position: absolute; height: 19px; width: 180px" 
        Text="Complain Details"></asp:Label>
    <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
        style="top: 801px; left: 523px; position: absolute; height: 23px; width: 100px" 
        Text="Update" />
</div>
</asp:Content>
