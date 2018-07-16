<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewRegisteredCourses.aspx.cs" Inherits="RMS.View_Registered_Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    </p>
    <table class="style147">
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server" Width="1173px">
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
                            <td class="style197" bgcolor="#E4E4E4">
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
                            <td class="style197" bgcolor="#E4E4E4">
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
                            <td class="style197" bgcolor="#E4E4E4"></span></td>
                        </tr>
                        <tr>
                            <td class="style181" bgcolor="#E4E4E4">
                                <asp:Button ID="btnSearchStud" runat="server" OnClick="btnSearchStud_Click" Text="Search Student" />
                            </td>
                            <td class="style160" bgcolor="#E4E4E4">
                                <span class="style170"></span></td>
                            <td class="style179" bgcolor="#E4E4E4"></td>
                            <td class="style159" bgcolor="#E4E4E4"></td>
                            <td class="style198" bgcolor="#E4E4E4"></span></td>
                        </tr>
                        <tr>
                            <td class="style156" colspan="5">
                                <asp:Panel ID="PanelStudGrid" runat="server" Height="174px" Visible="False" Width="773px" ScrollBars="Vertical">
                                    <table class="style14">
                                        <tr>
                                            <td align="left" class="style196">
                                                <asp:LinkButton ID="lnkCancel" runat="server" Font-Underline="True" ForeColor="Black" OnClick="lnkCancel_Click">Cancel</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style196">
                                                <asp:GridView ID="grdStudent" runat="server" AutoGenerateColumns="False" EnableSortingAndPagingCallbacks="True"
                                                    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                    PageSize="5"
                                                    OnSelectedIndexChanged="grdStudent_SelectedIndexChanged">
                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="Student_Id" />
                                                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" />
                                                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" />
                                                        <asp:BoundField DataField="Program" HeaderText="Program" />
                                                        <asp:BoundField DataField="Level" HeaderText="Level" />
                                                        <asp:BoundField DataField="Session" HeaderText="Session" />
                                                        <asp:ButtonField CommandName="Select" Text="Select" />
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <br />
    <table class="style199">
        <tr>
            <td class="style202">&nbsp;</td>
            <td class="style201">
                <asp:Panel ID="PanelRegCse" runat="server" ScrollBars="Vertical" Width="1052px">
                    <asp:GridView ID="grdRegCse" runat="server" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                        CellPadding="4" EnableSortingAndPagingCallbacks="True" GridLines="Horizontal"
                        HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Height="16px"
                        OnSelectedIndexChanged="grdStudent_SelectedIndexChanged" PageSize="5"
                        Style="text-align: justify" Width="555px">
                        <Columns>
                            <asp:BoundField DataField="Course_Id1" HeaderText="Course_Id1"
                                ItemStyle-Width="150">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Course_Id2" HeaderText="Course_Id2" />
                            <asp:BoundField DataField="Course_Id3" HeaderText="Course_Id3" />
                            <asp:BoundField DataField="Course_Id4" HeaderText="Course_Id4" />
                            <asp:BoundField DataField="Course_Id5" HeaderText="Course_Id5" />
                            <asp:BoundField DataField="Course_Id6" HeaderText="Course_Id6" />
                            <asp:BoundField DataField="Course_Id7" HeaderText="Course_Id7" />
                            <asp:BoundField DataField="Course_Id8" HeaderText="Course_Id8" />
                            <asp:BoundField DataField="Course_Id9" HeaderText="Course_Id9" />
                            <asp:BoundField DataField="Course_Id10" HeaderText="Course_Id10" />
                            <asp:ButtonField CommandName="Select" ItemStyle-Width="150" Text=".">
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
                    <br />
                </asp:Panel>
            </td>
            <td class="style200">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
