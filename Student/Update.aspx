<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="RMS.Student.UpdateStudent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <asp:Panel CssClass="panel panel-default" runat="server">
        <asp:Panel CssClass="panel-heading" runat="server">
            <h3 class="panel-title">
                <asp:Literal ID="litTitle" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="panel-body" runat="server">
            <asp:Panel CssClass="form-horizontal" runat="server">
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Student ID" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox CssClass="form-control" ID="txtStudID" runat="server"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Surname" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtSname" CssClass="form-control" runat="server"></asp:TextBox>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="First Name" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtFName" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Middle Name" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtMName" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Gender" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:DropDownList ID="DropDownListGender" runat="server" CssClass="form-control">
                            <asp:ListItem>Unknown</asp:ListItem>
                            <asp:ListItem>MALE</asp:ListItem>
                            <asp:ListItem>FEMALE</asp:ListItem>
                        </asp:DropDownList>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Date of Birth" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtBirthdate" CssClass="form-control" runat="server" />
                        <act:CalendarExtender TargetControlID="txtBirthdate" runat="server" />
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Phone" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Email" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Program" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtProgram" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Level" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtLevel" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Session" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtSession" runat="server" CssClass="form-control"></asp:TextBox>
                    </asp:Panel>
                </asp:Panel>
                <asp:HiddenField ID="txtDoB" runat="server" />
                <asp:HiddenField ID="txtDateUpdated" runat="server" />
                <asp:HiddenField ID="txtUserUpdated" runat="server" />
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Panel CssClass="col-sm-offset-10 col-sm-1" runat="server">
                        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-default" OnClick="btnSave_Click" Text="Save" />
                    </asp:Panel>
                    <asp:Panel CssClass="col-sm-1" runat="server">
                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" OnClick="btnCancel_Click" Text="Cancel" />
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScripts" runat="server">
</asp:Content>
