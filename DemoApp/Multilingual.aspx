<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Multilingual.aspx.cs" Inherits="DemoApp.Multilingual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align: right;">
        <asp:DropDownList ID="ddLang" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddLang_SelectedIndexChanged">
            <asp:ListItem Value="en-US" Text="English" />
            <asp:ListItem Value="or-IN" Text="ଓଡିଆ" />
            <asp:ListItem Value="ta-IN" Text="தமிழ்" />
            <asp:ListItem Value="fr-FR" Text="French" />
        </asp:DropDownList>
    </div>

    <div style="font-family: Arial Black; background-color: yellow; color: red; font-size: x-large; font-style: normal; text-align: center;">
        <asp:Label ID="lblMyName" runat="server" />
    </div>
    <div style="float: left">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblAddress" runat="server" Style="font-weight: bold" /></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </tr>
        </table>
    </div>
</asp:Content>
