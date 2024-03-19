<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxBasicDemo.aspx.cs" Inherits="DemoApp.AjaxBasicDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div>
      <asp:ScriptManager ID="ScriptManager1" runat="server" />
   </div>
   
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
         <asp:Button ID="btnpartial" runat="server" OnClick="btnpartial_Click" Text="Partial PostBack"/>
         <br />
         <br />
         <asp:Label ID="lblpartial" runat="server"></asp:Label>
      </ContentTemplate>
   </asp:UpdatePanel>
   
   <p> </p>
   <p>Outside the Update Panel</p>
   <p>
      <asp:Button ID="btntotal" runat="server" OnClick="btntotal_Click" Text="Total PostBack" />
   </p>
   
   <asp:Label ID="lbltotal" runat="server"></asp:Label>
</form>
</body>
</html>
