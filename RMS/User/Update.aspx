<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="RMS.User.UpdateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <asp:Panel CssClass="panel panel-default" runat="server">
        <asp:Panel CssClass="panel-heading" runat="server">
            <h3 class="panel-title">
                <asp:Literal Text="Amend User Details" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="panel-body" runat="server">
            <asp:Panel CssClass="form-horizontal" runat="server">
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="User Id:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Title:" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:DropDownList ID="DropDownListTitle" CssClass="form-control" runat="server">
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
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Surname" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtSname" CssClass="form-control" runat="server"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="First Name" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtFname" CssClass="form-control" runat="server"></asp:TextBox>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Designation" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox CssClass="form-control" ID="txtDesignation" runat="server"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Department" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox CssClass="form-control" ID="txtDept" runat="server"></asp:TextBox>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Phone" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Email" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:LinkButton ID="lnkSendMail" OnClick="lnkSendMail_Click" runat="server">Send Mail</asp:LinkButton>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Username" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Password" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:LinkButton ID="showPassword" runat="server" OnClick="showPassword_Click">show</asp:LinkButton>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-3 control-label" Text="Password" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:TextBox ID="txtpassword1" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-3 control-label" Text="Profile" runat="server" />
                    <asp:Panel CssClass="col-sm-3" runat="server">
                        <asp:DropDownList ID="txtProfile" CssClass="form-control" runat="server">
                            <asp:ListItem>Administrator</asp:ListItem>
                            <asp:ListItem>Default</asp:ListItem>
                        </asp:DropDownList>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Panel CssClass="col-sm-offset-10 col-sm-1" runat="server">
                        <asp:Button ID="btnUpdate0" CssClass="btn btn-default" runat="server" OnClick="btnUpdate0_Click" Text="Save" />
                    </asp:Panel>
                    <asp:Panel CssClass="col-sm-1" runat="server">
                        <asp:Button ID="btnCanc" CssClass="btn btn-default" runat="server" OnClick="btnCanc_Click" Text="Cancel" />
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
    <asp:HiddenField ID="txtAmendDate" runat="server" />
    <asp:HiddenField ID="txtRegUser" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScripts" runat="server">
</asp:Content>
