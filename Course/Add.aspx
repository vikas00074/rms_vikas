<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="RMS.Course.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False" />
    </p>
    <asp:Panel CssClass="panel panel-default" runat="server">
        <asp:Panel CssClass="panel-heading" runat="server">
            <h3 class="panel-title">
                <asp:Literal ID="litTitle" Text="Add Course" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="panel-body" runat="server">
            <asp:Panel CssClass="form-horizontal" runat="server">
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Course Title:" runat="server" />
                    <asp:Panel CssClass="col-sm-4" runat="server">
                        <asp:TextBox ID="txtCourseTitle" CssClass="form-control" runat="server" />
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Course Level:" runat="server" />
                    <asp:Panel CssClass="col-sm-4" runat="server">
                        <asp:DropDownList ID="ddlLevel" CssClass="form-control" runat="server">
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ddlLevel" ErrorMessage="Level is required." Display="Dynamic" SetFocusOnError="true" runat="server">*</asp:RequiredFieldValidator>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Panel CssClass="col-sm-12" runat="server">
                        <asp:ValidationSummary ID="ValidationSummary1" CssClass="alert alert-danger" DisplayMode="BulletList" ShowSummary="true" ShowMessageBox="false" runat="server" />
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel runat="server">
                    <asp:Panel CssClass="col-sm-offset-10 col-sm-1" runat="server">
                        <asp:Button ID="btnSave" CssClass="btn btn-default" runat="server" OnClick="btnSave_Click" Text="Save" />
                    </asp:Panel>
                    <asp:Panel CssClass="col-sm-1" runat="server">
                        <asp:Button ID="btnReset" CssClass="btn btn-default" runat="server" OnClick="btnCanc_Click" Text="Reset" />
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
