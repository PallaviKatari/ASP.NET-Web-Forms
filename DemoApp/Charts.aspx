<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Charts.aspx.cs" Inherits="DemoApp.Charts" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Chart ID="Chart1" runat="server" Width="800px">
                <Series>
                    <%--Represents Column XValueMember="0" YValueMembers="2"--%>
                    <asp:Series Name="Series1" XValueMember="0" YValueMembers="2" ChartType="Bar" BackGradientStyle="DiagonalRight" BorderColor="#ffccff" IsVisibleInLegend="true"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <br />
            <asp:Button ID="Button1" runat="server" Text="3D View" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="2D View" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
