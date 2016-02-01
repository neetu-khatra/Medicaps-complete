using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Enabled = false;
        Button2.Enabled = false;
        Button4.Enabled = false;
        Button5.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/insertDiseases.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UpdateDiseases.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/showDltDiseases.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/showUsers.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        SqlCommand cmd = new SqlCommand(" Select Count(*) from Admin where name='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
        con.Open();
        int m = (int)cmd.ExecuteScalar();
        if (m == 1)
        {
            Button1.Enabled = true ;
            Button2.Enabled = true ;
            Button4.Enabled = true ;
            Button5.Enabled = true ;
        }
        else
        {
            Response.Write("<Script>alert('Name or the password entered by you is incorrect. please try again!!')</Script>");
        }

        cmd.ExecuteScalar();

        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
}
