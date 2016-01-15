using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vente2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["isOpen"] == "1" )
            {
            Response.Redirect("annonces.aspx");
            }
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
          Bdd db = new Bdd();
          if (Page.IsValid)
          {
              db.addClient(Request.Form["TextBox1"], Request.Form["TextBox2"], Request.Form["TextBox3"], Request.Form["TextBox5"], Request.Form["DropDownList1"], Request.Form["TextBox6"]);
              Response.Redirect("annonces.aspx");
          }
          
        }
            
        }
    
}
