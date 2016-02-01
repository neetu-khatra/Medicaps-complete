using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections;

public partial class Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      // SqlDataReader dr =add();
        List<String> ob = new List<string>();
        string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        foreach(ListItem li in CheckBoxList1.Items)
        {
            if(li.Selected)
            {
                ob.Add(li.Text);
             
            }
        }

        SqlCommand cmd = new SqlCommand("select name from D1 where symptom1='" + ob[0].ToString() + "' and symptom2='" + ob[1].ToString() + "' and symptom3='" + ob[2].ToString() + "' ", con);
        con.Open();
        SqlDataReader dr=cmd.ExecuteReader();
        while(dr.Read())
        {
            Response.Write(dr[0].ToString());
        }

    }

    //public SqlDataReader add()
    //{
    //    string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;

    //    SqlConnection con = new SqlConnection(s);
    //    SqlCommand cmd = new SqlCommand("select Symptom1,Symptom2,Symptom3,Symptom4,Symptom5 from Diseases",con);
    //    con.Open();
    //  SqlDataReader dr = cmd.ExecuteReader();
    //  return dr;

    //}
}