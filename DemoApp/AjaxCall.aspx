<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxCall.aspx.cs" Inherits="DemoApp.AjaxCall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnGetData").click(function () {
                $.ajax({
                    type: "POST",
                    url: "AjaxCall.aspx/GetData",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    //In older versions of ASP.NET Web Services, specifically with ASP.NET Web Forms and ASP.NET AJAX,
                    //when making AJAX calls using jQuery's $.ajax method, the response object often had a property named d.
                    //This d property encapsulated the actual data returned from the server.
                    //However, it's worth noting that this d property was a convention introduced 
                    //by ASP.NET to help prevent potential security vulnerabilities such as JSON hijacking. 
                    //The actual response structure could be different based on the server- side implementation.
                    success: function (response) {
                        $("#lblResult").text(response.d);
                    },
                    /*The XMLHttpRequest Object*/
                    //A callback for creating the XMLHttpRequest object.
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                    }
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" id="btnGetData" value="Get Data" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
