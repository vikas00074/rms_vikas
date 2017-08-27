<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="RMS.User.New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False"></asp:Label>
    </p>
    <br />
    <asp:Panel CssClass="panel panel-default" runat="server">
        <asp:Panel CssClass="panel-heading" runat="server">
            <h3 class="panel-title">
                <asp:Literal ID="litTitle" Text="New User" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="panel-body" runat="server">
            <asp:Panel CssClass="form-horizontal" runat="server">
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Title" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:DropDownList ID="DropDownListTitle" runat="server" CssClass="form-control">
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
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Surname" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtSname" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSname" ErrorMessage="Surname is required.">*</asp:RequiredFieldValidator>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="First Name:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtFname" CssClass="form-control" runat="server" />
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Designation:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtDesignation" CssClass="form-control" runat="server" />
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Department:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtDept" CssClass="form-control" runat="server" />
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Phone:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" />
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Email:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" />
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Username:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required.">*</asp:RequiredFieldValidator>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Password:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password" />
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password is required.">*</asp:RequiredFieldValidator>
                        <asp:LinkButton ID="showPassword" runat="server" Font-Bold="True" Font-Size="Small" Font-Underline="False" ForeColor="Black" OnClick="showPassword_Click">show</asp:LinkButton>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Password:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtpassword1" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password 2 is required." ControlToValidate="txtpassword1">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtpassword1" ErrorMessage="Password are not equeals.">!</asp:CompareValidator>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="User Profile:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:DropDownList ID="txtProfile" CssClass="form-control" runat="server">
                            <asp:ListItem>Administrator</asp:ListItem>
                            <asp:ListItem>Default</asp:ListItem>
                        </asp:DropDownList>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Panel CssClass="col-sm-12" runat="server">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Panel CssClass="col-sm-offset-10 col-sm-1" runat="server">
                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Style="text-align: center" Text="Save" />
                    </asp:Panel>
                    <asp:Panel CssClass="col-sm-1" runat="server">
                        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
