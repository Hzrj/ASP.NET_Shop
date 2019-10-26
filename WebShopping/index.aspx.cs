using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataListDataBind();
            //Session["cartName"] = Session.SessionID;   login  里面有一个了Session 有一个就够了
        }
    }
    protected void DataListDataBind()
    {
        AccessDataSource ads = new AccessDataSource();
        ads.DataFile = "~/App_Data/mystore.mdb";
        ads.DataFile = "~/App_Data/mystore.mdb";
        ads.SelectCommand = "SELECT * FROM [Product]";  //ORDER BY [blog_date] DESC 
        DataView dv = (DataView)ads.Select(DataSourceSelectArguments.Empty);
        PagedDataSource objPage = new PagedDataSource();
        objPage.DataSource = dv;
        objPage.AllowPaging = true;
        objPage.PageSize = 9;
        int TolPage;
        TolPage = objPage.PageCount;
        int CurPage;
        if (Request.QueryString["Page"] != null)
        {
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        }
        else
        {
            CurPage = 1;
        }
        objPage.CurrentPageIndex = CurPage - 1;
        //pagenum.Text = CurPage.ToString();
        //pagecount.Text = objPage.PageCount + "";
        lnkFirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=1" + "&PageSize=" + Convert.ToString(objPage.PageSize);
        lnkLast.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + TolPage.ToString() + "&PageSize=" + Convert.ToString(objPage.PageSize);
        if (!objPage.IsFirstPage)
        {
            lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1) + "&PageSize=" + Convert.ToString(objPage.PageSize);
        }
        else
        {
            lnkPrev.Visible = false;
            lnkFirst.Visible = false;
        }
        if (!objPage.IsLastPage)
        {
            lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1) + "&PageSize=" + Convert.ToString(objPage.PageSize);
        }
        else
        {
            lnkNext.Visible = false;
            lnkLast.Visible = false;
        }

        DataList1.DataSource = objPage;
        DataList1.DataBind();
    }
    //protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    //{
    //    AccessDataSource ads = new AccessDataSource();
    //    ads.DataFile = "~/date/blog_Data.mdb";
    //    ads.SelectCommand = "SELECT * FROM blogMessages ";
    //    DataView dv = (DataView)ads.Select(DataSourceSelectArguments.Empty);
    //    //string b_id = e.Keys[0].ToString(); GridView1.Rows[0].Cells[0].ToString();
    //    ads.DeleteCommand = "delete from blog_Comment where blog_id=?";
    //    ads.DeleteParameters.Add("blog_id", b_id);
    //    ads.Delete();

    //    AccessDataSource ads2 = new AccessDataSource();
    //    ads.DataFile = "~/date/blog_Data.mdb";
    //    ads.SelectCommand = "SELECT * FROM blogCategory ";
    //    DataView dv2 = (DataView)ads.Select(DataSourceSelectArguments.Empty);

    //    ads.UpdateCommand = "update blogCategory set ca_num=ca_num-1 where ca_id=?";

    //    DropDownList dr1 = new DropDownList();
    //    dr1 = (DropDownList)DetailsView1.FindControl("caName");
    //    string c_id;

    //    ads.UpdateParameters.Add("ca_id", c_id);
    //    ads.Update();
    //    Response.Redirect("admin.aspx");
    //}
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["cartName"] != null)
        {
            AccessDataSource ads = new AccessDataSource();
            ads.DataFile = "~/App_data/mystore.mdb";
            ads.SelectCommand = "SELECT * FROM [cart] WHERE [cartCustomer] ='" + Session["cartName"]/**/ + "' AND ProductID =" + DataList1.DataKeys[e.Item.ItemIndex];
            DataView dv = (DataView)ads.Select(DataSourceSelectArguments.Empty);
            if (dv.Count == 0)
            {
                Label LB1 = (Label)e.Item.FindControl("Label1");
                Label LB2 = (Label)e.Item.FindControl("Label2");
                ads.InsertCommand = "INSERT INTO [cart]([cartCustomer], [ProductID], [ProductName], [UnitPrice],[Quantity]) VALUES (?, ?, ?, ?, 1)";

                ads.InsertParameters.Add("cartCustomer", Convert.ToString(Session["cartName"]));

                ads.InsertParameters.Add(" ProductID", Convert.ToString(DataList1.DataKeys[e.Item.ItemIndex]));

                ads.InsertParameters.Add("ProductName", LB1.Text);

                ads.InsertParameters.Add("UnitPrice", LB2.Text);

                ads.Insert();
            }
            else
            {
                ads.UpdateCommand = "UPDATE [cart] SET[Quantity] = [Quantity]+1 WHERE [cartCustomer] ='" + Session["cartName"] + "'AND ProductID =" + DataList1.DataKeys[e.Item.ItemIndex];
                ads.Update();
            }
            Response.Redirect("cartBasket.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
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



