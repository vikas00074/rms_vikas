<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New_User.aspx.cs" Inherits="RMS.New_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style147 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    </p>
    <br />
    <table class="style147">
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server" Height="348px" Width="1171px">
                    <table align="center" bgcolor="#E4E4E4" class="style2" style="width: 564px; height: 344px; ">
                        <tr>
                            <td align="center" bgcolor="#006600" class="style3" colspan="4">
                                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="White" Style="font-size: large" Text="New User"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style135" style="font-size: small;">Title:</td>
                            <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                <asp:DropDownList ID="DropDownListTitle" runat="server" CssClass="style39">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Mr.</asp:ListItem>
                                    <asp:ListItem>Mrs.</asp:ListItem>
                                    <asp:ListItem>Master</asp:ListItem>
                                    <asp:ListItem>Miss</asp:ListItem>
                                    <asp:ListItem>Ms.</asp:ListItem>
                                    <asp:ListItem>Dr.</asp:ListItem>
                                    <asp:ListItem>Prof.</asp:ListItem>
                                    <asp:ListItem>Engr.</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" class="style26">
                                <span class="style18">Surname:</span></td>
                            <td align="left" class="style16">
                                <asp:TextBox ID="txtSname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSname" ErrorMessage="Surname is required.">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style5">First Name:</td>
                            <td align="left" class="style40">
                                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" class="style26">
                                <span class="style15">Designation:</span></td>
                            <td align="left" class="style16">
                                <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style5">Department:</td>
                            <td align="left" class="style40">
                                <asp:TextBox ID="txtDept" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" class="style26">
                                <span class="style15">Phone:</span></td>
                            <td align="left" class="style16">
                                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style5">Email:</td>
                            <td align="left" class="style40">
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" class="style149">Username:</td>
                            <td align="left" class="style16">
                                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required.">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style5">Password:</td>
                            <td align="left" class="style40">
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password is required.">*</asp:RequiredFieldValidator>
                                <asp:LinkButton ID="showPassword" runat="server" Font-Bold="True" Font-Size="Small" Font-Underline="False" ForeColor="Black" OnClick="showPassword_Click">show</asp:LinkButton>
                            </td>
                            <td align="left" class="style26">
                                <span class="style15">Password:</span></td>
                            <td align="left" class="style16">
                                <asp:TextBox ID="txtpassword1" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password 2 is required.">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtpassword1" ErrorMessage="Password are not equeals.">!</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style5">User Profile:</td>
                            <td align="left" class="style40">
                                <asp:DropDownList ID="txtProfile" runat="server">
                                    <asp:ListItem>Administrator</asp:ListItem>
                                    <asp:ListItem>Default</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" class="style26"></td>
                            <td align="left" class="style16"></td>
                        </tr>
                        <tr class="style148">
                            <td class="style22" colspan="4">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style22" colspan="4">
                                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Style="text-align: center" Text="Save" />
                                <span class="style148">&nbsp; </span>
                                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
