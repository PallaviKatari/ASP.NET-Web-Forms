<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dataset.aspx.cs" Inherits="DemoApp.Dataset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="margin-left:100px">
        <h1>EMPLOYEE DETAILS FROM SQL - USING DATASET</h1>
        <div>
            <asp:GridView runat="server" ID="EmployeeDetails"></asp:GridView>
        </div>
        <h1>USING DATATABLE</h1>
        <div>
            <asp:GridView runat="server" ID="GridView1"></asp:GridView>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Display DataTable Records" OnClick="Button1_Click" />
        <h1>USING EXECUTESCALAR</h1>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="ExecuteScalar" OnClick="btnSubmit_Click" /><br /><br />
            <b>First Row First Column Value: </b>
            <asp:Label ID="lblDetails" runat="server" />
        </div>
        <h1>USING DATAROW AND DATACOLUMN</h1>
        <div>
            <asp:Button ID="Button2" runat="server" Text="Create DataTable" OnClick="Button2_Click" /><br />
        </div>
        <h1>USING SelectCommand Property</h1>
        <div>
            <asp:Button ID="Button3" runat="server" Text="SelectCommand" OnClick="Button3_Click" /><br />
        </div>
        <h1>USING UpdateCommand Property</h1>
        <div>
            <asp:Button ID="Button4" runat="server" Text="UpdateCommand" OnClick="Button4_Click" /><br />
        </div>
    </form>
</body>
</html>
