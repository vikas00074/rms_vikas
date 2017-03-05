<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="RMS.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style50 {
            width: 1174px;
            height: 46px;
        }

        .style52 {
            width: 169px;
            height: 25px;
        }

        .style48 {
            width: 727px;
            height: 25px;
        }

        .style2 {
            width: 159px;
            height: 25px;
        }

        .style57 {
            text-align: center;
            background-color: #FFFFFF;
            height: 33px;
            color: #FFFFFF;
            font-size: x-large;
        }

        .style46 {
            text-align: center;
            background-color: #FFFFFF;
            height: 28px;
            color: #003366;
        }

        .style53 {
            font-family: Arial, Helvetica, sans-serif;
        }

        .style54 {
            font-size: medium;
        }

        .style56 {
            font-size: x-large;
            color: #006600;
        }

        .style55 {
            font-size: medium;
            color: #000000;
        }

        .style51 {
            width: 170px;
            height: 25px;
        }
    </style>
    <link href="Styles/messages.css" type="text/css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <table class="style50">
        <tr>
            <td class="style52"></td>
            <td align="center" class="style48" style="vertical-align: top">
                <table bgcolor="#003366" class="style2" style="width: 829px">
                    <tr>
                        <td bgcolor="#7E1818" class="style57" style="background-color: #006600">
                            <strong>Homepage</strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="style46" style="font-size: medium">
                            <br />
                            <span class="style53"><span class="style56"><b>Modules</b></span><span class="style55"><br />
                                <br />
                                <strong><a href="New_User.aspx">Create New User</a><br />
                                    <br />
                                    <a href="Users.aspx">View CIT Users</a><br />
                                    <br />
                                    <a href="New_Student.aspx">Save Student Records</a><br />
                                    <br />
                                    <a href="View_Students.aspx">View Student Records</a><br />
                                    <br />
                                    <a href="Add_Course.aspx">Add New Course</a><br />
                                    <br />
                                    <a href="View_Courses.aspx">View / Update Courses</a><br />
                                    <br />
                                    <a href="Register_Courses.aspx">Register Student Course</a><br />
                                    <br />
                                    <a href="View_Registered_Courses.aspx">View Students&#39; Registered Courses</a><br />
                                    <br />
                                    <a href="New_User.aspx">New Result</a><br />
                                    <br />
                                    <a href="Update_Results.aspx">Update Students&#39; Result</a><br />
                                    <br />
                                    <a href="View_Results.aspx">View Students&#39; Results</a><br />
                                    <br />
                                    <a href="Send_Mail.aspx">Send Notification of Released Result</a></strong></span></span><br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
            <td class="style51"></td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>
