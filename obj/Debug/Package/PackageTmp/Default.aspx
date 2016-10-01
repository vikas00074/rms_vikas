<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RMS.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .title
{
    display: block;
    float: left;
    text-align: left;
    width: auto;
            font-size: large;
            font-family: "Helvetica Neue";
        }

h1
{
    font-size: 1.6em;
    padding-bottom: 0px;
    margin-bottom: 0px;
}

h1, h2, h3, h4, h5, h6
{
    font-size: 1.5em;
    color: #666666;
    font-variant: small-caps;
    text-transform: none;
    font-weight: 200;
    margin-bottom: 0px;
}

        .style1
        {
            font-family: "Helvetica Neue";
            font-size: x-large;
        }
        .style2
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form2" runat="server">
    <div style="width: 1273px; background-color: #006600; font-family: Cambria; font-size: xx-small; font-weight: bold; color: #FFFFFF; vertical-align: bottom; margin-right: 15mm; margin-left: 15mm; height: 61px;">
        &nbsp;
        <br />&nbsp;<span class="style1"><span class="style49">RESULT MANAGEMENT PORTAL</span></span></span></div>
    <br />
    
    <div style="text-align: center; width: 1382px;">
            <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" 
            Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    </div>
    <br />
    <br />
    <div align="center" style="width: 550px; height: 221px; margin-left: 400px">
    <table bgcolor="#E3EAEB" bordercolor="#003366" 
        class="style40" style="background-color: #E3EAEB; height: 210px;">
        <tr>
            <td colspan="2" style="background-color: #006600" 
                align="center" class="style2">
                <strong>Log In</strong></td>
        </tr>
        <tr>
            <td class="style47">
                Username:</td>
            <td style="text-align: left" align="center">
                <asp:TextBox ID="txtUsername" runat="server" Width="220px" 
                    ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style47">
                Password:</td>
            <td class="style46">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                &nbsp;
                <asp:LinkButton ID="showPassword" runat="server" Font-Size="Small" 
                    Font-Underline="False" onclick="showPassword_Click" >show</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style42" colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnLogin" runat="server" Font-Bold="True" 
                     Text="Log in" Width="100px" onclick="btnLogin_Click" />
            </td>
        </tr>
    </table>
            </div>
    <p>
        <asp:TextBox ID="txtLogUser" runat="server" Visible="False" Width="63px">BeyUser</asp:TextBox>
        <asp:TextBox ID="txtProfile" runat="server" Visible="False" Width="50px">Admin</asp:TextBox>
    </p>
    </form>
    
</body>
</html>
