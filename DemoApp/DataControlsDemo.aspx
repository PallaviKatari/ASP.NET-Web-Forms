<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataControlsDemo.aspx.cs" Inherits="DemoApp.DataControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormsConnectionString2 %>" ProviderName="<%$ ConnectionStrings:WebFormsConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [EmployeeDetails]"></asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" AllowPaging="True"></asp:DetailsView>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Files/EmployeeDepartmentDetails.xml"></asp:XmlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1">
                <ItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    name:
                    <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
