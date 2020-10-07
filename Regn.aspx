<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Regn.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 30px;
        }
        .style7
        {
            height: 39px;
            width: 771px;
        }
        .style8
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
 <br />
  <table border="1">
  <tr>
  <td colspan="4" 
          
          style="font-family: Arial; font-size: large; font-weight: bold; color: #800000" 
          align="center" class="style8">
      User Registration<br />
  </td>
  </tr>
                    <tr>
                        <td style="font-family: Arial, Helvetica, sans-serif; color: #C0C0C0">
                            <asp:Label ID="LBNAME" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Name" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" Width="170px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Address" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" TabIndex="1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Country" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
    <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" 
        Height="16px" Width="148px" 
        onselectedindexchanged="ddlcountry_SelectedIndexChanged">
        <asp:ListItem>--Select--</asp:ListItem>
    </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="State" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
    <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" 
        Height="16px" Width="148px" 
        onselectedindexchanged="ddlstate_SelectedIndexChanged">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="City" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
    <asp:DropDownList ID="ddlcity" runat="server" Height="16px" Width="148px">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Mumbai</asp:ListItem>
        <asp:ListItem>Jalgaon</asp:ListItem>
        <asp:ListItem>Ahamadabad</asp:ListItem>
    </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Phone" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtphone" runat="server" TabIndex="5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Cellno" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtcell" runat="server" TabIndex="6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Email" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" TabIndex="7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Login Name" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtlogin" runat="server" TabIndex="8"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rfv1" runat="server" 
                                ControlToValidate="txtlogin" Display="Dynamic" ErrorMessage="Login ID required"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Password" Font-Size="Small"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Confirm Password" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" TabIndex="9"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtpwd" 
                                Display="Dynamic" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                            <br />
                            <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" TabIndex="10"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rfv4" runat="server" 
                                ControlToValidate="txtcpwd" Display="Dynamic" 
                                ErrorMessage="Password should be confirmed"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="cv1" runat="server" ControlToCompare="txtpwd" 
                                ControlToValidate="txtcpwd" Display="Dynamic" 
                                ErrorMessage="Password is not confirmed"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Date of Birth" Font-Size="Small"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                            <br />
                        </td>
                        <td class="style7">
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Gender" Font-Size="Small"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:RadioButton ID="rbmale" runat="server" Text="Male" GroupName="gender" 
                                Font-Size="Small" ForeColor="Black"  />
                            &nbsp;
                            <asp:RadioButton ID="rbfemale" runat="server" Text="Female" 
                                GroupName="gender" Font-Size="Small" ForeColor="Black" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Security Question" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlsq" runat="server" Height="16px" Width="128px" TabIndex="11" 
                                >
                            <asp:ListItem>What Is Your Name?</asp:ListItem>
                            <asp:ListItem>What Is Your city?</asp:ListItem>
                           <asp:ListItem >What Is Your Middle Name?</asp:ListItem>
                            
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Arial" 
                                ForeColor="Maroon" Text="Answer" Font-Size="Small"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtanswer" runat="server" TabIndex="12"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rfv3" runat="server" 
                                ControlToValidate="txtanswer" Display="Dynamic" 
                                ErrorMessage="Answer to security que. is required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                    <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsubmit" runat="server" AccessKey="S" Text="Submit" 
                            onclick="btnsubmit_Click" />
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btncancel" runat="server" AccessKey="C" Text="Cancel" 
                            onclick="btncancel_Click" />
                    &nbsp;&nbsp;<asp:Label ID="Label16" runat="server" ForeColor="Maroon"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Please 
                        LogIn </asp:HyperLink>
                    </td>
                    </tr>
                </table>
</center>
</asp:Content>

