<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="complaint form.aspx.cs" Inherits="complient.complient_form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#99ccff">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label17" runat="server" 
            style="z-index: 1; left: 447px; top: 15px; position: absolute; font-size: xx-large; font-family: 'Angsana New'; text-decoration: underline;" 
            Text="FIR DETAILS"></asp:Label>
    
    </div>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtComplain" ErrorMessage="RequiredField" 
            ForeColor="#FF3300" 
            style="z-index: 1; left: 782px; top: 88px; position: absolute"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" 
            style="top: 118px; left: 258px; position: absolute; height: 19px; width: 34px; " 
            Text="SUBJECT"></asp:Label>
        <asp:DropDownList ID="cmbDist" runat="server" 
            style="z-index: 1; left: 649px; top: 173px; position: absolute; width: 84px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" 
            style="top: 145px; left: 523px; position: absolute; height: 19px; width: 34px" 
            Text="TIME"></asp:Label>
        <asp:Label ID="Label10" runat="server" 
            style="top: 251px; left: 254px; position: absolute; height: 21px; width: 163px" 
            Text="PLACE OF INCIDENT"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtSubject" ErrorMessage="RequiredField" ForeColor="#FF3300" 
            style="z-index: 1; left: 784px; top: 118px; position: absolute"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" 
            style="top: 87px; left: 259px; position: absolute; height: 17px; width: 108px" 
            Text="COMPLAIN ID"></asp:Label>
        <asp:Label ID="Label18" runat="server" 
            style="z-index: 1; left: 255px; top: 175px; position: absolute" Text="STATE"></asp:Label>
        <asp:Label ID="Label19" runat="server" 
            style="z-index: 1; left: 553px; top: 175px; position: absolute; height: 17px" 
            Text="DISTRICT"></asp:Label>
        <asp:DropDownList ID="cmbPs" runat="server" 
            style="z-index: 1; left: 444px; top: 208px; position: absolute; width: 297px">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="cmbState" ErrorMessage="RequiredField" ForeColor="#FF3300" 
            style="z-index: 1; left: 783px; top: 173px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="cmbDist" ErrorMessage="RequiredField" ForeColor="#FF3300" 
            style="z-index: 1; left: 783px; top: 173px; position: absolute"></asp:RequiredFieldValidator>
        <asp:DropDownList ID="cmbState" runat="server" 
            style="z-index: 1; left: 443px; top: 175px; position: absolute; width: 83px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtPlace" ErrorMessage="RequiredField" ForeColor="#FF3300" 
            style="z-index: 1; left: 777px; top: 247px; position: absolute"></asp:RequiredFieldValidator>
        <asp:Label ID="Label20" runat="server" 
            style="z-index: 1; left: 255px; top: 207px; position: absolute" 
            Text="POLICE STATION"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="cmbPs" ErrorMessage="RequiredField" ForeColor="#FF3300" 
            style="z-index: 1; left: 782px; top: 208px; position: absolute"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label15" runat="server" 
            style="top: 148px; left: 260px; position: absolute; height: 16px; width: 34px" 
            Text="DATE"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtReport" ErrorMessage="RequiredField" ForeColor="#FF3300" 
            style="z-index: 1; left: 779px; top: 286px; position: absolute"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" 
            
            
            style="top: 288px; left: 253px; position: absolute; height: 22px; width: 161px; bottom: 283px">DETAILED REPORT</asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtReport" runat="server" 
            
            style="top: 285px; left: 445px; position: absolute; height: 137px; width: 301px" 
            TextMode="MultiLine"></asp:TextBox>
    </p>
    <asp:Label ID="Label13" runat="server" 
        style="top: 474px; left: 256px; position: absolute; height: 19px; width: 163px" 
        Text="SUSPECT NAME(S)"></asp:Label>
    <p>
        <asp:TextBox ID="txtSuspectName" runat="server" 
            
            style="top: 471px; left: 445px; position: absolute; height: 34px; width: 298px" 
            TextMode="MultiLine"></asp:TextBox>
    </p>
    <asp:Label ID="Label14" runat="server" 
        
        
        style="top: 474px; left: 760px; position: absolute; height: 23px; width: 58px">if any</asp:Label>
    <p>
        <asp:TextBox ID="txtSubject" runat="server" 
            
            
            style="top: 118px; left: 444px; position: absolute; height: 22px; width: 302px"></asp:TextBox>
        <asp:TextBox ID="txtPlace" runat="server" 
            
            
            style="top: 250px; left: 445px; position: absolute; height: 22px; width: 303px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtComplain" runat="server" 
            
            
            style="top: 86px; left: 444px; position: absolute; height: 22px; width: 301px; margin-bottom: 0px"></asp:TextBox>
        <asp:Label ID="Label16" runat="server" 
            style="z-index: 1; left: 257px; top: 518px; position: absolute; right: 712px" 
            Text="SUSPECT DETAILS"></asp:Label>
        <asp:TextBox ID="txtSuspectdetails" runat="server" 
            style="z-index: 1; left: 444px; top: 516px; position: absolute; width: 296px" 
            TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" 
            style="top: 591px; left: 444px; position: absolute; height: 31px; width: 90px" 
            Text="SUBMIT" />
    </p>
    </form>
</body>
</html>
