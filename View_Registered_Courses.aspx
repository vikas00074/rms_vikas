<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View_Registered_Courses.aspx.cs" Inherits="RMS.View_Registered_Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style147 {
            width: 66%;
            height: 328px;
        }

        .style169 {
            text-align: left;
            color: #FFFFFF;
            font-size: medium;
            height: 19px;
        }

        .style171 {
            text-align: left;
            color: #000000;
            height: 30px;
            width: 159px;
        }

        .style176 {
            width: 17px;
            text-align: left;
            height: 30px;
        }

        .style183 {
            text-align: left;
            height: 30px;
        }

        .style170 {
            color: #000000;
        }

        .style187 {
            width: 100px;
            text-align: left;
            height: 30px;
            color: #000000;
        }

        .style178 {
            width: 100px;
            text-align: left;
            height: 30px;
        }

        .style181 {
            text-align: left;
            height: 20px;
            width: 159px;
        }

        .style160 {
            width: 17px;
            text-align: left;
            height: 20px;
        }

        .style179 {
            text-align: left;
            height: 20px;
        }

        .style159 {
            width: 100px;
            text-align: left;
            height: 20px;
        }

        .style156 {
            text-align: left;
        }

        .style14 {
            width: 968px;
        }

        .style196 {
            width: 540px;
        }

        .style197 {
            text-align: left;
            height: 30px;
            width: 235px;
        }

        .style198 {
            text-align: left;
            height: 20px;
            width: 235px;
        }

        .style199 {
            width: 1284px;
        }

        .style200 {
            width: 132px;
        }

        .style201 {
            width: 190px;
        }

        .style202 {
            width: 322px;
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
                <asp:Panel ID="Panel3" runat="server" Height="331px" Style="margin-left: 0px"
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
                                <asp:Button ID="btnSearchStud" runat="server" OnClick="btnSearchStud_Click"
                                    Text="Search Student" />
                            </td>
                            <td class="style160" bgcolor="#E4E4E4">
                                <span class="style170"></span></td>
                            <td class="style179" bgcolor="#E4E4E4"></td>
                            <td class="style159" bgcolor="#E4E4E4"></td>
                            <td class="style198" bgcolor="#E4E4E4"></span></td>
                        </tr>
                        <tr>
                            <td class="style156" colspan="5">
                                <asp:Panel ID="PanelStudGrid" runat="server" Height="174px" Visible="False"
                                    Width="773px" ScrollBars="Vertical">
                                    <table class="style14">
                                        <tr>
                                            <td align="left" class="style196">
                                                <asp:LinkButton ID="lnkCancel" runat="server" Font-Underline="True"
                                                    ForeColor="Black" OnClick="lnkCancel_Click">Cancel</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style196">
                                                <asp:GridView ID="grdStudent" runat="server" AutoGenerateColumns="False"
                                                    BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                                                    CellPadding="4" EnableSortingAndPagingCallbacks="True" GridLines="Horizontal"
                                                    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Height="16px"
                                                    PageSize="5"
                                                    Style="text-align: justify" Width="260px"
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
