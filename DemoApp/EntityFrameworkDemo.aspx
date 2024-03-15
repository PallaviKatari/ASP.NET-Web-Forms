<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EntityFrameworkDemo.aspx.cs" Inherits="DemoApp.EntityFrameworkDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvEmployees1" CssClass="Grid" runat="server" AutoGenerateColumns="false"
                PageSize="10" AllowPaging="true" DataSourceID="Employees2">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="join_date" HeaderText="JoinDate" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="Employees" runat="server" EnablePaging="true" SelectMethod="GetEmployees"
                SelectCountMethod="GetEmployeesCount" TypeName="EmployeeDetails" MaximumRowsParameterName="maxRows"
                StartRowIndexParameterName="startIndex"></asp:ObjectDataSource>
            <hr />
            <p>
                Above you will notice that I specified the variable names and method names of the EmployeeDetails class<br />
                1.     TypeName – EmployeeDetails<br />
                2.     SelectMethod – GetEmployees<br />
                3.     SelectCountMethod – GetEmployeesCount<br />
                4.     MaximumRowsParameterName - maxRows<br />
                5.     StartRowIndexParameterName -  startIndex<br />
            </p>
            <asp:ObjectDataSource ID="Employees1" runat="server" EnablePaging="true" SelectMethod="GetEmployees"
                SelectCountMethod="GetEmployeesCount" TypeName="EmployeeDetails" MaximumRowsParameterName="maxRows"
                StartRowIndexParameterName="startIndex"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="Employees2" runat="server" EnablePaging="true" TypeName="EmployeeDetails" SelectMethod="GetEmployees" SelectCountMethod="GetEmployeesCount" MaximumRowsParameterName="maxRows" StartRowIndexParameterName="startIndex"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
