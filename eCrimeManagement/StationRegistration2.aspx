<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StationRegistration2.aspx.cs" Inherits="eCrimeManagement.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 804px;
            width: 1012px;
        }
    </style>
</head>
<body style="height: 797px">
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtStnID" runat="server" 
            
            style="top: 107px; left: 499px; position: absolute; height: 23px; width: 276px"></asp:TextBox>
    
    </div>
    <p>
        <asp:Label ID="Label1" runat="server" 
            style="top: 113px; left: 280px; position: absolute; height: 19px; width: 112px" 
            Text="STATION ID"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="font-family: 'Angsana New'; font-size: xx-large; top: 26px; left: 451px; position: absolute; height: 43px; width: 320px; text-decoration: underline; font-weight: 700" 
            Text="STATION REGISTRATION"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" 
            style="top: 148px; left: 281px; position: absolute; height: 19px; width: 122px" 
            Text="STATION NAME"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtStnID" ErrorMessage="Field Reqiured" 
            
            style="z-index: 1; left: 790px; top: 111px; position: absolute; color: #FF3300; bottom: 720px;"></asp:RequiredFieldValidator>
        <asp:Label ID="txtError" runat="server" 
            style="z-index: 1; left: 515px; top: 70px; position: absolute"></asp:Label>
    </p>
    <asp:TextBox ID="txtStnName" runat="server" 
        
        style="top: 143px; left: 500px; position: absolute; height: 23px; width: 274px"></asp:TextBox>
    <asp:TextBox ID="txtStnICID" runat="server" 
        
        style="top: 181px; left: 500px; position: absolute; height: 22px; width: 274px"></asp:TextBox>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtStnName" ErrorMessage="RequiredFieldValidator" 
            style="z-index: 1; left: 788px; top: 142px; position: absolute; color: #FF3300">Field Required</asp:RequiredFieldValidator>
    </p>
    <asp:Label ID="Label5" runat="server" 
        style="top: 184px; left: 279px; position: absolute; height: 19px; width: 191px" 
        Text="STATION-IN-CHARGE ID"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="top: 226px; left: 278px; position: absolute; height: 19px; width: 209px" 
        Text="STATION-IN-CHARGE NAME"></asp:Label>
    <p>
        &nbsp;</p>
    <asp:TextBox ID="txtStnICName" runat="server" 
        
        style="top: 223px; left: 500px; position: absolute; height: 22px; width: 275px"></asp:TextBox>
    <p>
        <asp:Label ID="Label11" runat="server" 
            style="top: 265px; left: 281px; position: absolute; height: 19px; width: 171px" 
            Text="IN-CHARGE PHONE NO"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtICPhn" runat="server" 
            
            style="top: 262px; left: 501px; position: absolute; height: 22px; width: 274px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" 
            style="top: 302px; left: 282px; position: absolute; height: 19px; width: 117px" 
            Text="ADDRESS LINE"></asp:Label>
    </p>
    <asp:Label ID="Label6" runat="server" 
        style="top: 406px; left: 283px; position: absolute; height: 19px; width: 73px" 
        Text="PIN CODE"></asp:Label>
    <asp:TextBox ID="txtPin" runat="server" 
        
        
        style="top: 406px; left: 499px; position: absolute; height: 22px; width: 273px"></asp:TextBox>
    <asp:TextBox ID="txtAdd1" runat="server" 
        
        
        style="top: 295px; left: 502px; position: absolute; height: 22px; width: 273px"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" 
        style="top: 472px; left: 282px; position: absolute; height: 19px; width: 155px" 
        Text="STATION MAIL ID"></asp:Label>
    <p>
        <asp:Label ID="Label10" runat="server" 
            style="left: 284px; position: absolute; height: 19px; width: 123px; top: 508px" 
            Text="PHONE NUMBER"></asp:Label>
    </p>
    <asp:TextBox ID="txtStnMail" runat="server" 
        
        
        style="top: 468px; left: 500px; position: absolute; height: 22px; width: 273px"></asp:TextBox>
    <asp:TextBox ID="txtPhn1" runat="server" 
        
        
        style="top: 504px; left: 499px; position: absolute; height: 22px; width: 274px"></asp:TextBox>
        <br />
        <asp:Label ID="Label15" runat="server" 
        style="z-index: 1; left: 283px; top: 337px; position: absolute" Text="STATE"></asp:Label>
        <br />
    <asp:DropDownList ID="cmbState" runat="server" 
        
        style="z-index: 1; left: 502px; top: 335px; position: absolute; width: 206px" 
        onselectedindexchanged="cmbState_SelectedIndexChanged" AutoPostBack="True">
    </asp:DropDownList>
    <asp:DropDownList ID="cmbDistrict" runat="server" 
        
        style="z-index: 1; left: 502px; top: 368px; position: absolute; width: 217px" 
        AutoPostBack="True">
    </asp:DropDownList>
    <p>
        <asp:Label ID="Label12" runat="server" 
            style="top: 635px; left: 297px; position: absolute; height: 19px; width: 59px" 
            Text="USER ID"></asp:Label>
        <asp:Label ID="Label16" runat="server" 
            style="z-index: 1; left: 281px; top: 372px; position: absolute" Text="DISTRICT"></asp:Label>
    </p>
    <asp:TextBox ID="txtStnUser" runat="server" 
        
        
        style="top: 634px; left: 499px; position: absolute; height: 22px; width: 276px"></asp:TextBox>
    <asp:TextBox ID="txtPass" runat="server" 
        
        
        style="top: 665px; left: 498px; position: absolute; height: 22px; width: 275px"></asp:TextBox>
    <asp:TextBox ID="txtPassRe" runat="server" 
        
        
        
        style="top: 700px; left: 499px; position: absolute; height: 22px; width: 273px"></asp:TextBox>
    <p>
        <asp:Label ID="Label13" runat="server" 
            style="top: 666px; left: 299px; position: absolute; height: 19px; width: 86px" 
            Text="PASSWORD"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label14" runat="server" 
            style="top: 703px; left: 296px; position: absolute; height: 19px; width: 156px" 
            Text="ReENTER PASSWORD"></asp:Label>
    </p>
    <asp:Button ID="btnCancel" runat="server" 
        style="top: 753px; left: 633px; position: absolute; height: 26px; width: 78px" 
        Text="CANCEL" />
    <asp:TextBox ID="txtPhn2" runat="server" 
        
        
        style="top: 538px; left: 500px; position: absolute; height: 22px; width: 271px"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="btnGenerate" runat="server" onclick="btnGenerate_Click" 
        style="z-index: 1; left: 526px; top: 592px; position: absolute" 
        Text="GENERATE USER ID" />
    <br />
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtPass" ControlToValidate="txtPassRe" 
        
        style="z-index: 1; left: 784px; top: 699px; position: absolute; color: #FF3300; width: 198px; bottom: 114px;" 
        ErrorMessage="Password doesn&amp;#39;t matched"></asp:CompareValidator>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" 
        style="top: 755px; left: 480px; position: absolute; height: 26px; width: 111px" 
        Text="SUBMIT" onclick="btnSubmit_Click" />
    <br />
    <br />
    <br />
    </form>
</body>
</html>
