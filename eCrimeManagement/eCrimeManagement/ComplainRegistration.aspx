<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.Master" AutoEventWireup="true" CodeBehind="ComplainRegistration.aspx.cs" Inherits="admin.addnew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div>
    <asp:Label ID="Label21" runat="server" 
        style="z-index: 1; left: 390px; top: 262px; position: absolute" Text="SUBJECT"></asp:Label>
    <asp:Label ID="Label22" runat="server" 
        style="z-index: 1; left: 391px; top: 338px; position: absolute" Text="DATE"></asp:Label>
    <asp:Label ID="Label23" runat="server" 
        style="z-index: 1; left: 392px; top: 372px; position: absolute" Text="TIME"></asp:Label>
    <asp:TextBox ID="txtDate" runat="server" 
        style="z-index: 1; left: 551px; top: 335px; position: absolute; width: 135px;"></asp:TextBox>
    <asp:TextBox ID="txtTime" runat="server" 
        
        style="z-index: 1; left: 549px; top: 369px; position: absolute; width: 136px;"></asp:TextBox>
    <asp:Label ID="Label24" runat="server" 
        style="z-index: 1; left: 391px; top: 407px; position: absolute" Text="STATE"></asp:Label>
    <asp:TextBox ID="txtSubject" runat="server" 
        
        style="z-index: 1; left: 551px; top: 260px; position: absolute; width: 369px" 
            TextMode="MultiLine"></asp:TextBox>
        <asp:DropDownList ID="cmbState" runat="server" 
            
        style="z-index: 1; left: 548px; top: 404px; position: absolute; width: 137px" 
            AutoPostBack="True" onselectedindexchanged="cmbState_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="Label25" runat="server" 
            style="z-index: 1; left: 391px; top: 440px; position: absolute" 
            Text="DISTRICT"></asp:Label>
        <asp:DropDownList ID="cmbDist" runat="server" 
            
        style="z-index: 1; left: 550px; top: 440px; position: absolute; width: 126px" 
            AutoPostBack="True" onselectedindexchanged="cmbDist_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="Label26" runat="server" 
            style="z-index: 1; left: 389px; top: 473px; position: absolute" 
            Text="POLICE STATION"></asp:Label>
        <asp:DropDownList ID="cmbPS" runat="server" 
            
        style="z-index: 1; left: 547px; top: 472px; position: absolute; width: 360px">
        </asp:DropDownList>
        <asp:Label ID="Label27" runat="server" 
            style="z-index: 1; left: 385px; top: 510px; position: absolute" 
            Text="PLACE OF INCIDENT"></asp:Label>
        <asp:TextBox ID="txtPlace" runat="server" 
            
        
        style="z-index: 1; left: 548px; top: 511px; position: absolute; width: 359px" 
            AutoPostBack="True" TextMode="MultiLine"></asp:TextBox>
        <asp:Label ID="Label28" runat="server" 
        style="z-index: 1; left: 390px; top: 581px; position: absolute" 
        Text="DETAILED REPORT"></asp:Label>
    <asp:TextBox ID="txtReport" runat="server" 
        style="z-index: 1; left: 546px; top: 572px; position: absolute; width: 358px; height: 118px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Label ID="Label29" runat="server" 
        style="z-index: 1; left: 388px; top: 719px; position: absolute" 
        Text="SUSPECT NAME(S)"></asp:Label>
    <asp:TextBox ID="txtSuspectName" runat="server" 
        
        style="z-index: 1; left: 543px; top: 717px; position: absolute; width: 357px"></asp:TextBox>
        <asp:Label ID="Label30" runat="server" 
        style="z-index: 1; left: 386px; top: 773px; position: absolute" 
        Text="SUSPECT DETAILS"></asp:Label>
    <asp:TextBox ID="txtSuspectDetail" runat="server" 
        style="z-index: 1; left: 539px; top: 765px; position: absolute; width: 361px" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="btnSubmit" runat="server" ValidationGroup="group1"
        style="z-index: 1; left: 552px; top: 859px; position: absolute; width: 84px; " 
        Text="SUBMIT" onclick="btnSubmit_Click" />
    <asp:Label ID="Label31" runat="server" Font-Names="Angsana New" 
        Font-Size="XX-Large" Font-Underline="True" 
        style="z-index: 1; left: 552px; top: 197px; position: absolute" 
        Text="NEW COMPLAIN"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="group1"
            ControlToValidate="txtSubject" ErrorMessage="*Required" 
            style="z-index: 1; left: 929px; top: 267px; position: absolute; color: #FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="group1"
            ControlToValidate="cmbState" ErrorMessage="*Required" 
            style="z-index: 1; left: 711px; top: 406px; position: absolute; color: #FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="group1" 
            ControlToValidate="cmbDist" ErrorMessage="*Required"
            style="z-index: 1; left: 711px; top: 439px; position: absolute; color: #FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="group1"
            ControlToValidate="cmbPS" ErrorMessage="*Required"
            style="z-index: 1; left: 923px; top: 473px; position: absolute; color: #FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="group1" 
            ErrorMessage="*Required"
            
            style="z-index: 1; left: 703px; top: 336px; position: absolute; color: #FF3300" 
            ControlToValidate="txtDate"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="group1" 
            ControlToValidate="txtPlace" ErrorMessage="*Required"
            style="z-index: 1; left: 920px; top: 513px; position: absolute; color: #FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="group1" 
            ControlToValidate="txtReport" ErrorMessage="*Required"
            style="z-index: 1; left: 911px; top: 583px; position: absolute; height: 20px; width: 72px; color: #FF3300"></asp:RequiredFieldValidator>
        </div>
</asp:Content>

