<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View_Courses.aspx.cs" Inherits="RMS.View_Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True"
            Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
        &nbsp;
    </p>
    <p align="center">
        <asp:TextBox ID="txtSearch" runat="server" BorderStyle="Ridge"
            Font-Bold="False" Font-Size="X-Large" Height="31px" Style="margin-left: 0px"
            Width="211px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="btnSearch" runat="server" Font-Size="Large"
            OnClick="btnSearch_Click" Text="Search Course" />
        &nbsp;<asp:TextBox ID="txtProfile" runat="server" BackColor="Silver"
            BorderStyle="None" Visible="False" Width="50px">_</asp:TextBox>
    </p>
    <br />
    <table class="style147">
        <tr>
            <td>
                <table class="style147">
                    <tr>
                        <td class="style148">&nbsp;</td>
                        <td class="style149">
                            <asp:Panel ID="PanelSearchGrid" runat="server" ScrollBars="Auto"
                                Style="margin-left: 0px">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
                                    CellPadding="4" HeaderStyle-BackColor="#3AC0F2" 
                                    HeaderStyle-ForeColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                                    Style="text-align: justify" DataKeyNames="Id" GridLines="Horizontal">
                                    <RowStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Left"
                                        VerticalAlign="Top" />
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Course_ID"
                                            ItemStyle-Width="150" InsertVisible="False" ReadOnly="True">
                                            <ItemStyle Width="50px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Course_Title" HeaderText="Course_Title" />
                                        <asp:BoundField DataField="Course_Level" HeaderText="Course_Level" />
                                        <asp:ButtonField CommandName="Select" ItemStyle-Width="150" Text="Update">
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
                                <asp:TextBox ID="txtCseID" runat="server" Style="text-align: left"
                                    Visible="False" Width="128px"></asp:TextBox>
                            </asp:Panel>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:Panel ID="Panel3" runat="server" Height="306px" Style="margin-left: 0px"
                    Visible="False" Width="1173px">
                    <table align="center" bgcolor="#E4E4E4" class="style2"
                        style="width: 343px; height: 291px; color: #000000;">
                        <tr>
                            <td align="center" bgcolor="#006600" class="style3" colspan="2">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri"
                                    ForeColor="White" Style="font-size: large" Text="Update Course Details"></asp:Label>
                            </td>
                        </tr>
                        <tr class="style151">
                            <td class="style134">&nbsp;</td>
                            <td class="style146">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="font-size: small;">Course ID:</td>
                            <td align="left" class="style133"
                                style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtCourseId" runat="server" Width="190px"></asp:TextBox>
                            </td>
                            </span></span>
                        </tr>
                        <tr>
                            <td align="left" style="font-size: small;">Course Title:</td>
                            <td align="left" class="style146"
                                style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtCourseTitle" runat="server" Width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-size: small;">Course Level:</td>
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
                            <td class="style22" colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style22" colspan="2">
                                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click"
                                    Text="Save" Width="78px" />
                                <span class="style151">&nbsp; </span>
                                <asp:Button ID="btnCanc" runat="server" OnClick="btnCanc_Click" Text="Cancel"
                                    Width="76px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style151" colspan="2">
                                <asp:TextBox ID="txtDateUpdated" runat="server" Visible="False" Width="64px"></asp:TextBox>
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
</asp:Content>
