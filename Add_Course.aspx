<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add_Course.aspx.cs" Inherits="RMS.Add_Course" %>
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
    &nbsp;</p>
<br />
<table class="style147">
    <tr>
        <td>
            <asp:Panel ID="Panel3" runat="server" Height="306px" style="margin-left: 0px" 
                Width="1173px">
                <table align="center" bgcolor="#E4E4E4" class="style2" 
                    style="width: 343px; height: 291px; color: #000000;">
                    <tr>
                        <td align="center" bgcolor="#006600" class="style3" colspan="2">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                ForeColor="White" style="font-size: large" Text="Add Course"></asp:Label>
                        </td>
                    </tr>
                    <tr class="style151">
                        <td class="style134">
                            &nbsp;</td>
                        <td class="style146">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            Course ID:</td>
                        <td align="left" class="style133" 
                            style="font-size: small; font-weight: bold;">
                            <asp:TextBox ID="txtCourseId" runat="server" Width="190px"></asp:TextBox>
                        </td>
                        </span></span>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            Course Title:</td>
                        <td align="left" class="style146" 
                            style="font-size: small; font-weight: bold;">
                            <asp:TextBox ID="txtCourseTitle" runat="server" Width="190px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            Course Level:</td>
                        <td align="left" class="style146" 
                            style="font-size: small; font-weight: bold;">
                            <asp:DropDownList ID="DropDownListLevel" runat="server" CssClass="style39" 
                                Width="190px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                                <asp:ListItem>200</asp:ListItem>
                                <asp:ListItem>300</asp:ListItem>
                                <asp:ListItem>400</asp:ListItem>
                                <asp:ListItem>500</asp:ListItem>
                                <asp:ListItem>600</asp:ListItem>
                                <asp:ListItem>700</asp:ListItem>
                                <asp:ListItem>800</asp:ListItem>
                                <asp:ListItem>900</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        </span>
                    </tr>
                    <tr class="style151">
                        <td class="style22" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style22" colspan="2">
                            <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" 
                                Text="Save" Width="78px" />
                            <span class="style151">&nbsp; </span>
                            <asp:Button ID="btnCanc" runat="server" onclick="btnCanc_Click" Text="Reset" 
                                Width="76px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style151" colspan="2">
                            <asp:TextBox ID="txtDateCreated" runat="server" Visible="False" Width="64px"></asp:TextBox>
                            &nbsp;</td>
                    </tr>
                </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
            <br />
        </td>
    </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
