using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Class1.cname = LinkButton1.Text;
        Response.Redirect("ArtPieces.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Class1.cname = LinkButton2.Text;
        Response.Redirect("ArtPieces.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Class1.cname = LinkButton3.Text;
        Response.Redirect("ArtPieces.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Class1.cname = LinkButton4.Text;
        Response.Redirect("ArtPieces.aspx");
    }
}
