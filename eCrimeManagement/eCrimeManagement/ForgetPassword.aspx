<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="eCrimeManagement.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <asp:TextBox ID="txtUNAME" runat="server" 
        style="z-index: 1; left: 635px; top: 222px; position: absolute; width: 170px"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 511px; top: 224px; position: absolute" 
        Text="ENTER USER NAME"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 512px; top: 257px; position: absolute" 
        Text="ENTER MAIL ID"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 512px; top: 289px; position: absolute" 
        Text="ENTER REF ID"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 512px; top: 320px; position: absolute" 
        Text="ENTER AADHAR ID"></asp:Label>
    <asp:TextBox ID="txtMail" runat="server" 
        style="z-index: 1; left: 634px; top: 255px; position: absolute; width: 174px"></asp:TextBox>
    <asp:TextBox ID="txtRefID" runat="server" 
        style="z-index: 1; left: 634px; top: 288px; position: absolute; width: 174px"></asp:TextBox>
    <asp:TextBox ID="txtAadhar" runat="server" 
        style="z-index: 1; left: 633px; top: 320px; position: absolute; width: 175px"></asp:TextBox>
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        style="z-index: 1; left: 676px; top: 351px; position: absolute" Text="SUBMIT" />
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 478px; top: 188px; position: absolute; width: 434px; font-size: medium; text-decoration: underline" 
        Text="ENTER THE FOLLOWING DETAILS TO RESET PASSWORD"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 504px; top: 391px; position: absolute; height: 144px; width: 385px">
        <asp:Label ID="Label7" runat="server" 
    style="z-index: 1; left: 14px; top: 17px; position: absolute" 
    Text="ENTER PASSWORD"></asp:Label>
        <asp:TextBox ID="txtPass" runat="server" 
            style="z-index: 1; left: 152px; top: 17px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtPassRe" runat="server" 
            style="z-index: 1; left: 154px; top: 54px; position: absolute" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; left: 14px; top: 57px; position: absolute">RETYPE PASSWORD</asp:Label>
        <asp:Button ID="btnReset" runat="server" onclick="btnReset_Click" ValidationGroup="group1"
            style="z-index: 1; left: 174px; top: 106px; position: absolute" Text="RESET" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*Required" ValidationGroup="group1"
            
            style="z-index: 1; left: 297px; top: 20px; position: absolute; color: #FF0000" 
            ControlToValidate="txtPass"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Password doesn't match" ValidationGroup="group1"
            
            style="z-index: 1; left: 136px; top: 84px; position: absolute; color: #FF3300" 
            ControlToCompare="txtPass" ControlToValidate="txtPassRe"></asp:CompareValidator>
    </asp:Panel>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/back.png" 
        onclick="ImageButton1_Click" 
        style="z-index: 1; left: 217px; top: 186px; position: absolute; height: 41px; width: 43px" />
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 468px; top: 382px; position: absolute; text-align: center"></asp:Label>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/Crime-Report.jpg" 
        style="z-index: 1; left: 207px; top: 258px; position: absolute; height: 61px; width: 200px" />
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
</div>
</asp:Content>
