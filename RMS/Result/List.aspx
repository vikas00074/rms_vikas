<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="RMS.Result.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True"
            Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
        &nbsp;
    </p>
    <br />
    <table class="style147">
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server" Height="722px" Style="margin-left: 0px"
                    Width="1173px">
                    <table class="style147" align="center">
                        <tr>
                            <td class="style169" bgcolor="#006600" colspan="5" style="text-align: center">
                                <strong>Student Record</strong></td>
                        </tr>
                        <tr>
                            <td class="style171" bgcolor="#E4E4E4">Student ID:</td>
                            <td class="style176" bgcolor="#E4E4E4">
                                <asp:TextBox ID="txtStudID" runat="server" Width="190px"></asp:TextBox>
                            </td>
                            <td class="style183" bgcolor="#E4E4E4">
                                <span class="style170"></span></td>
                            <td class="style187" bgcolor="#E4E4E4">Student Name:</span></td>
                            <td class="style183" bgcolor="#E4E4E4">
                                <asp:TextBox ID="txtStudentName" runat="server" Width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style171" bgcolor="#E4E4E4">Program:</td>
                            <td class="style176" bgcolor="#E4E4E4">
                                <asp:TextBox ID="txtStudentProgram" runat="server" Width="190px"></asp:TextBox>
                            </td>
                            <td class="style183" bgcolor="#E4E4E4">
                                <span class="style170"></span></td>
                            <td class="style187" bgcolor="#E4E4E4">Level:</span></td>
                            <td class="style183" bgcolor="#E4E4E4">
                                <asp:TextBox ID="txtStudentLevel" runat="server" Width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style171" bgcolor="#E4E4E4">Session:</td>
                            <td class="style176" bgcolor="#E4E4E4">
                                <asp:TextBox ID="txtSession" runat="server" Width="190px"></asp:TextBox>
                            </td>
                            <td class="style183" bgcolor="#E4E4E4">
                                <span class="style170"></span></td>
                            <td class="style178" bgcolor="#E4E4E4"></td>
                            <td class="style183" bgcolor="#E4E4E4"></span></td>
                        </tr>
                        <tr>
                            <td class="style181" bgcolor="#E4E4E4">
                                <asp:Button ID="btnSearchStud" runat="server" OnClick="btnSearchStud_Click"
                                    Text="Search Student" />
                            </td>
                            <td class="style160" bgcolor="#E4E4E4">
                                <span class="style170"></span></td>
                            <td class="style179" bgcolor="#E4E4E4"></td>
                            <td class="style159" bgcolor="#E4E4E4"></td>
                            <td class="style179" bgcolor="#E4E4E4"></span></td>
                        </tr>
                        <tr>
                            <td class="style156" colspan="5">
                                <asp:Panel ID="PanelStudGrid" runat="server" Height="174px" Visible="False"
                                    Width="561px" ScrollBars="Vertical">
                                    <table class="style14">
                                        <tr>
                                            <td align="left" class="style57">
                                                <asp:LinkButton ID="lnkCancel" runat="server" Font-Underline="True"
                                                    ForeColor="Black" OnClick="lnkCancel_Click">Cancel</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="grdStudent" runat="server" AutoGenerateColumns="False"
                                                    BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                                                    CellPadding="4" EnableSortingAndPagingCallbacks="True" GridLines="Horizontal"
                                                    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Height="16px"
                                                    PageSize="5"
                                                    Style="text-align: justify" Width="345px"
                                                    OnSelectedIndexChanged="grdStudent_SelectedIndexChanged">
                                                    <Columns>
                                                        <asp:BoundField DataField="Student_Id" HeaderText="Student_Id"
                                                            ItemStyle-Width="150">
                                                            <ItemStyle Width="50px" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" />
                                                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" />
                                                        <asp:BoundField DataField="Program" HeaderText="Program" />
                                                        <asp:BoundField DataField="Level" HeaderText="Level" />
                                                        <asp:BoundField DataField="Session" HeaderText="Session" />
                                                        <asp:ButtonField CommandName="Select" ItemStyle-Width="150" Text="Select">
                                                            <ItemStyle Width="50px" />
                                                        </asp:ButtonField>
                                                    </Columns>
                                                    <FooterStyle BackColor="White" ForeColor="#333333" />
                                                    <PagerStyle BackColor="#006600" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="White" ForeColor="#333333" />
                                                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#006600" Font-Bold="True" />
                                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                    <SortedAscendingHeaderStyle BackColor="#487575" />
                                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                    <SortedDescendingHeaderStyle BackColor="#275353" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <asp:Panel ID="Panel4" runat="server" Visible="False">
                        <table align="center" bgcolor="#E4E4E4" class="style2"
                            style="width: 745px; height: 291px; color: #000000;">
                            <tr>
                                <td align="center" bgcolor="#006600" class="style188" colspan="7">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri"
                                        ForeColor="White" Style="font-size: large" Text="View Result"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style195" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style196" style="font-size: small;">Course Code</td>
                                <td align="left" class="style202" style="font-size: small;">Score</td>
                                <td align="left" style="font-size: small;" class="style192">Grade</td>
                                <td align="left" class="style200" style="font-size: small;">Course Code</td>
                                <td align="left" class="style190" style="font-size: small;">Score</td>
                                <td align="left" class="bold" style="font-size: small;">Grade</td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse1" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style203" style="font-size: small;">
                                    <asp:TextBox ID="txtScore1" runat="server" Height="18px" Visible="True"
                                        Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td align="left" class="style198" style="font-size: small;">
                                    <asp:Label ID="DropDownListGrade1" runat="server" Style="font-weight: 700"
                                        Text="Label"></asp:Label>
                                </td>
                                <td align="left" class="style205" style="font-size: small;">
                                    <asp:Label ID="lblCse2" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style204" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore2" runat="server" Height="18px" Visible="True"
                                        Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td align="left" class="style133" style="font-size: small; font-weight: bold;">
                                    <asp:Label ID="DropDownListGrade2" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse3" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style203" style="font-size: small;">
                                    <asp:TextBox ID="txtScore3" runat="server" Height="18px" Visible="True"
                                        Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td align="left" style="font-size: small;" class="style198">
                                    <asp:Label ID="DropDownListGrade3" runat="server" Style="font-weight: 700"
                                        Text="Label"></asp:Label>
                                </td>
                                <td align="left" class="style205" style="font-size: small;">
                                    <asp:Label ID="lblCse4" runat="server"></asp:Label>
                                </td>
                                </span></span>
                            <td align="left" class="style204" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtScore4" runat="server" Height="18px" Visible="True"
                                    Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                            </td>
                                <td align="left" class="style133" style="font-size: small; font-weight: bold;">
                                    <asp:Label ID="DropDownListGrade4" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse5" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style203" style="font-size: small;">
                                    <asp:TextBox ID="txtScore5" runat="server" Height="18px" Visible="True"
                                        Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td align="left" style="font-size: small;" class="style198">
                                    <asp:Label ID="DropDownListGrade5" runat="server" Style="font-weight: 700"
                                        Text="Label"></asp:Label>
                                </td>
                                <td align="left" class="style205" style="font-size: small;">
                                    <asp:Label ID="lblCse6" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style204" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore6" runat="server" Height="18px" Visible="True"
                                        Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:Label ID="DropDownListGrade6" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse7" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style203" style="font-size: small;">
                                    <asp:TextBox ID="txtScore7" runat="server" Height="18px" Visible="True"
                                        Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td align="left" style="font-size: small;" class="style198">
                                    <asp:Label ID="DropDownListGrade7" runat="server" Style="font-weight: 700"
                                        Text="Label"></asp:Label>
                                </td>
                                <td align="left" class="style205" style="font-size: small;">
                                    <asp:Label ID="lblCse8" runat="server"></asp:Label>
                                </td>
                                </span>
                            <td align="left" class="style204" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtScore8" runat="server" Height="18px" Visible="True"
                                    Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                            </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:Label ID="DropDownListGrade8" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse9" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style203" style="font-size: small;">
                                    <asp:TextBox ID="txtScore9" runat="server" Height="18px" Visible="True"
                                        Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td align="left" style="font-size: small;" class="style198">
                                    <asp:Label ID="DropDownListGrade9" runat="server" Style="font-weight: 700"
                                        Text="Label"></asp:Label>
                                </td>
                                <td align="left" class="style205" style="font-size: small;">
                                    <asp:Label ID="lblCse10" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style204" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore10" runat="server" Height="18px" Visible="True"
                                        Width="100px" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:Label ID="DropDownListGrade10" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr class="style151">
                                <td class="style189">&nbsp;</td>
                                <td class="style22" colspan="5">&nbsp;</td>
                                <td class="style22">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="style188" colspan="7">
                                    <asp:Button ID="btnCanc" runat="server" Text="Cancel" Width="76px"
                                        OnClick="btnCanc_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style189">&nbsp;</td>
                                <td class="style151" colspan="5">
                                    <asp:TextBox ID="txtDateUpdated" runat="server" Visible="False" Width="64px"></asp:TextBox>
                                    &nbsp;
                                </td>
                                <td class="style151">&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </asp:Panel>
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
</asp:Content>
