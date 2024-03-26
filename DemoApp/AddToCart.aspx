<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="DemoApp.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="gvDetails" />
            <br />
            <asp:Button ID="btnAdd" Text="Add to Cart" runat="server" OnClick="Add" />
            <asp:Button ID="btnContinue" Text="Continue Shopping" runat="server" OnClick="Continue" />
            <br />
            <asp:GridView runat="server" ID="gvCartItems" />
        </div>
    </form>
</body>
</html>
