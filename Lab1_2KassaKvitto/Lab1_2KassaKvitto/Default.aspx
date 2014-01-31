<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1_2KassaKvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Style.css" rel="stylesheet" />
</head>
<body>
    <h2>Kassakvitto</h2>
    <form id="form1" runat="server" defaultfocus="ValueTextBox" defaultbutton="OkButton">
    <div>
        <asp:Label ID="TextLabel" runat="server" Text="Total köpsumma"></asp:Label> 
        <asp:TextBox ID="ValueTextBox" runat="server"></asp:TextBox>
        

        <asp:Label ID="KrLabel" runat="server" Text="kr"></asp:Label>
        <asp:RequiredFieldValidator CssClass="errorclass" ControlToValidate="ValueTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Du har inte angivit något" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator  CssClass="errorclass" ControlToValidate="ValueTextBox" ID="CompareValidator1" runat="server" ErrorMessage=" Du angav inte ett nummer över 0" Operator="GreaterThan" ValueToCompare="0" Display="Dynamic" Type="Double"></asp:CompareValidator>
        <asp:Button ID="OkButton" runat="server" Text="Beräkna rabatt" OnClick="OkButton_Click" />
        <asp:Button ID="ClearButton" runat="server" Visible="false" Text="Clear"/>
        <asp:HyperLink ID="ReturnHyperLink" visible ="false" runat="server" href="Default.aspx">CLEAR</asp:HyperLink>
    </div>
    <div id="ReceiptBox" runat="server"  visible="false">
        <span id="TitelLabel">DeVe</span>
        <asp:Label ID="SmallLabel" runat="server" CssClass="textclass" Text="en del av EllenU"></asp:Label>
        <asp:Label ID="TelephonLabel" runat="server" CssClass="textclass" Text="Telefon 0772-28 80 00"></asp:Label>
        <asp:Label ID="OpenLabel" runat="server" CssClass="textclass" Text="Öppentider 8-17"></asp:Label>
        <asp:Label ID="Label1" runat="server" CssClass="textclass" Text="EV. FEL GER UNDERKÄNT"></asp:Label>
        <asp:Label ID="TotalNumberLabel" CssClass="textclass" runat="server" Text=""></asp:Label>
        <asp:Label ID="RabatSatsNumberLabel" CssClass="textclass" runat="server" Text=""></asp:Label>
        <asp:Label ID="RabatNumberLabel" CssClass="textclass" runat="server" Text=""></asp:Label>
        <asp:Label ID="ToPayNumberLabel" CssClass="textclass" runat="server" Text=""></asp:Label>
        <asp:Label ID="OrgNrLabel" runat="server" CssClass="textclass" Text="ORG.NR. 202100-6271"></asp:Label>
        <asp:Label ID="WelcomeLabel" runat="server" CssClass="textclass" Text="VÄLKOMMEN ÅTER!"></asp:Label>
    </div>
    </form>
</body>
</html>
