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
//using System.Data.OleDb;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
SqlCommand cmd = null;
SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString);
SqlDataReader dr = null;


    //private OleDbConnection cn;
    //private OleDbCommand cmd;
    //private OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        //cn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\\BCA MJC\\ArtGallery\\ArtGallery.accdb");
        cn.Open();
        if (!IsPostBack)
        {
            cmd = new SqlCommand("select CONTRY_NAME from CONTRY_MASTER", cn);
            dr = cmd.ExecuteReader();
            //dr = cmd.ExecuteNonQuery();
            while (dr.Read())
            {
                ddlcountry.Items.Add(dr.GetString(0));
            }
            dr.Close();
        }
    }
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select STATE_NAME from STATE_MASTER where CONTRY_CODE = (select CONTRY_CODE from CONTRY_MASTER where CONTRY_NAME='" + ddlcountry.Text + "')", cn);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlstate.Items.Add(dr.GetString(0));
        }
        dr.Close();

    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select CITY_NAME from CITY_MASTER where STATE_CODE = (select STATE_CODE from STATE_MASTER where STATE_NAME='" + ddlstate.Text + "')", cn);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlcity.Items.Add(dr.GetString(0));
        }
        dr.Close();

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string unm, add, email, phone, cell, country, state, city, gen, lnm, pwd, sq, ans;
        //DateTime dob;
        string dob = txtdob.Text;
        unm = txtname.Text;
        add = txtaddress.Text;
        email = txtemail.Text;
        phone = txtphone.Text;
        cell = txtcell.Text;
        country = ddlcountry.Text;
        state = ddlstate.Text;
        city = ddlcity.Text;
        if (rbmale.Checked == true)
            gen = "M";
        else
            gen = "F";
        lnm = txtlogin.Text;
        pwd = txtpwd.Text;
        sq = ddlsq.Text;
        ans = txtanswer.Text;
        gen=txtanswer.Text;
        //dob = DateTime.Parse(txtdob.Text);
        //dob = dob.Date;
        dob = txtdob.Text;
        //string qry = "INSERT INTO USERS_MASTER ([UNAME], [ADDRESS], [CONTRY], [STATE], [CITY], [PHONE], [CELLNO], [DOB], [GENDER], [LOGINNAME], [PASSWORD], [SEC_QUE], [ANSWER], [EMAIL]) VALUES ('" + unm + "', '" + add + "', '" + country + "', '" + state + "', '" + city + "', '" + phone + "', '" + cell + "', '" + txtdob.Text + "', '" + gen + "', '" + lnm + "', '" + pwd + "', '" + sq + "', '" + ans + "', '" + email + "')";
        //string qry = "INSERT INTO USERS_MASTER ([UNAME], [ADDRESS], [CONTRY], [STATE], [CITY], [PHONE], [CELLNO], [DOB], [GENDER], [LOGINNAME], [PASSWORD], [SEC_QUE], [ANSWER], [EMAIL]) VALUES ('" + unm + "', '" + add + "', '" + country + "', '" + state + "', '" + city + "', '" + phone + "', '" + cell + "', '" + dob + "', '" + gen + "', '" + lnm + "', '" + pwd + "', '" + sq + "', '" + ans + "', '" + email + "')";
        try
        {
            cmd = new SqlCommand("[dbo].[proc_regn]", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@uname", unm);
            cmd.Parameters.AddWithValue("@address", add);
            cmd.Parameters.AddWithValue("@country ", country);
            cmd.Parameters.AddWithValue("@state ", state);
            cmd.Parameters.AddWithValue("@city ", city);
            cmd.Parameters.AddWithValue("@phone ", phone);
            cmd.Parameters.AddWithValue("@cellno", cell);
            cmd.Parameters.AddWithValue("@dob ", dob);
            cmd.Parameters.AddWithValue("@gender ", gen);
            cmd.Parameters.AddWithValue("@loginname ", lnm);
            cmd.Parameters.AddWithValue("@password ", pwd);
            cmd.Parameters.AddWithValue("@sec_que", sq);
            cmd.Parameters.AddWithValue("@answer ", ans);
            cmd.Parameters.AddWithValue("@email ", email);
            
            cmd.ExecuteNonQuery();
            Label16.Text = "User Registered";
        }

        //try
        //{
        //    cmd = new SqlCommand(qry, cn);
        //    cmd.ExecuteNonQuery();
        //    Label16.Text = "User Registered";
        //}
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            cmd.Dispose();
            cn.Close();
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}

