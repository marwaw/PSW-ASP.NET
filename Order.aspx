<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><asp:Label ID ="thanks_text" runat ="server"></asp:Label></p>

            <p><asp:Label ID ="price_label" runat ="server"></asp:Label></p>

            <p><asp:Label  ID="delivery_label" runat="server"></asp:Label></p>

            <p><asp:Label ID ="payment_label" runat ="server"></asp:Label></p>

            <p><asp:HyperLink ID="link" runat="server" Text="Przejdź do listy produktów" NavigateUrl="Products.aspx"></asp:HyperLink></p>
            
        </div>
    </form>
</body>
</html>
