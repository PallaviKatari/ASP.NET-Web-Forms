<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjectCache.aspx.cs" Inherits="DemoApp.ObjectCache" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>OBJECT CACHE</h2>
            <p>Object caching provides more flexibility than other cache techniques. 
                You can use object caching to place any object in the cache. 
                The object can be of any type - a data type, a web control, a class, 
                a dataset object, etc.
                Sliding expiration is used to remove an item from the cache when it is 
                not used for the specified time span. The following code snippet 
                stores an item with a sliding expiration of 10 minutes with no dependencies.
            </p>
            <hr />
            <asp:Label ID="lblinfo" runat="server"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Object Cache Demo"></asp:Button>

        </div>
    </form>
</body>
</html>
