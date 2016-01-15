<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="annonces.aspx.cs" Inherits="vente2.annonces" %>
<html >
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
	<link href="annonces.css" rel="stylesheet" type="text/css">
   <!-- <link href="annonces.css" rel="stylesheet" type="text/css" /> -->
    <meta charset="utf-8">
</head>
	<body >
	
	<div id="wp" >
		<table width="90%" border="0" cellspacing="0" cellpadding="0" align=center >
			<tr>
				<td width="10%">
					<a href="index.aspx"><img src="img/logo3.png" height="82px"></a>
				</td>
				<td width="70%" align="right">
					<ul id="menu1">
						<li><a href="aide.aspx"> AIDE</a></li>
						<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
						<li><a href="deposer.aspx"> DISPOSER UNE ANNONCE </a></li>
						<li><a href="annonces.aspx"> ANNONCES </a></li>
						<li><a href="index.aspx"> ACCUEIL </a></li>
					</ul>
				</td>
				<td width="20%" align=center>
					<a href="index.aspx"><img src="img/chi3ar1.png" height="82px"></a>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="div1">
			
		<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center"  height=100%>
			<tr >
				<td width="100%">
					<!-- debut-->
					<!------------------- Recherche --------------------->
					<div id="search">
							<form id="to_valign" runat="server">
							<center style="font-size:28px">Recheche avancée</center>
                                <asp:TextBox ID="TextBox1" class="ville" placeholder="Ville" runat="server"></asp:TextBox>
                                <select class="categ" name="catg" type="text" >
												<option value="0"  >Choisir une catégorie</option>
												<option style="background-color:#dcdcc3;" disabled value="1">-- VEHICULES --</option>
												<option value="1">Voitures</option>
												<option value="2">Motos</option>
												<option value="8">Caravaning</option>
								
												<option style="background-color:#dcdcc3;" disabled value="8">-- IMMOBILIER --</option>
												<option value="3">Ventes immobilières</option>
											
												
												<option value="4">Locations de vacances</option>
											
												<option style="background-color:#dcdcc3;" disabled value="14">-- MULTIMEDIA --</option>
												<option value="5">Informatique</option>
												<option value="6">Consoles &amp; Jeux vidéo</option>
											
												
												<option style="background-color:#dcdcc3;" disabled value="24">-- LOISIRS --</option>
												<option value="7">DVD / Films</option>
												
									
												<option style="background-color:#dcdcc3;" value="37">--</option>
												<option value="38" disabled >Autres</option>
											</select>
                             <!--   <asp:DropDownList ID="DropDownList1" class="categ"  runat="server" Width="305px">
                                    <asp:ListItem >Cat1</asp:ListItem>
                                    <asp:ListItem>Cat2</asp:ListItem>
                                    <asp:ListItem disabled >Cat3</asp:ListItem>
                                    <asp:ListItem>Cat4</asp:ListItem>
                                    <asp:ListItem>Cat5</asp:ListItem>
                                    <asp:ListItem>Cat6</asp:ListItem>
                                </asp:DropDownList>-->
                                <asp:TextBox ID="TextBox2" class="recherche" placeholder="Recherche" runat="server">
                                </asp:TextBox>
                                <asp:Button ID="Button1" class="button" runat="server" Text="" onclick="Button1_Click" /> 
								
							</form>
					</div>
					<!------------------- TITRE --------------------->
                     <div id='titre'>
							<b id='bold'>Toutes catégories</b>
							</div>
					<!------------------- TITRE --------------------->
					
						<asp:Label ID="Label1" runat="server"></asp:Label>
						
					
					<!--------------------------------------------------------->
					<!-- fine -->
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
	
	</body>
</html>