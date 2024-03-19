<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wizard.aspx.cs" Inherits="DemoApp.Wizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="Server" BackColor="#C4E6E4" BorderWidth="1px" CellPadding="4" CellSpacing="2"
                SideBarStyle-VerticalAlign="Top" OnActiveStepChanged="StepChanged" OnFinishButtonClick="FinishButtonClicked"
                OnSideBarButtonClick="SideBarLinksClicked">
                <HeaderTemplate>
                    Example of Wizard Control<br />
                    <i><%= "Step " + (Wizard1.ActiveStepIndex + 1) + " of " + Wizard1.WizardSteps.Count%></i>
                </HeaderTemplate>
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Personal Information" StepType="start">
                        <b>Name</b>
                        <asp:TextBox ID="txtName" runat="Server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Req1" runat="Server" ControlToValidate="txtName" Text="Please enter name."></asp:RequiredFieldValidator>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Contact Information" StepType="Step">
                        <table>
                            <tr>
                                <td><b>Contact Number</b></td>
                                <td>
                                    <asp:TextBox ID="txtNumber" runat="Server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td><b>Email</b></td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="Server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Address Details" StepType="finish">
                        <table>
                            <tr>
                                <td><b>Address</b></td>
                                <td>
                                    <asp:TextBox ID="txtAddress" runat="Server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td><b>City</b></td>
                                <td>
                                    <asp:TextBox ID="txtCity" runat="Server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep4" runat="Server" Title="Thanks" StepType="complete">
                        Thanks, Your details are as follows .... >>>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
