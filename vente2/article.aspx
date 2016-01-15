<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="article.aspx.cs" Inherits="vente2.article2" %>

<html>
<head id="Head1" runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
	<link href="article.css" rel="stylesheet" type="text/css">
    <link href="article.css" rel="stylesheet" type="text/css" />
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
                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>	
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
			
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"  height=100%>
			<tr  valign="top">
				<td width="100%">
					<!-- ARTICLE - debut-->
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
					<!-- ARTICLE - fine-->
				</td>
			</tr>
			<tr>
				<td>
					<table id="comments" width="100%" border="0" cellspacing="0" cellpadding="0" align="center"  valign=top >
						<tr><td></td><td></td><td><h2>Commentaires</h2></td></tr>
						<!--     debut comment 1    --->
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
						<!-- fine comment  1--->
						
						<!-- fine comment 2 --->
						<!-- FORMULAIRE Ajouter Commentaire --> <!-- Condition = être connecté -->
						<tr>
							<td>
                                
                            </td>
							<td></td>
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label> 
                           <asp:Button ID="Button1" class="boutton" runat="server" onclick="Button1_Click" Text="Ajouter commentaire" />
                            </td>
						</tr>
						<!-- FORMULAIRE - Fine -->
				 </table>
				    
				    
				    
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
