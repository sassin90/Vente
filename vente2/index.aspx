<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="vente2._Default" %>
  
<html>
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
	<link href="index.css" rel="stylesheet" type="text/css">
    <link href="index.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8">
</head>
	<body >
	 <form id="form1" runat="server">
	<div id="wp" >
		<table width="1000px" border="0" cellspacing="0" cellpadding="0" align=center >
			<tr>
				<td width="20%">
					<a href="index.aspx"><img src="img/logo.png" height="82px"></a>
				</td>
				<td width="80%" align="right">
					<ul id="menu1">
						<li><a href="aide.aspx"> AIDE</a></li>
						<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						<li><a href="deposer.aspx"> DISPOSER UNE ANNONCE </a></li>
						<li><a href="annonces.aspx"> ANNONCES </a></li>
						<li><a href="index.aspx"> ACCUEIL </a></li>
					</ul>
				</td>
			</tr>
		</table>
		<table width="1000px" height="75%" border="0" cellspacing="0" cellpadding="0" align=center >
			<tr height="100%" valign=bottom>
				<td height="100%">
					<center><a href="#div1"><div id="start">Démmarer</div></a></center>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="div1">
		<br><br><br><br>
		<table width="90%" border="0" cellspacing="0" cellpadding="0" align=center >
			<tr height="100%" valign=top>
				<td width="30%">
					<center> <img src="img/circle2.png" width="110px"/><br><br>
						<a id="a3" href="inscription.aspx">CREEZ VOTRE COMPTE !</a><br>
						<p class="text1">
							La création de votre compte personnel est gratuite. Il vous permet de déposez 
							plus simplement et plus rapidement vos annonces et d'améliorer leur gestion.
						</p>
					</center>
				</td>
				<td width="5%"></td>
				<td width="30%">
					<center><img src="img/circle1.png" width="110px"/><br><br>
						<a id="a3" href="deposer.aspx">DIPOSEZ VOS ANNONCES FACILEMENT !</a><br>
						<p class="text1">
							Gherssa Kbeera Store vous permet de déposer gratuitement vos annonces, ainsi de les suivre
							plus rapidement et à tout moment.
						</p>
					</center>
				</td>
				<td width="5%"></td>
				<td width="30%">
					<center> <img src="img/circle4.png" width="110px"/><br><br>
						<a id="a3" href="annonces.aspx">TROUVEZ LA BONNE AFFAIRE</a><br>
						<p class="text1">
							Consultez la listes des annonces pour trouver la bonne affaire.
							Pour voir les offres près de chez vous, sélectionnez votre ville ou la catégorie qui vous intéresse.
						</p>
					</center>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="div2">
		<table width="1100px" border="0" cellspacing="0" cellpadding="0" align=center height=100% >
			<tr valign=middle>
				<td width="34%" height="100%">
					<a href="index.aspx"><img src="img/logo2.png" width="120px"/></a>
				</td>
				<td width="22%">
						<ul>
							<li>DEMMARER</li>
							<li><a href="inscription.aspx">Inscrivez-vous</a></li>
							<li><a href="deposer.aspx">Déposer une annonce</a></li>
						</ul>
				</td>
				<td width="22%">
					<ul>
						<li>SERVICES</li>
						<li><a href="annonces.aspx">Consulter les offres</a></li>
						<li><a href="aide.aspx">Aide</a></li>
					</ul>
				</td>
				<td width="22%">
					<ul>
						<li>A PROPOS</li>
						<li><a href="about.aspx">Qui sommes-nous ?</a></li>
						<li><a href="contacter.aspx">Cantact</a></li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="div3">
		<table width="90%" border="0" cellspacing="0" cellpadding="0" align=center height=100% >
			<tr valign=middle>
				<td><font id="blanc">© 2013-2014 Gherssa Kbeera Store | Tous les droits sont reservés</font></td>
			</tr>
		</table>	
	</div>
	</form>
	</body>
</html>