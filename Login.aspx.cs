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
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlCommand cmd = null;
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString);
    SqlDataReader dr = null;

    //OleDbConnection cn;
    //OleDbCommand cmd;
    //OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //cn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\BCA MJC\\ArtGallery\\ArtGallery.accdb");
        cn.Open();       
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        string lname, pwd;
        lname = txtlogin.Text;
        pwd = txtpwd.Text;
        cmd = new SqlCommand("select * from users_master where loginname = '" + lname + "' and password = '" + pwd + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["uname"] = lname;
            lblmsg.Text = "You logged in...";
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid Login and/or password";
        }
        cmd.Dispose();
        cn.Close();

    }
}
