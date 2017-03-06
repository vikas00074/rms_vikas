<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RMS.Default" UICulture="en" Culture="Auto" StylesheetTheme="Default" Theme="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
    <link href="Styles/messages.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .title {
            display: block;
            float: left;
            text-align: left;
            width: auto;
            font-size: large;
            font-family: "Helvetica Neue";
        }

        h1 {
            font-size: 1.6em;
            padding-bottom: 0px;
            margin-bottom: 0px;
        }

        h1, h2, h3, h4, h5, h6 {
            font-size: 1.5em;
            color: #666666;
            font-variant: small-caps;
            text-transform: none;
            font-weight: 200;
            margin-bottom: 0px;
        }

        .style1 {
            font-family: "Helvetica Neue";
            font-size: x-large;
        }

        .style2 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div style="width: 1273px; background-color: #006600; font-family: Cambria; font-size: xx-small; font-weight: bold; color: #FFFFFF; vertical-align: bottom; margin-right: 15mm; margin-left: 15mm; height: 61px;">
            <span class="style1"><span class="style49">
                <asp:Label ID="lblPageTitle" runat="server" Text="RESULT MANAGEMENT PORTAL" meta:resourcekey="lblPageTitle" />
            </span></span>
        </div>
        <br />
        <div style="text-align: center; width: 1382px;">
            <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
        </div>
        <br />
        <br />
        <div align="center" style="width: 550px; height: 221px; margin-left: 400px">
            <table class="style40" style="background-color: #E3EAEB; height: 210px;">
                <tr>
                    <td colspan="2" style="background-color: #006600" align="center" class="style2">
                        <asp:Label ID="lblLogInTitle" Text="Log In" runat="server" meta:resourcekey="lblLogInTitle" Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td class="style47">
                        <asp:Label ID="lblUsername" Text="Username:" runat="server" meta:resourcekey="lblUsername" />
                    </td>
                    <td style="text-align: left" align="center">
                        <asp:TextBox ID="txtUsername" runat="server" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required." ControlToValidate="txtUsername" meta:resourcekey="rfvUsername">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style47">
                        <asp:Label ID="lblPassword" Text="Password:" runat="server" meta:resourcekey="lblPassword" />
                    </td>
                    <td class="style46">
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required." ControlToValidate="txtpassword" meta:resourcekey="rfvPassword">*</asp:RequiredFieldValidator>
                        <asp:LinkButton ID="lnkShowPassword" runat="server" Font-Size="Small" Font-Underline="False" OnClick="showPassword_Click" meta:resourcekey="lnkShowPassword">Show</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="style42" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Text="Log in" OnClick="btnLogin_Click" meta:resourcekey="btnLogin" />
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
