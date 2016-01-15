using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isOpen"] != "1")Label1.Text = "<li><a href='inscription.aspx'> INSCRIPTION </a></li><li><a href='login.aspx'> IDENTIFICATION </a></li>";
            else Label1.Text = "<li><a href='deconnexion.aspx'> DECONNEXION </a></li><li><a href='compte.aspx'> MON COMPTE </a></li>";
        
        }
    }
}
