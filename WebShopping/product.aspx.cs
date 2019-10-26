using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Questr = Request.QueryString["p_id"];
        if (Questr==null)
        {
            Response.Redirect("index.aspx");
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
    protected void HyperLink5_Load(object sender, EventArgs e)
    {

    }
    protected void FormView3_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
    
    }

    protected void DataList2_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["cartName"] != null)
        {
            AccessDataSource ads = new AccessDataSource();
            ads.DataFile = "~/App_data/mystore.mdb";
            ads.SelectCommand = "SELECT * FROM [cart] WHERE [cartCustomer] ='" + Session["cartName"]/**/ + "' AND ProductID =" + DataList2.DataKeys[e.Item.ItemIndex];
            DataView dv = (DataView)ads.Select(DataSourceSelectArguments.Empty);
            if (dv.Count == 0)
            {
                Label LB1 = (Label)e.Item.FindControl("productnameLabel");//产品名
                Label LB2 = (Label)e.Item.FindControl("productpriceLabel");//价格
                ads.InsertCommand = "INSERT INTO [cart]([cartCustomer], [ProductID], [ProductName], [UnitPrice],[Quantity]) VALUES (?, ?, ?, ?, 1)";

                ads.InsertParameters.Add("cartCustomer", Convert.ToString(Session["cartName"]));

                ads.InsertParameters.Add(" ProductID", Convert.ToString(DataList2.DataKeys[e.Item.ItemIndex]));

                ads.InsertParameters.Add("ProductName", LB1.Text);

                ads.InsertParameters.Add("UnitPrice", LB2.Text);

                ads.Insert();
            }
            else
            {
                ads.UpdateCommand = "UPDATE [cart] SET[Quantity] = [Quantity]+1 WHERE [cartCustomer] ='" + Session["cartName"] + "'AND ProductID =" + DataList2.DataKeys[e.Item.ItemIndex];
                ads.Update();
            }
            Response.Redirect("cartBasket.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}