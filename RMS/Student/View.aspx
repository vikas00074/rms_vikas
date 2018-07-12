<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="RMS.Student.ViewStudent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="act" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <asp:Panel CssClass="card" runat="server">
        <asp:Panel CssClass="card-header" runat="server">
            <h3 class="card-title">
                <asp:Literal ID="litTitle" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="card-body" runat="server">
            <asp:Panel CssClass="form-row" runat="server">
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label Text="Student ID" AssociatedControlID="txtStudID" runat="server" />
                    <asp:TextBox CssClass="form-control" ID="txtStudID" runat="server"></asp:TextBox>
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label Text="Surname" AssociatedControlID="txtSname" runat="server" />
                    <asp:TextBox ID="txtSname" CssClass="form-control" runat="server"></asp:TextBox>
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label Text="Image" AssociatedControlID="imgPhoto" runat="server" />
                    <asp:Image ID="imgPhoto" CssClass="form-control" runat="server" />
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-row" runat="server">
                <asp:Panel CssClass="col-sm-2" runat="server">
                    <asp:Label Text="First Name" AssociatedControlID="txtFName" runat="server" />
                    <asp:TextBox ID="txtFName" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label AssociatedControlID="txtMName" Text="Middle Name" runat="server" />
                    <asp:TextBox ID="txtMName" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label Text="Gender" AssociatedControlID="DropDownListGender" runat="server" />
                    <asp:DropDownList ID="DropDownListGender" runat="server" CssClass="form-control">
                        <asp:ListItem>Unknown</asp:ListItem>
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-row" runat="server">
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label AssociatedControlID="txtBirthdate" Text="Date of Birth" runat="server" />
                    <asp:TextBox ID="txtBirthdate" CssClass="form-control" runat="server" />
                    <act:CalendarExtender TargetControlID="txtBirthdate" runat="server" />
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label AssociatedControlID="txtPhone" Text="Phone" runat="server" />
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label AssociatedControlID="txtEmail" Text="Email" runat="server" />
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-row" runat="server">
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label AssociatedControlID="txtProgram" Text="Program" runat="server" />
                    <asp:TextBox ID="txtProgram" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label AssociatedControlID="txtLevel" Text="Level" runat="server" />
                    <asp:TextBox ID="txtLevel" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
                <asp:Panel CssClass="form-group col-sm-2" runat="server">
                    <asp:Label AssociatedControlID="txtSession" Text="Session" runat="server" />
                    <asp:TextBox ID="txtSession" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel CssClass="form-row" runat="server">
                <asp:HiddenField ID="txtDoB" runat="server" />
                <asp:HiddenField ID="txtDateUpdated" runat="server" />
                <asp:HiddenField ID="txtUserUpdated" runat="server" />
                <asp:Panel CssClass="form-group col-sm-offset-10 col-sm-2" runat="server">
                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-default" OnClick="btnSave_Click" Text="Save" />
                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" OnClick="btnCancel_Click" Text="Cancel" />
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScripts" runat="server">
</asp:Content>
