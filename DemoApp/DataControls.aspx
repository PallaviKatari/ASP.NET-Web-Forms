<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataControls.aspx.cs" Inherits="DemoApp.DataControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="margin-left: 150px">
        <div>
            <h3>DATALIST CONTROL USING SQLDATASOURCE</h3>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="EmployeesDataSource">
                <ItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                    name:
                    <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
                    email:
                    <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
                    join_date:
                    <asp:Label Text='<%# Eval("join_date") %>' runat="server" ID="join_dateLabel" /><br />
                    <br />
                </ItemTemplate>
            </asp:DataList><asp:SqlDataSource runat="server" ID="EmployeesDataSource" ConnectionString="<%$ ConnectionStrings:WebFormsConnectionString %>" ProviderName="<%$ ConnectionStrings:WebFormsConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>
            <h3>LISTVIEW AND DATAPAGER CONTROL</h3>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="EmployeesDataSource">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFF8DC;">id:
                        <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                        name:
                        <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
                        email:
                        <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
                        join_date:
                        <asp:Label Text='<%# Eval("join_date") %>' runat="server" ID="join_dateLabel" /><br />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="background-color: #008A8C; color: #FFFFFF;">id:
                        <asp:TextBox Text='<%# Bind("id") %>' runat="server" ID="idTextBox" /><br />
                        name:
                        <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /><br />
                        email:
                        <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                        join_date:
                        <asp:TextBox Text='<%# Bind("join_date") %>' runat="server" ID="join_dateTextBox" /><br />
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /></li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">id:
                        <asp:TextBox Text='<%# Bind("id") %>' runat="server" ID="idTextBox" /><br />
                        name:
                        <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /><br />
                        email:
                        <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                        join_date:
                        <asp:TextBox Text='<%# Bind("join_date") %>' runat="server" ID="join_dateTextBox" /><br />
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /></li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #DCDCDC; color: #000000;">id:
                        <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                        name:
                        <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
                        email:
                        <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
                        join_date:
                        <asp:Label Text='<%# Eval("join_date") %>' runat="server" ID="join_dateLabel" /><br />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul runat="server" id="itemPlaceholderContainer" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                        <asp:DataPager runat="server" ID="DataPager1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">id:
                        <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                        name:
                        <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
                        email:
                        <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
                        join_date:
                        <asp:Label Text='<%# Eval("join_date") %>' runat="server" ID="join_dateLabel" /><br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <h3>FORMVIEW USING XMLDATASOURCE</h3>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Files/EmployeeDepartmentDetails.xml"></asp:XmlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="XmlDataSource1" AllowPaging="True">
                <EditItemTemplate>
                    Id:
                    <asp:TextBox Text='<%# Bind("Id") %>' runat="server" ID="IdTextBox" /><br />
                    name:
                    <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox Text='<%# Bind("Id") %>' runat="server" ID="IdTextBox" /><br />
                    name:
                    <asp:TextBox Text='<%# Bind("name") %>' runat="server" ID="nameTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label Text='<%# Bind("Id") %>' runat="server" ID="IdLabel" /><br />
                    name:
                    <asp:Label Text='<%# Bind("name") %>' runat="server" ID="nameLabel" /><br />

                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>

