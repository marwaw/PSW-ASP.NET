<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>

            <asp:RadioButtonList ID="category_list" runat="server"  AutoPostBack="True"> </asp:RadioButtonList>

            <p><asp:Label ID="testlabel" runat="server"></asp:Label></p>

            <p>Liczba produktów w koszyku:<asp:Label ID="number_of_products" runat="server"></asp:Label></p>
            <p><asp:HyperLink ID="link" runat="server" Text="Przejdź do podsumowania" NavigateUrl="Summary.aspx"></asp:HyperLink></p>

            <p>
                <asp:CheckBoxList ID="fruits_list" runat="server" ></asp:CheckBoxList>    
            </p>

            <p>
                <asp:CheckBoxList ID="wegetables_list" runat="server" ></asp:CheckBoxList>
            </p>


            <p>
                <asp:CheckBoxList ID="others_list" runat="server" ></asp:CheckBoxList>
            </p>


            <p><asp:Button ID="buy_button" Text="Dodaj zaznaczone do koszyka" runat="server" OnClick="Buy_button_Click" /></p>

            <p><asp:CheckBoxList ID="lista" runat="server" ></asp:CheckBoxList></p>

           

        </div>
    </form>
</body>
</html>
