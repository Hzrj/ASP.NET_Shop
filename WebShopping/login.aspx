<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    *
    {
        margin: 0;
        padding: 0;
    }
    body{background-color:#f2f2f2;}
    .div1
    {
        width:500px;
        height:200px;
        margin:auto;
        margin-top:300px;
        background-color:White;
    }
    .div2
    {
        margin-left:150px;
        padding-top:20px;
    }
    
    .item 
    {
        text-decoration:none;
        color:#ccc;
    }
      .item1 
    {
        text-decoration:none;
    }  
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="div1">
    <div class="div2">
    <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label> 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>&nbsp;&nbsp;&nbsp;    
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="msg" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            CssClass="item1">登录</asp:LinkButton>&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="item1">取消</asp:LinkButton>
        <br />
        <br />
        <br />
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/index.aspx" 
            CssClass="item">返回主页</asp:LinkButton>&nbsp;&nbsp;&nbsp;  
    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/regedit.aspx" 
            CssClass="item">返回注册</asp:LinkButton>
            </div>
    </div>
    </form>
</body>
</html>
