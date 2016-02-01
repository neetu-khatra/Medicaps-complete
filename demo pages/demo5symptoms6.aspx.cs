using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class demo5symptoms6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        panel1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String abc;
        String def;
        String ghi;
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
        SqlCommand cmd = new SqlCommand("select * from demoTable where s1='" + ob2[0].ToString() + "' and s2='" + ob2[1].ToString() + "' and s3='" + ob2[2].ToString() + "' and s4='" + ob2[3].ToString() + "' and s5='" + ob2[4].ToString() + "' and s6='" + ob2[5].ToString() + "' ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
           // Response.Write(dr[0].ToString());
            abc = dr[1].ToString();
            def=dr[8].ToString();
            ghi=dr[9].ToString();
            CheckBoxList1.Visible = false;
            Button1.Visible = false;
            panel1.Visible = true;
            Label5.Text = abc;  
            Label7.Text=def;
            Label9.Text=ghi;    
        }        
    }
}