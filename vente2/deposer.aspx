<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deposer.aspx.cs" Inherits="vente2.deposer" %>

<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
    <link href="deposer.css" rel="stylesheet" type="text/css" />
    
    <meta charset="utf-8">
</head>
<body>
    <form id="form1" runat="server">
    <div id="wp" >
		<table width="90%" border="0" cellspacing="0" cellpadding="0" align=center >
			<tr>
				<td width="10%">
					<a href="index.aspx"><img src="img/logo3.png" height="82px"></a>
				</td>
				<td width="70%" align="right">
					<ul id="menu1">
						<li><a href="aide.aspx"> AIDE</a></li>
						<li><a href='deconnexion.aspx'> DECONNEXION </a></li>
                        <li><a href='compte.aspx'> MON COMPTE </a></li>
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
					<!-- debut-->
					<div id="bigdiv" >
								<table style="color:#fff;" border="0" cellspacing="0" cellpadding="0" width=83% >
									<tr valign=middle align=left>
										<td width="15%"></td>
										<td width="85%"><h2 style="padding-left:40">Diposez un nouveau article</h2></td>
									</tr>
									<tr valign=middle align=left>
										<td>Titre</td>
										<td><asp:TextBox ID="TextBox1" class ="champ" required placeholder="Titre de l'article" runat="server"></asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td>Catégorie</td>
										<td>
										 <select class="categorie" name="catg" type="text" >
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
									<!--		<select class="categorie" type="text" >
												<option value="0" >Choisir une catégorie</option>
												<option style="background-color:#dcdcc3;" value="1">-- VEHICULES --</option>
												<option value="2">Voitures</option>
												<option value="3">Motos</option>
												<option value="4">Caravaning</option>
												<option value="5">Utilitaires</option>
												<option value="6">Equipement Auto</option>
												<option value="44">Equipement Moto</option>
												<option value="50">Equipement Caravaning</option>
												<option value="7">Nautisme</option>
												<option value="51">Equipement Nautisme</option>
												<option style="background-color:#dcdcc3;" value="8">-- IMMOBILIER --</option>
												<option value="9">Ventes immobilières</option>
												<option value="10">Locations</option>
												<option value="11">Colocations</option>
												<option value="12">Locations de vacances</option>
												<option value="13">Bureaux &amp; Commerces</option>
												<option style="background-color:#dcdcc3;" value="14">-- MULTIMEDIA --</option>
												<option value="15">Informatique</option>
												<option value="43">Consoles &amp; Jeux vidéo</option>
												<option value="16">Image &amp; Son</option>
												<option value="17">Téléphonie</option>
												<option style="background-color:#dcdcc3;" value="18">-- MAISON --</option>
												<option value="19">Ameublement</option>
												<option value="20">Electroménager</option>
												<option value="45">Arts de la table</option>
												<option value="39">Décoration</option>
												<option value="46">Linge de maison</option>
												<option value="21">Bricolage</option>
												<option value="52">Jardinage</option>
												<option value="22">Vêtements</option>
												<option value="53">Chaussures</option>
												<option value="47">Accessoires &amp; Bagagerie</option>
												<option value="42">Montres &amp; Bijoux</option>
												<option value="23">Equipement bébé</option>
												<option value="54">Vêtements bébé</option>
												<option style="background-color:#dcdcc3;" value="24">-- LOISIRS --</option>
												<option value="25">DVD / Films</option>
												<option value="26">CD / Musique</option>
												<option value="27">Livres</option>
												<option value="28">Animaux</option>
												<option value="55">Vélos</option>
												<option value="29">Sports &amp; Hobbies</option>
												<option value="30">Instruments de musique</option>
												<option value="40">Collection</option>
												<option value="41">Jeux &amp; Jouets</option>
												<option value="48">Vins &amp; Gastronomie</option>
												<option style="background-color:#dcdcc3;" value="56">-- MATERIEL PROFESSIONNEL --</option>
												<option value="57">Matériel Agricole</option>
												<option value="58">Transport - Manutention</option>
												<option value="59">BTP - Chantier Gros-oeuvre</option>
												<option value="60">Outillage - Matériaux 2nd-oeuvre</option>
												<option value="32">Équipements Industriels</option>
												<option value="61">Restauration - Hôtellerie</option>
												<option value="62">Fournitures de Bureau</option>
												<option value="63">Commerces &amp; Marchés</option>
												<option value="64">Matériel Médical</option>
												<option style="background-color:#dcdcc3;" value="31">-- EMPLOI &amp; SERVICES --</option>
												<option value="33">Emploi</option>
												<option value="34">Services</option>
												<option value="35">Billetterie</option>
												<option value="49">Evénements</option>
												<option value="36">Cours particuliers</option>
												<option style="background-color:#dcdcc3;" value="37">--</option>
												<option value="38">Autres</option>
											</select>-->
										</td>
									</tr>
									<tr valign=middle align=left>
										<td>Prix</td>
										<td><asp:TextBox ID="TextBox2" class ="champ" required placeholder="Prix en Dh" runat="server"></asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td>Lieu</td>
										<td><asp:TextBox ID="TextBox3" class ="champ" required placeholder="Lieu" runat="server"></asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td>Description</td>
										<td>
                                            <asp:TextBox ID="TextBox4" class="area" placeholder="Ajouter une description" runat="server" TextMode="MultiLine"></asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td>Image</td>
										<td>
                                            <asp:FileUpload ID="FileUpload1" class="file" runat="server" /></td>
									</tr>
									<tr valign=middle align=left>
										<td></td>
										<td><asp:Button ID="Button1" class="buttona" runat="server" 
                                                Text="Diposer l'article" onclick="Button1_Click" /></td>
									</tr>
								</table>
								
					</div><br />
					<!-- fine -->
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
