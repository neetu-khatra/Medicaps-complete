using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demo4panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
}