<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="DemoApp.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox><br />
            <asp:Label ID="MessageLabel" runat="server" Text="Message"></asp:Label><br />
            UserName: <asp:Label ID="UsernameLabel" runat="server" Text=""></asp:Label><br />
            <asp:Button ID="Button1" runat="server" Text="Save Cookie" OnClick="SaveButton_Click"/><br />
            <asp:Button ID="Button2" runat="server" Text="Delete Cookie" OnClick="DeleteButton_Click" />
        </div>
    </form>
</body>
</html>
