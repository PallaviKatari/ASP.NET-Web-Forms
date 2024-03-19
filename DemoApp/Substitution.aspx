<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Substitution.aspx.cs" Inherits="DemoApp.Substitution" %>

<%@ Register Src="~/Sample.ascx" TagPrefix="uc1" TagName="Sample" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                Substitution control in ASP.NET is used to call a method that's return a string in an output-cached page. 
     A developer can place a substitution on page and use string method for CallBack. 
     In this example the simple time label shows the time. 
     But in the Substitution it call the GetDate method for showing the time.
            </div>
            <div>
                <h2 style="color: Green">Substitution Control</h2>
                Time:
     <% = DateTime.Now.ToString() %>
                <br />
                <br />
                <strong>Time in Substitution:</strong>
                <asp:Substitution ID="Substitution1" runat="server" MethodName="GetTime" />
            </div>
            <br />
            <div style="text-align: center;">
                <span class="label label-primary">Technologies <span class="badge ">10</span></span>
                <span class="label label-success">Location <span class="badge ">5</span></span>
                <span class="label label-info">Onsight <span class="badge ">2</span></span>
            </div>
            <hr />
            <table>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Label ID="Label1" runat="server" Text="Substitution Control - ASP.NET" Font-Bold="true"  
                            Font-Size="Large" Font-Names="Verdana" ForeColor="Maroon"></asp:Label>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Label ID="Label6" runat="server" Text="Please Enter FirstNumber" Font-Size="Large"  
                            Font-Names="Verdana" Font-Italic="true"></asp:Label>  
                    </td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Label ID="Label2" runat="server" Text="Please Enter SecondNumber" Font-Size="Large"  
                            Font-Names="Verdana" Font-Italic="true"></asp:Label>  
                    </td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Button ID="Button1" runat="server" Text="Addition" Font-Names="Verdana" Width="213px"  
                            BackColor="Orange" Font-Bold="True" OnClick="Button1_Click" />  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Substitution ID="Substitution2" runat="server" MethodName="GetAdd" />  
                    </td>  
                </tr>  
                <tr>  
                    <td colspan="2" align="center">  
                        <asp:Label ID="Label5" runat="server" Font-Bold="true" Font-Names="Verdana"></asp:Label>  
                    </td>  
                </tr>  
            </table>  
            <hr />
            <uc1:Sample runat="server" ID="Sample" />
        </div>
    </form>
</body>
</html>
