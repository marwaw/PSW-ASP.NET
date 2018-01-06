<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Podsumowanie</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:ListBox ID="selected" runat="server" Width="200px" Height="100px" ></asp:ListBox>
            </p>

            <p>
                <asp:Label ID="isempty" runat ="server"></asp:Label>
            </p>

            <p>
                <asp:Label ID="delivery_label" runat ="server">Wybierz sposób dostawy</asp:Label>
            </p>


            <p><asp:RadioButtonList ID="delivery_list" runat="server"  AutoPostBack="True"> </asp:RadioButtonList></p>

            <p>
                <asp:Label ID="payment_label" runat ="server">Wybierz sposób płatności</asp:Label>
            </p>


            <p><asp:RadioButtonList ID="payment_list" runat="server"> </asp:RadioButtonList></p>

            <p>
                <asp:Label ID="price" runat ="server"></asp:Label>
            </p>

            <p>
                <asp:Label ID="summary" runat ="server"></asp:Label>
            </p>

            <p><asp:Button ID="order_button" Text="Złóż zamówienie" runat="server"  OnClick="Order_button_Click"/></p>


            <p><asp:HyperLink ID="link" runat="server" Text="Przejdź do produktów" NavigateUrl="Products.aspx"></asp:HyperLink></p>

        </div>
    </form>
</body>
</html>
