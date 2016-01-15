using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2.Admin
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] != "1")
            {
                Response.Redirect("/login.aspx");
            }
           
        }
    }
}
