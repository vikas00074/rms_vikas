<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="RMS.Student.New" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    </p>
    <br />
    <table class="style5">
        <tr>
            <td align="center" class="style40" style="vertical-align: top">
                <asp:Panel ID="PanelStudRecord" runat="server">
                    <table bgcolor="#E4E4E4" class="style5">
                        <tr>
                            <td align="center" bgcolor="#006600" class="style17" colspan="8">
                                <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White">New Student Record</asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style152">&nbsp;</td>
                            <td align="left" class="style152">&nbsp;</td>
                            <td align="left" class="style153"></td>
                            <td align="left" class="style152">Surname</td>
                            <td align="left" class="style154">
                                <asp:TextBox ID="txtSurname" runat="server" CssClass="style39" Font-Bold="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSurname" ErrorMessage="Surname is required.">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="left" class="style154"></td>
                            <td align="left" class="style155"></td>
                            <td align="left" class="style156"></td>
                        </tr>
                        <tr>
                            <td align="left" class="style157">First Name</td>
                            <td align="left" class="style157">
                                <asp:TextBox ID="txtFName" runat="server" CssClass="style39"></asp:TextBox>
                            </td>
                            <td align="left" class="style158"></td>
                            <td align="left" class="style157">Middle Name</td>
                            <td align="left" class="style159">
                                <asp:TextBox ID="txtMName" runat="server" CssClass="style39"></asp:TextBox>
                            </td>
                            <td align="left" class="style159"></td>
                            <td align="left" class="style160">Gender</td>
                            <td align="left" class="style159">
                                <asp:DropDownList ID="DropDownListGender" runat="server" CssClass="style39">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>MALE</asp:ListItem>
                                    <asp:ListItem>FEMALE</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style161">Date of Birth</td>
                            <td align="left" class="style161">
                                <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="style39"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender runat="server" TargetControlID="txtDateOfBirth" Format="dd/MM/yyyy" BehaviorID="calDateOfBirth" TodaysDateFormat="dd/MM/yyyy" />
                            </td>
                            <td align="left" class="style162"></td>
                            <td align="left" class="style161">Phone</td>
                            <td align="left" class="style163">
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="style39"></asp:TextBox>
                            </td>
                            <td align="left" class="style163"></td>
                            <td align="left" class="style164">Email</td>
                            <td align="left" class="style12">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="style39"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style165">Program</td>
                            <td align="left" class="style165">
                                <asp:TextBox ID="txtProgram" runat="server" CssClass="style39"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProgram" ErrorMessage="Program is required.">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="left" class="style166"></td>
                            <td align="left" class="style165">Level</td>
                            <td align="left" class="style167">
                                <asp:TextBox ID="txtLevel" runat="server" CssClass="style39"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLevel" ErrorMessage="Level is required.">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="left" class="style167"></td>
                            <td align="left" class="style168">Session</td>
                            <td align="left" class="style167">
                                <asp:TextBox ID="txtSession" runat="server" CssClass="style39"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSession" ErrorMessage="Session is required.">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style137" colspan="8">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style137" colspan="8">
                                <asp:Button ID="btnSave" runat="server" CssClass="style28" Font-Bold="True" Font-Size="Medium" ForeColor="Black" OnClick="btnSave_Click" Style="text-align: center" Text="Save" />
                                <asp:Button ID="btnCancel" runat="server" CssClass="style28" Font-Bold="True" Font-Size="Medium" ForeColor="Black" OnClick="btnCancel_Click" Text="Reset" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
