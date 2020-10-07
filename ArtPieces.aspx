<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArtPieces.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style12
    {
        height: 26px;
    }
    .style13
    {
        height: 47px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table>
        <tr>
            <td colspan="4" align="center" 
                style="color: Maroon; font-size: large; font-weight: bold;" 
                class="style13">
                <asp:Label ID="lblcat" runat="server"></asp:Label>
                <br />
                Select Art Piece for enlarged view</td>
         </tr>
        <tr>
            <td align="center" valign="top">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="95px" Width="119px" onclick="ImageButton1_Click" 
                     />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td align="center" valign="top">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="96px" Width="119px" 
                    onclick="ImageButton2_Click" />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black"></asp:Label>
                </td>
                <td  align="center" valign="top" class="style12">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="95px" Width="119px" 
                        onclick="ImageButton3_Click" />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black"></asp:Label>
                </td>
                <td  align="center" valign="top" class="style12">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="95px" Width="119px" 
                        onclick="ImageButton4_Click" />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
            <td align="center">
               <asp:ImageButton ID="ImageButton5" runat="server" Height="95px" Width="119px" 
                    onclick="ImageButton5_Click" />
                <br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black">
                </asp:Label>
            </td>
            <td align="center" >
                <asp:ImageButton ID="ImageButton6" runat="server" Height="95px" Width="119px" 
                    onclick="ImageButton6_Click" />
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black">
                </asp:Label>
                </td>
            <td align="center">
              <asp:ImageButton ID="ImageButton7" runat="server" Height="95px" Width="119px" 
                    onclick="ImageButton7_Click" />
                <br />
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black">
                </asp:Label>
            </td>
            <td align="center">
              <asp:ImageButton ID="ImageButton8" runat="server" Height="95px" Width="119px" 
                    onclick="ImageButton8_Click" />
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black">
                </asp:Label>
            </td>
        </tr>
 <tr>
            <td align="center">
               <asp:ImageButton ID="ImageButton9" runat="server" Height="95px" Width="119px" 
                    onclick="ImageButton9_Click" />
                <br />
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black">
                </asp:Label>
            </td>
            <td align="center" >
                <asp:ImageButton ID="ImageButton10" runat="server" Height="95px" Width="119px" 
                    onclick="ImageButton10_Click" />
                <br />
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black"></asp:Label>
                <br />
                </td>
            <td align="center">
              <asp:ImageButton ID="ImageButton11" runat="server" Height="95px" Width="119px" 
                    onclick="ImageButton11_Click" />
                <br />
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black">
                </asp:Label>
                <br />
            </td>
            <td align="center">
              <asp:ImageButton ID="ImageButton12" runat="server" Height="95px" Width="119px" 
                    onclick="ImageButton12_Click" />
                <br />
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="X-Small" 
                    ForeColor="Black"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MoreInfo.aspx">More 
        Info...</asp:HyperLink>

</center>
</asp:Content>
