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
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    //private OleDbConnection cn;
    //private OleDbCommand cmd;
    //private OleDbDataReader dr;
    private SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString);
    private SqlCommand cmd = null;
    SqlDataReader dr = null;
    SqlDataAdapter sda = null;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //Console.WriteLine("Class1.cname=", Class1.cname);
            //lblcat.Text = Class1.cname;
            //cn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\BCA MJC\\ArtGallery\\ArtGallery.accdb");
            cn.Open();

            //cmd = new SqlCommand("select * from creations where cat_id = (select cat_id from category where cat_name = '" + Class1.cname + "')", cn);
            cmd = new SqlCommand("select * from creations where cat_id = (select cat_id from category where cat_name = '" + Class1.cname + "')", cn);

            //cmd = new SqlCommand("[dbo].[proc_creations]", cn);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@name", Class1.cname);
            dr = cmd.ExecuteReader();
            int i = 1;
            while (dr.Read())
            {
                switch (i)
                {
                    case 1:
                        {
                            ImageButton1.ImageUrl = dr.GetString(6);
                            Label1.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 2:
                        {
                            ImageButton2.ImageUrl = dr.GetString(6);
                            Label2.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 3:
                        {
                            ImageButton3.ImageUrl = dr.GetString(6);
                            Label3.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 4:
                        {
                            ImageButton4.ImageUrl = dr.GetString(6);
                            Label4.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 5:
                        {
                            ImageButton5.ImageUrl = dr.GetString(6);
                            Label5.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 6:
                        {
                            ImageButton6.ImageUrl = dr.GetString(6);
                            Label6.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 7:
                        {
                            ImageButton7.ImageUrl = dr.GetString(6);
                            Label7.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 8:
                        {
                            ImageButton8.ImageUrl = dr.GetString(6);
                            Label8.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 9:
                        {
                            ImageButton9.ImageUrl = dr.GetString(6);
                            Label9.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 10:
                        {
                            ImageButton10.ImageUrl = dr.GetString(6);
                            Label10.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 11:
                        {
                            ImageButton11.ImageUrl = dr.GetString(6);
                            Label11.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                    case 12:
                        {
                            ImageButton12.ImageUrl = dr.GetString(6);
                            Label12.Text = "Name :" + dr.GetString(2)
                            + "<br>" + dr.GetValue(3).ToString()
                            + "<br>" + "By :" + dr.GetString(4);
                            break;
                        }
                }
                i++;
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton1.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton2.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton3.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton4.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton5.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton6.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton7.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton8.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton9.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton10.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton11.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Class1.img = ImageButton12.ImageUrl.ToString();
        Response.Redirect("Show.aspx");
    }
}
