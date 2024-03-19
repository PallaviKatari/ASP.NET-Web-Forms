<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxFunction.aspx.cs" Inherits="DemoApp.AjaxFunction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <h2>Customers</h2>
            <hr />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <%--                Add behavior to the page so that the Add button triggers a partial-page update to the GridView control. 
            To do so, add a trigger to the UpdatePanel control and connect the trigger to the ButtonSave control. --%>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ButtonSave" EventName="Click" />
                </Triggers>
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server"
                        AllowPaging="True" DataSourceID="SqlDataSource1" DataKeyNames="CustomerId" AllowSorting="True">
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:WebFormsConnectionString3 %>"
                        SelectCommand="SELECT * FROM [Customers]" ProviderName="<%$ ConnectionStrings:WebFormsConnectionString3.ProviderName %>"></asp:SqlDataSource>
                </ContentTemplate>
            </asp:UpdatePanel>
            <div style="margin: 20px 0px 20px 40px">
                Customer ID
    <br />
                <asp:TextBox ID="TextBoxID" runat="server" Width="200"></asp:TextBox>
                <br />
                Customer Name
                <br />
                <asp:TextBox ID="TextBoxName" runat="server" Width="200"></asp:TextBox>
                <br />
                Customer Country
                <br />
                <asp:TextBox ID="TextBoxCountry" runat="server" Width="200"></asp:TextBox>
                <br />
                <asp:Button ID="ButtonSave" runat="server"
                    Text="Add" Style="margin-top: 15px" OnClick="ButtonSave_Click" />
            </div>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <div style="margin-top: 20px; font-size: larger; color: Green">
                        <%--Add text inside the ProgressTemplate elements of the UpdateProgress control 
                            to notify the user that processing is happening on the server. --%>
                        Processing, please wait ...
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </form>
</body>
</html>
