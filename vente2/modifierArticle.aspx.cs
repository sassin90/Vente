using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class modifierArticle : System.Web.UI.Page
    {
        Bdd db = new Bdd();
        deposer dis = new deposer();
        string url = "";
        string numArticle = "";
   
        protected void Page_Load(object sender, EventArgs e)
        {
             numArticle = Request.QueryString["field"];
            db.read=db.listsArticle_(numArticle);
           
            listArticle();
        }

        public void listArticle()
        {

            if (db.read.HasRows)
            {
                while (db.read.Read())
                {
                     url = ""+db.read[4];
                     numArticle =""+ db.read[0];

                    Label1.Text +=
                                                "<td>Titre</td>" +
                                                "<td><input name='nom' class='champ' required type='text'  value='" + db.read[2] + "'/></td>" +
                                            "</tr><tr valign=middle align=left>" +

                                                "<td>Catégorie</td><td>"; 

                                                   /* "<select class='categorie' type='text' >" +
                                                        "<option value='0' >Choisir une catégorie</option>" +
                                                        "<option style='background-color:#dcdcc3;' value='1'>-- VEHICULES --</option>" +
                                                        "<option value='2'>Cat3</option>" +
                                                        "<option value='3'>Cat4</option>" +*/
                                               

                                               // Label2.Text="<option style='background-color:#dcdcc3;' value='8'>-- IMMOBILIER --</option>" +
                                                      //  "<option value='9'>Cat6</option>" +

                                                      //  "<option style='background-color:#dcdcc3;' value='37'>--</option>" +
                                                       // "<option value='38'>Autres</option>" +
                                               Label2.Text = "</select></td></tr>" +

                                            "</tr><tr valign=middle align=left>" +
                                                "<td>Prix</td>" +
                                                "<td><input name='prix' class='champ' type='text'   required value='" + db.read[7] + "'/></td>" +
                                            "</tr><tr valign=middle align=left>" +

                                                "<td>Lieu</td>" +
                                                "<td><input name='ville' class='champ' type='text'   required value='" + db.read[3] + "'/></td></tr>" +

                                            "<tr valign=middle align=left>" +
                                                "<td>Description</td>" +
                                                "<td><textarea name='descr' class='area' >" + db.read[5] + "</textarea></td>" +

                                            "</tr><tr valign=middle align=left><td>Image</td>";



                }
                db.read.Close();
                db.closeConn();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (FileUpload1.HasFile)
            {
                if (dis.CheckType(FileUpload1.FileName))
                {

                     url = "/img/" + FileUpload1.FileName;
                    int idC = Convert.ToInt32(Session["client"]);

                    FileUpload1.SaveAs(Server.MapPath(url));
                  
              db.modifierArticle(Request.Form["catg"],Request.Form["nom"],Request.Form["ville"],url,Request.Form["descr"],Request.Form["prix"],numArticle);
              Response.Redirect("compte.aspx");
                     
          
      
                }
               
            }
            else {


                db.modifierArticle(Request.Form["catg"], Request.Form["nom"], Request.Form["ville"], url, Request.Form["descr"], Request.Form["prix"], numArticle);

                Response.Redirect("compte.aspx");
                
            }
          
        
        }
    }
}