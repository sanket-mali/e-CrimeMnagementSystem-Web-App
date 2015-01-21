<%@ Page Title="" Language="C#" MasterPageFile="~/Station.Master" AutoEventWireup="true" CodeBehind="CitizenThisAuthenticatePS.aspx.cs" Inherits="eCrimeManagement.CitizenThisAuthenticatePS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 509px; top: 148px; position: absolute; width: 163px; height: 19px" 
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
        style="z-index: 1; left: 398px; top: 411px; position: absolute; height: 22px" 
        Text="PHONE NO"></asp:Label>
    <asp:TextBox ID="txtAddr" runat="server" 
        style="z-index: 1; left: 526px; top: 325px; position: absolute; width: 370px; height: 70px" 
        TextMode="MultiLine" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtPhn" runat="server" 
        
        style="z-index: 1; left: 525px; top: 407px; position: absolute; width: 181px" 
        Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtVoterId" runat="server" 
        
        style="z-index: 1; left: 517px; top: 504px; position: absolute; width: 184px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 397px; top: 505px; position: absolute" 
        Text="VOTER ID NO."></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 395px; top: 545px; position: absolute" 
        Text="PAN CARD NO."></asp:Label>
    <asp:TextBox ID="txtPan" runat="server" 
        
        style="z-index: 1; left: 517px; top: 547px; position: absolute; width: 184px" 
        Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtAadhar" runat="server" 
        
        style="z-index: 1; left: 515px; top: 592px; position: absolute; width: 187px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 397px; top: 580px; position: absolute; height: 45px; width: 95px" 
        Text="AADHAR CARD NO."></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 394px; top: 636px; position: absolute" 
            Text="PASSWORD"></asp:Label>
    <asp:TextBox ID="txtPassW" runat="server" 
        
        style="z-index: 1; left: 516px; top: 634px; position: absolute; width: 184px" 
        Enabled="False"></asp:TextBox>
    <asp:Button ID="btnOk" runat="server" 
        style="z-index: 1; left: 568px; top: 704px; position: absolute" Text="OK" 
        onclick="btnOk_Click" />
        <asp:Button ID="btnAuth" runat="server" 
            style="z-index: 1; left: 414px; top: 703px; position: absolute; width: 130px" 
            Text="AUTHENTICATE" onclick="btnAuth_Click" />
        <asp:Button ID="btnReject" runat="server" 
            style="z-index: 1; left: 630px; top: 704px; position: absolute" 
            Text="REJECT" onclick="btnReject_Click" />
        <asp:Label ID="lblSta1" runat="server" 
            style="z-index: 1; left: 390px; top: 672px; position: absolute" 
            Text="AUTHENTICATION STATUS"></asp:Label>
        <asp:Label ID="lblSta" runat="server" 
            style="z-index: 1; left: 631px; top: 672px; position: absolute"></asp:Label>
        <asp:Label ID="Label14" runat="server" 
            style="z-index: 1; left: 399px; top: 456px; position: absolute" Text="MAIL ID"></asp:Label>
        <asp:TextBox ID="txtMail" runat="server" 
            style="z-index: 1; left: 519px; top: 454px; position: absolute; width: 187px"></asp:TextBox>
</div>
</asp:Content>
