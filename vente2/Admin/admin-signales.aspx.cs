using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2.Admin
{
    public partial class admin_signales : System.Web.UI.Page
    {
        Bdd db = new Bdd();
        admin_annonces an = new admin_annonces();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] != "1")
            {
                Response.Redirect("/login.aspx");
            }
            
            db.read = db.tousArticleBanned();

            ArticleBanned();

        }

        public void ArticleBanned()
        {
            if (db.read.HasRows)
            {

                while (db.read.Read())
                {
                    Label1.Text += "<tr><td width='100%'><div id='article'>" +

                        "<img id='' src=" + db.read[2] + " height='200' style='float:left;padding-right:20;'/>" +
                                        "<div id='info1'>" +
                                            "<b style=' font-size:20;color:#ddd;'>" +
                                                "" + db.read[1] + " /" + db.read[5] + " Dh</b>" +

                                            "<font style='float:right'>Déposé le " + db.read[6] + "</font><br>" +
                                            "<p align=justify>" +
                                                "<b style=' font-size:16;color:#ff7842'>Description :</b>" +
                                    "" + db.read[3] + "</p>" +

                                    "<b style=' font-size:16;color:#ff7842;float:left'>Annonceur : <a href='/contact.aspx?num=" + db.read[4] + "'>" + db.read[7] + "</a></b>" +
                                    "<b style=' font-size:16;color:#ff7842;float:right'>Signalé <font style='color:#fff;'>"+db.read[8]+"</font> fois</b><br>" +
                                    "</div><div id='info2'>" +

                                    "<a class='thislink' href='unbannedArticle.aspx?idA=" + db.read[0] + "'>Activé ce contenu</a>" +
                                    "</div></div></td></tr>";



                }
            }
            db.read.Close();
            db.closeConn();

        }
    }
}
