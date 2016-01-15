using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class signalerArticles : System.Web.UI.Page
    {
        Bdd db = new Bdd();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isOpen"] != "1") { Response.Redirect("login.aspx"); }
            else
            {
                string c = Request.QueryString["idc"];
                string a = Request.QueryString["ida"];
                db.signalerArticle(a, c);
                db.closeConn();
                db.nombreSignaler(a);
                db.closeConn();
                Response.Redirect("annonces.aspx");
            }
        }
    }
}
