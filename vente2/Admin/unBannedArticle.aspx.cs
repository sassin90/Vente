using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2.Admin
{
    public partial class unBannedArticle : System.Web.UI.Page
    {
        Bdd db = new Bdd();
        protected void Page_Load(object sender, EventArgs e)
        {
            string unBanA = Request.QueryString["idA"];

            db.unbannedArticle(unBanA);

            Response.Redirect("admin-annonces.aspx");

        }
    }
}
