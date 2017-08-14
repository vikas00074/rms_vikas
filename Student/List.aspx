﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="RMS.Student.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    </p>
    <br />
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:Panel CssClass="panel panel-default" runat="server">
                <asp:Panel CssClass="panel-heading" runat="server">
                    <h3 class="panel-title">
                        <asp:Literal Text="Student" runat="server" />
                    </h3>
                </asp:Panel>
                <asp:Panel CssClass="panel-body" runat="server">
                    <asp:Panel CssClass="form-inline" runat="server">
                        <asp:Panel CssClass="form-group" runat="server">
                            <asp:Label CssClass="control-label" Text="Firstname / Lastname / Phone / Email" runat="server" />
                            <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server" />
                        </asp:Panel>
                        <asp:Button ID="btnFind" CssClass="btn btn-default" runat="server" OnClick="btnSearch_Click" Text="Search" />
                    </asp:Panel>
                </asp:Panel>
                <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" EnableSortingAndPagingCallbacks="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id" AllowPaging="True" AllowSorting="True" BorderStyle="None">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" />
                        <asp:BoundField DataField="Firstname" HeaderText="FirstName" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="View.aspx?Id={0}" Target="_parent" Text="View" />
                    </Columns>
                </asp:GridView>
                <asp:Panel CssClass="panel-footer" runat="server">
                </asp:Panel>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
    <table class="style5">
        <tr>
            <td align="center" class="style40" style="vertical-align: top">
                <asp:Panel ID="PanelStudMenu" runat="server" Height="201px"
                    Style="margin-left: 2px; z-index: -1;" Visible="False" Width="1247px">
                    <table class="style5" style="border-color: #CBC9F8; height: 176px;">
                        <tr>
                            <td align="left" class="style8" colspan="2">
                                <asp:Label ID="lblStudData" runat="server" Font-Bold="True" Font-Size="Medium"
                                    ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                            <td align="left" rowspan="3" style="vertical-align: top; text-align: right;"
                                class="style140">
                                <asp:Panel ID="PanelBrowse" runat="server" Height="137px" Visible="False"
                                    Width="232px">
                                    <br />
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" />
                                    <br />
                                    <br />
                                    <asp:LinkButton ID="lnkUpdatePicture" runat="server" Font-Underline="False"
                                        OnClick="lnkUpdatePicture_Click">Save</asp:LinkButton>
                                    &nbsp;
                                <asp:LinkButton ID="lnkClose" runat="server" Font-Underline="False"
                                    ForeColor="#CC0000" OnClick="lnkClose_Click">Close</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                    <br />
                                    <asp:Label ID="lblImgReport" runat="server" Text="."></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                    <br />
                                </asp:Panel>
                                &nbsp;</td>
                            <td align="left" rowspan="3" style="vertical-align: top; text-align: right;">
                                <asp:Panel ID="PanelImage" runat="server" Height="140px" Width="120px">
                                    &nbsp;&nbsp;
                                <asp:LinkButton ID="lnkShowPicture" runat="server" Font-Underline="False"
                                    OnClick="lnkShowPicture_Click">View Picture</asp:LinkButton>
                                    <br />
                                    <asp:Image ID="imgStud" runat="server" Height="110px" Width="110px" />
                                    <br />
                                    &nbsp;&nbsp;
                                <asp:LinkButton ID="lnkLoadPicture" runat="server" Font-Underline="False"
                                    OnClick="lnkLoadPicture_Click">Import Picture</asp:LinkButton>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style10" colspan="2">
                                <asp:Label ID="lblStudData1" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style141" style="vertical-align: top"></td>
                            <td class="style16" style="vertical-align: top"></td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="PanelSearchGrid" runat="server" ScrollBars="Auto" Visible="False">

                    <asp:TextBox ID="txtStudID0" runat="server" Style="text-align: left"
                        Visible="False" Width="128px"></asp:TextBox>
                </asp:Panel>
                <br />
                <br />
                <br />
                <asp:Panel ID="PanelStudRecord" runat="server" Height="304px" Visible="False">
                    <table bgcolor="#E4E4E4" class="style5">
                        <tr>
                            <td align="center" bgcolor="#006600" class="style17" colspan="8">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium"
                                    ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style136"></td>
                            <td align="left" class="style14"></td>
                            <td align="left" class="style142"></td>
                            <td align="left" class="style136"></td>
                            <td align="left" class="style132"></td>
                            <td align="left" class="style52"></td>
                            <td align="left" class="style143"></td>
                            <td align="left" class="style17"></td>
                        </tr>
                        <tr>
                            <td align="left" class="style152">Student ID</td>
                            <td align="left" class="style152">
                                <asp:TextBox ID="txtStudID" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                            </td>
                            <td align="left" class="style153"></td>
                            <td align="left" class="style152">Surname</td>
                            <td align="left" class="style154">
                                <asp:TextBox ID="txtSname" runat="server" CssClass="style39" Font-Bold="True"
                                    Width="170px"></asp:TextBox>
                            </td>
                            <td align="left" class="style154"></td>
                            <td align="left" class="style155"></td>
                            <td align="left" class="style156"></td>
                        </tr>
                        <tr>
                            <td align="left" class="style157">First Name</td>
                            <td align="left" class="style157">
                                <asp:TextBox ID="txtFName" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                            </td>
                            <td align="left" class="style158"></td>
                            <td align="left" class="style157">Middle Name</td>
                            <td align="left" class="style159">
                                <asp:TextBox ID="txtMName" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                            </td>
                            <td align="left" class="style159"></td>
                            <td align="left" class="style160">Gender</td>
                            <td align="left" class="style159">
                                <asp:DropDownList ID="DropDownListGender" runat="server" CssClass="style39"
                                    Width="170px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>MALE</asp:ListItem>
                                    <asp:ListItem>FEMALE</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style161">Date of Birth</td>
                            <td align="left" class="style161">
                                <asp:DropDownList ID="DropDownListDay" runat="server" CssClass="style39">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>01</asp:ListItem>
                                    <asp:ListItem>02</asp:ListItem>
                                    <asp:ListItem>03</asp:ListItem>
                                    <asp:ListItem>04</asp:ListItem>
                                    <asp:ListItem>05</asp:ListItem>
                                    <asp:ListItem>06</asp:ListItem>
                                    <asp:ListItem>07</asp:ListItem>
                                    <asp:ListItem>08</asp:ListItem>
                                    <asp:ListItem>09</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="DropDownListMonth" runat="server" CssClass="style39"
                                    Height="22px" Width="90px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>January</asp:ListItem>
                                    <asp:ListItem>February</asp:ListItem>
                                    <asp:ListItem>March</asp:ListItem>
                                    <asp:ListItem>April</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>June</asp:ListItem>
                                    <asp:ListItem>July</asp:ListItem>
                                    <asp:ListItem>August</asp:ListItem>
                                    <asp:ListItem>September</asp:ListItem>
                                    <asp:ListItem>October</asp:ListItem>
                                    <asp:ListItem>November</asp:ListItem>
                                    <asp:ListItem>December</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="DoBYear" runat="server" CssClass="style39" Width="50px"></asp:TextBox>
                            </td>
                            <td align="left" class="style162"></td>
                            <td align="left" class="style161">Phone</td>
                            <td align="left" class="style163">
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                            </td>
                            <td align="left" class="style163"></td>
                            <td align="left" class="style164">Email</td>
                            <td align="left" class="style12">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="style39" Width="142px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style165">Program</td>
                            <td align="left" class="style165">
                                <asp:TextBox ID="txtProgram" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                            </td>
                            <td align="left" class="style166"></td>
                            <td align="left" class="style165">Level</td>
                            <td align="left" class="style167">
                                <asp:TextBox ID="txtLevel" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                            </td>
                            <td align="left" class="style167"></td>
                            <td align="left" class="style168">Session</td>
                            <td align="left" class="style167">
                                <asp:TextBox ID="txtSession" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style148"></td>
                            <td align="left" class="style148"></td>
                            <td align="left" class="style149"></td>
                            <td align="left" class="style148"></td>
                            <td align="left" class="style150">
                                <asp:TextBox ID="txtDoB" runat="server" Visible="False"></asp:TextBox>
                            </td>
                            <td align="left" class="style150"></td>
                            <td align="left" class="style151">
                                <asp:TextBox ID="txtDateUpdated" runat="server" CssClass="style28"
                                    Visible="False" Width="100px"></asp:TextBox>
                            </td>
                            <td align="left" class="style150">
                                <asp:TextBox ID="txtUserUpdated" runat="server" CssClass="style28"
                                    Visible="False" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style137" colspan="8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" class="style137" colspan="8">
                                <asp:Button ID="btnSave" runat="server" CssClass="style28" Font-Bold="True"
                                    Font-Size="Medium" ForeColor="Black" OnClick="btnSave_Click"
                                    Style="text-align: center" Text="Save" Width="90px" />
                                &nbsp;
                            <asp:Button ID="btnCancel" runat="server" CssClass="style28" Font-Bold="True"
                                Font-Size="Medium" ForeColor="Black" OnClick="btnCancel_Click" Text="Cancel"
                                Width="88px" />
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
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>
