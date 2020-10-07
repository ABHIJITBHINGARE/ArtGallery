<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 394px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="color: #800000">
    <br />
<table border="1">
<tr>
<td colspan="3" align="center">
    <asp:Image ID="Image4" runat="server" Height="100px" 
        ImageUrl="~/Images/logo.JPG" Width="300px" />
</td>
</tr>
<tr>
<td colspan="3" abbr="left">
    

    <br />
    
<marquee>
    <asp:Image ID="Image5" runat="server" Height="150px" 
        ImageUrl="~/images/paintings/images.jpg" Width="150px" />
    <asp:Image ID="Image6" runat="server" Height="150px" 
        ImageUrl="~/images/paintings/iuliu.jpg" Width="150px" />
    <asp:Image ID="Image7" runat="server" Height="150px" 
        ImageUrl="~/images/paintings/rajan ganguly.jpg" Width="150px" />
        </marquee>
        </td>
</tr>
<tr>
<td align="center" class="style4" colspan="3">
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="Maroon" 
        Height="84px" Text="****Art E-Gallery**** for exhibiting your art pieces contact bhingare.abhijit.54@gmail.com " 
        Width="251px"></asp:Label>
</td>
</tr>
</table>
</center>
</asp:Content>


