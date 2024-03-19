<%@ Page Language="C#" Theme="CommonUI" CodeBehind="ADOBasics.aspx.cs" Inherits="DemoApp.ADOBasics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ADO.NET BASIC EXAMPLE</h1>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Create Employees Table" OnClick="Button1_Click" /><br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Display Employees Details" OnClick="Button3_Click" /><br />
            <br />
            <div style="border: solid; border-color: black; width: 300px">
                <div class="p-5" style="width: inherit">
                    <asp:Label ID="Label4" runat="server" Text="Enter Employee Name"></asp:Label><br />
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Enter Employee ID"></asp:Label><br />
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Enter Employee email"></asp:Label><br />
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Enter Join Date"></asp:Label><br />
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Insert Record into Employees Table" OnClick="Button2_Click" /><br />
                    <br />
                </div>
            </div>
            <br />
            <br />
            <div style="border: solid; border-color: black; width: 300px">
                <div class="p-5" style="width: inherit">
                    <asp:Label ID="Label1" runat="server" Text="Enter Employee Name"></asp:Label><br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Enter Employee ID"></asp:Label><br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Update Employee Details" OnClick="Button4_Click" /><br />
                    <br />
                </div>
            </div>
            <br />
            <br />
            <div style="border: solid; border-color: black; width: 300px">
                <div class="p-5" style="width: inherit">
                    <asp:Label ID="Label3" runat="server" Text="Enter Employee ID"></asp:Label><br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Button ID="Button5" runat="server" Text="Delete Employee Details" OnClick="Button5_Click" /><br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
