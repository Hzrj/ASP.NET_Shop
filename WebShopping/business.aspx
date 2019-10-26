<%@ Page Language="C#" AutoEventWireup="true" CodeFile="business.aspx.cs" Inherits="business" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/mystore.mdb" 
            DeleteCommand="DELETE FROM [Product] WHERE [productid] = ?" 
            InsertCommand="INSERT INTO [Product] ([ca_id], [productname], [productprice], [Transferprice], [productimages], [description]) VALUES (?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Product]" 
            
            UpdateCommand="UPDATE [Product] SET [ca_id] = ?, [productname] = ?, [productprice] = ?, [Transferprice] = ?, [productimages] = ?, [description] = ? WHERE [productid] = ?">
            <DeleteParameters>
                <asp:Parameter Name="productid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ca_id" Type="Int32" />
                <asp:Parameter Name="productname" Type="String" />
                <asp:Parameter Name="productprice" Type="Int32" />
                <asp:Parameter Name="Transferprice" Type="Int32" />
                <asp:Parameter Name="productimages" Type="String" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ca_id" Type="Int32" />
                <asp:Parameter Name="productname" Type="String" />
                <asp:Parameter Name="productprice" Type="Int32" />
                <asp:Parameter Name="Transferprice" Type="Int32" />
                <asp:Parameter Name="productimages" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="productid" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="productid" DataSourceID="AccessDataSource1" Height="50px" 
            Width="125px" oniteminserting="DetailsView1_ItemInserting">
            <Fields>
                <asp:TemplateField HeaderText="类型">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="AccessDataSource2" DataTextField="ca_name" DataValueField="ca_id">
                        </asp:DropDownList>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商品名" SortExpression="productname">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("productname") %>'></asp:TextBox>
                        1
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="productname" runat="server" Text='<%# Bind("productname") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="原价" SortExpression="productprice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("productprice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="productprice" runat="server" 
                            Text='<%# Bind("productprice") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="转卖价" SortExpression="Transferprice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Transferprice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="Transferprice" runat="server" 
                            Text='<%# Bind("Transferprice") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商品图片" SortExpression="productimages">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("productimages") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="详细说明" SortExpression="description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="description" runat="server" Height="65px" 
                            style="margin-right: 0px" Text='<%# Bind("description") %>' 
                            TextMode="MultiLine" Width="209px"></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <InsertItemTemplate>
                        <asp:Button ID="btnFileUploa" runat="server" CommandName="insert" 
                            onclick="btnFileUploa_Click" Text="上传" />
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" HeaderText="添加商品" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/mystore.mdb" 
        SelectCommand="SELECT * FROM [product_Category]"></asp:AccessDataSource>
    </form>
</body>
</html>
