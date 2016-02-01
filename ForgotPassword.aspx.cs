using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
        Label6.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

        String s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        SqlCommand cmd = new SqlCommand(" Select * from Login where Name='" + TextBox1.Text + "' and Email='" + TextBox2.Text + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        
        
            while (dr.Read())
            {
                Label5.Text=dr[3].ToString();
                Label5.Visible = true;
                Label6.Visible = true;
            }
           
        con.Close();
       
    }

}