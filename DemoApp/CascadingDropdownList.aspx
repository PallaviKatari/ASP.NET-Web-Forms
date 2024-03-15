<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CascadingDropdownList.aspx.cs" Inherits="DemoApp.CascadingDropdownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="margin-left: 100px">
        <div>
            <div>
                <h3>DROPDOWNLIST DEMO</h3>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataTextField="CountryName" DataValueField="CountryID"></asp:DropDownList>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True" DataTextField="StateName" DataValueField="StateID"></asp:DropDownList>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList3" runat="server" DataTextField="CityName" DataValueField="CityID"></asp:DropDownList>
                <hr />
                <h3>CHECKBOXLIST DEMO</h3>
                <table style="width: 70%;">

                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataTextField="empname"
                        DataValueField="empname" AutoPostBack="True" RepeatLayout="OrderedList" Width="432px">
                    </asp:CheckBoxList>

                    <asp:Label ID="lbmsg" runat="server"></asp:Label>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                        Text="Click here to show the Data" />

                </table>    
            </div>
        </div>
    </form>
</body>
</html>
