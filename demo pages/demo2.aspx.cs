using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class demo2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        List<String> ob1 = new List<string>();
        string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected)
            {
                ob1.Add(li.Text);

            }
        }

        SqlCommand cmd = new SqlCommand("select name from Table1 where s1='" + ob1[0].ToString() + "' and s2='" + ob1[1].ToString() + "' and s3='" + ob1[2].ToString() + "' ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Response.Write(dr[0].ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
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

        SqlCommand cmd = new SqlCommand("select name from DisTable where s1='" + ob2[0].ToString() + "' and s2='" + ob2[1].ToString() + "' and s3='" + ob2[2].ToString() + "' and s4='" + ob2[3].ToString() + "' and s5='" + ob2[4].ToString() + "' and s6='" + ob2[5].ToString() + "' ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Response.Write(dr[0].ToString());
        }
    }
}