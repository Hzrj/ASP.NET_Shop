using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class business : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    int strque;
    protected void btnFileUploa_Click(object sender, EventArgs e)
    {
        DropDownList dr = new DropDownList();
         strque = dr.SelectedIndex;
        //string strque = Request.QueryString["ca_id"];
        //ddlist.DataSource;
        #region 上传照片即获取照片名 fileName
        Boolean fileOK = false;

        FileUpload FileUpload1 = new FileUpload();
        FileUpload1=(FileUpload)DetailsView1.FindControl("FileUpload1");
        //获取上传的文件名  
        string fileName = ((FileUpload)DetailsView1.FindControl("FileUpload1")).FileName;
        //获取物理路径  
        String path = Server.MapPath("~/Images/");

        //获取后缀名
        String fileExtension=string.Empty;

        //判断上传控件是否上传文件  
        if (FileUpload1.HasFile)
        {
            //判断上传文件的扩展名是否为允许的扩展名".gif", ".png", ".jpeg", ".jpg" ,".bmp"  
             fileExtension = System.IO.Path.GetExtension(fileName).ToLower();
            String[] Extensions = { ".gif", ".png", ".jpeg", ".jpg", ".bmp" };
            for (int i = 0; i < Extensions.Length; i++)
            {
                if (fileExtension == Extensions[i])
                {
                    fileOK = true;
                }
            }
        }
        //如果上传文件扩展名为允许的扩展名，则将文件保存在服务器上指定的目录中  
        if (fileOK)
        {
            try
            {
                fileName = DateTime.Now.Ticks.ToString() + fileExtension;
                FileUpload1.PostedFile.SaveAs(path + fileName);
                MessageBox("文件上传完毕");
            }
            catch (Exception ex)
            {
                MessageBox("文件不能上传，原因：" + ex.Message);
            }
        }
        else
        {
            MessageBox("不能上传这种类型的文件");
        }
        #endregion  

        #region 获取产品名，转卖价，原价，详细说明
        TextBox productname = new TextBox(), Transferprice = new TextBox(), productprice = new TextBox(), description = new TextBox();
        productname = (TextBox)(DetailsView1.FindControl("productname"));/*产品名*/
        Transferprice = (TextBox)(DetailsView1.FindControl("Transferprice")); /*转卖价*/
        productprice = (TextBox)(DetailsView1.FindControl("productprice"));/*原价*/
        description = (TextBox)(DetailsView1.FindControl("description"));/*详细说明*/

        #endregion

        #region 储存在数据库中 insert

        AccessDataSource ads = new AccessDataSource();
        ads.DataFile = "~/App_data/mystore.mdb";
        /*插入商家上传的信息*/
        try
        {
            ads.InsertCommand = "insert into [Product] (ca_id,productname,productprice,Transferprice,productimages,description) values(2,@productname,@productprice,@Transferprice,@fileName,@description)";
            ads.InsertParameters.Add("@productname", productname.Text.Trim());
            ads.InsertParameters.Add("@productprice", productprice.Text.Trim());
            ads.InsertParameters.Add("@Transferprice", Transferprice.Text.Trim());
            ads.InsertParameters.Add("@fileName", fileName);
            ads.InsertParameters.Add("@description", description.Text.Trim());
            ads.Insert();
            ads.Dispose();
        }
        catch (Exception ee)
        {
            Response.Write(ee.Message+"");
        }
        #endregion
    }
    protected void MessageBox(string str)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('" + str + "');</script>");
    }
    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        DropDownList dr = new DropDownList();
        strque = dr.SelectedIndex;
        //string strque = Request.QueryString["ca_id"];
        //ddlist.DataSource;
        #region 上传照片即获取照片名 fileName
        Boolean fileOK = false;

        FileUpload FileUpload1 = new FileUpload();
        FileUpload1 = (FileUpload)DetailsView1.FindControl("FileUpload1");
        //获取上传的文件名  
        string fileName = ((FileUpload)DetailsView1.FindControl("FileUpload1")).FileName;
        //获取物理路径  
        String path = Server.MapPath("~/Images/");

        //获取后缀名
        String fileExtension = string.Empty;

        //判断上传控件是否上传文件  
        if (FileUpload1.HasFile)
        {
            //判断上传文件的扩展名是否为允许的扩展名".gif", ".png", ".jpeg", ".jpg" ,".bmp"  
            fileExtension = System.IO.Path.GetExtension(fileName).ToLower();
            String[] Extensions = { ".gif", ".png", ".jpeg", ".jpg", ".bmp" };
            for (int i = 0; i < Extensions.Length; i++)
            {
                if (fileExtension == Extensions[i])
                {
                    fileOK = true;
                }
            }
        }
        //如果上传文件扩展名为允许的扩展名，则将文件保存在服务器上指定的目录中  
        if (fileOK)
        {
            try
            {
                fileName = DateTime.Now.Ticks.ToString() + fileExtension;
                FileUpload1.PostedFile.SaveAs(path + fileName);
                MessageBox("文件上传完毕");
            }
            catch (Exception ex)
            {
                MessageBox("文件不能上传，原因：" + ex.Message);
            }
        }
        else
        {
            MessageBox("不能上传这种类型的文件");
        }
        #endregion

        #region 获取产品名，转卖价，原价，详细说明
        TextBox productname = new TextBox(), Transferprice = new TextBox(), productprice = new TextBox(), description = new TextBox();
        productname = (TextBox)(DetailsView1.FindControl("productname"));/*产品名*/
        Transferprice = (TextBox)(DetailsView1.FindControl("Transferprice")); /*转卖价*/
        productprice = (TextBox)(DetailsView1.FindControl("productprice"));/*原价*/
        description = (TextBox)(DetailsView1.FindControl("description"));/*详细说明*/

        #endregion

        #region 储存在数据库中 insert

        AccessDataSource ads = new AccessDataSource();
        ads.DataFile = "~/App_data/mystore.mdb";
        /*插入商家上传的信息*/
        try
        {
            ads.InsertCommand = "insert into [Product] (ca_id,productname,productprice,Transferprice,productimages,description) values(4,@productname,@productprice,@Transferprice,@fileName,@description)";
            ads.InsertParameters.Add("@productname", productname.Text.Trim());
            ads.InsertParameters.Add("@productprice", productprice.Text.Trim());
            ads.InsertParameters.Add("@Transferprice", Transferprice.Text.Trim());
            ads.InsertParameters.Add("@fileName", fileName);
            ads.InsertParameters.Add("@description", description.Text.Trim());
            ads.Insert();
            ads.Dispose();
        }
        catch (Exception ee)
        {
            Response.Redirect("index.aspx");
        }
        #endregion
    }
}