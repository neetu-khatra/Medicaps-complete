using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class insertDiseases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile && FileUpload2.HasFile && FileUpload3.HasFile)
        {
            string filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/uploadImages/" + filename1));

            string filename2 = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Server.MapPath("~/uploadImages/" + filename2));

            string filename3 = Path.GetFileName(FileUpload3.PostedFile.FileName);
            FileUpload3.SaveAs(Server.MapPath("~/uploadImages/" + filename3));
            String s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
            SqlConnection con = new SqlConnection(s);
            SqlCommand cmd = new SqlCommand("insert into FDisTable values (@name,@precautions,@cure,@testtoconfirm,@s1,@s2,@s3,@s4,@s5,@s6,@img1,@img2,@img3)", con);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@precautions", TextBox2.Text);
            cmd.Parameters.AddWithValue("@cure", TextBox3.Text);
            cmd.Parameters.AddWithValue("@testtoconfirm", TextBox4.Text);
            cmd.Parameters.AddWithValue("@s1", TextBox5.Text);
            cmd.Parameters.AddWithValue("@s2", TextBox6.Text);
            cmd.Parameters.AddWithValue("@s3", TextBox7.Text);
            cmd.Parameters.AddWithValue("@s4", TextBox8.Text);
            cmd.Parameters.AddWithValue("@s5", TextBox9.Text);
            cmd.Parameters.AddWithValue("@s6", TextBox10.Text);
            cmd.Parameters.AddWithValue("@img1", ("~/uploadImages/" + filename1));
            cmd.Parameters.AddWithValue("@img2", ("~/uploadImages/" + filename2));
            cmd.Parameters.AddWithValue("@img3", ("~/uploadImages/" + filename3)); 
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<Script>alert('You have successfully inserted the values.. THANK YOU..')</Script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";

            //con.Close();
           
        }
    }
}
