using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
using System.Net.Mail;
using System.Net;

public partial class demo_pages_demoMail : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string body = "From:" + TextBox1.Text;
        body += "subject" + TextBox4.Text;
        body += "Message:" + TextBox5.Text;
        var smtp = new System.Net.Mail.SmtpClient();

        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(TextBox1.Text, TextBox2.Text);
            smtp.Timeout = 2000;
        }
        smtp.Send(TextBox1.Text, TextBox3.Text, TextBox4.Text, body);
        Response.Write("<Script>alert('You have successfully inserted the values.. THANK YOU..')</Script>");


    }
}