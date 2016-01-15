<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifierArticle.aspx.cs" Inherits="vente2.modifierArticle" %>

<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
	<link href="modifierArticle.css" rel="stylesheet" type="text/css"><link href="annonce.css" rel="stylesheet" type="text/css">
    <link href="modifierArticle.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8">
</head>
	<body >
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
										<td width="85%"><h2 style="padding-left:40">Modifier l'annonce</h2></td>
									</tr>
									<tr valign=middle align=left>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
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
                                    
                                     <!--<asp:DropDownList ID='DropDownList1' class='categ'  runat='server'
                                                Height='50px' Width='400px'>
                                                <asp:ListItem disabled Selected='True' >Choisir une catégorie</asp:ListItem>
                                                <asp:ListItem disabled>-- VEHICULES --</asp:ListItem>
                                                <asp:ListItem  >Cat3</asp:ListItem>
                                                <asp:ListItem>Cat4</asp:ListItem>
                                                <asp:ListItem disabled>-- IMMOBILIER --</asp:ListItem>
                                                <asp:ListItem>Cat6</asp:ListItem>
                                            </asp:DropDownList>-->
                                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                    <td><asp:FileUpload ID='FileUpload1' class='file' runat='server' /></td></tr>
									<tr valign=middle align=left>
										<td></td>
										<td>
                                            <asp:Button ID="Button1" class="buttona" runat="server" 
                                                Text="Modifier l'annonce" onclick="Button1_Click" />
                                        </td>
									</tr>
								</table>
							
					</div>
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
