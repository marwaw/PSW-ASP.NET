<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="https://fonts.googleapis.com/css?family=Amatic+SC" rel="stylesheet"/>
    <link rel = "stylesheet" type = "text/css" href = "CSS/style.css"/>
    <title></title>
</head>
<body>
    <form id="about" runat="server">
<div>
    <header>
	    <h1>PRZEPIŚNIK</h1>
    </header>

	<nav> Menu
		<ul class = "first-level">
			<li><a href="default.aspx">Strona główna</a></li>
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
	
        <p>
           Cześć! Witamy Cię na naszej stronie!
            Jesteśmy studentkami, które bardzo lubią piec i gotować.
        </p>
        </div>
    </div>
    </form>
	<!--footer>
    &copy;2017 Martyna i Ada
	</footer>-->
</body>
</html>
