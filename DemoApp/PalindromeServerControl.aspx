﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PalindromeServerControl.aspx.cs" Inherits="DemoApp.PalindromeServerControl" %>

<%@ Register Assembly="ServerControl" Namespace="ServerControl" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            v>
            Enter a word:
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Style="width: 198px"> </asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Palindrome" Style="width: 132px" />
            <br />
            <br />
            <cc1:ServerControl1 ID="ServerControl1" runat="server" />
        </div>
    </form>
</body>
</html>
