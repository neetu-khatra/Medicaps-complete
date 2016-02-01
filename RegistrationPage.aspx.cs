using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class RegistrationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnRg_Click(object sender, EventArgs e)
    {
        
       SqlConnection con=new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=C:\\Users\\LENOVO PC\\Documents\\Visual Studio 2013\\WebSites\\MediWeb\\App_Data\\MediDataB.mdf;Integrated Security=True");
        SqlCommand cmd=new SqlCommand("insert into Login values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<Script>alert('You are successfully registered. Kindly login to enjoy the service. THANK YOU..')</Script>");
        Response.Redirect("~/HomePage.aspx");

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList1.ClearSelection();
        DLState.ClearSelection();
        male.Checked = false;
        female.Checked = false;

        
    }
}