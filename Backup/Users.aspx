<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="RMS.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style147
        {
            width: 100%;
        }
        .style148
        {
            width: 307px;
        }
        .style149
        {
            width: 543px;
        }
        .style150
        {
            font-weight: normal;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
    <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" 
        Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    &nbsp;</p>
<br />
    <p align="center">
        <asp:TextBox ID="txtSearch" runat="server" BorderStyle="Ridge" 
            Font-Bold="False" Font-Size="X-Large" Height="31px" style="margin-left: 0px" 
            Width="211px"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnSearch" runat="server" Font-Size="Large" 
            onclick="btnSearch_Click" Text="Search User" Width="117px" />
        &nbsp;<asp:TextBox ID="txtProfile0" runat="server" BackColor="Silver" 
            BorderStyle="None" Visible="False" Width="50px">_</asp:TextBox>
</p>
<br />
<table class="style147">
    <tr>
        <td>
            <table class="style147">
                <tr>
                    <td class="style148">
                        &nbsp;</td>
                    <td class="style149">
                        <asp:Panel ID="PanelSearchGrid" runat="server" Height="161px" ScrollBars="Auto" 
                            style="margin-left: 0px" Width="535px">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" 
                                Height="16px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                style="text-align: justify" Width="515px">
                                <RowStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Left" 
                                    VerticalAlign="Top" />
                                <Columns>
                                    <asp:BoundField DataField="User_ID" HeaderText="User_ID" ItemStyle-Width="150">
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Firstname" HeaderText="FirstName" />
                                    <asp:BoundField DataField="Surname" HeaderText="Surname" />
                                    <asp:BoundField DataField="Username" HeaderText="Username" />
                                    <asp:BoundField DataField="User_Profile" HeaderText="User_Profile" />
                                    <asp:ButtonField CommandName="Select" ItemStyle-Width="150" Text="Select">
                                    <ItemStyle Width="50px" />
                                    </asp:ButtonField>
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <PagerStyle BackColor="#006600" ForeColor="#330099" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="#FFFFCC" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            <asp:TextBox ID="txtSysID" runat="server" style="text-align: left" 
                                Visible="False" Width="128px"></asp:TextBox>
                        </asp:Panel>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:Panel ID="Panel3" runat="server" Height="339px" style="margin-left: 0px" 
                Visible="False" Width="1173px">
                <table align="center" bgcolor="#E4E4E4" class="style2" 
                    style="width: 691px; height: 291px; color: #000000;">
                    <tr>
                        <td align="center" bgcolor="#006600" class="style3" colspan="5">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                ForeColor="White" style="font-size: large" Text="Amend User Details"></asp:Label>
                        </td>
                    </tr>
                    <tr class="style151">
                        <td class="style134">
                            &nbsp;</td>
                        <td class="style146" colspan="2">
                            &nbsp;</td>
                        <td class="style143">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            User ID No:</td>
                        <td align="left" class="style133" colspan="2" 
                            style="font-size: small; font-weight: bold;">
                            <asp:TextBox ID="txtID" runat="server" Width="184px"></asp:TextBox>
                        </td>
                        <td align="left" style="font-size: small; ">
                            &nbsp;</td>
                        </span></span>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
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
                        <td align="left" class="style150" style="font-size: small; ">
                            <span class="style18">Surname:</span></td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtSname" runat="server" Width="184px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            First Name:</td>
                        <td align="left" class="style146" colspan="2" 
                            style="font-size: small; font-weight: bold;">
                            <asp:TextBox ID="txtFname" runat="server" Width="184px"></asp:TextBox>
                        </td>
                        <td align="left" class="style150" style="font-size: small; ">
                            <span class="style15">Designation:</span></td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtDesignation" runat="server" Width="184px"></asp:TextBox>
                            </span class="style151"></span>
                        </td>
                        </span>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            Department:</td>
                        <td align="left" class="style146" colspan="2" 
                            style="font-size: small; font-weight: bold;">
                            <asp:TextBox ID="txtDept" runat="server" Width="184px"></asp:TextBox>
                        </td>
                        <td align="left" class="style150" style="font-size: small; ">
                            <span class="style15">Phone:</span></td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtPhone" runat="server" Width="184px"></asp:TextBox>
                            </span class="style151"></span>
                        </td>
                        </span>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            Email:</td>
                        <td align="left" class="style146" colspan="2" 
                            style="font-size: small; font-weight: bold;">
                            <asp:TextBox ID="txtEmail" runat="server" Width="184px"></asp:TextBox>
                            &nbsp;<span class="style150"><asp:LinkButton ID="lnkSendMail" runat="server" 
                                CssClass="style43" Font-Bold="True" Font-Names="Arial" Font-Size="Small" 
                                Font-Underline="False" ForeColor="Black" onclick="lnkSendMail_Click" 
                                style="text-align: left">Send Mail</asp:LinkButton>
                            </span>
                        </td>
                        <td align="left" style="font-size: small; ">
                            Username:</td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtUsername" runat="server" Width="184px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            Password:</td>
                        <td align="left" class="style146" colspan="2" 
                            style="font-size: small; font-weight: bold;">
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
                            &nbsp;<span class="style150"><asp:LinkButton ID="showPassword" runat="server" 
                                Font-Bold="True" Font-Size="Small" Font-Underline="False" ForeColor="Black" 
                                onclick="showPassword_Click" Visible="False">show</asp:LinkButton>
                            </span>
                        </td>
                        <td align="left" class="style150" style="font-size: small; ">
                            <span class="style15">Password:</span></td>
                        <td align="left" class="style16">
                            <asp:TextBox ID="txtpassword1" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
                            </span class="style151"></span>
                        </td>
                        </span>
                    </tr>
                    <tr>
                        <td align="left" style="font-size: small; ">
                            User Profile:</td>
                        <td align="left" class="style146" colspan="2" 
                            style="font-size: small; font-weight: bold;">
                            <asp:DropDownList ID="txtProfile" runat="server">
                                <asp:ListItem>Administrator</asp:ListItem>
                                <asp:ListItem>Default</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="left" class="style144" style="font-size: small; font-weight: bold;">
                            </td>
                        <td align="left" class="style16">
                            </span class="style151"></span>
                        </td>
                        </span>
                    </tr>
                    <tr class="style151">
                        <td class="style22" colspan="3">
                            &nbsp;</td>
                        <td class="style143">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style22" colspan="5">
                            <asp:Button ID="btnUpdate0" runat="server" onclick="btnUpdate_Click" 
                                Text="Save" Width="78px" />
                            <span class="style151">&nbsp; </span>
                            <asp:Button ID="btnCanc" runat="server" onclick="btnCanc_Click" Text="Cancel" 
                                Width="76px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style151" colspan="2">
                            &nbsp;</td>
                        <td class="style22" colspan="2">
                            <asp:TextBox ID="txtAmendDate" runat="server" Visible="False" Width="64px"></asp:TextBox>
                            &nbsp;<asp:TextBox ID="txtRegUser" runat="server" Visible="False" Width="43px"></asp:TextBox>
                        </td>
                        <td class="style150">
                            &nbsp;</td>
                    </tr>
                </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
            <br />
            <asp:Panel ID="PanelEmail" runat="server" Height="545px" 
                style="text-align: center" Visible="False" Width="1171px">
                <table align="center" bgcolor="Black" 
                    style="height: 382px; width: 593px; color: #000000;">
                    <tr>
                        <td bgcolor="#006600" class="style3" colspan="5" 
                            style="color: #800000; font-weight: 700; font-family: 'Helvetica Neue'">
                            <span class="style52"><span class="style53">
                            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                Font-Size="Medium" ForeColor="White" Text="Send Email"></asp:Label>
                            </span></span>&nbsp;<span class="style53"><span class="style55"><span 
                                class="style55"><asp:LinkButton ID="lblReturn" runat="server" 
                                Font-Bold="True" Font-Size="Small" Font-Underline="False" ForeColor="White" 
                                PostBackUrl="~/Client_Records.aspx" Visible="False">Return to Client 
                                    Record Screen</asp:LinkButton>
                            </span></span></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style80">
                            From:</td>
                        <td bgcolor="#E4E4E4" class="style83">
                            <asp:TextBox ID="txtFrom" runat="server" Width="230px">admin@nouncit.com</asp:TextBox>
                        </td>
                        <td bgcolor="#E4E4E4" class="style84">
                            *</td>
                        <td bgcolor="#E4E4E4" class="style79">
                            <asp:TextBox ID="txtFromName" runat="server" Width="151px">NOUN CIT Admin</asp:TextBox>
                        </td>
                        <td bgcolor="#E4E4E4" class="style47">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style80">
                            To:</td>
                        <td bgcolor="#E4E4E4" class="style83">
                            <asp:TextBox ID="txtTo" runat="server" Width="230px"></asp:TextBox>
                        </td>
                        <td bgcolor="#E4E4E4" class="style84">
                            *</td>
                        <td bgcolor="#E4E4E4" class="style79">
                            <asp:TextBox ID="txtToName" runat="server" Width="151px"></asp:TextBox>
                        </td>
                        <td bgcolor="#E4E4E4" class="style47">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style80">
                            Cc:</td>
                        <td bgcolor="#E4E4E4" class="style83">
                            <asp:TextBox ID="txtCc" runat="server" Width="230px"></asp:TextBox>
                        </td>
                        <td bgcolor="#E4E4E4" class="style84">
                            &nbsp;</td>
                        <td bgcolor="#E4E4E4" class="style79">
                            <asp:TextBox ID="txtCcName" runat="server" Width="151px"></asp:TextBox>
                        </td>
                        <td bgcolor="#E4E4E4" class="style47">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style80">
                            Subject:</td>
                        <td bgcolor="#E4E4E4" class="style83">
                            <asp:TextBox ID="txtSubject" runat="server" Width="230px">CIT Internal Mail:</asp:TextBox>
                        </td>
                        <td bgcolor="#E4E4E4" class="style84">
                            *</td>
                        <td bgcolor="#E4E4E4" class="style79">
                            <asp:TextBox ID="txtClientID" runat="server" Visible="False" Width="151px"></asp:TextBox>
                        </td>
                        <td bgcolor="#E4E4E4" class="style54">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style80" colspan="5">
                            <b>Body: </b><span class="bold">*</span></td>
                    </tr>
                    <tr>
                        <td bgcolor="#E4E4E4" class="style66" colspan="5">
                            <span class="style53">
                                    <br class="style55" />
                                    </span><span class="style55">
                            <asp:TextBox ID="txtBody" runat="server" CssClass="style151" Height="269px" 
                                TextMode="MultiLine" Width="588px"></asp:TextBox>
                            </span><span class="style52">
                                    <br />
                                    </span>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#E4E4E4" class="style66" colspan="5">
                            <span class="style55">
                            <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="Send" 
                                Width="69px" />
                            </span>&nbsp;<span class="style55"><asp:Button ID="btnCancelEmail" runat="server" 
                                onclick="btnCancelEmail_Click" Text="Cancel" Width="69px" />
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#E4E4E4" class="style51" colspan="5">
                            <asp:TextBox ID="txtDateEmail" runat="server" style="text-align: right" 
                                Visible="False" Width="100px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <asp:Panel ID="PanelEmailSetup" runat="server" Height="182px" Visible="False">
                <table align="center" bgcolor="#E4E4E4" class="style120">
                    <tr>
                        <td bgcolor="#E4E4E4" class="style151" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style124">
                            Host:</td>
                        <td align="left" bgcolor="#E4E4E4" class="style125">
                            <table class="style44">
                                <tr>
                                    <td class="style61">
                                        <asp:TextBox ID="txtHost" runat="server" Width="290px">smtp.gmail.com</asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style124">
                            Port:</td>
                        <td align="left" bgcolor="#E4E4E4" class="style125">
                            <asp:TextBox ID="txtPort" runat="server" Width="290px">587</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style124">
                            Email:</td>
                        <td align="left" bgcolor="#E4E4E4" class="style125">
                            <asp:TextBox ID="txtCred1" runat="server" Width="290px">mtadese.scripts@gmail.com</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style124">
                            Password:
                        </td>
                        <td align="left" bgcolor="#E4E4E4" class="style125">
                            <asp:TextBox ID="txtCred2" runat="server" TextMode="Password" Width="290px">tadese15</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#E4E4E4" class="style124">
                            Enable SSL:</td>
                        <td align="left" bgcolor="#E4E4E4" class="style125">
                            <asp:TextBox ID="txtSSL" runat="server" Height="23px" Width="290px">true</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#E4E4E4" class="style151" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
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
