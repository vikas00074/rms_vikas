<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Add_Course.aspx.cs" Inherits="RMS.Add_Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
        &nbsp;
    </p>
    <br />
    <asp:Panel ID="Panel3" runat="server">
        <table align="center" bgcolor="#E4E4E4" style="color: #000000;">
            <tr>
                <td bgcolor="#006600" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="White" Style="font-size: large" Text="Add Course"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Course Title:</td>
                <td>
                    <asp:TextBox ID="txtCourseTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Course Level:</td>
                <td>
                    <asp:DropDownList ID="ddlLevel" runat="server">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlLevel" ErrorMessage="Level is required.">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                    &nbsp;<asp:Button ID="btnReset" runat="server" OnClick="btnCanc_Click" Text="Reset" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
