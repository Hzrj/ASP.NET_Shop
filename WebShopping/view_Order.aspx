<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_Order.aspx.cs" Inherits="view_Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
*
{
    margin:0;
}
        body{background-color:#f2f2f2;}
.addre
{
    background:#999;
    display:inline-block;
    padding:20px 10px;
    border:1px dashed #000;
}

    .style1
    {
        width: 100%;
    }
    .jiesuan
    {
        width:200px;
        float:right;
        text-align:right;
    }
    tb
    {
        width:120px;
        text-align:left;
    }
    .div_car
        {
            width:500px;
            margin:auto;
            background-color:White;
        }
        .kong
        {
            height:50px;
        }
        .right
        {
            float:right;
        }
        .header
        {
            width: 100%;
            height: 40px;
            background-color: Navy;
            color: White;
            position: fixed;
            left: 0;
            top: 0;
        }
        .head_ul
        {
            padding-left: 500px;
            padding-top:10px;
            font-size: 14px;
            height: 30px;
            width:1200px;
        }
        .head_ul ::after
        {
            content: '';
            display: block;
            clear: both;
        }
       
        /*二级导航项分割线*/
        .head_ul2
        {
            /*默认隐藏*/
            display: none;position:absolute;
        }
        /*内容区*/
        .head_ul  li:hover  .head_ul2
        {
            display: block;position:absolute;
            background-color:#a5baf3;
            margin-top:10px;
            box-shadow: darkgrey 1px 0px 20px -5px ;
        }
        .head_ul  li:hover  .head_ul2 a
        {
            color:White;
        }
        .head_ul  li:hover  .head_ul2 a:hover
        {
            color:Navy;
        }
        .head_ul li
        {
            float: left;
            width: 60px;
            height: 30px;
            list-style: none;
            margin-right: 20px;
            text-align: center;
            cursor: pointer;
        }
        .head_ul li a
        {
            color: White;
            text-decoration: none;
        }
        .sp
        {
            width:20px;
        }
        .li_2
        {
            width: 500px;
            height: 10px;
            float: left;
        }
        .banner
        {
            margin:0;
            padding:0;
            width:100%;
            height:350px;
            background-color:#ffd84d;
        }
        .denglu
        {
            width:400px;
            height:200px;
            background-color:rgba(255,255,255,0.3);
            position:absolute;
            left:1200px;
            top:200px;    
        }
        .denglu ul
        {
             list-style:none; text-align:center;   
       
        }
        .denglu ul li
        {
            height:35px;
            line-height:35px;
       
        } 
        .denglu ul li a
        {
            text-decoration:none;
            color:Black;
        }
       .denglu ul li a:hover
       {
             color:Blue;
        }
       #first
       {
            background-color:rgba(255,255,255,.7);
            display:block; 
            text-align:center;  
            width:110px;
            margin-top:90px;
            margin-left:145px;
            color:White;
            margin-bottom:10px;
       }
       #first a:hover
       {
            color:Blue;
       }
        .photo img 
       {
           height:350px;
           margin-left:500px;
           float:left;
       }
        .foot_photo_1 img 
       {
           width:250px;
           height:150px;
           margin-left:300px;
           margin-top:130px;
           float:left;
       }
       .div_dingdan
       {
           width:500px;
           margin:auto;
       }
       
       .foot
        {
            margin:0;
            padding:0;
            width:100%;
            height:250px;
            background-color:#ffd84d;
        }
         .photo 
       {
           float:left;
       }
 .foot_photo1 
       {
           float:left;
       }
       .foot_photo1 img 
       {
           width:250px;
           height:150px;
           margin-left:300px;
           margin-top:50px;
           float:left;
       }
       .foot_photo1_0 img 
       {
           width:250px;
           height:150px;
           margin-left:300px;
           margin-top:130px;
           float:left;
       }
        .foot_photo2 img 
       {
           width:250px;
           height:100px;
           margin-left:60px;
           margin-top:90px;
           float:left;
       }
        .foot_photo3 img 
       {
           width:150px;
           height:150px;
           margin-top:60px;
           float:left;
       }
        .foot_photo4 img 
       {
            width:250px;
            height:100px;
            margin-top:90px;
            float:left;
            margin-left:260px;
            margin-right:10px;
       }
       /*--------------------*/
       .foot2
        {
            margin:0;
            padding:0;
            width:100%;
            height:130px;
            background-color:#222;
        }
       .foot2_photo1 img 
       {
           width:160px;
           height:40px;
           margin-left:300px;
           margin-top:50px;
           float:left;
       }
        .foot2_photo2 img 
       {
           width:160px;
           height:40px;
           margin-left:360px;
            margin-top:50px;
           float:left;
       }
        .foot2_photo3 img 
       {
           width:160px;
           height:40px;
           margin-top:50px;
           float:left;
           margin-left:360px;
       }
       /*--------------------*/
       .foot3
       {
           width:100%;
           height:210px;
           background-color:White;
            display: flex;<%--//弹性布局--%>
       }
       .foot3 ul
       {
           margin-top:10px;
          flex-flow: row;
           width:1300px;
           height:210px;
           margin-left:290px;
       }
        .foot3 ul li
       {
           width:300px;
            text-align: left;
           float:left;
           list-style:none;
           height:30px;
           color:#ccc;
       }
       .foot3 ul li a
       {
           color:Black;
           text-decoration:none;
           
       }
       .foot3 ul li a:hover
       {
           border-right:1px solid #ccc;
           padding-left:20px;
          
       }
        .down img
        {
            width:120px;
            height :124px;
            float:right;
           
        }
         .down ul
         {
              position:fixed;
              right:0px;
              bottom:0px;
         }
         .down ul li
         {
             display:none;
         }
          .down ul:hover li
          {
            display:block;
            width:100%;
            height:120px;
            background-color:rgba(34,34,34,.8);
            float:left;
          }
        .down ul:hover 
        {
            width:100%;
        }
        .down_foot0_1 img
        {
            margin-right:150px;
            margin-top:20px;
            height:80px;
            width:460px;
        } 
        .down_foot1_4 img
        {
             margin-right:620px;
            margin-top:30px;
            width:200px;
            height:80px;
        }
         .down_foot1_3 img
        {
             margin-right:20px;
            margin-top:20px;
            width:100px;
            height:100px;
        }
        .kong1
        {
            height:200px;
        }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="~/App_Data/mystore.mdb"
                SelectCommand="SELECT fullname FROM [yonghu] WHERE ([username] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="cartName" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
    <div class="header">
        <ul class="head_ul">
            <li>
                <asp:FormView ID="FormView1" runat="server" DataSourceID="AccessDataSource4">
                    <ItemTemplate>
                        欢迎<asp:Label ID="fname" runat="server" Text='<%# Eval("fullname") %>' ForeColor="White"></asp:Label>
                    </ItemTemplate>
                </asp:FormView>
            </li>
            <div class="li_2">
            </div>
            <li></li>
            <li><a href="index.aspx">首页 </a></li>
            <li><a href="#">我的订单 </a></li>
            <li><a href="#">我的信息 </a></li>
            <li><a href="cartBasket.aspx">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/login.aspx">用户登录</asp:HyperLink>
                <a href="#">&nbsp;</a></li>
            <li><a href="#"><asp:LinkButton ID="LinkButton1" runat="server" 
                    onclick="LinkButton1_Click">用户登出</asp:LinkButton>
               </a></li>
            <li><a href="cartBasket.aspx">购物车 </a>
                <ul class="head_ul2">
                    <li class="sp"><a href="cartBasket.aspx">购物车1</li>
                    <li class="sp"><a href="cartBasket.aspx">购物车2</li>
                    <li class="sp"><a href="cartBasket.aspx">购物车3</li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="banner">
        <div class="foot_photo_1">
            <img src="images/foot1_1.png" /></div>
        <div class="photo">
            <img src="images/闲鱼.png" /></div>
       <%-- <div class="denglu">
            <ul>
                <li id="first"><a href="login.aspx">用户登录</a></li>
                <li><a href="regedit.aspx">用户注册</a></li>
            </ul>
        </div>--%>
    </div>
    <div class="kong"></div>
    <div class="div_dingdan">
    
        订单信息<br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="OrderID" DataSourceID="AccessDataSource1" Height="50px" 
            Width="500px">
            <Fields>
                <asp:BoundField DataField="CustomerName" HeaderText="账号" 
                    SortExpression="CustomerName" />
                <asp:BoundField DataField="CustomerEmail" HeaderText="邮箱" 
                    SortExpression="CustomerEmail" />
                <asp:BoundField DataField="CustomerAddress" HeaderText="地址" 
                    SortExpression="CustomerAddress" />
                <asp:BoundField DataField="CustomerPhone" HeaderText="电话" 
                    SortExpression="CustomerPhone" />
                <asp:BoundField DataField="SubTotal" HeaderText="金额" 
                    SortExpression="SubTotal" />
                <asp:BoundField DataField="Shipping" HeaderText="运费" 
                    SortExpression="Shipping" />
                <asp:BoundField DataField="GrandTotal" HeaderText="总金额" 
                    SortExpression="GrandTotal" />
                <asp:BoundField DataField="PayType" HeaderText="付款方式" 
                    SortExpression="PayType" />
                <asp:BoundField DataField="OrderTime" HeaderText="时间" 
                    SortExpression="OrderTime" />
            </Fields>
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/mystore.mdb" 
            SelectCommand="SELECT * FROM [Orders] WHERE ([OrderID] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="OrderID" QueryStringField="orderid" 
                    Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        订单详情<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="OrderDetailID" DataSourceID="AccessDataSource2" Width="500px">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="订单编号" 
                    SortExpression="OrderID" />
                <asp:BoundField DataField="ProductID" HeaderText="商品编号" 
                    SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="商品名称" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="UnitPrice" HeaderText="商品单价" 
                    SortExpression="UnitPrice" />
                <asp:BoundField DataField="Quantity" HeaderText="数量" 
                    SortExpression="Quantity" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/mystore.mdb" 
            SelectCommand="SELECT * FROM [OrderDetail] WHERE ([OrderID] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="OrderID" QueryStringField="orderid" 
                    Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>

    <div class="kong1"></div>

    <div class="foot">
        <div class="foot_photo1">
            <img src="images/foot1_1.png" /></div>
        <div class="foot_photo2">
            <img src="images/foot1_2.png" /></div>
        <div class="foot_photo4">
            <img src="images/foot1_4.png" /></div>
        <div class="foot_photo3">
            <img src="images/foot1_3.png" /></div>
    </div>
    <div class="foot2">
        <div class="foot2_photo1">
            <img src="images/foot2_1.png" /></div>
        <div class="foot2_photo2">
            <img src="images/foot2_2.png" /></div>
        <div class="foot2_photo3">
            <img src="images/foot2_3.png" /></div>
    </div>
    <div class="foot3">
        <ul>
            <li><a href="#">阿里巴巴集团</a></li>
            <li><a href="#">淘宝网</a></li>
            <li><a href="#">天猫</a></li>
            <li><a href="#">聚划算</a></li>
            <li><a href="#">全球速卖通</a></li>
            <li><a href="#">阿里巴巴国际交易市场</a></li>
            <li><a href="#">1688</a></li>
            <li><a href="#">阿里妈妈</a></li>
            <li><a href="#">飞猪</a></li>
            <li><a href="#">阿里云计算</a></li>
            <li><a href="#">AliOS</a></li>
            <li><a href="#">一淘</a></li>
            <li><a href="#">万网</a></li>
            <li><a href="#">高德</a></li>
            <li><a href="#">UC</a></li>
            <li><a href="#">友盟 虾米</a></li>
            <li><a href="#">大麦网</a></li>
            <li><a href="#">大麦网</a></li>
            <li><a href="#">钉钉</a></li>
            <li><a href="#">支付宝</a></li>
            <li><a href="#">优酷</a></li>
            <li><a href="#">土豆</a></li>
            <li><a href="#">阿里健康</a></li>
            <li><a href="#">阿里影业</a></li>
            <li><a href="#">阿里体育</a></li>
            <li><a href="#">网商银行</a></li>
        </ul>
    </div>
    </form>
</body>
</html>
