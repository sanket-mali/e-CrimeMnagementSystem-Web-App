<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CitizenRegistration.aspx.cs" Inherits="eCrimeManagement.CitizenRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
<asp:Label ID="Label2" runat="server" 
        style="top: 219px; left: 302px; position: absolute; height: 23px; width: 69px" 
        Text="NAME" ForeColor="Black"></asp:Label>
        <asp:Label ID="Label3" runat="server" ForeColor="Black" 
        style="z-index: 1; left: 301px; top: 259px; position: absolute" 
        Text="GENDER"></asp:Label>
    <asp:DropDownList ID="cmbSx" runat="server" 
        
        style="z-index: 1; left: 434px; top: 257px; position: absolute; height: 24px; width: 124px">
    </asp:DropDownList>
    <asp:TextBox ID="txtName" runat="server" 
        
        
        style="z-index: 1; left: 435px; top: 220px; position: absolute; width: 371px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 578px; top: 254px; position: absolute; color: #000000; height: 22px;" 
        Text="DATE OF BIRTH"></asp:Label>
    <asp:TextBox ID="txtDOB" runat="server" 
        
        style="z-index: 1; left: 680px; top: 255px; position: absolute; width: 121px;"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 302px; top: 300px; position: absolute; height: 18px; color: #000000;" 
        Text="ADDRESS"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtVote" ErrorMessage="Required Field" ValidationGroup="validgroup1"
        
        style="color: #CC0000; z-index: 1; left: 867px; top: 579px; position: absolute"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtAddr1" runat="server" 
        
        style="z-index: 1; left: 436px; top: 288px; position: absolute; width: 370px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
        ControlToValidate="txtMail" ValidationGroup="validgroup1"  ErrorMessage="Invalid Email Id" 
        style="z-index: 1; left: 969px; top: 533px; position: absolute; color: #CC0000" 
        ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"></asp:RegularExpressionValidator>
    <asp:TextBox ID="txtAddr2" runat="server" 
        
        style="z-index: 1; left: 435px; top: 318px; position: absolute; width: 370px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 303px; top: 352px; position: absolute; color: #000000;" 
        Text="STATE"></asp:Label>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 302px; top: 388px; position: absolute; color: #000000; height: 20px;" 
        Text="DISTRICT"></asp:Label>
    
   
       
    <asp:Label ID="Label8" runat="server" 
        
        style="z-index: 1; left: 303px; top: 421px; position: absolute; color: #000000;" 
        Text="PIN"></asp:Label>
    <asp:TextBox ID="txtPin" runat="server" 
        
        
        
        style="z-index: 1; left: 439px; top: 424px; position: absolute; width: 366px"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 301px; top: 460px; position: absolute; color: #000000;" 
        Text="MOBILE"></asp:Label>
    <asp:TextBox ID="txtMob1" runat="server" 
        
        
        style="z-index: 1; left: 438px; top: 460px; position: absolute; width: 367px"></asp:TextBox>
    <asp:TextBox ID="txtMob2" runat="server" 
        
        
        
        style="z-index: 1; left: 437px; top: 490px; position: absolute; width: 367px"></asp:TextBox>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 302px; top: 534px; position: absolute; color: #000000;" 
        Text="EMAIL"></asp:Label>
    <asp:TextBox ID="txtMail" runat="server" 
        
        
        
        style="z-index: 1; left: 437px; top: 533px; position: absolute; width: 367px"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 301px; top: 582px; position: absolute; color: #000000;" 
        Text="VOTER ID"></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 300px; top: 619px; position: absolute; color: #000000; height: 20px;" 
        Text="PAN CARD NO."></asp:Label>
    <asp:TextBox ID="txtPan" runat="server" 
        
        
        
        
        style="z-index: 1; left: 438px; top: 621px; position: absolute; width: 365px"></asp:TextBox>
    <asp:TextBox ID="txtVote" runat="server" 
        
        
        style="z-index: 1; left: 436px; top: 580px; position: absolute; width: 367px"></asp:TextBox>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 295px; top: 665px; position: absolute; height: 17px; color: #000000;" 
        Text="AADHAR CARD NO."></asp:Label>
    <asp:Label ID="Label15" runat="server" 
        style="z-index: 1; left: 298px; top: 701px; position: absolute; color: #000000;" 
        Text="USER ID"></asp:Label>
    <asp:TextBox ID="txtAadhar" runat="server" 
        
        
        
        
        style="z-index: 1; left: 438px; top: 658px; position: absolute; width: 366px"></asp:TextBox>
    <asp:TextBox ID="txtUser" runat="server" 
        
        style="z-index: 1; left: 436px; top: 699px; position: absolute; width: 159px"></asp:TextBox>
    
    <asp:Label ID="lblUserStat" runat="server" 
        
        style="z-index: 1; left: 976px; top: 701px; position: absolute; height: 17px; width: 149px; color: #CC0000;" 
        Text="Label"></asp:Label>
    <asp:Label ID="hidenPASS" runat="server" 
        style="z-index: 1; left: 353px; top: 755px; position: absolute" Text="Label"></asp:Label>
    <asp:Label ID="lblRef" runat="server" 
        style="z-index: 1; left: 469px; top: 733px; position: absolute; width: 176px; color: #000000;" 
        Text="YOUR REF. ID IS:     "></asp:Label>
   
        <asp:DropDownList ID="DropDownList1" runat="server" 
        
        
        style="z-index: 1; left: 437px; top: 389px; position: absolute; height: 24px; width: 368px; right: 430px;" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="txtUser" ValidationGroup="validgroup1" ErrorMessage="Required Field" 
        
        style="z-index: 1; left: 614px; top: 701px; position: absolute; width: 94px; color: #CC0000;"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="cmbState" runat="server" 
        
        
        style="z-index: 1; left: 436px; top: 352px; position: absolute; height: 26px; width: 368px" 
        AutoPostBack="True" onselectedindexchanged="cmbState_SelectedIndexChanged1">
    </asp:DropDownList>
    <asp:Button ID="btnUserChk" runat="server" ValidationGroup="validgroup1" onclick="btnUserChk_Click" 
        style="z-index: 1; left: 758px; top: 694px; position: absolute; width: 135px; height: 29px" 
        Text="CHECK USER ID " />
    <asp:Button ID="btnRegister" runat="server" onclick="btnRegister_Click" 
        style="z-index: 1; left: 497px; top: 773px; position: absolute; width: 107px" 
        Text="REGISTER" />
    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" 
        Font-Names="Segoe Print" Font-Size="Large" ForeColor="#0066FF" 
        style="z-index: 1; left: 516px; top: 167px; position: absolute; width: 190px" 
        Text="Citizen Registration"></asp:Label>
   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtName" ValidationGroup="validgroup1" ErrorMessage="Required Field" ForeColor="#CC0000" 
        style="z-index: 1; left: 856px; top: 219px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtDOB" ValidationGroup="validgroup1" ErrorMessage="Please type in dd/mm/yyyy format" 
        style="z-index: 1; left: 961px; top: 257px; position: absolute; color: #CC0000; width: 213px;" 
        
        ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtAddr1" ValidationGroup="validgroup1" ErrorMessage="Required Field" 
        style="z-index: 1; left: 856px; top: 294px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtPin" ValidationGroup="validgroup1" ErrorMessage="Required Field" 
        
        style="z-index: 1; left: 858px; top: 427px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtMob1" ValidationGroup="validgroup1" ErrorMessage="Required Field" 
        
        style="z-index: 1; left: 860px; top: 461px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtMail" ValidationGroup="validgroup1" ErrorMessage="Required Field" 
        
        style="z-index: 1; left: 862px; top: 535px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ErrorMessage="Required Field" ValidationGroup="validgroup1" ControlToValidate="txtPan" 
        
        style="z-index: 1; left: 866px; top: 622px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="txtAadhar" ValidationGroup="validgroup1" ErrorMessage="Required Field" 
        
        style="z-index: 1; left: 867px; top: 660px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtDOB" ValidationGroup="validgroup1" ErrorMessage="Required Field" 
        style="z-index: 1; left: 855px; top: 259px; position: absolute; color: #CC0000"></asp:RequiredFieldValidator>
   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
        runat="server" ControlToValidate="txtName" ValidationGroup="validgroup1" ErrorMessage="Invalid Name" 
        style="z-index: 1; left: 959px; top: 220px; position: absolute; color: #CC0000;" 
        ValidationExpression="[a-zA-Z]+[ a-zA-Z-_]*"></asp:RegularExpressionValidator>
   
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="txtPin" ValidationGroup="validgroup1" ErrorMessage="Invalid  Pin Code" 
        style="z-index: 1; left: 963px; top: 428px; position: absolute; color: #CC0000" 
        ValidationExpression="^([0-9]{6})?$"></asp:RegularExpressionValidator>
   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
        runat="server" ControlToValidate="txtMob1" ValidationGroup="validgroup1" ErrorMessage="Invalid Mobile Number" 
        style="z-index: 1; left: 965px; top: 463px; position: absolute; width: 153px; color: #CC0000;" 
        ValidationExpression="^[7-9]\d{9}$"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
        ControlToValidate="txtMob2" ValidationGroup="validgroup1"  ErrorMessage="Invalid Mobile Number" 
        style="z-index: 1; left: 967px; top: 492px; position: absolute; width: 186px; color: #CC0000;" 
        ValidationExpression="^[7-9]\d{9}$"></asp:RegularExpressionValidator>
   
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/back.png" 
            onclick="ImageButton1_Click" 
            style="z-index: 1; left: 187px; top: 151px; position: absolute; height: 49px; width: 50px; right: 834px" />
   
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
