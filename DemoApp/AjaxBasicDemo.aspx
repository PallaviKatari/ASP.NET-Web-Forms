<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxBasicDemo.aspx.cs" Inherits="DemoApp.AjaxBasicDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        function helloWorld() {
            alert("welcome to ScriptManager Demo");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
        </div>
        <p>Inside the Update Panel - ScriptManager.RegisterStartupScript</p>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               <%-- <asp:Button ID="btnpartial" runat="server" OnClick="btnpartial_Click" Text="Partial PostBack" />
                <br />
                <br />
                <asp:Label ID="lblpartial" runat="server"></asp:Label>
                <br />--%>
                
                <asp:Label ID="lblDisplayDate1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnPostback" runat="server" OnClick="btnPostback_Click"
                    Text="ScriptManager Inside the Update Panel" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <hr />
        <p></p>
        <p>Outside the Update Panel - ClientScript.RegisterStartupScript</p>
        <%--<p>
            <asp:Button ID="btntotal" runat="server" OnClick="btntotal_Click" Text="Total PostBack" />
        </p>

        <asp:Label ID="lbltotal" runat="server"></asp:Label>--%>
        <hr />
        <asp:Button ID="Button1" runat="server" Text="ScriptManager Outside the Update Panel" OnClick="Button1_Click" />
        <br />
        <hr />
        <asp:Label ID="lblDisplayDate" runat="server" Text="Date"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="ScriptManager Dynamic label" OnClick="Button2_Click" />
    </form>
</body>
</html>
