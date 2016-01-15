<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifierCompte.aspx.cs" Inherits="vente2.modifierCompte" %>

<html>
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
	<link href="modifierCompte.css" rel="stylesheet" type="text/css"><link href="annonce.css" rel="stylesheet" type="text/css">
    <link href="modifierCompte.css" rel="stylesheet" type="text/css" />
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
						 <li><a href='deconnexion.aspx'> DECONNEXION </a></li><li>
						 <a href='compte.aspx'> MON COMPTE </a></li>
        
						<li><a href="deposer.aspx"> DIPOSER UNE ANNONCE </a></li>
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
							<form id="" method="post" action="#" >
								<table style="color:#fff;" border="0" cellspacing="0" cellpadding="0" width=83% >
								<tr valign=middle align=left><td width='15%'></td>

                                                <td width='85%'><h2 style='padding-left:40'>Modifier mon compte</h2></td>
                                            </tr><tr valign=middle align=left>

                                                 <td><img style='float:left;padding-right:10;' src='img/identity1.jpg ' width='50'/></td>
                                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label> <!-- <td><asp:TextBox ID='TextBox1' class='champ' required placeholder='Nom' runat='server'></asp:TextBox></td>
                           </tr><tr valign=middle align=left>

                       <td><img style='float:left;padding-right:10;' src='img/client1.jpg ' width='50'/></td>
                      <td><asp:TextBox ID='TextBox2' class='champ' required placeholder='Username' runat='server'></asp:TextBox></td>
                       </tr><tr valign=middle align=left>

                                        <td><img style='float:left;padding-right:10;' src='img/key1.jpg ' width='50'/></td>
                                        <td><asp:TextBox ID='TextBox3' class='champ' required placeholder='Nouveau mot de passe' runat='server' TextMode='Password'></asp:TextBox></td>

                                            </tr><tr valign=middle align=left>
                                        <td><img style='float:left;padding-right:10;' src='img/key1.jpg ' width='50'/></td>
                                        <td><asp:TextBox ID='TextBox4' class='champ' required placeholder='Confirmer le mot de passe' runat='server' TextMode='Password'></asp:TextBox></td>
                                        </tr><tr valign=middle align=left>

                                         <td><img style='float:left;padding-right:10;' src='img/mail1.jpg ' width='50'/></td>
                                         <td><asp:TextBox ID='TextBox5' class='champ' required placeholder='domain@domain.com'  runat='server'></asp:TextBox></td>
                                         </tr><tr valign=middle align=left>

                                            <td><img style='float:left;padding-right:10;' src='img/phone1.jpg ' width='50'/></td>
                                            <td><asp:TextBox ID='TextBox6' class='champ' required placeholder='06666666' runat='server'></asp:TextBox></td>
                                            </tr><tr valign=middle align=left>

                                              <td><img style='float:left;padding-right:10;' src='img/location1.jpg ' width='50'/></td>
                                              <td><asp:TextBox ID='TextBox7' class='champ' required placeholder='Tetouan' runat='server'></asp:TextBox></td>
                                            </tr></tr><tr valign=middle align=left>

                                        <td><img style='float:left;padding-right:10;' src='img/key1.jpg ' width='50'/></td>
                                        <td><asp:TextBox ID='TextBox8' class='champ' required placeholder='Mot de passe actuel' runat='server' TextMode='Password'></asp:TextBox></td></tr>

									<tr valign=middle align=left>-->
										<td></td>
										<td><asp:Button ID="Button1" class="buttona" runat="server" 
                                                Text="Modifier mon compte" onclick="Button1_Click" /></td>
									</tr>
								</table>
							</form>
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
