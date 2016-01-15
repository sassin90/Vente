using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class article2 : System.Web.UI.Page
    {
        public Bdd db = new Bdd();
        public string numArticle = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isOpen"] != "1") Label4.Text = "<li><a href='inscription.aspx'> INSCRIPTION </a></li><li><a href='login.aspx'> IDENTIFICATION </a></li>";
            else Label4.Text = "<li><a href='deconnexion.aspx'> DECONNEXION </a></li><li><a href='compte.aspx'> MON COMPTE </a></li>";
        
            
            numArticle = Request.QueryString["id"];

            db.read = db.clientArticle(numArticle);

            listArticles();

            db.read = db.listCommentaires(numArticle);

            msg();
            
                    Label3.Text = "<td><font id='user'>Ajouter une commentaire</font>" +
                   
                    "<textarea id=\"msg\" name=\"msg\" class=\"zonetext\" placeholder=\"ajoutez votre commentaire ici\"></textarea><br>";
                       

            
        }


        public void listArticles()
        {

            if (db.read.HasRows)
            {
                while (db.read.Read())
                {

                    Session["id"] = db.read[5];
                    Session["nomC"] = db.read[3];

                    Label1.Text = "<div id='article'>" +
                                    "<div id='info1'>" +
                                    "	<b style=' font-size:32;color:#ddd;'>" + db.read[2] + " / " + db.read[1] + " Dh<br> </b>" +


                                        "diposé par <a href='contact.aspx?num=" + db.read[5] + "' style='color:#1799dd;'>" + db.read[3] + "</a> le " + db.read[6] + "</div>" +

                                    "<img id='' src=" + db.read[0] + " width='900'/>" +
                                    "<div id='info2'>" +
                                        "<ul id='options'>" +
                                            "<li><a href='contact.aspx?num=" + db.read[5] + "'><img style='float:left;padding-right:10;' src='img/client1.jpg ' width='60'/>Contacter l'annonceur</a></li>" +
                                            "<li><a href='EnregistrerAnnonce.aspx?ida=" + numArticle + "&idc=" + Session["Client"] + "'><img style='float:left;padding-right:10;' src='img/save1.jpg ' width='60'/>Enregistrer l'annonce</a></li>" +
                                            "<li><a href='signalerArticles.aspx?ida=" + numArticle + "&idc=" + Session["Client"] + "'><img style='float:left;padding-right:10;' src='img/report1.jpg ' width='60'/>Signaler le contenu</a></li>" +
                                        "</ul></div>" +

                                    "<img id='arrow' src='img/arrow3.jpg' width='1000'/>" +
                                    "<div  id='details'>" +
                                        " <p align=justify>" +
                                            "<b style=' font-size:26;color:#eee;'>Description :</b>" + db.read[4] + "" +

                                    "</p></div></div>";


                }


            }

            db.read.Close();
            db.closeConn();



        }

        public void msg()
        {
            if (db.read.HasRows)
            {
               while (db.read.Read())
                {
           
                    Label2.Text += "<tr  id='tar' valign='top' height=130><td width='120px' align=center>" +

                            "<img id='avatar' src='img/icon-profile.png' width='90px' height='90px'/>" +
                                        "<center id='user' >"+db.read[1]+"</center></td>" +

                                    "<td id='pick-bg' width='30px'>" +
                                        "<img id='pick' src='img/pick5.png' width='30px' height='110px'/>" +
                                    "</td><td id='box'>" +

                                        "<table width='100%' height='109' border='0' cellspacing='0' cellpadding='0'>" +
                                            "<tr height='80%'><td id='text' align=justify valign=top>" +

                                ""+db.read[3]+"" +
                                                "</td></tr><tr><td>" +



                                                    "<font id=date>le "+db.read[2]+"</font> " +


                                        "</td></tr></table>" +
                                    "</td></tr>" +

                                "<tr height=20px ></tr>";

                }
            }
            db.read.Close();
            db.closeConn();



        }

       

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["isOpen"] != "1") Response.Redirect("login.aspx");

            else
            {
                db.commentaires(numArticle, "" + Session["Client"], DateTime.Now.ToString("dd MMMM yyyy "), Request.Form["msg"]);

                Response.Redirect("article.aspx?id=" + numArticle + "");
            }
        
        }
    }
}
