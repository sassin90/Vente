using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2.Admin
{
    public partial class admin_bloques : System.Web.UI.Page
    {
        public Bdd db= new Bdd();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] != "1")
            {
                Response.Redirect("/login.aspx");
            }

            db.read = db.clientBanned();

            listClient();
        }
            public void listClient()
        {

            
            if (db.read.HasRows)
            {

                while (db.read.Read())
                {
                    Label1.Text += " <tr><td width='100%'>" +

                                        "<a href='../contact.aspx?num="+db.read[0]+"'><div id='client'>" +

                                        "<img id='' src='img/icon-profile.png' height='200' style='float:left;padding-right:20;'/>" +
                                        "<div id='info1'>" +
                                        "<table style='color:#fff;' border='0' cellspacing='0' cellpadding='0' align='left' height=100%>" +

                                        "<tr><td><img style='float:left;padding-right:10;' src='img/identity1.jpg ' width='30'/></td>" +
                                        "<td>"+db.read[1]+"</td>" +
                                        "<td width='25%'><img style='float:right;padding-right:10;' src='img/client1.jpg ' width='30'/></td>" +
                                        "<td>" + db.read[5] + "</td>" +
                                        "</tr></tr><tr>" +

                                        "<td><img style='float:left;padding-right:10;' src='img/location1.jpg ' width='32	'/></td>" +
                                        "<td>" + db.read[3] + "</td>" +
                                        "<td><img style='float:right;padding-right:10;' src='img/mail1.jpg ' width='32'/></td>" +
                                        "<td>" + db.read[2] + "</td>" +
                                                        "</tr><tr>" +

                                                            "<td><img style='float:left;padding-right:10;' src='img/phone1.jpg ' width='32'/></td>" +
                                                            "<td>" + db.read[4] + "</td>" +

                                                    "</tr></table></div><div id='info2'>" +

                                                        "<a class='thislink' href='unbannedClient.aspx?unBC=" + db.read[0] + "'>Activer ce client</a>" +
                                                "</div></div></a></td></tr>";
                }

            }

            db.read.Close();
            db.closeConn();
        }
        }
    }

