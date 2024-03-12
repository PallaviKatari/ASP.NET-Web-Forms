<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataView.aspx.cs" Inherits="DemoApp.DataView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>DATAVIEW</h1>
            <p>A DataView provides various views of the data stored in a DataTable. Using a DataView, you can expose the data in a table with different sort orders, and you can filter the data by row state or based on a filter expression.</p>
            <h3>WITHOUT DATAVIEW</h3>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <h3>WITH DATAVIEW</h3>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true" OnSorting="GridView2_Sorting">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
