<%@ Page Title="" Language="C#" MasterPageFile="~/Station.Master" AutoEventWireup="true" CodeBehind="ShowThisComplainPS.aspx.cs" Inherits="eCrimeManagement.ShowThisComplainPS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 386px; top: 211px; position: absolute" 
        Text="COMPLAIN ID"></asp:Label>
    <asp:TextBox ID="txtComID" runat="server" 
        style="z-index: 1; left: 524px; top: 210px; position: absolute; width: 187px" 
            Enabled="False"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 390px; top: 279px; position: absolute; height: 19px" 
        Text="CITIZEN ID"></asp:Label>
    <asp:TextBox ID="txtSub" runat="server" 
        style="z-index: 1; left: 524px; top: 244px; position: absolute; width: 187px" 
            Enabled="False"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 388px; top: 247px; position: absolute" Text="SUBJECT"></asp:Label>
    <asp:TextBox ID="txtCitizenID" runat="server" 
        style="z-index: 1; left: 524px; top: 274px; position: absolute; width: 186px" 
            Enabled="False"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 389px; top: 313px; position: absolute" 
        Text="CITIZEN NAME"></asp:Label>
    <asp:TextBox ID="txtCitizenN" runat="server" 
        style="z-index: 1; left: 524px; top: 315px; position: absolute; width: 190px" 
            Enabled="False"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 390px; top: 348px; position: absolute; height: 20px" 
        Text="POLICE STATION"></asp:Label>
    <asp:TextBox ID="txtPS" runat="server" 
        style="z-index: 1; left: 524px; top: 347px; position: absolute; width: 191px" 
            Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtPlace" runat="server" 
        style="z-index: 1; left: 523px; top: 380px; position: absolute; width: 196px" 
        TextMode="MultiLine" Enabled="False"></asp:TextBox>
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
            Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtStatus" runat="server" 
        style="z-index: 1; left: 526px; top: 463px; position: absolute; width: 193px" 
            Enabled="False"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 392px; top: 500px; position: absolute; height: 35px; width: 122px" 
        Text="DETAILED REPORT"></asp:Label>
    <asp:TextBox ID="txtReport" runat="server" 
        style="z-index: 1; left: 526px; top: 503px; position: absolute; width: 300px; height: 96px" 
        TextMode="MultiLine" Enabled="False"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 400px; top: 628px; position: absolute" Text="SUSPECTS"></asp:Label>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 398px; top: 676px; position: absolute; height: 38px; width: 121px" 
        Text="SUSPECT DETAILS"></asp:Label>
    <asp:TextBox ID="txtSusName" runat="server" 
        style="z-index: 1; left: 524px; top: 620px; position: absolute; width: 306px; height: 42px" 
        TextMode="MultiLine" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtSusDetail" runat="server" 
        style="z-index: 1; left: 524px; top: 672px; position: absolute; width: 301px; height: 60px" 
        TextMode="MultiLine" Enabled="False"></asp:TextBox>
    <asp:Label ID="lblTime" runat="server" 
        style="z-index: 1; left: 421px; top: 180px; position: absolute" 
        Text="This file reported at  "></asp:Label>
        <asp:Button ID="btnOk" runat="server" onclick="btnOk_Click" 
            style="z-index: 1; left: 568px; top: 770px; position: absolute" Text="OK" />
            <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFCC" 
            style="z-index: 1; left: 800px; top: 203px; position: absolute; height: 240px; width: 242px">
            <asp:Label ID="Label16" runat="server" 
    
                style="z-index: 1; left: 60px; top: -2px; position: absolute; text-decoration: underline;" 
                Text="TRACK REPORT"></asp:Label>
            <asp:Label ID="Label17" runat="server" 
                style="z-index: 1; left: 51px; top: 20px; position: absolute; font-size: small" 
                Text="COMPLAIN REPORTED"></asp:Label>
            <asp:Label ID="Label18" runat="server" 
                style="z-index: 1; left: 57px; top: 59px; position: absolute; font-size: small" 
                Text="COMPLAIN VERIFIED"></asp:Label>
            <asp:Label ID="Label19" runat="server" 
                style="z-index: 1; left: 61px; top: 98px; position: absolute; font-size: small" 
                Text="IN-VIGILENCE FROM"></asp:Label>
            <asp:Label ID="lblVigilence" runat="server" 
                style="z-index: 1; left: 9px; top: 114px; position: absolute; color: #FF0000; width: 228px; text-align: center"></asp:Label>
            <asp:Label ID="Label20" runat="server" 
                style="z-index: 1; left: 56px; top: 135px; position: absolute; font-size: small; height: 15px" 
                Text="CHARGE-SHEET FILED"></asp:Label>
            <asp:Label ID="Label21" runat="server" 
                style="z-index: 1; left: 73px; top: 174px; position: absolute; font-size: small" 
                Text="FILE CLOSED ON"></asp:Label>
            <asp:Label ID="lblReport" runat="server" 
                style="z-index: 1; left: 6px; top: 36px; position: absolute; text-align: center; color: #FF0000; width: 225px"></asp:Label>
            <asp:Label ID="lblVerified" runat="server" 
                style="z-index: 1; left: 8px; top: 76px; position: absolute; color: #FF0000; width: 227px; text-align: center"></asp:Label>
            <asp:Label ID="lblCharge" runat="server" 
                style="z-index: 1; left: 8px; top: 152px; position: absolute; color: #FF0000; width: 224px; text-align: center"></asp:Label>
            <asp:Label ID="lblClosed" runat="server" 
                style="z-index: 1; left: 10px; top: 192px; position: absolute; color: #FF0000; width: 223px; text-align: center"></asp:Label>
        </asp:Panel>
</div>
</asp:Content>
