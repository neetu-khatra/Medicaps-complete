using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class UpdateDiseases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        SqlConnection con = new SqlConnection(s);
        SqlCommand cmd = new SqlCommand("select * from FDisTable where Id ='" + TextBox11.Text + "' ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();
            TextBox5.Text = dr[5].ToString();
            TextBox6.Text = dr[6].ToString();
            TextBox7.Text = dr[7].ToString();
            TextBox8.Text = dr[8].ToString();
            TextBox9.Text = dr[9].ToString();
            TextBox10.Text = dr[10].ToString();
            FileUpload1.HasFile.Equals(dr[11].ToString());
            FileUpload2.HasFile.Equals(dr[12].ToString());
            FileUpload3.HasFile.Equals(dr[13].ToString());
        }

        con.Close();
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
            SqlCommand cmd = new SqlCommand("update DisTable set name='" + TextBox1.Text + "',precautions='" + TextBox2.Text + "',cure='" + TextBox3.Text + "',[test to confirm]='" + TextBox4.Text + "',s1='" + TextBox5.Text + "',s2='" + TextBox6.Text + "',s3='" + TextBox7.Text + "',s4='" + TextBox8.Text + "',s5='" + TextBox9.TemplateControl + "',s6='" + TextBox10.Text + "',img1='" + ("~/uploadImages/" + filename1) + "',img2='"+("~/uploadImages/" + filename2)+"',img3='"+("~/uploadImages/" + filename3)+"' where Id='" + TextBox11.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<Script>alert('You have successfully updated the values.. THANK YOU..')</Script>");
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
            TextBox11.Text = "";

        }
    }
}
