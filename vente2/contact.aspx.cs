using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class contact1 : System.Web.UI.Page
    {
        Bdd db = new Bdd();
        protected void Page_Load(object sender, EventArgs e)
        {
           // int idC = Convert.ToInt32(Session["id"]);

            string idC = Request.QueryString["num"];

            db.read = db.infoClient(idC);

            info_client();

            db.read = db.tous_clientArticle(idC);

            autre_annonces();
        }

         public void info_client()
        {
            if (db.read.HasRows)
            {
                while (db.read.Read())
                {

                    Label2.Text = "<b style='font-size:30;font-family:'1';padding: 0 220 0 220; '>" + db.read[1] + "</b><br>&nbsp;";
               Label1.Text = "<tr><td><img style='float:left;padding-right:10;' src='img/client1.jpg ' width='50'/></td>" +
									"<td>"+db.read[1]+"</td></tr><tr>"+
		
							"<td><img style='float:left;padding-right:10;' src='img/location1.jpg' width='50'/></td>"+
                            "<td>" + db.read[3] + "</td></tr><tr>" +
							"<td><img style='float:left;padding-right:10;' src='img/phone1.jpg' width='50'/></td>"+
                            "<td>" + db.read[4] + "</td></tr><tr>" +
							"<td><img style='float:left;padding-right:10;'src='img/mail1.jpg' width='50'/></td>"+
                            "<td>" + db.read[2] + "</td></tr>";
								
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
                        Label3.Text = "<b style=\"font-size:30;font-family:'1';padding: 0 220 0 220; \">Les annonces de " + db.read[3] + "</b><br><br>";
       // Label3.Text ="<b style='font-size:30;font-family:'1';padding: 0 220 0 220; '>Les annonce de "+db.read[3]+" </b><br>&nbsp;";

			Label4.Text +="<tr><td width='100%'>"+
		
					"<a href='article.aspx?id="+db.read[6]+"'><div id='article'>"+
						
					"<img id='' src="+db.read[0]+" height='250' style='float:left;padding-right:20;'/><div id='info1'>"+
							
                            "<b style=' font-size:28;color:#ddd;'>"+db.read[2]+"<br>"+db.read[1]+" Dh<br></b>diposé le "+db.read[5]+"</div>"+
					
							"<div id='info2'><ul id='options'>"+

                            "<li><a href='EnregistrerAnnonce.aspx?ida=" + db.read[6] + "&idc=" + Session["Client"] + "'><img style='float:left;padding:5 5 5 0;' src='img/save2.jpg ' width='45'/>Sauvegarder</a></li>" +
                            "<li><a href='signalerArticles.aspx?ida=" + db.read[6] + "&idc=" + db.read[7] + "'><img style='float:left;padding:5 5 5 0;' src='img/report2.jpg ' width='45'/>Signaler le contenu </a></li>" +
							"</ul><br></div></div></a></td></tr>";
								
						
					
				
		
        }}
                db.read.Close();
            db.closeConn();
                }
    }
}
