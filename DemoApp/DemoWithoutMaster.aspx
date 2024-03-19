<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoWithoutMaster.aspx.cs" Inherits="DemoApp.DemoWithoutMaster" %>

<%@ Register Src="~/Sample.ascx" TagPrefix="uc1" TagName="Sample" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Sample runat="server" id="Sample" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <input id="Button1" type="button" value="button" />
            <asp:Login ID="Login1" runat="server"></asp:Login>
        </div>
    </form>
</body>
</html>
