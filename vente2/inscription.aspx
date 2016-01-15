<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="vente2.WebForm3" %>

<html >
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title></title>
	<link href="inscription.css" rel="stylesheet" type="text/css">
	<link href="annonce.css" rel="stylesheet" type="text/css">
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
					<!-- debut-->
					<div id="bigdiv" >
					<table style="color:#fff;" border="0" cellspacing="0" cellpadding="0" width=83% >
									<tr valign=middle align=left>
										<td width="15%"></td>
										<td width="85%"><h2 style="padding-left:40">Formulaire d'inscription</h2></td>
									</tr>
									<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/identity1.jpg " width="50"/></td>
										<td>  <asp:TextBox ID="TextBox1" class="champ" required type="text"  placeholder="Nom et pr�nom" runat="server"></asp:TextBox>
                                        </td>
									</tr>
									
										<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/client1.jpg " width="50"/></td>
										<td>   <asp:TextBox ID="TextBox2" class="champ"    required placeholder="Nom d'utilisateur" runat="server"></asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/key1.jpg " width="50"/></td>
										<td>   <asp:TextBox ID="TextBox3" class="champ"    required 
                                                placeholder="Mot de passe" runat="server" TextMode="Password"> </asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/key1.jpg " width="50"/></td>
										<td style="margin-left: 80px; padding-right: 20px">  <asp:TextBox ID="TextBox4" class="champ"    required 
                                                placeholder="Confirmer mdp" runat="server" TextMode="Password"></asp:TextBox>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="&lt;br/&gt;         Les champs n'est pas identiques"
                                                ControlToValidate="TextBox4" ControlToCompare="TextBox3" 
                                                Operator = "Equal" Type="String" ></asp:CompareValidator></td>
									</tr>
									<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/mail1.jpg " width="50"/></td>
										<td> <asp:TextBox ID="TextBox5" class="champ"   required  placeholder="E-mail" runat="server"></asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/phone1.jpg " width="50"/></td>
										<td><asp:TextBox ID="TextBox6" class="champ"   required  placeholder="T�lephone" runat="server"></asp:TextBox></td>
									</tr>
									<tr valign=middle align=left>
										<td><img style="float:left;padding-right:10;" src="img/location1.jpg " width="50"/></td>
										<td> 
                                            <asp:DropDownList ID="DropDownList1" class="categ"  runat="server" 
                                                Height="50px" Width="320px">
                                                <asp:ListItem>Tetouan</asp:ListItem>
                                                <asp:ListItem>Tanger</asp:ListItem>
                                                <asp:ListItem>Rabat</asp:ListItem>
                                                <asp:ListItem>Casablanca</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList>
                                            
                                            </td>
									</tr>
									</tr>
									<tr valign=middle align=left>
										<td></td>
										<td> <asp:button ID="Button1" class="buttona" runat="server" text="Inscription" 
                                                onclick="Button1_Click" /></td>
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
							<li><a href="deposer.aspx">D�poser une annonce</a></li>
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
				<td><font id="blanc">� 2013-2014 Gherssa Kbeera Store | Tous les droits sont reserv�s</font></td>
			</tr>
		</table>	
	</div>
    </form>
</body>
</html>

									
								