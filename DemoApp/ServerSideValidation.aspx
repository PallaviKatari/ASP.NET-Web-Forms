<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerSideValidation.aspx.cs" Inherits="DemoApp.ServerSideValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="margin-left:100px">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="TextBox1" BorderColor="#80FF00" BackColor="White" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter Age between 18 to 35" ForeColor="Red" ControlToValidate="TextBox2" MinimumValue="18" MaximumValue="35"></asp:RangeValidator>
            <br />
            <br />
            Enter the name of a course<br />
            that you want to pursue [MCA, BCA]:<br /><br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cv1" runat="server"
                ErrorMessage="Enter a Course [MCA,BCA]"
                Text="Enter a Valid course Name"
                ControlToValidate="TextBox3"
                Display="Static"
                ForeColor="Red"
                OnServerValidate="ValidateCourse"></asp:CustomValidator>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
