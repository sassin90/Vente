using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class delete : System.Web.UI.Page
    {
        Bdd db = new Bdd();
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Request.QueryString["id"];

            db.suppSuivi(a);
            db.closeConn();
            db.suppArticle(a);
            Response.Redirect("compte.aspx");
        }
    }
}
