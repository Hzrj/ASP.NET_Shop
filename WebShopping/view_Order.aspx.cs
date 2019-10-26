using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cartName"] == null)
        {
            Response.Redirect("login.aspx");
            return;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["cartName"] != null)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
        else
            Response.Write(@"<script>alert('还没登录，就要登出？')</script>");
    }
}