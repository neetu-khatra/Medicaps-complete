using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["loginid"] != null)
            {
                string id = Session["loginid"].ToString();
                string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
                SqlConnection con = new SqlConnection(s);
                SqlCommand cmd = new SqlCommand("select Name from Login where Email='" + id + "'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Label1.Text = "Welcome " + dr[0].ToString();
                    BtnLogout.Visible = true;
                    panel2.Visible = false;
                }
            }
            else
            {
                Label1.Text = "Welcome Guest";
                BtnLogout.Visible = false;
                panel2.Visible = false;
            }
        }
    }
    protected void BtnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void btnReport_Click(object sender, EventArgs e)
    {
        String name;
        String prec;
        String cure;
        String tests;

        List<String> ob2 = new List<string>();
        string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected)
            {
                ob2.Add(li.Text);
            }
        }
        SqlCommand cmd = new SqlCommand("select * from FDisTable where s1='" + ob2[0].ToString() + "' and s2='" + ob2[1].ToString() + "' and s3='" + ob2[2].ToString() + "' and s4='" + ob2[3].ToString() + "' and s5='" + ob2[4].ToString() + "' and s6='" + ob2[5].ToString() + "' ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            // Response.Write(dr[0].ToString());
            name = dr[1].ToString();
            prec = dr[2].ToString();
            cure = dr[3].ToString();
            tests = dr[4].ToString();
            CheckBoxList1.Visible = false;
            btnReport.Visible = false;
            panel2.Visible = true;
            Label5.Text = name;
            Label7.Text= prec ;
            Label9.Text= cure ;
            Label11.Text= tests ;
        }

    }
}
