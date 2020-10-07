<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Show.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ArtPieces.aspx">Back</asp:HyperLink>
    <asp:Image ID="imgbig" runat="server" Height="600px" Width="600px" />
    <br />
    </center>
</asp:Content>

