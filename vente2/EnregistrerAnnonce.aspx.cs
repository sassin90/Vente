using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class EnregistrerAnnonce : System.Web.UI.Page
    {
        Bdd db = new Bdd();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isOpen"] != "1") { Response.Redirect("login.aspx"); }
            else
            {
                string art = Request.QueryString["ida"];
                string cl = Request.QueryString["idc"];
                db.suiviArticle(cl, art);
                Response.Redirect("compte.aspx");
            }
        }
    }
}
