<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="RMS.Course.AddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <asp:Panel CssClass="card" runat="server">
        <asp:Panel CssClass="card-header" runat="server">
            <h3 class="card-title">
                <asp:Literal ID="litTitle" Text="Add Course" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="card-body" runat="server">
            <asp:Panel CssClass="form-row" runat="server">
                <asp:Panel CssClass="form-group col-sm-6" runat="server">
                    <asp:Label AssociatedControlID="txtCourseTitle" Text="Course Title:" runat="server" />
                    <asp:TextBox ID="txtCourseTitle" CssClass="form-control" runat="server" />
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-6" runat="server">
                    <asp:Label AssociatedControlID="ddlLevel" Text="Course Level:" runat="server" />
                    <asp:DropDownList ID="ddlLevel" CssClass="form-control" runat="server">
                        <asp:ListItem>0</asp:ListItem>
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
            <asp:Panel CssClass="form-row" runat="server">
                <asp:Panel CssClass="form-group col-sm-12" runat="server">
                    <asp:ValidationSummary ID="ValidationSummary1" CssClass="alert alert-danger" DisplayMode="BulletList" ShowSummary="true" ShowMessageBox="false" runat="server" />
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-row" runat="server">
                <asp:Panel CssClass="form-group col-sm-offset-10 col-sm-2" runat="server">
                    <asp:Button ID="btnSave" CssClass="btn btn-default" runat="server" OnClick="btnSave_Click" Text="Save" />
                    <asp:Button ID="btnReset" CssClass="btn btn-default" runat="server" OnClick="btnCanc_Click" Text="Reset" />
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
