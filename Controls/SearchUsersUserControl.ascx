<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchUsersUserControl.ascx.cs" Inherits="RMS.Controls.SearchUsersUserControl" %>

<div>
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search User" />
</div>
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="User_ID" HeaderText="User_ID" ItemStyle-Width="150">
            <ItemStyle Width="50px" />
        </asp:BoundField>
        <asp:BoundField DataField="Firstname" HeaderText="FirstName" />
        <asp:BoundField DataField="Surname" HeaderText="Surname" />
        <asp:BoundField DataField="Username" HeaderText="Username" />
        <asp:BoundField DataField="User_Profile" HeaderText="User_Profile" />
        <asp:ButtonField CommandName="Select" ItemStyle-Width="150" Text="Select">
            <ItemStyle Width="50px" />
        </asp:ButtonField>
    </Columns>
</asp:GridView>
