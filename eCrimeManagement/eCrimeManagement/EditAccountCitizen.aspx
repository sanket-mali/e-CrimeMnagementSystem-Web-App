<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.Master" AutoEventWireup="true" CodeBehind="EditAccountCitizen.aspx.cs" Inherits="eCrimeManagement.EditAccountCitizen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 509px; top: 148px; position: absolute; width: 239px; height: 26px; text-decoration: underline; font-size: x-large;" 
        Text="EDIT ACCOUNT"></asp:Label>
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
        
        style="z-index: 1; left: 524px; top: 445px; position: absolute; width: 184px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 398px; top: 450px; position: absolute" 
        Text="VOTER ID NO."></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 398px; top: 487px; position: absolute" 
        Text="PAN CARD NO."></asp:Label>
    <asp:TextBox ID="txtPan" runat="server" 
        
        style="z-index: 1; left: 523px; top: 485px; position: absolute; width: 184px" 
        Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtAadhar" runat="server" 
        
        style="z-index: 1; left: 521px; top: 530px; position: absolute; width: 187px" 
        Enabled="False"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 399px; top: 522px; position: absolute; height: 45px; width: 95px" 
        Text="AADHAR CARD NO."></asp:Label>
    <asp:Button ID="btnOk" runat="server" 
        style="z-index: 1; left: 531px; top: 572px; position: absolute" Text="OK" 
        onclick="btnOk_Click" />
    <asp:Button ID="btnChng" runat="server" onclick="btnChng_Click" 
        style="z-index: 1; left: 609px; top: 572px; position: absolute; width: 164px" 
        Text="CHANGE PASSWORD" />
    <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 421px; top: 669px; position: absolute; height: 165px; width: 503px">
        <asp:Button ID="Button6" runat="server" ValidationGroup="group1"
    style="z-index: 1; left: 187px; top: 134px; position: absolute" Text="UPDATE" 
            onclick="Button6_Click" />
        <asp:TextBox ID="txtPASS" runat="server" 
            style="z-index: 1; left: 166px; top: 45px; position: absolute; width: 187px" 
            TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtPassRE" runat="server" 
            style="z-index: 1; left: 166px; top: 75px; position: absolute; width: 189px" 
            TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" 
            style="z-index: 1; left: 8px; top: 46px; position: absolute" Text="PASSWORD"></asp:Label>
        <asp:Label ID="Label16" runat="server" 
            style="z-index: 1; left: 10px; top: 79px; position: absolute" 
            Text="RETYPE PASSWORD"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtPASS" ErrorMessage="REQUIRED" ValidationGroup="group1"
            style="z-index: 1; left: 363px; top: 45px; position: absolute; color: #FF3300"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtPASS" ControlToValidate="txtPassRE" 
            ErrorMessage="PASSWORDS DOESN'T MATCH" ValidationGroup="group1" 
            style="z-index: 1; left: 138px; top: 107px; position: absolute; color: #FF3300"></asp:CompareValidator>
    </asp:Panel>
    <asp:TextBox ID="txtChk" runat="server" 
        style="z-index: 1; left: 600px; top: 609px; position: absolute; width: 174px" 
        TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 373px; top: 612px; position: absolute" 
        Text="TYPE CURRENT PASSWORD"></asp:Label>
    <asp:Button ID="btnChk" runat="server" onclick="btnChk_Click" 
        style="z-index: 1; left: 786px; top: 607px; position: absolute" Text="OK" />
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 566px; top: 640px; position: absolute" 
        Text="ENTER PASSWORD FIRST" Visible="False"></asp:Label>
</div>
</asp:Content>
