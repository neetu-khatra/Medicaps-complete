using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class demo3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/images/" + filename));
            string s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
            SqlConnection con = new SqlConnection(s);
            SqlCommand cmd = new SqlCommand("insert into Tabledemo values(@name,@precautions,@cure,@s1,@s2,@img1)", con);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@precautions", TextBox2.Text);
            cmd.Parameters.AddWithValue("@cure", TextBox3.Text);
            cmd.Parameters.AddWithValue("@s1", TextBox5.Text);
            cmd.Parameters.AddWithValue("@s2", TextBox6.Text);
            
            cmd.Parameters.AddWithValue("@img1", ("~/images/" + filename));
            con.Open();
            cmd.ExecuteNonQuery();
            //con.Close();
            Response.Write("<script>alert('Item added into Database')</script>");
        }
    }
}