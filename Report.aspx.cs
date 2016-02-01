using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loginid"] == null)
        {
            Response.Redirect("~/Home.aspx");
        }
        else
        {
            string id = Session["loginid"].ToString();
            string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
            SqlConnection con = new SqlConnection(s);
            SqlCommand cmd = new SqlCommand("select Name from Login where Email='" + id + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr[1].ToString();
                BtnLogout.Visible = true;
                // Button1.Text = "logout";
            }
        }
    }


   /* public SqlDataReader getUserDetail()
    {
        string id1 = Session["loginid"].ToString();
        string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        SqlCommand cmd = new SqlCommand("select name,precautions,cure,[test to confirm] from DisTable where username='" + id1 + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        return dr;

    }*/
}