<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="RMS.Student.NewStudent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p align="center">
        <asp:Label ID="lblError" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Text="E" Visible="False" />
    </p>
    <asp:Panel CssClass="panel panel-default" runat="server">
        <asp:Panel CssClass="panel-heading" runat="server">
            <h3 class="panel-title">
                <asp:Literal ID="litTitle" Text="New Student Record" runat="server" />
            </h3>
        </asp:Panel>
        <asp:Panel CssClass="panel-body" runat="server">
            <asp:Panel CssClass="form-horizontal" runat="server">
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Surname" AssociatedControlID="txtSurname" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtSurname" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSurname" ErrorMessage="Surname is required.">*</asp:RequiredFieldValidator>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="First Name" AssociatedControlID="txtFName" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtFName" runat="server" CssClass="form-control" />
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Middle Name" AssociatedControlID="txtMName" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtMName" runat="server" CssClass="form-control" />
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Gender" AssociatedControlID="DropDownListGender" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:DropDownList ID="DropDownListGender" runat="server" CssClass="form-control">
                            <asp:ListItem>Unknown</asp:ListItem>
                            <asp:ListItem>MALE</asp:ListItem>
                            <asp:ListItem>FEMALE</asp:ListItem>
                        </asp:DropDownList>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Date of Birth" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" />
                        <ajaxToolkit:CalendarExtender runat="server" TargetControlID="txtDateOfBirth" Format="dd/MM/yyyy" BehaviorID="calDateOfBirth" TodaysDateFormat="dd/MM/yyyy" />
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Phone" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Email" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Program" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtProgram" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProgram" ErrorMessage="Program is required.">*</asp:RequiredFieldValidator>
                    </asp:Panel>
                    <asp:Label CssClass="col-sm-2 control-label" Text="Level" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtLevel" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLevel" ErrorMessage="Level is required.">*</asp:RequiredFieldValidator>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Label CssClass="col-sm-2 control-label" Text="Session" runat="server" />
                    <asp:Panel CssClass="col-sm-2" runat="server">
                        <asp:TextBox ID="txtSession" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSession" ErrorMessage="Session is required.">*</asp:RequiredFieldValidator>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Panel CssClass="col-sm-12" runat="server">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel CssClass="form-group" runat="server">
                    <asp:Panel CssClass="col-sm-offset-10 col-sm-1" runat="server">
                        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-default" OnClick="btnSave_Click" Text="Save" />
                    </asp:Panel>
                    <asp:Panel CssClass="col-sm-1" runat="server">
                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" OnClick="btnCancel_Click" Text="Reset" />
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
