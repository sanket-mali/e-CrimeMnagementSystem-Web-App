<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MAIN.aspx.cs" Inherits="eCrimeManagement.MAIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style19
        {
            width: 205px;
        }
        .style26
        {
            width: 128px;
            height: 33px;
        }
        .style27
        {
            width: 205px;
            height: 33px;
        }
        .style30
        {
            width: 128px;
            height: 35px;
        }
        .style31
        {
            width: 205px;
            height: 35px;
        }
        .style32
        {
            width: 128px;
        }
        .style33
        {
            width: 128px;
            height: 28px;
        }
        .style34
        {
            width: 205px;
            height: 28px;
        }
        .style39
        {
            width: 128px;
            height: 25px;
        }
        .style40
        {
            width: 205px;
            height: 25px;
        }
        .style41
        {
            width: 128px;
            height: 64px;
        }
        .style42
        {
            width: 205px;
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent"><div>

<div>
<asp:Label ID="txtWelcome" runat="server" 
                        
        
        style="z-index: 1; left: 430px; top: 340px; position: absolute; color: #3366CC; text-align: center; font-family: Arial; font-size: medium;"></asp:Label>

    <asp:Label ID="Label14" runat="server" Font-Names="Castellar" 
        ForeColor="#000066" 
        style="z-index: 1; left: 386px; top: 160px; position: absolute; font-weight: 700; text-decoration: underline; width: 76px; height: 15px; right: 833px;" 
        Text="UPDATES"></asp:Label>
    <marquee behavior="scroll" direction="left" scrollamount="5" 
        
        style="height: 26px; width: 684px; top: 137px; margin-left: 276px; margin-top: 0px;">||WELCOME TO eCRIME MANAGEMENT PORTAL|| <asp:Label 
        ID="lblNewStn" runat="server" 
        style="z-index: 1;color: #FF3300;"  Text="LATEST STATIONS::"></asp:Label></marquee>
    </div>
<asp:Label ID="Label13" runat="server" 
            
        style="z-index: 1; left: 848px; top: 694px; position: absolute; color: #000066;" 
        Text="Label"></asp:Label>
    <asp:DropDownList ID="cmbState" runat="server" AutoPostBack="True" 
        onselectedindexchanged="cmbState_SelectedIndexChanged" 
        
        
        
        
        style="z-index: 1; left: 954px; top: 561px; position: absolute; width: 156px">
    </asp:DropDownList>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 841px; top: 491px; position: absolute; font-size: large; text-decoration: underline; font-weight: 700; width: 277px; text-align: center" 
        Text="SEARCH FOR ECM AVAILABLE POLICE STATION"></asp:Label>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 832px; top: 563px; position: absolute" 
        Text="SELECT STATE"></asp:Label>
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 831px; top: 591px; position: absolute" 
        Text="SELECT DISTRICT"></asp:Label>
    <asp:DropDownList ID="cmbDist" runat="server" AutoPostBack="True" 
        onselectedindexchanged="cmbDist_SelectedIndexChanged" 
        
        
        
        
        style="z-index: 1; left: 953px; top: 590px; position: absolute; width: 154px; height: 22px">
    </asp:DropDownList>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 830px; top: 621px; position: absolute" 
        Text="POLICE STATIONS"></asp:Label>
    <asp:DropDownList ID="cmbPS" runat="server" AutoPostBack="True" 
        onselectedindexchanged="cmbPS_SelectedIndexChanged" 
        
        
        
        
        style="z-index: 1; left: 952px; top: 619px; position: absolute; width: 169px">
    </asp:DropDownList>
</div>
    <asp:Panel ID="Panel1" runat="server" Height="682px" Width="193px">
    <asp:Panel ID="Panel3" runat="server" Height="291px" 
        
            style="margin-left: 632px; margin-top: 0px; top: 181px; left: 177px; position: absolute;" Width="332px" 
        BackColor="#99FF99" BorderColor="Red" BorderStyle="Solid">
        
        <table style="width:97%; height: 218px;">
            <tr>
                <td class="style41">
                    </td>
                <td class="style42">
                    <asp:Label ID="Label3" runat="server" 
                        style="font-family: 'Arial Black'; font-size: medium; text-decoration: underline; top: 26px; left: 168px; position: absolute; height: 23px; width: 56px;" 
                        Text="LOGIN" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style39">
                    </td>
                <td class="style40">
                </td>
            </tr>
            <tr>
                <td class="style33">
                    <asp:Label ID="Label5" runat="server" Text="USER TYPE" ForeColor="#003300" 
                        
                        
                        style="font-size: medium; top: 100px; left: 22px; position: absolute; height: 21px; width: 76px;"></asp:Label>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/stopCrime.jpg" 
                        
                        
                        
                        
                        
                        
                        
                        
                        style="z-index: 1; left: -419px; top: 11px; position: absolute; height: 129px; width: 367px" />
                </td>
                <td class="style34">
                    <asp:DropDownList ID="cmbType" runat="server" Height="23px" Width="129px" 
                        onselectedindexchanged="cmbType_SelectedIndexChanged" AutoPostBack="True" 
                        style="top: 67px; left: 147px; position: absolute">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style30">
                    <asp:Label ID="Label2" runat="server" Text="USER ID" ForeColor="#003300" 
                        
                        
                        style="font-size: medium; top: 70px; left: 24px; position: absolute; height: 21px; width: 57px;"></asp:Label>
                </td>
                <td class="style31">
                    <asp:TextBox ID="txtUser" runat="server" 
                        
                        style="margin-left: 1px; top: 97px; left: 146px; position: absolute; height: 22px; width: 165px;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    <asp:Label ID="Label4" runat="server" Text="PASSWORD" ForeColor="#003300" 
                        
                        
                        style="font-size: medium; top: 133px; left: 24px; position: absolute; height: 21px; width: 85px;"></asp:Label>
                    
                </td>
                <td class="style27">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" 
                        
                        style="top: 129px; left: 148px; position: absolute; height: 22px; width: 167px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style32">
                    &nbsp;</td>
                <td class="style19">
                    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" Width="82px" 
                        onclick="Button1_Click" 
                        style="top: 167px; left: 147px; position: absolute; height: 26px" />
                    <asp:Button ID="btnCancel" runat="server" Text="CANCEL" Width="76px" 
                        style="top: 168px; left: 237px; position: absolute; height: 26px" />
                </td>
            </tr>
            <tr>
                <td class="style32">
                    
                </td>
                <td class="style19">
                    <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="Label" 
                        Visible="False" 
                        
                        style="top: 199px; left: 152px; position: absolute; height: 17px; width: 149px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style32">
                    
                    
                </td>
                <td class="style19">
                    
                    
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            style="z-index: 1; left: 97px; top: 235px; position: absolute" 
            Text="FORGOT PASSWORD?
            CLICK HERE"></asp:LinkButton>
        
    </asp:Panel>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 409px; top: 474px; position: absolute; color: #FF0000;" 
            Text="Label"></asp:Label>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Image/buttonREGISTERblue250.png" onclick="ImageButton1_Click2" 
            
            
            
            
            style="z-index: 1; left: 182px; top: 165px; position: absolute; height: 75px; width: 188px" />
        
        <div style="margin-top: 57px">
            <marquee direction=up bgcolor=#6699FF scrolldelay= 190 onmouseover="this.stop()" 
            onmouseout="this.start()" 
                
                style="border-style: solid; border-color: inherit; border-width: medium; height: 387px; margin-top: 0px; width: 169px; top: 392px; left: 187px; position: absolute;"
                BorderColor="Red">
<center><b style="color:white"><u>LATEST NEWS</u></b></center><br /><asp:Label ID="Label7" runat="server" 
                        style="z-index: 1;color: #000066;text-align: center " Text="Label"></asp:Label><asp:Label ID="Label8" runat="server" 
                        style="z-index: 1;color: #000066;text-align: center" Text="Label"></asp:Label></marquee><asp:Image 
                ID="Image2" runat="server" ImageUrl="~/Image/Crime-Report.jpg" 
                style="z-index: 1; left: 481px; top: 715px; position: absolute; height: 106px; width: 279px" />
        </div>
&nbsp;</asp:Panel>
</asp:Content>

