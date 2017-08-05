<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="RMS.Result.Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    </p>
    <asp:Panel runat="server" ID="pnlWizard" Width="100%">
        <asp:Wizard ID="wUpdateResult" runat="server" ActiveStepIndex="0" BackColor="#E6E2D8" BorderColor="#999999" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" BorderStyle="Solid" DisplayCancelButton="True" Width="100%">
            <FinishNavigationTemplate>
                <asp:Button ID="FinishPreviousButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Anterior" />
                <asp:Button ID="FinishButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveComplete" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Finalizar" />
            </FinishNavigationTemplate>
            <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
            <SideBarButtonStyle ForeColor="White" />
            <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Anterior" />
                <asp:Button ID="StepNextButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Siguiente" />
            </StepNavigationTemplate>
            <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
            <WizardSteps>
                <asp:WizardStep ID="wsSearchStudent" runat="server" Title="Buscar estudiante" StepType="Start">
                    <table align="center">
                        <tr>
                            <td bgcolor="#006600" colspan="5" style="text-align: center"><strong>Student Record</strong></td>
                        </tr>
                        <tr>
                            <td bgcolor="#E4E4E4">Student ID:</td>
                            <td bgcolor="#E4E4E4" class="style176">
                                <asp:TextBox ID="txtStudID0" runat="server"></asp:TextBox>
                            </td>
                            <td bgcolor="#E4E4E4" class="style183"></td>
                            <td bgcolor="#E4E4E4">Student Name:</td>
                            <td bgcolor="#E4E4E4" class="style183">
                                <asp:TextBox ID="txtStudentName0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#E4E4E4">Program:</td>
                            <td bgcolor="#E4E4E4" class="style176">
                                <asp:TextBox ID="txtStudentProgram0" runat="server"></asp:TextBox>
                            </td>
                            <td bgcolor="#E4E4E4" class="style183"></td>
                            <td bgcolor="#E4E4E4">Level:</td>
                            <td bgcolor="#E4E4E4" class="style183">
                                <asp:TextBox ID="txtStudentLevel0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#E4E4E4">Session:</td>
                            <td bgcolor="#E4E4E4" class="style176">
                                <asp:TextBox ID="txtSession0" runat="server"></asp:TextBox>
                            </td>
                            <td bgcolor="#E4E4E4" class="style183"></td>
                            <td bgcolor="#E4E4E4"></td>
                            <td bgcolor="#E4E4E4"></td>
                        </tr>
                        <tr>
                            <td bgcolor="#E4E4E4" colspan="5">
                                <asp:Button ID="btnSearchStud0" runat="server" OnClick="btnSearchStud_Click" Text="Search Student" />
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep ID="wsSelectStudent" runat="server" Title="Seleccionar estudiante" StepType="Step">
                    <asp:GridView ID="grdStudent0" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" EnableSortingAndPagingCallbacks="True" GridLines="Horizontal" OnSelectedIndexChanged="grdStudent_SelectedIndexChanged" PageSize="5" Style="text-align: justify">
                        <Columns>
                            <asp:BoundField DataField="Student_Id" HeaderText="Student_Id">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" />
                            <asp:BoundField DataField="Program" HeaderText="Program" />
                            <asp:BoundField DataField="Level" HeaderText="Level" />
                            <asp:BoundField DataField="Session" HeaderText="Session" />
                            <asp:ButtonField CommandName="Select" Text="Select">
                                <ItemStyle Width="50px" />
                            </asp:ButtonField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#006600" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </asp:WizardStep>
                <asp:WizardStep ID="wsUpdateResult" runat="server" AllowReturn="False" StepType="Finish" Title="Actualizar resultado">
                    <asp:Panel ID="Panel5" runat="server" Visible="False">
                        <table align="center" bgcolor="#E4E4E4" class="style2" style="color: #000000;">
                            <tr>
                                <td align="center" bgcolor="#006600" class="style188" colspan="7">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Calibri" ForeColor="White" Style="font-size: large" Text="Update Result"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style195" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style196" style="font-size: small;">Course Code</td>
                                <td align="left" class="style193" style="font-size: small;">Score</td>
                                <td align="left" class="style192" style="font-size: small;">Grade</td>
                                <td align="left" class="style200" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style190" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="bold" style="font-size: small;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse11" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore11" runat="server" Height="18px" Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style198" style="font-size: small;">
                                    <asp:DropDownList ID="DropDownListGrade11" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse12" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore12" runat="server" Height="18px" Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style133" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade12" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse13" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore13" runat="server" Height="18px" Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style198" style="font-size: small;">
                                    <asp:DropDownList ID="DropDownListGrade13" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse14" runat="server"></asp:Label>
                                </td>
                                </span></span>
                            <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtScore14" runat="server" Height="18px" Width="100px"></asp:TextBox>
                            </td>
                                <td align="left" class="style133" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade14" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse15" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore15" runat="server" Height="18px" Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style198" style="font-size: small;">
                                    <asp:DropDownList ID="DropDownListGrade15" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse16" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore16" runat="server" Height="18px" Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade16" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse17" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore17" runat="server" Height="18px" Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style198" style="font-size: small;">
                                    <asp:DropDownList ID="DropDownListGrade17" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse18" runat="server"></asp:Label>
                                </td>
                                </span>
                            <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtScore18" runat="server" Height="18px" Width="100px"></asp:TextBox>
                            </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade18" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse19" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore19" runat="server" Height="18px" Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style198" style="font-size: small;">
                                    <asp:DropDownList ID="DropDownListGrade19" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse20" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore20" runat="server" Height="18px" Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade20" runat="server" CssClass="style39" Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr class="style151">
                                <td class="style189">&nbsp;</td>
                                <td class="style22" colspan="5">&nbsp;</td>
                                <td class="style22">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="style188" colspan="7">
                                    <asp:Button ID="btnSave0" runat="server" OnClick="btnSave_Click" Text="Update" Width="78px" />
                                    <span class="style151">&nbsp; </span>
                                    <asp:Button ID="btnCanc0" runat="server" OnClick="btnCanc_Click" Text="Cancel" Width="76px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style189">&nbsp;</td>
                                <td class="style151" colspan="5">
                                    <asp:TextBox ID="txtDateUpdated0" runat="server" Visible="False" Width="64px"></asp:TextBox>
                                    &nbsp; </td>
                                <td class="style151">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </asp:Panel>
    <!-- 
    <table class="style147">
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server" Height="722px" Style="margin-left: 0px"Width="1173px">
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
                                        ForeColor="White" Style="font-size: large" Text="Update Result"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style195" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style196" style="font-size: small;">Course Code</td>
                                <td align="left" class="style193" style="font-size: small;">Score</td>
                                <td align="left" style="font-size: small;" class="style192">Grade</td>
                                <td align="left" class="style200" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style190" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="bold" style="font-size: small;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse1" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore1" runat="server" Height="18px" Visible="True"
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style198" style="font-size: small;">
                                    <asp:DropDownList ID="DropDownListGrade1" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse2" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore2" runat="server" Height="18px" Visible="True"
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style133" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade2" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse3" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore3" runat="server" Height="18px" Visible="True"
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" style="font-size: small;" class="style198">
                                    <asp:DropDownList ID="DropDownListGrade3" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse4" runat="server"></asp:Label>
                                </td>
                                </span></span>
                            <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtScore4" runat="server" Height="18px" Visible="True"
                                    Width="100px"></asp:TextBox>
                            </td>
                                <td align="left" class="style133" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade4" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse5" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore5" runat="server" Height="18px" Visible="True"
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" style="font-size: small;" class="style198">
                                    <asp:DropDownList ID="DropDownListGrade5" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse6" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore6" runat="server" Height="18px" Visible="True"
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade6" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse7" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore7" runat="server" Height="18px" Visible="True"
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" style="font-size: small;" class="style198">
                                    <asp:DropDownList ID="DropDownListGrade7" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse8" runat="server"></asp:Label>
                                </td>
                                </span>
                            <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                <asp:TextBox ID="txtScore8" runat="server" Height="18px" Visible="True"
                                    Width="100px"></asp:TextBox>
                            </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade8" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style189" style="font-size: small;">&nbsp;</td>
                                <td align="left" class="style197" style="font-size: small;">
                                    <asp:Label ID="lblCse9" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style149" style="font-size: small;">
                                    <asp:TextBox ID="txtScore9" runat="server" Height="18px" Visible="True"
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" style="font-size: small;" class="style198">
                                    <asp:DropDownList ID="DropDownListGrade9" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td align="left" class="style201" style="font-size: small;">
                                    <asp:Label ID="lblCse10" runat="server"></asp:Label>
                                </td>
                                <td align="left" class="style199" style="font-size: small; font-weight: bold;">
                                    <asp:TextBox ID="txtScore10" runat="server" Height="18px" Visible="True"
                                        Width="100px"></asp:TextBox>
                                </td>
                                <td align="left" class="style146" style="font-size: small; font-weight: bold;">
                                    <asp:DropDownList ID="DropDownListGrade10" runat="server" CssClass="style39"
                                        Width="100px">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Distinction</asp:ListItem>
                                        <asp:ListItem>Credit</asp:ListItem>
                                        <asp:ListItem>Pass</asp:ListItem>
                                        <asp:ListItem>Fail</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr class="style151">
                                <td class="style189">&nbsp;</td>
                                <td class="style22" colspan="5">&nbsp;</td>
                                <td class="style22">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" class="style188" colspan="7">
                                    <asp:Button ID="btnSave" runat="server" Text="Update" Width="78px"
                                        OnClick="btnSave_Click" />
                                    <span class="style151">&nbsp; </span>
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
                    </asp:Panel>
                </asp:Panel>
            </td>
        </tr>
    </table>
    -->
</asp:Content>
