<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DemoApp.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffff99">
    <form id="form1" runat="server">
        <div>
            <p>
                <strong style="font-size: xx-large">Hello
                    <asp:Label ID="Label1" runat="server"></asp:Label><br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Products.aspx">View Products</asp:HyperLink>
                </strong>
            </p>
        </div>
        <asp:Image ID="Image1" runat="server" Height="335px"
            ImageUrl="~/Images/demo.jfif" Width="817px" />
        <p>
            <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click"
                Text="Logout" Width="92px" />
        </p>
    </form>
</body>
</html>
