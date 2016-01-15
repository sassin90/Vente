using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class chat : System.Web.UI.Page
    {
        Bdd db = new Bdd();
        protected void Page_Load(object sender, EventArgs e)
        {
           // db.commentaires(ar.numArticle, "" + Session["Client"], DateTime.Now.ToString("dd MMMM yyyy "), Request.Form["msg"]);
           // Response.Redirect("article.aspx?id=" + ar.numArticle + "");
            Label1.Text += Request.QueryString["id"] + ";" + Session["Client"] + ";" + DateTime.Now.ToString("dd MMMM yyyy ") + "," + Request.QueryString["message"];
        }
    }
}
