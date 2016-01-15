using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class modifierCompte : System.Web.UI.Page
    {

        Bdd db = new Bdd();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["isOpen"] != "1")
            {
                Response.Redirect("login.aspx");
            }
           // int idC = Convert.ToInt32(Session["Client"]);
            db.read = db.infoClient(""+Session["Client"]);

            info_client();

        }
        public void info_client()
        {
            if (db.read.HasRows)
            {
                while (db.read.Read())
                {
                    Label1.Text = "<td><input name='nom' class='champ' required type='text'  value='"+db.read[1]+"'/></td>" +
                                    "</tr><tr valign=middle align=left>" +

                                    "<td><img style='float:left;padding-right:10;' src='img/client1.jpg ' width='50'/></td>" +
                                    "<td><input name='user' class='champ' type='text'   required value='" + db.read[5] + "'/></td>" +
                                    "</tr><tr valign=middle align=left>" +

                                    "<td><img style='float:left;padding-right:10;' src='img/key1.jpg ' width='50'/></td>" +
                                    "<td><input name='pass1' class='champ' type='password'   required value='" + db.read[6] + "'/></td>" +
                                    "</tr><tr valign=middle align=left>" +

                                    "<td><img style='float:left;padding-right:10;' src='img/key1.jpg ' width='50'/></td>" +
                                    "<td><input name='pass2' class='champ' type='password'   required value='" + db.read[6] + "'/></td>" +
                                    "</tr><tr valign=middle align=left>" +

                                    "<td><img style='float:left;padding-right:10;' src='img/mail1.jpg ' width='50'/></td>" +
                                    "<td><input name='adresse' class='champ' type='text'  required  value='" + db.read[2] + "'/></td>" +
                                    "</tr><tr valign=middle align=left>" +

                                    "<td><img style='float:left;padding-right:10;' src='img/phone1.jpg ' width='50'/></td>" +
                                    "<td><input name='tele' class='champ' type='text'  required  value='" + db.read[4] + "'/></td>" +
                                    "</tr><tr valign=middle align=left>" +

                                    "<td><img style='float:left;padding-right:10;' src='img/location1.jpg ' width='50'/></td>" +
                                    "<td><input name='ville' class='champ' type='text'  required  value='" + db.read[3] + "'/></td>" +
                                    "</tr></tr><tr valign=middle align=left>" +


                                    "<td><img style='float:left;padding-right:10;' src='img/key1.jpg ' width='50'/></td>" +
                                    "<td><input name='pass' class='champ' type='password'   required placeholder='Mot de passe actuel'/></td>" +
                                    "</tr><tr valign=middle align=left>";

                }
            }

            db.read.Close();
            db.closeConn();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int idC = Convert.ToInt32(Session["Client"]);
            //Label2.Text=Request.Form["nom"]+"," +Request.Form["adresse"]+"," +Request.Form["ville"]+"," +Request.Form["tele"]+", "+Request.Form["user"]+"," +Request.Form["pass1"]+","+idC;
            db.modifierClient(Request.Form["nom"], Request.Form["adresse"], Request.Form["ville"], Request.Form["tele"], Request.Form["user"], Request.Form["pass1"],idC);
            Response.Redirect("compte.aspx");
        }
    }
}