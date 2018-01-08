<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset = "utf-8"/>
	<meta name = "Main" content = " cooking, recipee, baking, dinner, dessert, salads, food"/>
	<meta name = "description" content = "Sklep z przydatnymi do gotowania rzeczami."/> 
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet"/>
    <link rel = "stylesheet" type = "text/css" href = "CSS/style.css"/>
    <link rel = "stylesheet" type = "text/css" href = "CSS/style-index.css"/>
    <title>Sklep</title>
</head>
<body>
     <form id="form1" runat="server" class="nowyStyl1">
         <header>
	    <h1>SKLEP</h1>
    </header>

	<nav> Menu
		<ul class = "first-level">
			<li><a href="Default.aspx">Strona główna</a></li>
			<li>Kontakt
				<ul class = "second-level">
					<li><a href="kontakt.html">Napisz do nas</a></li>
					<li><a href="About.aspx">O nas</a></li>
					<li>Formularze	
						<ul class = "third-level">
                            <li><a href="form.aspx">Feedback</a></li>
							<li><a href="form2.html">Formularz</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>Przydatne
				<ul class = "second-level">
					<li>Tabele 
						<ul class = "third-level">
							<li><a href="tables.php">Przelicznik</a></li>
						</ul>
					</li>
					<li><a href="herbs.php">Zioła</a></li>
					<li><a href="random.php">Wylosuj przepis</a></li>
					<li><a href="makeList.php">Twoja lista</a></li>
					<li><a href="style_changes.html">Zmien wygląd strony</a></li>                            
				</ul>
			</li>
		</ul>
	</nav>

	<div class = "page-content">
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
        </div>
    </form>
</body>
</html>
