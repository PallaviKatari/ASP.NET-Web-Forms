<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorHandlingDemo1.aspx.cs" Inherits="DemoApp.ErrorHandlingDemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>EXCEPTION HANDLING</h3>
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
            <hr />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <hr />
            <asp:Button ID="Button1" runat="server" Text="Fetch Products" OnClick="Button1_Click" />
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
