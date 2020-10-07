<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1 {
            width: 100%;
            height:800px;
            background-image:url('images/Monalisa1.jpg');
        }
        .style2
        {
            width: 217px;
        }
        .style3
        {
            width: 704px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" valign="top" align="center">
                    <asp:Menu ID="Menu1" runat="server" Font-Bold="True" ForeColor="#2E2226" 
                        Height="248px" Width="85px">
                        <Items>
                        <asp:MenuItem Text="Home" NavigateUrl="~/Default.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Variety" NavigateUrl="~/Category.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Contact" NavigateUrl="~/Contact.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="About Us" NavigateUrl="~/AboutUs.aspx">
                        </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Regn.aspx" ForeColor="White">Register</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx" ForeColor="White">Login</asp:HyperLink>
                    </td>
                <td align="center" class="style3" valign="top">
                    <img alt="" src="images/logo.jpg" 
                        style="width: 298px; height: 77px; background-color: #989C7B;" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style3">
                    </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style3">
                    </td>
                <td>
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
