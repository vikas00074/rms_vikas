<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View_Students.aspx.cs" Inherits="RMS.View_Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .style5
        {
            width: 78%;
            color: #000000;
            font-family: "Helvetica Neue";
            font-weight: 700;
        }
        .style8
    {
        height: 14px;
    }
    .style10
    {
        height: 3px;
    }
    .style12
    {
        width: 238px;
        height: 30px;
    }
    .style14
    {
        width: 61px;
    }
    .style16
    {
        width: 511px;
        height: 66px;
    }
    .style137
    {
        text-align: center;
    }
        .style140
    {
        width: 558px;
    }
    .style141
    {
        height: 66px;
    }
    .style142
    {
        width: 41px;
    }
    .style143
    {
        width: 73px;
    }
    .style148
    {
        text-align: left;
        height: 4px;
    }
    .style149
    {
        width: 41px;
        height: 4px;
    }
    .style150
    {
        height: 4px;
    }
    .style151
    {
        width: 73px;
        height: 4px;
    }
    .style152
    {
        text-align: left;
        height: 26px;
    }
    .style153
    {
        width: 41px;
        height: 26px;
    }
    .style154
    {
        height: 26px;
    }
    .style155
    {
        width: 73px;
        height: 26px;
    }
    .style156
    {
        width: 238px;
        height: 26px;
    }
    .style157
    {
        text-align: left;
        height: 24px;
    }
    .style158
    {
        width: 41px;
        height: 24px;
    }
    .style159
    {
        height: 24px;
    }
    .style160
    {
        width: 73px;
        height: 24px;
    }
    .style161
    {
        text-align: left;
        height: 30px;
    }
    .style162
    {
        width: 41px;
        height: 30px;
    }
    .style163
    {
        height: 30px;
    }
    .style164
    {
        width: 73px;
        height: 30px;
    }
    .style165
    {
        text-align: left;
        height: 35px;
    }
    .style166
    {
        width: 41px;
        height: 35px;
    }
    .style167
    {
        height: 35px;
    }
    .style168
    {
        width: 73px;
        height: 35px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p align="center">
    <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" 
        Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
</p>
    <br />
    <p align="center">
        <asp:TextBox ID="txtSearch" runat="server" BorderStyle="Ridge" 
            Font-Bold="False" Font-Size="X-Large" Height="31px" style="margin-left: 0px" 
            Width="211px"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnFind" runat="server" Font-Size="Large" 
            onclick="btnSearch_Click" Text="Search Student" Width="149px" />
        &nbsp;<asp:TextBox ID="txtProfile" runat="server" BackColor="Silver" 
            BorderStyle="None" Visible="False" Width="50px">_</asp:TextBox>
</p>
&nbsp;<table class="style5">
    <tr>
        <td align="center" class="style40" style="vertical-align: top">
            <asp:Panel ID="PanelStudMenu" runat="server" Height="201px" 
                style="margin-left: 2px; z-index: -1;" Visible="False" Width="1247px">
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
                                    onclick="lnkUpdatePicture_Click">Save</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="lnkClose" runat="server" Font-Underline="False" 
                                    ForeColor="#CC0000" onclick="lnkClose_Click">Close</asp:LinkButton>
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
                                    onclick="lnkShowPicture_Click">View Picture</asp:LinkButton>
                                <br />
                                <asp:Image ID="imgStud" runat="server" Height="110px" Width="110px" />
                                <br />
                                &nbsp;&nbsp;
                                <asp:LinkButton ID="lnkLoadPicture" runat="server" Font-Underline="False" 
                                    onclick="lnkLoadPicture_Click">Import Picture</asp:LinkButton>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style10" colspan="2">
                            <asp:Label ID="lblStudData1" runat="server" ForeColor="Black" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style141" style="vertical-align: top">
                            </td>
                        <td class="style16" style="vertical-align: top">
                            </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="PanelSearchGrid" runat="server" Height="204px" ScrollBars="Auto" 
                style="margin-left: 0px" Visible="False" Width="566px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" EnableSortingAndPagingCallbacks="True" 
                    HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Height="16px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    style="text-align: justify" Width="524px" BackColor="White" 
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                    GridLines="Horizontal">
                    <RowStyle BackColor="White" ForeColor="#333333" HorizontalAlign="Left" 
                        VerticalAlign="Top" />
                    <Columns>
                        <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                            ItemStyle-Width="150">
                        <ItemStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" />
                        <asp:BoundField DataField="Firstname" HeaderText="FirstName" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:ButtonField CommandName="Select" ItemStyle-Width="150" Text="View">
                        <ItemStyle Width="50px" />
                        </asp:ButtonField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <PagerStyle BackColor="#006600" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:TextBox ID="txtStudID0" runat="server" style="text-align: left" 
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
                        <td align="left" class="style136">
                        </td>
                        <td align="left" class="style14">
                        </td>
                        <td align="left" class="style142">
                        </td>
                        <td align="left" class="style136">
                        </td>
                        <td align="left" class="style132">
                        </td>
                        <td align="left" class="style52">
                        </td>
                        <td align="left" class="style143">
                        </td>
                        <td align="left" class="style17">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style152">
                            Student ID</td>
                        <td align="left" class="style152">
                            <asp:TextBox ID="txtStudID" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                        </td>
                        <td align="left" class="style153">
                            </td>
                        <td align="left" class="style152">
                            Surname</td>
                        <td align="left" class="style154">
                            <asp:TextBox ID="txtSname" runat="server" CssClass="style39" Font-Bold="True" 
                                Width="170px"></asp:TextBox>
                        </td>
                        <td align="left" class="style154">
                            </td>
                        <td align="left" class="style155">
                            </td>
                        <td align="left" class="style156">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style157">
                            First Name</td>
                        <td align="left" class="style157">
                            <asp:TextBox ID="txtFName" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                        </td>
                        <td align="left" class="style158">
                            </td>
                        <td align="left" class="style157">
                            Middle Name</td>
                        <td align="left" class="style159">
                            <asp:TextBox ID="txtMName" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                        </td>
                        <td align="left" class="style159">
                            </td>
                        <td align="left" class="style160">
                            Gender</td>
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
                        <td align="left" class="style161">
                            Date of Birth</td>
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
                        <td align="left" class="style162">
                            </td>
                        <td align="left" class="style161">
                            Phone</td>
                        <td align="left" class="style163">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                        </td>
                        <td align="left" class="style163">
                            </td>
                        <td align="left" class="style164">
                            Email</td>
                        <td align="left" class="style12">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="style39" Width="142px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style165">
                            Program</td>
                        <td align="left" class="style165">
                            <asp:TextBox ID="txtProgram" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                        </td>
                        <td align="left" class="style166">
                            </td>
                        <td align="left" class="style165">
                            Level</td>
                        <td align="left" class="style167">
                            <asp:TextBox ID="txtLevel" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                        </td>
                        <td align="left" class="style167">
                            </td>
                        <td align="left" class="style168">
                            Session</td>
                        <td align="left" class="style167">
                            <asp:TextBox ID="txtSession" runat="server" CssClass="style39" Width="170px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style148">
                            </td>
                        <td align="left" class="style148">
                            </td>
                        <td align="left" class="style149">
                            </td>
                        <td align="left" class="style148">
                            </td>
                        <td align="left" class="style150">
                            <asp:TextBox ID="txtDoB" runat="server" Visible="False"></asp:TextBox>
                        </td>
                        <td align="left" class="style150">
                            </td>
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
                        <td align="left" class="style137" colspan="8">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="style137" colspan="8">
                            <asp:Button ID="btnSave" runat="server" CssClass="style28" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="Black" onclick="btnSave_Click" 
                                style="text-align: center" Text="Save" Width="90px" />
                            &nbsp;
                            <asp:Button ID="btnCancel" runat="server" CssClass="style28" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="Black" onclick="btnCancel_Click" Text="Cancel" 
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
