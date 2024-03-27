<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoggingErrors.aspx.cs" Inherits="DemoApp.LoggingErrors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>LOGGING ERRORS TO DATABASE AND TEXT FILES</h3>
            <asp:Button ID="Button1" runat="server" Text="Fetch Products" OnClick="Button1_Click" />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
