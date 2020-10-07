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
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    //OleDbConnection cn;
    //OleDbCommand cmd;
    SqlCommand cmd = null;
    SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString);
    //SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string cnm, email, sub, msg;
        cnm = txtname.Text;
        email = txtemail.Text;
        sub = txtsub.Text;
        msg = txtmsg.Text;

        try
        {
            cmd = new SqlCommand("[dbo].[proc_contactus]", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cname", cnm);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@subject", sub);
            cmd.Parameters.AddWithValue("@message", msg);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            lblmsg.Text = "Thanks for contacting us...";
        
            
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.ToString();
        
        }
        finally 
        {
            cn.Close();
        }
        //string qry = "INSERT INTO ContactUs (cname, email, subject, message) values('" + cnm + "', '" + email + "', '" + sub + "', '" + msg + "')";
        //cmd = new SqlCommand(qry, cn);
        //cmd.ExecuteNonQuery();
        //lblmsg.Text = "Thanks for contacting us...";
        //cmd.Dispose();
        //cn.Close();
    }
}









