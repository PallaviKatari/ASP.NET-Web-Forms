<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jQueryValidation.aspx.cs" Inherits="DemoApp.jQueryValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#form1").validate({
                rules: {
            '<%= txtName.ClientID %>': {
                        required: true
                    }
                },
                messages: {
            '<%= txtName.ClientID %>': {
                        required: "Please enter your name!!!"
                    }
                }
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#form1").submit(function (event) {
                if (!$(this).valid()) {
                    event.preventDefault();
                }
            });
        });
    </script>


    <title>jQuery Validation</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
