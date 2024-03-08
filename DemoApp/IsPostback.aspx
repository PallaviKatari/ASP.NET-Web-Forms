<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IsPostback.aspx.cs" Inherits="DemoApp.IsPostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Text="Test Data" AutoPostBack="true"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button"/>
        </div>
    </form>
</body>
</html>
