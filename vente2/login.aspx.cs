using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace vente2
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isOpen"] == "1")
            {
                Response.Redirect("annonces.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           SqlDataReader read ;  
            Bdd db = new Bdd();

        read = db.findClient(Request.Form["TextBox1"], Request.Form["TextBox2"]);
       if( read.HasRows){
           while (read.Read())
           {
               if (read[5].Equals("admin") && read[6].Equals("123"))
               {
                   Session["isAdmin"] = "1";
                   Session["isOpen"] = "1";
                   Session["Client"] = read[0];
               }
               else
               {
                   Session["isOpen"] = "1";
                   Session["Client"] = read[0];
               }
              
               
           }
           read.Close();
           db.closeConn();
            Response.Redirect("compte.aspx");
       }
       else Label1.Text="Erreur";

       read.Close();
        }
    }
}
