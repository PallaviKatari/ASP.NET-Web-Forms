<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientSideState.aspx.cs" Inherits="DemoApp.ControlState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="HiddenField1" runat="server" Value="0"/>
            <h3>HIDDEN FIELD</h3>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <h3>QUERY STRING</h3>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
