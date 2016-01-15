using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class compte : System.Web.UI.Page
    {
        public Bdd db = new Bdd();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isOpen"] != "1")
            {
                Response.Redirect("login.aspx");
            }
            
            
           // int idC = Convert.ToInt32(Session["Client"]);
            db.read = db.infoClient(""+Session["Client"]);

            info_client();

            db.read = db.tous_clientArticle("" + Session["Client"]);

            autre_annonces();

            db.read = db.mesCommandes("" + Session["Client"]);

            commandes();
        }
               
        
        
        
            public void info_client()
        {
            if (db.read.HasRows)
            {
                while (db.read.Read())
                {

                    Label1.Text += "<tr><td><img style='float:left;padding-right:10;' src='img/identity1.jpg ' width='35'/></td>" +
                    "<td>" + db.read[1] + "</td></tr>" +

                        "<tr><td><img style='float:left;padding-right:10;' src='img/location1.jpg ' width='35'/></td>" +
                            "<td>" + db.read[2] + "</td></tr>" +

                        "<tr>	<td><img style='float:left;padding-right:10;' src='img/phone1.jpg ' width='35'/></td>" +
                            "<td>" + db.read[4] + "</td></tr>" +

                            "<tr>	<td><img style='float:left;padding-right:10;' src='img/client1.jpg ' width='35'/></td>" +
                            "<td>" + db.read[5] + "</td></tr>" +

                            "<tr><td><img style='float:left;padding-right:10;' src='img/mail1.jpg ' width='35'/></td>" +
                            "<td>" + db.read[2] + "</td></tr>" +
                            "<tr><td></td><td align=right>" +
                       "<a href='modifierCompte.aspx'><div id='start'><center>Modifier</center></div>"+
                "</td></tr>";
								
                }
            }
            db.read.Close();
            db.closeConn();  
        }

       
            public void autre_annonces()
            {
                if (db.read.HasRows)
                {
                    while (db.read.Read())
                    {
                        //Session["idA"] = db.read[6];
                        Label2.Text += " '<tr><td width='100%'>" +
                             "<a href='article.aspx?id=" + db.read[6] + "'>" +
                            "<div id='article'>" +
                                "<img id='' src=" + db.read[0] + " height='250' style='float:left;padding-right:20;'/>" +
                                "<div id='info1'><b style=' font-size:28;color:#ddd;'>" + db.read[2] + "<br>" + db.read[1] + " Dh<br></b>" +

                                    "diposé le " + db.read[5] + "" +
                                "</div><div id='info2'><ul id='options'>" +

                                "<li><a href='modifierArticle.aspx?field=" + db.read[6] + "'><img style='float:left;padding:5 5 5 0;' src='img/modifier2.jpg ' width='45'/>Modifier </a></li>" +

                       " <li><a href='delete.aspx?id=" + db.read[6] + "'><img style='float:left;padding:5 5 5 0;' src='img/supprimer2.jpg ' width='45'/>Supprimer</a></li>";
                        if (db.read[8].Equals(0)) Label2.Text += " <li><a href='visible.aspx?id=" + db.read[6] + "'><img style='float:left;padding:5 5 5 0;' src='img/visible2.jpg ' width='45'/>Cacher</a></li>";
                        else Label2.Text += " <li><a href='invisible.aspx?id=" + db.read[6] + "'><img style='float:left;padding:5 5 5 0;' src='img/invisible2.jpg ' width='45'/>Décacher</a></li>"; 
                        Label2.Text += "</ul><br></div></div></a></td></tr>";
								
                    }
                }

                db.read.Close();
                db.closeConn();
            }

            public void commandes()
            {
                if (db.read.HasRows)
                {
                    while (db.read.Read())
                    {
                        //Session["idA"] = db.read[6];
                        Label3.Text += " '<tr><td width='100%'>" +
                             "<a href='article.aspx?id=" + db.read[5] + "'>" +
                            "<div id='article'>" +
                                "<img id='' src=" + db.read[0] + " height='250' style='float:left;padding-right:20;'/>" +
                                "<div id='info1'><b style=' font-size:28;color:#ddd;'>" + db.read[2] + "<br>" + db.read[1] + " Dh<br></b>" +

                                    "diposé le " + db.read[4] + "" +
                                "</div><div id='info2'><ul id='options'>" +

                               // "<li><a href='modifierArticle.aspx?field=" + db.read[5] + "'><img style='float:left;padding:5 5 5 0;' src='img/modifier2.jpg ' width='45'/>Modifier </a></li>" +

                       " <li><a href='deleteCommande.aspx?id=" + db.read[5] + "'><img style='float:left;padding:5 5 5 0;' src='img/supprimer2.jpg ' width='45'/>Supprimer</a></li>" +
                     //   if (db.read[8].Equals(0)) Label3.Text += " <li><a href='visible.aspx?id=" + db.read[5] + "'><img style='float:left;padding:5 5 5 0;' src='img/visible2.jpg ' width='45'/>Cacher</a></li>";
                      //  else Label3.Text += " <li><a href='invisible.aspx?id=" + db.read[5] + "'><img style='float:left;padding:5 5 5 0;' src='img/invisible2.jpg ' width='45'/>Décacher</a></li>";
                        "</ul><br></div></div></a></td></tr>";

                    }
                }

                db.read.Close();
                db.closeConn();
            }
    }
}
