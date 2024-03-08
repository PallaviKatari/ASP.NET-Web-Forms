<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Postback.aspx.cs" Inherits="DemoApp.Postback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Controls being monitored for change events:</h1>
            <asp:TextBox ID="txt" runat="server" AutoPostBack="true" OnTextChanged="CtrlChanged" />
            <br /><br />
            <asp:CheckBox ID="chk" runat="server" AutoPostBack="true" OnCheckedChanged="CtrlChanged" />
            <br /><br />
            <asp:RadioButton ID="opt1" runat="server" GroupName="Sample" AutoPostBack="true" OnCheckedChanged="CtrlChanged" />
            <asp:RadioButton ID="opt2" runat="server" GroupName="Sample" AutoPostBack="true" OnCheckedChanged="CtrlChanged" />
            <h1>List of events:</h1>
            <asp:ListBox ID="lstEvents" runat="server" Width="355px" Height="250px" /><br />
            <br /><br /><br />
        </div>
    </form>
</body>
</html>