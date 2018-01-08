<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

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
        <div class="nowyStyl1">

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

           <p><asp:Button ID="clear" Text="Wyczyść koszyk" runat="server" OnClick="clear_Click" AutoPostBack = "true" /></p>

        </div>
        </div>
    </form>
</body>
</html>
