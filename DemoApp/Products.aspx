<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="DemoApp.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="gvProducts" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                    <asp:HyperLinkField DataNavigateUrlFormatString="~/AddToCart.aspx?Id={0}" DataNavigateUrlFields="ProductID"
                        Text="View Details" HeaderText="Details" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
