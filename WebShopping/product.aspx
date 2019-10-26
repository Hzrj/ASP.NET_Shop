<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
        }
        body
        {
            background-color: #f2f2f2;
        }
        .div_car
        {
            width: 500px;
            margin: auto;
        }
        .kong
        {
            height: 50px;
        }
        .right
        {
            float: right;
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
            padding-top: 10px;
            font-size: 14px;
            height: 30px;
            width: 1200px;
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
            display: none;
            position: absolute;
        }
        /*内容区*/
        .head_ul li:hover .head_ul2
        {
            display: block;
            position: absolute;
            background-color: #a5baf3;
            margin-top: 10px;
            box-shadow: darkgrey 1px 0px 20px -5px;
        }
        .head_ul li:hover .head_ul2 a
        {
            color: White;
        }
        .head_ul li:hover .head_ul2 a:hover
        {
            color: Navy;
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
            width: 20px;
        }
        .li_2
        {
            width: 500px;
            height: 10px;
            float: left;
        }
        .banner
        {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 350px;
            background-color: #ffd84d;
        }
        .denglu
        {
            width: 400px;
            height: 200px;
            background-color: rgba(255,255,255,0.3);
            position: absolute;
            left: 1200px;
            top: 200px;
        }
        .denglu ul
        {
            list-style: none;
            text-align: center;
        }
        .denglu ul li
        {
            height: 35px;
            line-height: 35px;
        }
        .denglu ul li a
        {
            text-decoration: none;
            color: Black;
        }
        .denglu ul li a:hover
        {
            color: Blue;
        }
        #first
        {
            background-color: rgba(255,255,255,.7);
            display: block;
            text-align: center;
            width: 110px;
            margin-top: 90px;
            margin-left: 145px;
            color: White;
            margin-bottom: 10px;
        }
        #first a:hover
        {
            color: Blue;
        }
        .photo
        {
            float: left;
        }
        .photo img
        {
            height: 350px;
            margin-left: 500px;
            float: left;
        }
        .foot_photo_1 img
        {
            width: 250px;
            height: 150px;
            margin-left: 300px;
            margin-top: 120px;
            float: left;
        }
        .formview3andformview4
        {
            background-color: White;
            width: 1000px;
            margin: auto;
        }
        .classFormView3
        {
            margin-top: 50px;
            float: left;
            width: 500px;
            background-color: White;
            height: 550px;
            box-shadow: 0 0 4px rgba(0,0,0,0.3),0 0 10px rgba(0,0,0,0.1) inset;
        }
        .classFormView4
        {
            margin-left: 20px;
            margin-top: 50px;
            height: 550px;
            float: right;
            background-color: White;
            text-align: left;
            box-shadow: 0 0 4px rgba(0,0,0,0.3),0 0 10px rgba(0,0,0,0.1) inset;
        }
        .FormView4
        {
            margin-top: 20px;
            margin-left: 20px;
            float: left;
            background-color: White;
            text-align: left;
        }
        .FormView4 a
        {
            text-decoration:none;
            color:Black;
            
        }
         .FormView4_img
         {
             width:30px;
            position:absolute;
            top:600px;
         }
        .classFormView3 img
        {
            margin: 50px;
            width: 400px;
            height: 450px;
        }
        .datalist1
        {
            background-color: Black;
            position: absolute;
            left: 1038px;
            top: 625px;
        }
        .classtwo
        {
            height: 60px;
            width: 420px;
            margin:0 10px;
            line-height: 20px;
            background-color: White;
            box-shadow: 0 0 4px rgba(0,0,0,0.3),0 0 10px rgba(0,0,0,0.1) inset;
        }
        .classtwo img
        {
            margin-left: 20px;
            width: 50px;
            height: 50px;
            float: left;
        }
        .classtwo p
        {
            display: block;
            float: right;
            line-height: 50px;
        }
        .classthird
        {
            height: 60px;
            width: 420px;
            margin: 270px 10px 50px 10px;
            line-height: 20px;
            background-color: White;
            box-shadow: 0 0 4px rgba(0,0,0,0.3),0 0 10px rgba(0,0,0,0.1) inset;
        }
        .classthird img
        {
            margin-left: 20px;
            width: 50px;
            height: 50px;
            float: left;
        }
        .classthird p
        {
            display: block;
            float: right;
            line-height: 50px;
        }
        .baby
        {
            width: 1000px;
            height: 500px;
            background-color: White;
            position: relative;
            left: 450px;
            top: 650px;
            box-shadow: 0 0 4px rgba(0,0,0,0.3), 0 0 10px rgba(0,0,0,0.1) inset;
        }
        .baby p
        {
            text-align: left;
            margin-left: 20px;
            margin-top: 20px;
            position: absolute;
        }
        .p2
        {
            display: block;
            margin-left: 50px;
            text-align: left;
            margin-top: 150px;
            position: absolute;
        }
        .record
        {
            top: 250px;
            position: absolute;
            width: 600px;
            height: 200px;
            background-color: #f0f0f0;
            margin-left: 20px;
        }
        .record_img
        {
            margin: 50px 0 0 20px;
        }
        .record_p p
        {
            position: relative;
            top: -200px;
            left: 150px;
        }
        
         .foot
        {
            margin:0;
            padding:0;
            width:100%;
            height:250px;
            background-color:#ffd84d;
        }
       .foot_photo1 img 
       {
           width:250px;
           height:150px;
           margin-left:300px;
           margin-top:60px;
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
       <%-----------------%>
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
       <%--------------------%>
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
        .record img
        {
            width:150px;
            height:140px;
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
            <li><a href="#">我的信息 </a></li>
            <li>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/login.aspx">用户登录</asp:HyperLink>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">用户登出</asp:LinkButton>
            </li>
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
            <img src="images/闲鱼.png" />
        </div>
    </div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/mystore.mdb"
        SelectCommand="SELECT fullname FROM [yonghu] WHERE ([username] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="cartName" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/mystore.mdb"
        SelectCommand="SELECT * FROM [Product] WHERE ([productid] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="productid" QueryStringField="p_id" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <div class="formview3andformview4">
        <div class="classFormView3">
            <asp:FormView ID="FormView3" runat="server" DataKeyNames="productid" OnPageIndexChanging="FormView3_PageIndexChanging"
                DataSourceID="AccessDataSource2">
                <EditItemTemplate>
                    cartID:
                    <asp:Label ID="cartIDLabel1" runat="server" Text='<%# Eval("cartID") %>' />
                    <br />
                    cartCustomer:
                    <asp:TextBox ID="cartCustomerTextBox" runat="server" Text='<%# Bind("cartCustomer") %>' />
                    <br />
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    UnitPrice:
                    <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    cartTime:
                    <asp:TextBox ID="cartTimeTextBox" runat="server" Text='<%# Bind("cartTime") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                        Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    cartCustomer:
                    <asp:TextBox ID="cartCustomerTextBox0" runat="server" Text='<%# Bind("cartCustomer") %>' />
                    <br />
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox0" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox0" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    UnitPrice:
                    <asp:TextBox ID="UnitPriceTextBox0" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox0" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    cartTime:
                    <asp:TextBox ID="cartTimeTextBox0" runat="server" Text='<%# Bind("cartTime") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                        Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                        CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <a href="cartBasket.aspx">
                        <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl='<%# "images/"+Eval("productimages").ToString() %>'
                            OnLoad="HyperLink5_Load">HyperLink</asp:HyperLink>
                        <br />
                        <br />
                </ItemTemplate>
            </asp:FormView>
        </div>
        <div class="classFormView4">
            <div class="FormView4">
                <a href="cartBasket.aspx">
        <asp:DataList ID="DataList2" runat="server" DataKeyField="productid" 
            DataSourceID="AccessDataSource3" onupdatecommand="DataList2_UpdateCommand" 
                   >
            <ItemTemplate>
             <br />
                <asp:Label ID="productnameLabel" runat="server" 
                    Text='<%# Eval("productname") %>' />
                <br /><br />
                原价:
                <asp:Label ID="productpriceLabel" runat="server" 
                    Text='<%# Eval("productprice") %>' />
                <br /><br />
                转卖价:
                <asp:Label ID="TransferpriceLabely" runat="server" 
                    Text='<%# Eval("Transferprice") %>' />
                <br />
                <br />
                <a href="cartBasket.aspx">
                <asp:Label ID="descriptionLabel" runat="server" 
                    Text='<%# Eval("description") %>' Width="300px" />
                </a>
                <br />
                <br />
                加入购物车:<asp:ImageButton ID="ImageButton2" runat="server" CommandName="update" 
                    ImageUrl="~/images/加入购物车 (1).png" CssClass="FormView4_img" />
&nbsp;<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
                </a>
            </div>
            <div>
            </div>
            <br />
            <br />
            <div class="classthird">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/支付宝.png" />
                <p>
                    由支付宝先行保管,验货OK再付款到卖家账户。
                </p>
            </div>
            <div class="classtwo">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/实名认证 (1).png" />
                <p>
                    由支付宝先行保管,验货OK再付款到卖家账户。
                </p>
            </div>
        </div>
    </div>
    <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/mystore.mdb"
        SelectCommand="SELECT * FROM [Product] WHERE ([productid] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="productid" QueryStringField="p_id" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
    <div class="baby">
        <div>
            <p class="p p1">
                宝贝详情</p>
            <br />
            <br />
            <p class="p2">
                如遇到以下情况可能是诈骗行为：
                <br />
                1.宝贝价格异常低；
                <br />
                2.卖家要求QQ沟通；
                <br />
                3.卖家要求直接汇款。
                <br />
                寻求防骗经验。<br />
                <br />
                宝贝介绍 因个子小，体瘦，上身效果不佳而转手，洗过一次，未穿过，遇有缘人！
            </p>
        </div>
        <div class="record">
            <p>
                购买记录</p>
            <div class="record_img">
                <asp:FormView ID="FormView5" runat="server" DataKeyNames="productid" OnPageIndexChanging="FormView3_PageIndexChanging"
                    DataSourceID="AccessDataSource2">
                    <EditItemTemplate>
                        cartID:
                        <asp:Label ID="cartIDLabel1" runat="server" Text='<%# Eval("cartID") %>' />
                        <br />
                        cartCustomer:
                        <asp:TextBox ID="cartCustomerTextBox" runat="server" Text='<%# Bind("cartCustomer") %>' />
                        <br />
                        ProductID:
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                        <br />
                        ProductName:
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                        <br />
                        UnitPrice:
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                        <br />
                        Quantity:
                        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        cartTime:
                        <asp:TextBox ID="cartTimeTextBox" runat="server" Text='<%# Bind("cartTime") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                            CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        cartCustomer:
                        <asp:TextBox ID="cartCustomerTextBox0" runat="server" Text='<%# Bind("cartCustomer") %>' />
                        <br />
                        ProductID:
                        <asp:TextBox ID="ProductIDTextBox0" runat="server" Text='<%# Bind("ProductID") %>' />
                        <br />
                        ProductName:
                        <asp:TextBox ID="ProductNameTextBox0" runat="server" Text='<%# Bind("ProductName") %>' />
                        <br />
                        UnitPrice:
                        <asp:TextBox ID="UnitPriceTextBox0" runat="server" Text='<%# Bind("UnitPrice") %>' />
                        <br />
                        Quantity:
                        <asp:TextBox ID="QuantityTextBox0" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        cartTime:
                        <asp:TextBox ID="cartTimeTextBox0" runat="server" Text='<%# Bind("cartTime") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                            CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl='<%# "images/"+Eval("productimages").ToString() %>'
                            OnLoad="HyperLink5_Load">HyperLink</asp:HyperLink>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
                <br />
                <div class="record_p">
                    <p>
                        ◆ 双核IntelDualCoreT2400处理器1.83G
                        <br />
◆ Intel945PM高效芯片<br />
◆ nV独立显示卡256MB<br />
◆ 13寸宽屏幕<br />
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div style="height:700px"></div>
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
