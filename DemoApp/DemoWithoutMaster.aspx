<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoWithoutMaster.aspx.cs" Inherits="DemoApp.DemoWithoutMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <input id="Button1" type="button" value="button" />
            <asp:Login ID="Login1" runat="server"></asp:Login>
        </div>
    </form>
</body>
</html>
