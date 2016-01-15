<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="vente2.login1" %>

<html >
<head runat="server">
    <title></title>
    <link href="login.css" rel="stylesheet" type="text/css" />
</head>
<body>
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
					
					<div id="bigdiv" >
							<form id="form1" runat="server">
								<table style="color:#fff;" border="0" cellspacing="0" cellpadding="0" width=83% >
									<tr valign=middle align=left>
										<td width="10%"></td>
										<td width="90%"><h2 style="padding-left:40">Identification</h2></td>
									</tr>
									<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/client1.jpg " width="50"/></td>
										<td><asp:TextBox ID="TextBox1" class="champ" required placeholder="Nom d'utilisateur" runat="server"></asp:TextBox>
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
                                                ForeColor="Red"></asp:Label>
                                        </td>
									</tr>
									<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/key1.jpg " width="50"/></td>
										<td><asp:TextBox ID="TextBox2" class="champ" required placeholder="Mot de passe" 
                                                runat="server" TextMode="Password"></asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td></td>
										<td><asp:Button ID="Button1" class="buttona" runat="server" Text="Identification" 
                                                onclick="Button1_Click" /><br />
                                                    <font style="padding-left:30px;font-size:18">
                                                        <a id="a11" href="inscription.aspx">Vous n'avez pas encore un compte ?</a>
                                                    </font>
                                                </td>
									</tr>
								</table>
							</form>
					</div>
					
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
