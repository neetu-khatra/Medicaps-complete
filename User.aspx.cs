using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class User : System.Web.UI.Page
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
                    btnlgout.Visible = true;
                    panel1.Visible = false;
                    panel2.Visible = false;
                    panel4.Visible = false;
                    Panel5.Visible = false;
                    CheckBoxList1.Visible = false;
                }
            }
            else
            {
                Label1.Text = "Welcome Guest";
                btnlgout.Visible = false;
                panel1.Visible = false;
                panel2.Visible = false;
                panel4.Visible = false;
                Panel5.Visible = false;
                CheckBoxList1.Visible = false;
            }
        }
        
    }
    protected void btnReport_Click(object sender, EventArgs e)
    {
        String name;
        String prec;
        String cure;
        String tests;
        List<String> ob3 = new List<string>();
        string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected)
            {
                ob3.Add(li.Text);
            }
        }
        SqlCommand cmd = new SqlCommand("select * from FDisTable where s1='" + ob3[0].ToString() + "' and s2='" + ob3[1].ToString() + "' and s3='" + ob3[2].ToString() + "' and s4='" + ob3[3].ToString() + "' and s5='" + ob3[4].ToString() + "' and s6='" + ob3[5].ToString() + "' ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
           
            name = dr[1].ToString();
            prec = dr[2].ToString();
            cure = dr[3].ToString();
            tests = dr[4].ToString();
            Label5.Text =name;
            Label7.Text =prec;
            Label9.Text =cure;
            Label11.Text =tests;
            Image3.ImageUrl=dr[11].ToString();
            Image4.ImageUrl = dr[12].ToString();
            Image5.ImageUrl = dr[13].ToString();
        }
        panel1.Visible = true;
        panel2.Visible = false;
    }
    protected void BtnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        panel4.Visible = true;
        panel3.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
        panel3.Visible = false;
        panel4.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        panel2.Visible = true;
        CheckBoxList1.Visible = true;
        Panel5.Visible = false;
    }
    protected void btnlgout_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}