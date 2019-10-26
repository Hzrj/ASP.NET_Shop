using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cartBasket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ( Session["cartName"]==null)
        {
            Response.Redirect("login.aspx");
            return;
        }
        try
        {
            AccessDataSource2.DataFile = "~/APP_Data/mystore.mdb";
            AccessDataSource2.SelectCommand = "select sum (UnitPrice*Quantity) as xj,20 as kdf from cart where cartCustomer='" + Session["cartName"] + "'";
            Test();
        }
        catch (Exception ee)
        {
            Response.Write("<script>alert('购物车已空')</script>");
        }
           
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        DetailsView1.DataBind(); 
        Test();
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        DetailsView1.DataBind(); Test();
    }
    protected void Test()
    {
       
        Label lbl_zj = new Label();
        lbl_zj = (Label)DetailsView2.FindControl("zj");
        lbl_zj.Text = ((Label)DetailsView1.FindControl("xj")).Text;

        Label lbl_kdf = new Label();
        lbl_kdf = (Label)DetailsView2.FindControl("kdf");
        lbl_kdf.Text = ((Label)DetailsView1.FindControl("lbl_kdf")).Text;

        Label lbl_ze = new Label();
        lbl_kdf = (Label)DetailsView2.FindControl("lbl_ze");
        lbl_kdf.Text = ((Label)DetailsView1.FindControl("lbl_zj")).Text;
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ckbox = (CheckBox)sender;
        int index = ((GridViewRow)(ckbox.NamingContainer)).RowIndex;
        string temp = ((Label)GridView1.Rows[index].FindControl("Label11")).Text;
        temp = temp.Substring(1).Replace(",", "");
        if (ckbox.Checked)
        {
            zongjia.Text = (Convert.ToDecimal(zongjia.Text) + Convert.ToDecimal(temp)).ToString();
        }
        else
        {
            zongjia.Text = (Convert.ToDecimal(zongjia.Text) - Convert.ToDecimal(temp)).ToString();
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        CheckBox chkbox = new CheckBox();
        AccessDataSource ads = new AccessDataSource();
        ads.DataFile = "~/APP_Data/mystore.mdb";

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            chkbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (chkbox.Checked)
            {
                ads.InsertCommand = "insert into temp(cartCustomer,ProductID,ProductName,UnitPrice,Quantity) values(?,?,?,?,?)";
                //string cn = Session["cartName"].ToString();

                //string pid = GridView1.Rows[i].Cells[1].Text;
                //string pn = GridView1.Rows[i].Cells[2].Text;
                //string up =((Label)GridView1.Rows[i].FindControl("unitPrice")).Text;
                ads.InsertParameters.Clear();
                ads.InsertParameters.Add("cartCustomer", Session["cartName"].ToString());
                ads.InsertParameters.Add("ProductID", GridView1.Rows[i].Cells[1].Text);
                ads.InsertParameters.Add("ProductName", GridView1.Rows[i].Cells[2].Text);
                ads.InsertParameters.Add("UnitPrice", ((Label)GridView1.Rows[i].FindControl("Label2")).Text);
                ads.InsertParameters.Add("Quantity", GridView1.Rows[i].Cells[4].Text);
                ads.Insert();
            }
        }
        ads.Dispose();
        Response.Redirect("finishOrd.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        zongjia.Text = "0";
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