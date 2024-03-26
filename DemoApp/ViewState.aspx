<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="DemoApp.ViewStateControlState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>VIEW STATE</h3>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <hr />
            <h3>QUERY STRING</h3>
            <asp:Button ID="Button2" runat="server" Text="Go to Destination Page" OnClick="Button2_Click" />
            <hr />
            <h3>WITHOUT VIEWSTATE</h3>
            <p>
                UserName:
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                Password:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" />
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Restore" />
            </p>
            <hr />
            <h3>WITH VIEWSTATE</h3>
            <p>
                UserName:
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                Password:
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit" />
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Restore" />
            </p>
        </div>
    </form>
</body>
</html>
