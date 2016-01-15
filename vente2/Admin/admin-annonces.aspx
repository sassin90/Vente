<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin-annonces.aspx.cs" Inherits="vente2.Admin.admin_annonces" %>
<html>
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
	<link href="admin-annonces.css" rel="stylesheet" type="text/css"><link href="annonce.css" rel="stylesheet" type="text/css">
    <link href="admin-annonces.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8">
</head>
	<body >
	<form>
	<div id="wp" >
		<table width="90%" border="0" cellspacing="0" cellpadding="0" align=center >
			<tr>
				<td width="10%">
					<a href="/index.aspx"><img src="img/logo3.png" height="82px"></a>
				</td>
				<td width="70%" align="right">
					<ul id="menu1">
						<li><a href="/aide.aspx"> AIDE</a></li>
					
                <li><a href='/deconnexion.aspx'> DECONNEXION </a>
                </li><li><a href='/compte.aspx'> MON COMPTE </a></li>
        
						<li><a href="/deposer.aspx"> DIPOSER UNE ANNONCE </a></li>
						<li><a href="/annonces.aspx"> ANNONCES </a></li>
						<li><a href="/index.aspx"> ACCUEIL </a></li>
					</ul>
				</td>
				<td width="20%" align=center>
					<a href="/index.aspx"><img src="img/chi3ar1.png" height="82px"></a>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="div1">
					<div id=thediv>
						<center class="title" ><b class="bbb">administartion</b></center>
						<div class="menuadmin" >
							<a href="admin-clients.aspx">clients</a>&nbsp;&nbsp;•&nbsp;&nbsp;
							<a href="admin-bloques.aspx">liste noire</a>&nbsp;&nbsp;•&nbsp;&nbsp;
							<a class="negro" >annonces</a>&nbsp;&nbsp;•&nbsp;&nbsp;
							<a href="admin-signales.aspx">articles signalés</a>
						</div>
					</div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"  height=100%>
						<tr>
							<td><br><b style="font-size:24;font-family:'1';padding:0 220 0 220; ">Toutes les annonces</b><br>&nbsp;</td>
						</tr>
						<!------- article 1 ... ----------->
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
						<!------- article 2 ... ----------->
						
					</table>					
	</div>

	
	<div id="div2">
		<table width="1100px" border="0" cellspacing="0" cellpadding="0" align=center height=100% >
			<tr valign=middle>
				<td width="34%" height="100%">
					<a href="/index.aspx"><img src="img/logo2.png" width="120px"/></a>
				</td>
				<td width="22%">
						<ul>
							<li>DEMMARER</li>
							<li><a href="/inscription.aspx">Inscrivez-vous</a></li>
							<li><a href="/deposer.aspx">Déposer une annonce</a></li>
						</ul>
				</td>
				<td width="22%">
					<ul>
						<li>SERVICES</li>
						<li><a href="/annonces.aspx">Consulter les offres</a></li>
						<li><a href="/aide.aspx">Aide</a></li>
					</ul>
				</td>
				<td width="22%">
					<ul>
						<li>A PROPOS</li>
						<li><a href="/about.aspx">Qui sommes-nous ?</a></li>
						<li><a href="/contacter.aspx">Cantact</a></li>
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