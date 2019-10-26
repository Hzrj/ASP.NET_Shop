using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class regedit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ((TextBox)DetailsView1.FindControl("TextBox2")).TextMode = TextBoxMode.Password;
        ((TextBox)DetailsView1.FindControl("TextBox9")).TextMode = TextBoxMode.Password;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        AccessDataSource ads = new AccessDataSource();
        ads.DataFile="~/App_Data/mystore.mdb";
        ads.SelectCommand = "SELECT USERNAME FROM YONGHU WHERE USERNAME=?";
        TextBox txtbox=(TextBox)DetailsView1.FindControl("username");
        ads.SelectParameters.Add("username",txtbox.Text.Trim());

        DataView dv=(DataView)ads.Select(DataSourceSelectArguments.Empty);
         Label lbl=new Label();
            lbl=(Label)DetailsView1.FindControl("msg");
        if (dv.Count>0)
	{
            lbl.Text="用户已存在";
	}
        else
	{
            lbl.Text="可注册";
	}
    }
    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string strpwd, restrpwd,x1,x2,x3,x4,x5,x6,x7;
        x7 = ((TextBox)DetailsView1.FindControl("username")).Text;
        strpwd = ((TextBox)DetailsView1.FindControl("TextBox2")).Text;
        restrpwd = ((TextBox)DetailsView1.FindControl("TextBox9")).Text;
        x1 = ((TextBox)DetailsView1.FindControl("TextBox3")).Text;
        x2 = ((TextBox)DetailsView1.FindControl("TextBox5")).Text;
        x3 = ((TextBox)DetailsView1.FindControl("TextBox6")).Text;
        x4 = ((TextBox)DetailsView1.FindControl("TextBox7")).Text;
        x5 = ((TextBox)DetailsView1.FindControl("TextBox8")).Text;
        x6 = ((RadioButtonList)DetailsView1.FindControl("RadioButtonList1")).Text;
        if ( strpwd==string.Empty|| restrpwd==string.Empty||x1==string.Empty||x2==string.Empty||x3==string.Empty||x4==string.Empty||x5==string.Empty||x6==string.Empty||x7==string.Empty)
        {
            Response.Write(@"<script>alert('请不要留空')</script>");
            return;
        }
        if (strpwd != restrpwd)
        {
            Response.Write(@"<script>alert('两次输入的密码不正确')</script>");
            return;
        }
    }
}