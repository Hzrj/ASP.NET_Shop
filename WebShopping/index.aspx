<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default"
    Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
        }
        body{background-color:#f2f2f2;}
        .wap
        {
            margin: 100px 50px;
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
       .qian
       {
           width:1300px;
           height:120px;
           background-color:White;
           margin:auto;
       }
       .qian_left
       {
           width:804px;
           height:120px;
           float:left;
       }
       .qian_tubiao 
       {
           float:left;
           margin-left:100px;
            width: 114px;
            margin-top:10px;
        }
       .qian_tubiao_zilei
       {
           float:left;
           padding-top:40px;
           padding-left:10px;
           width:459px;
           height:80px;
        }
       .qian_tubiao_zilei a
       {
           text-decoration:none;
           color:Black;
       }
       .photo img 
       {
           height:350px;
           margin-left:500px;
           float:left;
       }
       .qian_zhongjian
       {
           height:70px;
           float:left;
           width:10px;
           margin-top:30px;
            margin-left:20px;
           border-left:1px solid #ccc;
       }
       .qian_right
       {
           float:left;
            width:450px;
            height:89px;
        }
        .qian_tubiao_1
        {
            float:left;
            width: 114px;
             margin-top:10px;
        }
        .qian_tubiao_zilei_1
        {
            width:296px;
            float:left;
            padding-top:40px;
        }
       .qian_kong
       {
           float:none;
       }
       .gouwuche
       {
           width:1300px;
           height:500px;
           margin-top:12px;
           margin-left:234px;
       }
       .banner_head
       {
           width:1300px;
           height:60px;
           background-color:#ffd84d;
            margin-left:250px;
       }
        .banner_head ul
        {
          margin-left:450px;
        }            
       .banner_head li
       {
            display:block;
           list-style:none;
           margin:auto;
           width:100px;
           height:20px; 
           float:left;
          text-align:center;
          margin-top:20px;
       }
       .banner_head li:hover
       {
           color:White;
           font-size:20px;
           margin-top:17px;
       }
       .banner_head a:hover
       {
            color:White;
       }
      .item
      {
          text-decoration:none;color:Black;
          float:left;
          list-style:none;
      }
      .shop
      {
          width:170px;
          height:250px;
          margin-left:18px;
          margin-top:10px;
          background-color:White;
         
      }
      .first_img img
      {
          margin:0;
          width:170px;
          height:150px;
      }
      .second_img img 
      {
          display :block;
          width:170px;
          height:30px;
          margin-top:10px;
      }
      .shop_margin
      {
          display :block;
          margin-top:10px;
          text-align: center;
      }
        .hylint5
      {
          width:100px;
          height:30px;
          float:left;
          position:relative;
          left:-180px;
          top:-25px;
      }
    .hylint5 ul li
    {
        width:60px;
        height:30px;
        display:inline;
        text-decoration:none;
    }
    .hylint5 ul li a
    {
        color:ThreeDDarkShadow;
        text-decoration:none;
    }
       .test
       {
           width:20px;
           height:20px;
           font:left;display:inline;
       }
       .page
       {
           margin-left:20px;
           
       }
        .page a
       {
           text-decoration:none;
           color:Orange;
       }
       /*--------------------*/
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
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <ul class="head_ul">
            <li>
                <asp:FormView ID="FormView2" runat="server" DataSourceID="AccessDataSource1">
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
            <li><a href="business.aspx">发布商品 </a></li>
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
        <div class="foot_photo1_0">
            <img src="images/foot1_1.png" /></div>
        <div class="photo">
            <img src="images/闲鱼.png" /></div>
        <div class="denglu">
            <ul>
                <li id="first"><a href="login.aspx">用户登录</a></li>
                <li><a href="regedit.aspx">用户注册</a></li>
            </ul>
        </div>
    </div>
    <div class="wap">
        <div class="qian">
            <div class="qian_left">
                <a href="#">
                    <div class="qian_tubiao">
                        <img src="images/钱图标.png" /></div>
                    <div class="qian_tubiao_zilei">
                        <h3>
                            淘宝一键转卖</h3>
                        <p>
                            淘宝买过的宝贝能换钱；他们都在用闲鱼，1个月平均多赚1600+</p>
                    </div>
                </a>
            </div>
            <div class="qian_zhongjian">
            </div>
            <div class="qian_right">
                <a href="#">
                    <div class="qian_tubiao_1">
                        <img src="images/加钱.png" />
                    </div>
                    <div class="qian_tubiao_zilei_1">
                        <h3>
                            发布闲置</h3>
                        <p>
                            闲置换钱 快速出手</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="qian_kong">
            <br />
        </div>
        <div class="banner_head">
            <div class="div1">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="AccessDataSource2" Height="138px"
                    Width="1295px" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="test">
                            <div class="hylint5">
                                <ul>
                                    <li>
                                        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="hylint5" NavigateUrl='<%# "category.aspx?ca_id="+Eval("ca_id").ToString() %>'
                                            Text='<%# Eval("ca_name") %>'></asp:HyperLink>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <%--<ul>
                <li>
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="item" NavigateUrl="#">电脑1</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink5" runat="server" CssClass="item" NavigateUrl="#">电脑2</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="item" NavigateUrl="#">电脑3</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink7" runat="server" CssClass="item" NavigateUrl="#">电脑4</asp:HyperLink>--%>
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/mystore.mdb"
                SelectCommand="SELECT * FROM [product_Category]"></asp:AccessDataSource>
            <%--   </li>
               
            </ul>--%>
        </div>
        <h4>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/mystore.mdb"
                SelectCommand="SELECT fullname FROM [yonghu] WHERE ([username] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="cartName" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </h4>
        <div class="gouwuche">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" RepeatColumns="7"
                OnUpdateCommand="DataList1_UpdateCommand" BackColor="#F1F1F1">
                <ItemTemplate>
                    <div class="shop" style="text-align: center;">
                        <div class="first_img">
                            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# "images/"+Eval("productimages").ToString() %>'
                                NavigateUrl='<%# "product.aspx?p_id="+Eval("productid").ToString() %>'>HyperLink</asp:HyperLink>
                        </div>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>' BackColor="White"
                            CssClass="shop_margin"></asp:Label>
                        <asp:Label ID="Label2" runat="server" BackColor="White" ForeColor="Red" Text='<%# Eval("productprice", "{0:C}") %>'
                            CssClass="shop_margin"></asp:Label>
                        <div class="second_img">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/shoppingcart.gif"
                                CommandName="update" CssClass="second_img" Visible="False" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <br />
            <div class="page">
                <asp:HyperLink ID="lnkFirst" runat="server">第一页</asp:HyperLink>
                <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                <asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                <asp:HyperLink ID="lnkLast" runat="server">最后一页</asp:HyperLink>
            </div>
        </div>
        <br />
        <br />
    </div>
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
    <div class="down">
        <ul>
            <img src="images/foot0.png" />
            <li>
                <div class="down_foot1_4">
                    <img src="images/foot1_4.png" class="down_foot1_4" />
                </div>
                <div class="down_foot1_3">
                    <img src="images/foot1_3.png" class="down_foot1_3" />
                </div>
                <div class="down_foot0_1">
                    <img src="images/foot0_1.png" />
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
