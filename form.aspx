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
  
  <div class = "page-content" >
	<h2>Formularz</h2>
	<p>Wypełnienie tego formularza zajmie Ci tylko chwilę, a dzięki niemu będziemy mogły rozwijać tę stronę.</p>
  <p id = "help"> </p>
      
      <form id="form2" runat="server">
	    <p><label>Imię:
	        <asp:TextBox ID="nameTB" runat="server" Width="318px"></asp:TextBox>
            &nbsp;(np. Karol)
	    </label></p>
        <p>
            <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" 
                ControlToValidate="nameTB" Display="Dynamic" 
                ErrorMessage="Puste pole!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>

        <p><label>Nazwisko:
            <asp:TextBox ID="surnameTB" runat="server" Width="318px"></asp:TextBox>
            &nbsp; (np. Kowalski)</label></p>

        <p><label>Kod pocztowy:
            <asp:TextBox ID="PostalCodeTB" runat="server" Width="318px"></asp:TextBox>
            &nbsp; (np. 58-690)</label></p>

        <p><label>Ulica i nr domu:
            <asp:TextBox ID="AddressTB" runat="server" Width="318px"></asp:TextBox>
            &nbsp; (np. Kwiatowa 8)</label></p>

	    <p><label>Email:
            <asp:TextBox ID="emailTB" runat="server" Width="318px"></asp:TextBox>
            (np. karol@domena.com)
         </label></p>
        <p>
            <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" 
                ControlToValidate="emailTB" Display="Dynamic" 
                ErrorMessage="Puste pole!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>

      <p><label>Tel:&nbsp;
          <asp:TextBox ID="phoneTB" runat="server" Width="318px"></asp:TextBox>
          (np.0000-000-0000 )
          </label></p>
          <p>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="phoneTB" Display="Dynamic" 
                  ErrorMessage="Puste pole!" ForeColor="Red"></asp:RequiredFieldValidator>
          </p>

           <p><asp:RegularExpressionValidator id="RegularExpressionValidator1" 
                     ControlToValidate="phoneTB"
                     ValidationExpression="\d{4}-\d{3}-\d{4}"
                     Display="Dynamic"
                     ErrorMessage="Telefon musi być w formacie 0000-000-0000"
                     ForeColor="Red"
                     runat="server"/></p>

	    <p>
          <label>Wiek:&nbsp;
              <asp:TextBox ID="AgeTB" runat="server" Width="318px"></asp:TextBox>
          (np. 21)
          </label>
        </p>

       <p><asp:RangeValidator id="RangeValidator1"
           ControlToValidate="AgeTB"
           MinimumValue="1"
           MaximumValue="110"
           Type="Integer"
           Display="Dynamic"
           Text="Wiek musi być z zakresu 1 do 110!"
           ForeColor="Red"
           runat="server"/>
        </p> 
          <p>
          <asp:CompareValidator id="CompareValidator1" 
                    ControlToValidate="AgeTB" 
                    ValueToCompare="18"
                    Type="Integer"
                    Operator="GreaterThan"
                    Display="Dynamic"
                    Text="Jesteś jeszcze niepełoletni/a" 
                    ForeColor="Red"
                    runat="server"/>
        </p>

        <p>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                  ControlToValidate="AgeTB" Display="Dynamic" 
                  ErrorMessage="Puste pole!" ForeColor="Red"></asp:RequiredFieldValidator>
          </p>

	    <p>
	        <asp:Button ID="submitButton" runat="server" Text="Wyślij" />
            <asp:Button ID="resetButton" runat="server" Text="Wyczyść" />
             <asp:button id="ButtonShow"
       usesubmitbehavior="true"
       text="Pokaż dane"
       onclientclick="Navigate()"
       runat="server" onclick="ButtonShow_Click" />

&nbsp;
	    </p>

         <p>
          <asp:Label ID="outputLabel" runat="server" Visible="False"></asp:Label>

       </p>
    </form>
      <br/>
  </div>


 <!-- <footer>
    &copy;2017 Martyna i Ada
  </footer>-->

    </div>
</body>
</html>
