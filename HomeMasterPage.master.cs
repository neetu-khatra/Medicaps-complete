using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class HomeMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RegistrationPage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {   
        String s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        SqlCommand cmd = new SqlCommand(" Select Count(*) from Login where Email='"+TextBox3.Text+"' and Password='"+TextBox4.Text+"'",con);
        con.Open();
        int m = (int)cmd.ExecuteScalar();
        if (m == 1)
        {
            Session["loginid"] = TextBox3.Text;
            Response.Redirect("~/User.aspx");
        }
        else
        {
            Response.Write("<Script>alert('Email or the password entered by you is incorrect. please try again!!')</Script>");
        }   
        cmd.ExecuteScalar();
        con.Close();
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ForgotPassword.aspx");
    }
}
