<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset = "utf-8"/>
	<title>Formularz</title>
	<meta name = "keywords" content = "form, opinion, rating"/>
    <meta name = "description" content = "Forumlarz dotyczący strony"/>
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet"/>
    <link rel = "stylesheet" type = "text/css" href = "CSS/style.css"/>
    <link rel = "stylesheet" type = "text/css" href = "CSS/style-form.css"/>
    <style type="text/css">
        #YourComments {
            height: 150px;
            width: 400px;
        }
    </style>
</head>
<body>
<div>
    <header>
<h1>PRZEPIŚNIK</h1>
</header>

<nav> Menu
    <ul class = "first-level">
        <li><a href="Default.aspx">Strona główna</a></li>
        <li>Kontakt
            <ul class = "second-level">
                <li><a href="kontakt.html">Napisz do nas</a></li>
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
  
  <div class = "page-content" onmousemove="showCoords(event)">
	<h2>Formularz</h2>
	<p>Wypełnienie tego formularza zajmie Ci tylko chwilę, a dzięki niemu będziemy mogły rozwijać tę stronę.</p>
  <p id = "help"> </p>
      <form id="form2" runat="server">

	    <p><label>Imię:
	        <asp:TextBox ID="nameTB" runat="server" Width="318px"></asp:TextBox>
&nbsp;(np. Karol)
	    </label></p>

      <p><label>Nazwisko:
          <asp:TextBox ID="surnameTB" runat="server" Width="318px"></asp:TextBox>
&nbsp; (np. Kowalski)</label></p>

          <p><label>Kod pocztowy:
          <asp:TextBox ID="PostalCodeTB" runat="server" Width="318px"></asp:TextBox>
&nbsp; (np. 58-690)</label></p>

                    <p><label>Ulica i nr domu:
          <asp:TextBox ID="AddressTB" runat="server" Width="318px"></asp:TextBox>
&nbsp; (np. Kwiatowa 8)</label></p>

      <p><label for = "txtList"> Miesiąc urodzenia:
          <label>
          <asp:TextBox ID="birthMonthTB" runat="server" Width="318px"></asp:TextBox>
      </label>
&nbsp;(np. Maj)
      </label></p>

	    <p><label>Email:
            <asp:TextBox ID="emailTB" runat="server" Width="318px"></asp:TextBox>
            (np. karol@domena.com)
         </label></p>


      <p><label>Tel:&nbsp;
          <asp:TextBox ID="phoneTB" runat="server" Width="318px"></asp:TextBox>
          (np. (111-111-111)
          </label></p>

	    <p>
          <label>Wiek:&nbsp;
            <asp:DropDownList ID="ageList" runat="server">
                <asp:ListItem>0-18</asp:ListItem>
                <asp:ListItem>18-24</asp:ListItem>
                <asp:ListItem>25-35</asp:ListItem>
                <asp:ListItem>35-55</asp:ListItem>
                <asp:ListItem>55-80</asp:ListItem>
                <asp:ListItem>&gt;81</asp:ListItem>
            </asp:DropDownList>
          </label>
        </p>

        <p>Jak trafiłeś/aś na naszą stronę?</p>
          <p>
              <asp:RadioButtonList ID="howToSiteRB" runat="server">
                  <asp:ListItem Value="search-engine">Wyszukiwarka</asp:ListItem>
                  <asp:ListItem Value="friends">Z polecenia znajomych</asp:ListItem>
                  <asp:ListItem Value="facebook">Facebook</asp:ListItem>
                  <asp:ListItem Value="other">Inne</asp:ListItem>
              </asp:RadioButtonList>
        </p>
          <p>Jakie przepisy interesowałyby Cię najbardziej?</p>
          <p>
              <asp:CheckBoxList ID="wantedCB" runat="server">
                  <asp:ListItem Value="Dessert">Desery</asp:ListItem>
                  <asp:ListItem Value="Lunch">Obiady</asp:ListItem>
                  <asp:ListItem Value="Season">Sezonowe</asp:ListItem>
                  <asp:ListItem Value="Breakfast">Śniadania</asp:ListItem>
                  <asp:ListItem Value="Snack">Przekąski</asp:ListItem>
              </asp:CheckBoxList>
        </p>

        <p><label>Dodatkowe uwagi:</label></p>
          <p>
              <textarea id="YourComments" name="S1" placeholder="Twój komentarz"></textarea><label><br>
          &nbsp;</label></p>

	    <p>
	        <asp:Button ID="submitButton" runat="server" Text="Wyślij" />
            <asp:Button ID="resetButton" runat="server" Text="Wyczyść" />
&nbsp;
	    </p>
    </form>
      <p><br/>
  </div>


 <!-- <footer>
    &copy;2017 Martyna i Ada
  </footer>-->

    </div>
</body>
</html>
