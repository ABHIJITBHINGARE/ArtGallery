<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style10
        {
            width: 28%;
            height: 157px;
        }
        .style12
        {
            width: 98px;
            margin-left: 40px;
        }
        .style16
    {
        height: 56px;
    }
        .style17
        {
            width: 98px;
        }
        .style18
    {
        width: 106px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table class="style10">
        <tr>
            <td align="center" 
                style="color: #0000FF; font-size: large; font-weight: bold;" 
                class="style16">
                Select category to view creations</td>
         </tr>
        <tr>
            <td align="center" valign="top" class="style17">
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    Width="100px">Acrylic Paintings</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                    Width="100px">Oil Paintings</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                    Width="100px">Pastel Paintings</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                    Width="150px">WaterColor Paintings</asp:LinkButton>
                </td>
                </tr>
            </table>
            </center>
</asp:Content>
