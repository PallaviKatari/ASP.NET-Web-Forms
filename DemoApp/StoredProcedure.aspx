<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StoredProcedure.aspx.cs" Inherits="DemoApp.StoredProcedure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 5px;">
            <h2>Add Data using SQL Stored Procedure</h2>
            <table class="table table-condensed" style="width: 500px;">
                <tr>
                    <td>Product Name:
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtProductName" placeholder="Enter Product Name"
                            Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td>Product Price:
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtProductPrice" TextMode="Number"
                            Width="150px" placeholder="Enter Product Price" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="left">
                        <asp:Button runat="server" Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label runat="server" ID="lblInfo" />

            <br />
            <br />
            <asp:GridView runat="server" ID="proDataGrid" CssClass="table table-condensed" Width="500px" />
        </div>
    </form>
</body>
</html>
