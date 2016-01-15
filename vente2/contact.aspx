<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="vente2.contact1" %>

<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
	<link href="contact.css" rel="stylesheet" type="text/css">
    <link href="contact.css" rel="stylesheet" type="text/css" />
    <link href="contact.css" rel="stylesheet" type="text/css" />
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
						<li><a href="inscription.aspx"> INSCRIPTION </a></li>
						<li><a href="login.aspx"> IDENTIFICATION </a></li>
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
			
	<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"  height=100%>
		<tr>
			<td>
				<b style="font-size:30;font-family:'1';padding: 0 220 0 220; ">Profile de <asp:Label ID="Label2" runat="server" Text=""></asp:Label> </b>
                
			</td>
		</tr>
		<tr  valign="top">
				<td width="100%">
					<div id="bigdiv">
							<img style="float:left;border-radius:0px;border:10px solid rgb(220,220,220);margin:26;" src="img/icon-profile.png" height="220px"/>
							<table style="color:#fff;" border="0" cellspacing="0" cellpadding="0" align="left"  height=300px >
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>		
							    
							</table>
					</div>
				</td>
		</tr>
		<!------------------------------- AUTRE ANNONCES ---------------------->
		<tr>
			<td>
		<asp:Label ID="Label3" runat="server" Text=""></asp:Label>
		</td>
		</tr>
		<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
		<!------- article 2 ... ----------->
		
		<!--------------------------------------------------------->
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
