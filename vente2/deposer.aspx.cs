using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace vente2
{
    public partial class deposer : System.Web.UI.Page
    {

        Bdd db = new Bdd();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isOpen"] != "1")
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (CheckType(FileUpload1.FileName))
                {

                    string url = "/img/" + FileUpload1.FileName;
                    int idC = Convert.ToInt32(Session["client"]);

                    FileUpload1.SaveAs(Server.MapPath(url));
                   
                    db.addArticle(Request.Form["catg"], Request.Form["TextBox1"], Request.Form["TextBox3"], url, Request.Form["TextBox4"], idC, Request.Form["TextBox2"],DateTime.Now.ToString("dd/MM/yyyy à HH:mm"));

                    Response.Redirect("annonces.aspx");
                }
               
            }
        }

        public bool CheckType(string file)
        {
            string ex = Path.GetExtension(file);
            switch (ex.ToLower())
            {
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".gif":
                    return true;
                default:
                    return false;
            }

        }
    }
}
