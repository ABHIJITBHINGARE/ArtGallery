<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 80%;
    }
        .style3
        {
            width: 98px;
        }
        .style4
        {
            width: 200px;
        }
        .style7
        {
            width: 200px;
            height: 35px;
        }
        .style8
        {
            width: 200px;
            height: 36px;
        }
        .style9
        {
            width: 200px;
            height: 79px;
        }
        .style10
        {
            width: 200px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table class="style2" border="1">
    <tr>
    <td colspan="2" align="center" style="font-family: Arial; font-size: x-large">
        Contact Us Form</td>
    </tr>
    <tr>
        <td class="style7">
            Name</td>
        <td class="style7">
            <asp:TextBox ID="txtname" runat="server" Width="274px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            Email ID</td>
        <td class="style8">
            <asp:TextBox ID="txtemail" runat="server" Width="188px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Subject</td>
        <td class="style7">
            <asp:TextBox ID="txtsub" runat="server" Width="187px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style9">
            Message</td>
        <td class="style9">
            <asp:TextBox ID="txtmsg" runat="server" Height="103px" TextMode="MultiLine" 
                Width="330px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            </td>
        <td class="style10">
            <asp:Button ID="btnsubmit" runat="server" AccessKey="S" Text="Submit" 
                onclick="btnsubmit_Click" Height="32px" Width="76px" />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</center>
</asp:Content>

