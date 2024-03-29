<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAuthenticate.aspx.cs" Inherits="DemoApp.LoginAuthenticate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>FORMS AUTHENTICATION AND AUTHORIZATION</h3>
            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate"></asp:Login>
            <asp:Label ID="Msg" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
