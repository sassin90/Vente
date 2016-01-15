using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace vente2
{
    public partial class annonces : System.Web.UI.Page
    {
          public SqlDataReader read;
            Bdd db = new Bdd();
      //  public Object aa= null;
//        public string s;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["isOpen"] != "1") Label2.Text = "<li><a href='inscription.aspx'> INSCRIPTION </a></li><li><a href='login.aspx'> IDENTIFICATION </a></li>";
            else Label2.Text = "<li><a href='deconnexion.aspx'> DECONNEXION </a></li><li><a href='compte.aspx'> MON COMPTE </a></li>";
        

         //   if (Page.IsPostBack == false)
          //  {
        
                read = db.listArticle();

                listArticles();
           // }
    
        }

        public void listArticles()
        {
            Label1.Text = null;

            if (read.HasRows)
            {
              
					
                while (read.Read())
                {

                    Label1.Text += "<a href='article.aspx?id="+read[0]+"'>" +
                        "<div id='annonce'>" +
                            "<div class=frame >" +
                                "<span class=helper></span>" +
                                "<img class=image src=" + read[1] + " width='180' />" +
                            " </div>" +
                            "<img id='arrow' src='img/arrow.jpg' height='180'/>" +
                            "<center> <br>" +
                                "<font style=' font-size:40;'>" + read[2] + "</font>Dh<br>" +
                                "<font style=' font-size:20;'> " + read[3] + " </font><br> " +
                                "<font style=' font-size:15;'>	" + read[5] + " </font><br>  " +
                                "<font style=' font-size:15;'>" + read[6] + " </font><br>  " +
                            "</center></div></a>";
                    
                }

                
            }

            

            read.Close();
            db.closeConn();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            read = db.findArticle(Request.Form["TextBox1"],Request.Form["catg"], Request.Form["TextBox2"]);

                listArticles();
          
        }
    }
    
}
