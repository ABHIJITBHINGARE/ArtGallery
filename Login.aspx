<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 261px;
            height: 39px;
        }
        .style6
        {
            width: 171px;
            height: 39px;
        }
        .style7
        {
            height: 43px;
        }
        .style8
        {
            width: 189px;
            height: 42px;
        }
        .style9
        {
            width: 249px;
            height: 42px;
        }
        .style10
        {
            width: 189px;
            height: 44px;
        }
        .style11
        {
            width: 249px;
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table border="1" style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #800000">
<tr>
<td colspan="2" align="center" class="style7" 
        style="font-size: large; font-weight: bold">
    Login Dialog</td>
</tr>
<tr>
<td class="style8">
    Login Name</td>
<td class="style9">
    <asp:TextBox ID="txtlogin" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style10">
    Password</td>
<td class="style11">
    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Label ID="lblmsg" runat="server" ForeColor="Maroon"></asp:Label>
</td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="btnok" runat="server" AccessKey="O" Text="Ok" 
        onclick="btnok_Click" Height="33px" Width="83px" />
</td>
</tr>
</table>
</center>
</asp:Content>


