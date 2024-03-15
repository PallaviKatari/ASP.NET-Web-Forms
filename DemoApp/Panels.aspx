<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panels.aspx.cs" Inherits="DemoApp.Panels" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            The Panel control works as a container for other controls on the page.
         It controls the appearance and visibility of the controls it contains. 
         It also allows generating controls programmatically.

         The Literal Control is similar to the Label Control as they both are used to display static text on a web page.
         You can't apply any style property to the Literal Control.
        </div>
        <div>
            <asp:Panel ID="pnldynamic" runat="server" BorderColor="#990000"
                BorderStyle="Solid" Height="285px" ScrollBars="Auto" BackColor="#CCCCFF" Font-Names="Courier" HorizontalAlign="Center" Width="637px">
                This panel shows dynamic control generation:<br />
                <br />
            </asp:Panel>
        </div>
        <table style="width: 51%;">
            <tr>
                <td class="style2">No of Labels:</td>
                <td class="style1">
                    <asp:DropDownList ID="ddllabels" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2"></td>
                <td class="style1"></td>
            </tr>
            <tr>
                <td class="style2">No of Text Boxes :
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddltextbox" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2"></td>
                <td class="style1"></td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:CheckBox ID="chkvisible" runat="server"
                        Text="Make the Panel Visible" />
                </td>

                <td class="style1">
                    <asp:Button ID="btnrefresh" runat="server" Text="Refresh Panel"
                        Style="width: 129px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
