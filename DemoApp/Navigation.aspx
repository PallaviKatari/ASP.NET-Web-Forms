<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navigation.aspx.cs" Inherits="DemoApp.Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1">
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="homepage" TextField="title"></asp:TreeNodeBinding>
                    <asp:TreeNodeBinding DataMember="page" TextField="title"></asp:TreeNodeBinding>
                    <asp:TreeNodeBinding DataMember="subpage" TextField="title"></asp:TreeNodeBinding>
                </DataBindings>
            </asp:TreeView>
            <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/Files/Navigation.xml"></asp:XmlDataSource>
            <hr />
            <asp:Menu ID="Menu1" runat="server" DataSourceID="XmlDataSource1">
                <DataBindings>
                    <asp:MenuItemBinding DataMember="homepage" TextField="title"></asp:MenuItemBinding>
                    <asp:MenuItemBinding DataMember="page" TextField="title"></asp:MenuItemBinding>
                    <asp:MenuItemBinding DataMember="subpage" TextField="title"></asp:MenuItemBinding>
                </DataBindings>
            </asp:Menu>
        </div>
    </form>
</body>
</html>
