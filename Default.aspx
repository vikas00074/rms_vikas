<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RMS.Default" UICulture="en" Culture="Auto" StylesheetTheme="Default" Theme="Default" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form2" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">RMS</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <asp:Panel CssClass="container-fluid" runat="server">
            <asp:Panel ID="pnlAlert" CssClass="alert alert-error alert-dismissible" role="alert" Visible="false" runat="server">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <strong>
                    <asp:Literal ID="litMessageType" Text="" runat="server" />
                </strong>
                <asp:Literal ID="litMessageContent" Text="" runat="server" />
            </asp:Panel>
            <asp:Panel CssClass="panel panel-default" runat="server">
                <asp:Panel CssClass="panel-heading" runat="server">
                    <h3 class="panel-title">
                        <asp:Literal Text="Log In" runat="server" meta:resourcekey="lblLogInTitle" />
                    </h3>
                </asp:Panel>
                <asp:Panel CssClass="panel-body" runat="server">
                    <asp:Panel class="form-horizontal" runat="server">
                        <asp:Panel CssClass="form-group" runat="server">
                            <asp:Label ID="lblUsername" CssClass="col-sm-2 control-label" AssociatedControlID="txtUsername" Text="Username:" runat="server" meta:resourcekey="lblUsername" />
                            <asp:Panel CssClass="col-sm-10" runat="server">
                                <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required." ControlToValidate="txtUsername" meta:resourcekey="rfvUsername">*</asp:RequiredFieldValidator>
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel CssClass="form-group" runat="server">
                            <asp:Label ID="lblPassword" CssClass="col-sm-2 control-label" AssociatedControlID="txtpassword" Text="Password:" runat="server" meta:resourcekey="lblPassword" />
                            <asp:Panel CssClass="col-sm-10" runat="server">
                                <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required." ControlToValidate="txtpassword" meta:resourcekey="rfvPassword">*</asp:RequiredFieldValidator>
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel CssClass="form-group" runat="server">
                            <asp:Panel CssClass="col-sm-offset-2 col-sm-10" runat="server">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel CssClass="form-group" runat="server">
                            <asp:Panel CssClass="col-sm-offset-2 col-sm-10" runat="server">
                                <asp:Button ID="btnLogin" CssClass="btn btn-default" runat="server" Text="Log in" OnClick="btnLogin_Click" meta:resourcekey="btnLogin" />
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
        <asp:HiddenField ID="hidLogUser" runat="server" />
        <asp:HiddenField ID="hidProfile" runat="server" />
    </form>
    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
</body>
</html>
