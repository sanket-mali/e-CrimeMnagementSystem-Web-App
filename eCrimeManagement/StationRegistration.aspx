<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StationRegistration.aspx.cs" Inherits="eCrimeManagement.StationRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label3" runat="server" 
    style="z-index: 1; left: 456px; top: 156px; position: absolute; font-weight: 700; text-decoration: underline; font-family: 'Arial Unicode MS'; font-size: x-large" 
    Text="STATION REGISTRATION"></asp:Label>
<div>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 384px; top: 240px; position: absolute; height: 19px" 
        Text="STATION ID"></asp:Label>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 382px; top: 273px; position: absolute" 
        Text="STATION NAME"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 383px; top: 304px; position: absolute" 
        Text="IN-CHARGE ID"></asp:Label>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 383px; top: 333px; position: absolute; bottom: 340px" 
        Text="IN-CHARGE NAME"></asp:Label>
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 384px; top: 361px; position: absolute" 
        Text="IN-CHARGE PHONE NO."></asp:Label>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 384px; top: 393px; position: absolute" 
        Text="ADDRESS"></asp:Label>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 385px; top: 434px; position: absolute; height: 19px; width: 48px;" 
        Text="STATE"></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 384px; top: 464px; position: absolute" 
        Text="DISTRICT"></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 383px; top: 522px; position: absolute" 
        Text="STATION MAIL ID"></asp:Label>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 383px; top: 556px; position: absolute" 
        Text="PHONE NO"></asp:Label>
    <asp:Label ID="Label15" runat="server" 
        style="z-index: 1; left: 383px; top: 651px; position: absolute" 
        Text="USER ID"></asp:Label>
    <asp:Label ID="Label16" runat="server" 
        style="z-index: 1; left: 385px; top: 677px; position: absolute" 
        Text="PASSWORD"></asp:Label>
    <asp:Label ID="Label17" runat="server" 
        style="z-index: 1; left: 383px; top: 707px; position: absolute" 
        Text="RE-TYPE PASSWORD"></asp:Label>
    <asp:Label ID="Label18" runat="server" 
        style="z-index: 1; left: 385px; top: 493px; position: absolute" Text="PIN"></asp:Label>
    <asp:TextBox ID="txtStnID" runat="server" 
        
        style="z-index: 1; left: 584px; top: 239px; position: absolute; width: 229px"></asp:TextBox>
    <asp:TextBox ID="txtStnName" runat="server" 
        
        style="z-index: 1; left: 584px; top: 271px; position: absolute; width: 231px"></asp:TextBox>
    <asp:TextBox ID="txtStnICID" runat="server" 
        
        style="z-index: 1; left: 583px; top: 303px; position: absolute; width: 229px"></asp:TextBox>
    <asp:TextBox ID="txtStnICName" runat="server" 
        
        style="z-index: 1; left: 582px; top: 331px; position: absolute; width: 232px"></asp:TextBox>
    <asp:TextBox ID="txtICPhn" runat="server" 
        
        style="z-index: 1; left: 582px; top: 360px; position: absolute; width: 229px"></asp:TextBox>
    <asp:TextBox ID="txtAdd1" runat="server" 
        
        style="z-index: 1; left: 581px; top: 391px; position: absolute; width: 231px; height: 24px;" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:DropDownList ID="cmbState" runat="server" 
        
        
        style="z-index: 1; left: 581px; top: 435px; position: absolute; height: 20px; width: 192px" 
        AutoPostBack="True" 
        onselectedindexchanged="cmbState_SelectedIndexChanged1">
    </asp:DropDownList>
    <asp:DropDownList ID="cmbDistrict" runat="server" 
        
        
        
        style="z-index: 1; left: 581px; top: 463px; position: absolute; width: 181px; height: 20px" 
        AutoPostBack="True">
    </asp:DropDownList>
    <asp:TextBox ID="txtPin" runat="server" 
        style="z-index: 1; left: 582px; top: 491px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="txtStnMail" runat="server" 
        
        
        style="z-index: 1; left: 581px; top: 521px; position: absolute; width: 236px"></asp:TextBox>
    <asp:TextBox ID="txtPhn1" runat="server" 
        
        
        style="z-index: 1; left: 581px; top: 552px; position: absolute; width: 237px"></asp:TextBox>
    <asp:TextBox ID="txtPhn2" runat="server" 
        
        
        style="z-index: 1; left: 580px; top: 580px; position: absolute; width: 236px; right: 255px;"></asp:TextBox>
    <asp:Button ID="btnGenerate" ValidationGroup="validgroup2" runat="server" 
        style="z-index: 1; left: 566px; top: 607px; position: absolute; width: 165px" 
        Text="GENERATE USER ID" onclick="btnGenerate_Click1" />
    <asp:TextBox ID="txtStnUser" runat="server" 
        
        style="z-index: 1; left: 577px; top: 646px; position: absolute; width: 241px"></asp:TextBox>
    <asp:TextBox ID="txtPass" runat="server" 
        
        style="z-index: 1; left: 576px; top: 677px; position: absolute; width: 240px"></asp:TextBox>
    <asp:TextBox ID="txtPassRe" runat="server" 
        
        style="z-index: 1; left: 577px; top: 708px; position: absolute; width: 238px"></asp:TextBox>
    <asp:Button ID="btnSubmit" ValidationGroup="validgroup3" runat="server" 
        style="z-index: 1; left: 597px; top: 743px; position: absolute" 
        Text="REGISTER" onclick="btnSubmit_Click1" />
    <asp:Button ID="btnCancel" runat="server" 
        style="z-index: 1; left: 731px; top: 743px; position: absolute; right: 280px" 
        Text="Cancel" />
    <asp:RequiredFieldValidator ValidationGroup="validgroup2" 
        ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtStnID"   ErrorMessage="Required Field" 
        
        style="z-index: 1; left: 835px; top: 240px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        ValidationGroup="validgroup2" runat="server" 
        ErrorMessage="Required Field" 
        
        style="z-index: 1; left: 835px; top: 271px; position: absolute; color: #CC0000" 
        ControlToValidate="txtStnName"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtPass" ValidationGroup="validgroup3" ControlToValidate="txtPassRe" 
        ErrorMessage="Password doesn't matched" 
        
        style="z-index: 1; left: 840px; top: 708px; position: absolute; width: 187px; color: #CC0000"></asp:CompareValidator>
    <asp:Label ID="txtError" runat="server" 
        style="z-index: 1; left: 600px; top: 192px; position: absolute"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtStnICID" ValidationGroup="validgroup2" ErrorMessage="Required Field" 
        style="z-index: 1; left: 837px; top: 303px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtStnICName" ValidationGroup="validgroup2" ErrorMessage="Required Field" 
        style="z-index: 1; left: 838px; top: 332px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtICPhn" ValidationGroup="validgroup2" ErrorMessage="Required Field" 
        style="z-index: 1; left: 840px; top: 363px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtAdd1" ValidationGroup="validgroup2" ErrorMessage="Required Field" 
        style="z-index: 1; left: 840px; top: 398px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="txtPin" ValidationGroup="validgroup2" ErrorMessage="Required Field" 
        style="z-index: 1; left: 842px; top: 490px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="txtStnMail" ValidationGroup="validgroup2" ErrorMessage="Required Field" 
        style="z-index: 1; left: 842px; top: 520px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtPhn1" ValidationGroup="validgroup2" ErrorMessage="Required Field" 
        style="z-index: 1; left: 841px; top: 551px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="txtPass" ValidationGroup="validgroup3" ErrorMessage="Required Field" 
        style="z-index: 1; left: 842px; top: 678px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtStnName" ValidationGroup="validgroup2" ErrorMessage="Invalid Station Name" 
        style="z-index: 1; left: 836px; top: 271px; position: absolute; width: 148px; color: #CC0000" 
        ValidationExpression="[a-zA-Z]+[ a-zA-Z-_]*"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtStnICName" ValidationGroup="validgroup2" ErrorMessage="Invalid Name" 
        style="z-index: 1; left: 839px; top: 329px; position: absolute; color: #CC0000; width: 88px;" 
        ValidationExpression="[a-zA-Z]+[ a-zA-Z-_]*"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtICPhn" ValidationGroup="validgroup2" ErrorMessage="Invalid Phone Number" 
        style="z-index: 1; left: 839px; top: 363px; position: absolute; width: 158px; color: #CC0000" 
        ValidationExpression="^[7-9]\d{9}$"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="txtPin" ValidationGroup="validgroup2" ErrorMessage="Invalid Pin Code" 
        style="z-index: 1; left: 842px; top: 491px; position: absolute; color: #CC0000" 
        ValidationExpression="^([0-9]{6})?$"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
        ControlToValidate="txtStnMail" ValidationGroup="validgroup2" ErrorMessage="Invalid Mail ID" 
        style="z-index: 1; left: 842px; top: 520px; position: absolute; color: #CC0000" 
        ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"></asp:RegularExpressionValidator>
</div>

</asp:Content>
