<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Caching.aspx.cs" Inherits="DemoApp.Caching" %>

<%--Caching Categories - Page Cache,Fragment Cache,Data Cache--%>

<%--The OutputCache directive is responsible of output caching. 
This tells the environment to cache the page for 25 seconds.--%>
<%--<%@ OutputCache Duration="25" VaryByParam="None" %>--%>

<%--When the program is executed, 
ASP.NET caches the page on the basis of the name in the text box.--%>
<%@ OutputCache Duration="60" VaryByParam="TextBox1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>OUTPUT CACHE - VARYBYPARAM</h2>
            <asp:Label ID="Label1" runat="server" Text="Output Cache:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
            <h2>DATA CACHE</h2>
            <p>
                When you execute the page for the first time, nothing different happens, the label shows that, each time you refresh the page, the page is reloaded and the time shown on the label changes.

Next, set the EnableCaching attribute of the data source control to be 'true' and set the Cacheduration attribute to '60'. It will implement caching and the cache will expire every 60 seconds.

The timestamp changes with every refresh, but if you change the data in the table within these 60 seconds, it is not shown before the cache expires.
            </p>
            <asp:Label ID="lbltime" runat="server"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customers]" EnableCaching="True" CacheDuration="Infinite"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
