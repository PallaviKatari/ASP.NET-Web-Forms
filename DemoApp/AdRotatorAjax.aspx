<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdRotatorAjax.aspx.cs" Inherits="DemoApp.AdRotatorAjax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h5 style="color: blueviolet; text-align: center; font-size: larger">ADROTATOR CONTROL</h5>

    </div>
    <p>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Files/adrotator.xml" Height="200px" Width="200px" />
    </p>
    <br />
    <br />
   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <div>
        <p>
            This is a Ajax Based SlideShow using ASP.Net Adrotator Control.  
        </p>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:Timer ID="Timer1" Enabled="true" Interval="2000" runat="server"
                    OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource1" Height="200px" Width="200px" />
                <br />
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Files/adrotator.xml"></asp:XmlDataSource>
                <br />

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
