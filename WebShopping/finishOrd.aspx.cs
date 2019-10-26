using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class finishOrd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cartName"] == null)
        {
            Response.Redirect("login.aspx");
            return;
        }
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            Label hj = (Label)DataList1.Items[i].FindControl("Label1");
            zj.Text = (Convert.ToDecimal(zj.Text) + Convert.ToDecimal(hj.Text)).ToString();
            if (Convert.ToDecimal(zj.Text) < 10000)
            {
                kdf.Text = "20";
            }
            else
                kdf.Text = "0";
            fk.Text = (Convert.ToDecimal(zj.Text) + Convert.ToDecimal(kdf.Text)).ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        AccessDataSource ads = new AccessDataSource();
        ads.DataFile = "~/App_Data/mystore.mdb";
        ads.InsertCommand = "insert into  Orders (CustomerName,CustomerAddress,CustomerPhone,SubTotal,Shipping,GrandTotal)values(?,?,?,?,?,?)";
        ads.InsertParameters.Add("CustomerName", Session["CartName"].ToString());
        ads.InsertParameters.Add("CustomerAddress", ((Label)FormView2.FindControl("addressLabel")).Text);
        ads.InsertParameters.Add("CustomerPhone", ((Label)FormView2.FindControl("phone")).Text);
        ads.InsertParameters.Add("SubTotal", zj.Text);
        ads.InsertParameters.Add("Shipping", kdf.Text);
        ads.InsertParameters.Add("GrandTotal", fk.Text);
        ads.Insert();
        ads.Dispose();
        //添加订单号
        string Oid = "";
        AccessDataSource ads2 = new AccessDataSource();
        ads2.DataFile = "~/App_Data/mystore.mdb";
        //ads2.SelectCommand = "select top 1 OrderID from Orders where CustomerName='" + Session["CartName"].ToString() + "' order by OrderTime Decs";
        ads2.SelectCommand = "select top 1 OrderID from Orders where CustomerName='"+Session["CartName"].ToString()+"'order by OrderTime Desc";
        DataView dv = new DataView();
        dv = (DataView)ads2.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0)
        {
            foreach (DataRowView dr in dv)
            {
                Oid = dr["OrderID"].ToString();
            }
        }
        ads2.Dispose();
        //
        AccessDataSource ads3 = new AccessDataSource();
        ads3.DataFile = "~/App_Data/mystore.mdb";
        ads3.InsertCommand = "insert into  OrderDetail(OrderID,ProductID,ProductName,UnitPrice,Quantity)values(?,?,?,?,?)";
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            ads3.InsertParameters.Clear();
            ads3.InsertParameters.Add("OrderID", Oid);
            ads3.InsertParameters.Add("ProductID", ((Label)DataList1.Items[i].FindControl("ProductIDLabel")).Text);
            ads3.InsertParameters.Add("ProductName", ((Label)DataList1.Items[i].FindControl("ProductNameLabel")).Text);
            ads3.InsertParameters.Add("UnitPrice", ((Label)DataList1.Items[i].FindControl("UnitPriceLabel")).Text);
            ads3.InsertParameters.Add("Quantity", ((Label)DataList1.Items[i].FindControl("QuantityLabel")).Text);
            ads3.Insert();
            ads3.Dispose();
        }

        //删除购物车相关的信息

        AccessDataSource ads4 = new AccessDataSource();
        ads4.DataFile = "~/App_Data/mystore.mdb";
        ads4.DeleteCommand = "delect from Cart where cartCustomer=? and ProductID=?";
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            string pid = ((Label)DataList1.Items[i].FindControl("ProductIDLabel")).Text;
            ads4.DeleteParameters.Clear();
            ads4.DeleteParameters.Add("cartCustomer", Session["CartName"].ToString());
            ads4.DeleteParameters.Add("ProductID", pid);
            ads4.Dispose();
        }
        //删除临时表的相关信息
        AccessDataSource ads5 = new AccessDataSource();
        ads5.DataFile = "~/App_Data/mystore.mdb";
        ads5.DeleteCommand = "delect from temp where cartCustomer=?";
        ads5.DeleteParameters.Add("cartCustomer", Session["CartName"].ToString());
        ads5.Dispose();
        Response.Redirect("view_Order.aspx?orderid=" + Oid);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
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
