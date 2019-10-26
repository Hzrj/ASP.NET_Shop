using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ((TextBox)this.FindControl("TextBox2")).TextMode = TextBoxMode.Password;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
         AccessDataSource ads = new AccessDataSource();
        ads.DataFile = "~/App_data/mystore.mdb";
        ads.SelectCommand = "SELECT * FROM [yonghu] WHERE [username] ='" + TextBox1.Text.Trim()/**/ + "' AND password ='" + TextBox2.Text.Trim() + "'";
        DataView dv = (DataView)ads.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0)
        {
            Session["cartName"] = TextBox1.Text.Trim();
            Response.Redirect("index.aspx");//登录个人主页
        }
        else
        {
            msg.Text = "用户信息错误";
            //Response.Write(@"<script>('用户信息错误')</srcipt>");
        }
    }
}