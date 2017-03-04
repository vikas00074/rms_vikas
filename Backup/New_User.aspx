<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New_User.aspx.cs" Inherits="RMS.New_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style147
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
    <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" 
        Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
</p>
<br />
<table class="style147">
    <tr>
        <td>
            <br />
            <asp:Panel ID="Panel3" runat="server" Height="348px" Width="1171px">
                <table align="center" bgcolor="#E4E4E4" class="style2" 
                    style="width: 564px; height: 344px; color: #000000;">
                    <tr>
                        <td align="center" bgcolor="#006600" class="style3" colspan="5">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                ForeColor="White" style="font-size: large" Text="New User"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style41">
                            &nbsp;</td>
                        <td class="style40" colspan="2">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="style6">
                            User ID No:</td>
                        <td align="left" class="style7" colspan="2">
                            <asp:TextBox ID="txtID" runat="server" Width="184px"></asp:TextBox>
                        </td>
                        <td align="left" class="style11">
                            &nbsp;</td>
                        </span>
                        <td align="left" class="style14">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style135" style="font-size: small; ">
                            Title:</td>
                        <td align="left" class="style146" colspan="2" 
                            style="font-size: small; font-weight: bold;">
                            <asp:DropDownList ID="DropDownListTitle" runat="server" CssClass="style39" 
                                Width="92px">
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
                            <asp:TextBox ID="txtSname" runat="server" Width="184px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style5">
                            First Name:</td>
                        <td align="left" class="style40" colspan="2">
                            <asp:TextBox ID="txtFname" runat="server" Width="184px"></asp:TextBox>
                        </td>
                        <td align="left" class="style26">
                            <span class="style15">Designation:</span></td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtDesignation" runat="server" Width="184px"></asp:TextBox>
                            </span class="style148"></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style5">
                            Department:</td>
                        <td align="left" class="style40" colspan="2">
                            <asp:TextBox ID="txtDept" runat="server" Width="184px"></asp:TextBox>
                        </td>
                        <td align="left" class="style26">
                            <span class="style15">Phone:</span></td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtPhone" runat="server" Width="184px"></asp:TextBox>
                            </span class="style148"></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style5">
                            Email:</td>
                        <td align="left" class="style40" colspan="2">
                            <asp:TextBox ID="txtEmail" runat="server" Width="184px"></asp:TextBox>
                        </td>
                        <td align="left" class="style149">
                            Username:</td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtUsername" runat="server" Width="184px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style5">
                            Password:</td>
                        <td align="left" class="style40" colspan="2">
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
                            &nbsp;<asp:LinkButton ID="showPassword" runat="server" Font-Bold="True" 
                                Font-Size="Small" Font-Underline="False" ForeColor="Black" 
                                onclick="showPassword_Click">show</asp:LinkButton>
                        </td>
                        <td align="left" class="style26">
                            <span class="style15">Password:</span></td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtpassword1" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
                            </span class="style148"></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style5">
                            User Profile:</td>
                        <td align="left" class="style40" colspan="2">
                            <asp:DropDownList ID="txtProfile" runat="server">
                                <asp:ListItem>Administrator</asp:ListItem>
                                <asp:ListItem>Default</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="left" class="style26">
                            </td>
                        <td align="left" class="style16">
                            </span class="style148"></span>
                        </td>
                    </tr>
                    <tr class="style148">
                        <td class="style22" colspan="3">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style22" colspan="5">
                            <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" 
                                style="text-align: center" Text="Save" Width="90px" />
                            <span class="style148">&nbsp; </span>
                            <asp:Button ID="btnReset" runat="server" onclick="btnReset_Click" Text="Reset" 
                                Width="88px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style57" colspan="2">
                        </td>
                        <td class="style57" colspan="2">
                            <asp:TextBox ID="txtDateCreated" runat="server" Visible="False" Width="64px"></asp:TextBox>
                            &nbsp;<asp:TextBox ID="txtRegUser" runat="server" Visible="False" Width="43px"></asp:TextBox>
                        </td>
                        <td class="style58">
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </asp:Panel>
            <br />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
<br />
    <br />
    <br />
    <br />
</asp:Content>
