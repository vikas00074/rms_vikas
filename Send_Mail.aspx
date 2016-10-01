<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Send_Mail.aspx.cs" Inherits="RMS.Send_Mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style3
        {
            width: 622px;
            height: 25px;
        }
        .style5
        {
            width: 273px;
            height: 74px;
        }
        .style6
        {
            width: 559px;
            height: 74px;
            text-align: center;
        }
        .style7
        {
            height: 74px;
            width: 274px;
        }
        .style8
        {
            font-family: "Helvetica Neue";
            font-size: x-large;
            height: 1372px;
            width: 1252px;
        }
        .style44
        {
            font-size: medium;
        }
        .style45
        {
            width: 273px;
            height: 5px;
        }
        .style46
        {
            width: 559px;
            height: 5px;
            text-align: center;
        }
        .style48
        {
            height: 5px;
            width: 274px;
        }
        .style49
        {
            height: 65px;
        }
        .style50
        {
            height: 28px;
            width: 274px;
        }
        .style51
        {
            height: 63px;
        }
        .style52
        {
            height: 60px;
        }
        .style53
        {
            height: 56px;
        }
        .style55
        {
            height: 52px;
        }
        .style56
        {
            height: 51px;
        }
        .style57
        {
            height: 28px;
        }
        .style58
        {
            height: 18px;
        }
        .style59
        {
            height: 18px;
            width: 274px;
        }
        .style60
        {
            height: 17px;
        }
        .style61
        {
            height: 25px;
            width: 274px;
        }
        .style62
        {
            height: 17px;
            width: 274px;
        }
        .style63
        {
            height: 9px;
        }
        .style64
        {
            height: 218px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <br />
    <table class="style8">
        <tr>
            <td class="style45">
            </td>
            <td class="style46" style="vertical-align: top">
                <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" 
                    Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
                <br />
                <div style="width: 668px">
                    <asp:DropDownList ID="DropDownListGroup" runat="server" CssClass="style56" 
                        Height="23px" style="margin-bottom: 0px" Width="170px">
                        <asp:ListItem>CIT-Users</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Button ID="btnGrpMail" runat="server" 
                        Text="Load Group Mail" onclick="btnGrpMail_Click" />
                </div>
                &nbsp;<asp:Panel ID="Panel4" runat="server" Height="591px" 
                    style="text-align: center" Visible="False" Width="660px">
                    <table bgcolor="#E4E4E4" style="height: 555px; width: 663px; font-size: medium">
                        <tr>
                            <td bgcolor="#006600" class="style3" colspan="5" 
                                style="color: #800000; font-weight: 700; font-family: 'Helvetica Neue'">
                                <span class="style52"><span class="style53">
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                    Font-Size="Medium" ForeColor="White" Text="Send Group Email"></asp:Label>
                                </span></span>&nbsp;<span class="style53"><span class="style55"><span 
                                    class="style55"><asp:LinkButton ID="lblReturn" runat="server" 
                                    Font-Bold="True" Font-Size="Small" Font-Underline="False" ForeColor="White" 
                                    PostBackUrl="~/Client_Records.aspx" Visible="False">Return to Client 
                                    Record Screen</asp:LinkButton>
                                </span></span></span>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style57">
                                From:</td>
                            <td align="left" class="style57">
                                <asp:TextBox ID="txtFrom" runat="server" Width="230px">info@gmail.com</asp:TextBox>
                            </td>
                            <td class="style57">
                                *</td>
                            <td class="style57">
                                Name:</td>
                            <td align="left" class="style50">
                                <asp:TextBox ID="txtFromName" runat="server" Width="151px">Admin</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style58">
                                To:</td>
                            <td align="left" class="style58">
                                <asp:TextBox ID="txtTo" runat="server" TextMode="MultiLine" Width="232px"></asp:TextBox>
                                &nbsp;</td>
                            <td class="style58">
                                *</td>
                            <td class="style58">
                                Name:</td>
                            <td align="left" class="style59">
                                <asp:TextBox ID="txtToName" runat="server" Width="151px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style60">
                                Cc:</td>
                            <td align="left" class="style60">
                                <asp:TextBox ID="txtCc" runat="server" Width="230px"></asp:TextBox>
                            </td>
                            <td class="style60">
                                </td>
                            <td class="style60">
                                Name:</td>
                            <td align="left" class="style62">
                                <asp:TextBox ID="txtCcName" runat="server" Width="151px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style63">
                                Subject:</td>
                            <td align="left" class="style63">
                                <asp:TextBox ID="txtSubject" runat="server" Width="230px">RMS Group Mail:</asp:TextBox>
                            </td>
                            <td class="style63">
                                *</td>
                            <td class="style63">
                                </td>
                            <td align="left" class="style63">
                                <asp:TextBox ID="txtClientID" runat="server" Visible="False" Width="151px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style80" colspan="5">
                                <b>Body: </b><span class="bold">*</span></td>
                        </tr>
                        <tr>
                            <td class="style64" colspan="5">
                                <span class="style53">
                                <br class="style55" />
                                </span><span class="style55"><span class="style55">
                                <asp:TextBox ID="txtBody" runat="server" Height="269px" TextMode="MultiLine" 
                                    Width="588px">








Sent from Result Management Portal</asp:TextBox>
                                </span></span><span class="style52">
                                <br />
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style66" colspan="5">
                                <span class="style55">&nbsp;<asp:Button ID="btnSendMail" runat="server" 
                                    Text="Send Group Mail" onclick="btnSendMail_Click" />
                                </span>&nbsp;<span class="style55"><asp:Button ID="btnCancel" runat="server" 
                                    Text="Cancel" Width="69px" onclick="btnCancel_Click" />
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="style51" colspan="5">
                                <asp:TextBox ID="txtDateEmail" runat="server" style="text-align: right" 
                                    Visible="False" Width="100px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </asp:Panel>
            </td>
            <td class="style48">
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
            </td>
            <td class="style6" style="vertical-align: top">
                <br />
                <asp:Panel ID="Panel5" runat="server" Height="214px" style="text-align: center" 
                    Visible="False" Width="409px">
                    <table class="style44">
                        <tr>
                            <td bgcolor="#999966" class="style81" colspan="2">
                                Email Account Setup</td>
                        </tr>
                        <tr>
                            <td align="left" bgcolor="#999966" class="style82">
                                Host:</td>
                            <td class="style61">
                                <asp:TextBox ID="txtHost" runat="server" Width="290px">smtp.gmail.com</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" bgcolor="#999966" class="style82">
                                Port:</td>
                            <td class="style61">
                                <asp:TextBox ID="txtPort" runat="server" Width="290px">587</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" bgcolor="#999966" class="style82">
                                Email:</td>
                            <td class="style61">
                                <asp:TextBox ID="txtCred1" runat="server" Width="290px">info@gmail.com</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" bgcolor="#999966" class="style82">
                                Password:
                            </td>
                            <td class="style61">
                                <asp:TextBox ID="txtCred2" runat="server" TextMode="Password" Width="290px">***</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" bgcolor="#999966" class="style82">
                                Enable SSL:</td>
                            <td class="style61">
                                <asp:TextBox ID="txtSSL" runat="server" Height="23px" Width="290px">true</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" bgcolor="#999966" class="style81" colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </asp:Panel>
            </td>
            <td align="center" class="style7">
            </td>
        </tr>
    </table>
   <br />
   <br />
   <br />
</asp:Content>
