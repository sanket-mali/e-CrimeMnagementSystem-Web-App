<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="citizen_register.aspx.cs" Inherits="citizen_register.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 216px;
        }
    </style>
</head>
<body bgcolor="#99ccff" style="height: 863px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" 
        style="top: 119px; left: 329px; position: absolute; height: 20px; width: 65px" 
        Text="NAME"></asp:Label>
    <asp:TextBox ID="txtName" runat="server" 
        style="top: 121px; left: 492px; position: absolute; height: 22px; width: 340px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtName" ErrorMessage="RequiredField" ForeColor="#FF3300" 
        style="z-index: 1; left: 851px; top: 125px; position: absolute"></asp:RequiredFieldValidator>
    <asp:Label ID="Label6" runat="server" 
        style="top: 33px; left: 492px; position: absolute; height: 19px; width: 302px; font-family: 'Angsana New'; font-size: xx-large; text-decoration: underline" 
        Text="CITIZEN REGISTER"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" 
            style="top: 205px; left: 329px; position: absolute; height: 19px; width: 34px" 
            Text="ADDRESS"></asp:Label>
    </p>
    <asp:TextBox ID="txtAddr1" runat="server" 
        style="top: 205px; left: 492px; position: absolute; height: 22px; width: 338px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" 
        style="top: 362px; left: 338px; position: absolute; height: 19px; width: 34px" 
        Text="PIN"></asp:Label>
    <asp:TextBox ID="txtPin" runat="server" 
        
        style="top: 360px; left: 496px; position: absolute; height: 20px; width: 121px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" 
        style="top: 396px; left: 335px; position: absolute; height: 19px; width: 98px" 
        Text="MOBILE "></asp:Label>
    <asp:TextBox ID="txtMob1" runat="server" 
        
        style="top: 395px; left: 497px; position: absolute; height: 22px; width: 335px"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="top: 459px; left: 335px; position: absolute; height: 19px; width: 73px" 
        Text="E-MAIL"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="txtMail" ErrorMessage="RequiredField" ForeColor="#FF3300" 
        style="z-index: 1; left: 855px; top: 459px; position: absolute"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtMail" runat="server" 
        
        
        
        style="top: 459px; left: 496px; position: absolute; height: 22px; width: 335px; right: 464px;"></asp:TextBox>
    <asp:TextBox ID="txtAddr2" runat="server" 
        style="top: 236px; left: 492px; position: absolute; height: 22px; width: 338px"></asp:TextBox>
    <p>
        &nbsp;</p>
    <asp:Label ID="Label7" runat="server" 
        style="top: 491px; left: 333px; position: absolute; height: 19px; width: 77px" 
        Text="VOTER ID"></asp:Label>
    <asp:TextBox ID="txtVote" runat="server" 
        
        
        style="top: 491px; left: 495px; position: absolute; height: 22px; width: 337px"></asp:TextBox>
    <asp:TextBox ID="txtMob2" runat="server" 
        
        style="top: 427px; left: 497px; position: absolute; height: 22px; width: 335px"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" 
        style="top: 526px; left: 331px; position: absolute; height: 17px; width: 120px" 
        Text="PAN CARD NO."></asp:Label>
    <asp:TextBox ID="txtPan" runat="server" 
        
        
        style="top: 522px; left: 497px; position: absolute; height: 22px; width: 336px"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" 
        style="top: 559px; left: 333px; position: absolute; height: 18px; width: 146px" 
        Text="AADHAR CARD NO."></asp:Label>
    <asp:TextBox ID="txtAadhar" runat="server" 
        
        
        style="top: 555px; left: 496px; position: absolute; height: 22px; width: 335px"></asp:TextBox>
    <p>
        <asp:Button ID="btnRegister" runat="server" 
            style="left: 545px; position: absolute; height: 29px; width: 117px; top: 653px" 
            Text="REGISTER" onclick="btnRegister_Click" />
    </p>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 330px; top: 163px; position: absolute" 
        Text="GENDER"></asp:Label>
    <asp:DropDownList ID="cmbSx" runat="server" 
        style="z-index: 1; left: 493px; top: 161px; position: absolute" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 593px; top: 161px; position: absolute" 
        Text="DATE  OF BIRTH"></asp:Label>
    <asp:TextBox ID="txtDOB" runat="server" 
        style="z-index: 1; left: 716px; top: 161px; position: absolute; width: 114px" 
        TextMode="Date"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtAddr1" ErrorMessage="RequiredField" ForeColor="#FF3300" 
        style="z-index: 1; left: 853px; top: 205px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtPin" ErrorMessage="RequiredField" ForeColor="#FF3300" 
        style="z-index: 1; left: 640px; top: 361px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtMob1" ErrorMessage="RequiredField" ForeColor="#FF3300" 
        style="z-index: 1; left: 855px; top: 396px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="txtVote" ErrorMessage="RequiredField" ForeColor="#FF3300" 
        style="z-index: 1; left: 852px; top: 489px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="txtPan" ErrorMessage="RequiredField" ForeColor="#FF3300" 
        style="z-index: 1; left: 851px; top: 518px; position: absolute"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="txtAadhar" ErrorMessage="RequiredField" ForeColor="#FF3300" 
        style="z-index: 1; left: 851px; top: 550px; position: absolute"></asp:RequiredFieldValidator>
    <p>
        &nbsp;</p>
    <p>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtDOB" ErrorMessage="Please type in dd/mm/yyyy format" 
            style="top: 162px; left: 850px; position: absolute; height: 19px; width: 214px; color: #FF3300" 
            ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$"></asp:RegularExpressionValidator>
    </p>
    <asp:DropDownList ID="cmbState" runat="server" 
        
        style="z-index: 1; left: 495px; top: 283px; position: absolute; width: 138px" 
        AutoPostBack="True" onselectedindexchanged="cmbState_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        
        style="z-index: 1; top: 319px; position: absolute; width: 139px; left: 495px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        AutoPostBack="True">
    </asp:DropDownList>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 336px; top: 284px; position: absolute" Text="STATE"></asp:Label>
    <asp:Label ID="Label13" runat="server" 
        style="z-index: 1; left: 333px; top: 321px; position: absolute; height: 17px" 
        Text="DISTRICT"></asp:Label>
    <p>
        <asp:Button ID="btnUserChk" runat="server" onclick="btnUserChk_Click" 
            style="z-index: 1; left: 740px; top: 591px; position: absolute" 
            Text="CHECK USER ID" />
    </p>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; left: 330px; top: 597px; position: absolute" Text="USER ID"></asp:Label>
    <asp:TextBox ID="txtUser" runat="server" 
        style="z-index: 1; left: 496px; top: 592px; position: absolute; width: 212px"></asp:TextBox>
    <asp:Label ID="lblRef" runat="server" Enabled="False" 
        style="z-index: 1; left: 530px; top: 623px; position: absolute; width: 169px; color: #FF0000" 
        Text="Your REF. ID IS="></asp:Label>
    <asp:Label ID="lblUserStat" runat="server" Enabled="False" 
        style="z-index: 1; left: 919px; top: 594px; position: absolute; color: #003399" 
        Text="Label"></asp:Label>
    <asp:Label ID="hidenPASS" runat="server" 
        style="z-index: 1; left: 331px; top: 650px; position: absolute" Text="Label"></asp:Label>
    </form>
</body>
</html>
