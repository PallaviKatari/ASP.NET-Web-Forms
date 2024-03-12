<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossPagePostback.aspx.cs" Inherits="DemoApp.CrossPagePostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div align="center">

            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <br />

            <asp:Button ID="Button1" runat="server" Text="Log In" PostBackUrl="~/CrossPage2.aspx"/>

        </div>

    </form>
</body>
</html>
