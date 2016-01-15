using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace vente2
{
    public class Bdd
    {
        public SqlConnection connexion = new SqlConnection("server= Yassin-PC; initial catalog= prj_vente; integrated security=true");
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader read;

      public  int numClient ;
      public  string nom ;
      public string adresse ;
      public string ville ;
      public string tele ;
      public string username ;
      public string pass ;


        public void openConn()
        {
            connexion.Open();
        }
        public void closeConn()
        {
            // if (connexion.State == ConnectionState.Open)

            connexion.Close();
        }

        public SqlDataReader readSQL(string sql)
        {

            openConn();
            cmd.CommandText = sql;
            cmd.Connection = connexion;
            //closeConn();
            return cmd.ExecuteReader();

        }

        public int writeSQL(string sql)
        {

            openConn();
            cmd.CommandText = sql;
            cmd.Connection = connexion;
            return cmd.ExecuteNonQuery();
            // closeConn();
        }

      

        public SqlDataReader listArticle()
        {

            return readSQL("select a.numArticle,a.img,a.prix,a.nomArticle,c.nomCategorie,s.nomCatg,a.adresse from categorie c , article a , sousCategorie s where a.numsouCatg = s.numsouCatg and c.numCatg=s.numCatg and a.ban=0 and a.hidden=0");

        }

        public SqlDataReader listsArticle_(string numArticle)
        {

            return readSQL("select * from  article  where numArticle ='"+numArticle+"' ");

        }


        public SqlDataReader clientArticle(string numArticle)
        {

            return readSQL("select a.img,a.prix,a.nomArticle,c.nom,a.descr,a.numClient,a.date_article from client c , article a  where a.numClient = c.numClient and numArticle = '" + numArticle + "' and a.ban=0 and a.hidden=0");

        }

        public SqlDataReader tous_clientArticle(string numClient)
        {

            return readSQL("select a.img,a.prix,a.nomArticle,c.nom,a.descr,a.date_article, a.numArticle,a.numClient,a.hidden from client c , article a  where a.numClient = c.numClient and c.numClient ='" + numClient+"' and a.ban=0 ");

        }

        public SqlDataReader mesCommandes(string numClient)
        {

            return readSQL("select a.img,a.prix,a.nomArticle,a.descr,a.date_article, a.numArticle,s.numClient,a.hidden from suivi s , article a , client c where  s.numArticle = a.numArticle and s.numClient=c.numClient and s.numClient ='"+numClient+"' ");

        }

        public SqlDataReader findArticle(string v,string c,string a)
        {
            return readSQL(" select a.numArticle,a.img,a.prix,a.nomArticle,c.nomCategorie,s.nomCatg,a.adresse from article a,categorie c , sousCategorie s where a.numsouCatg = s.numsouCatg and c.numCatg=s.numCatg and a.adresse='" + v + "' and a.numSouCatg= '" + c + "' and a.nomArticle ='" + a + "' and a.ban=0 and a.hidden=0 ");
        }

        public int addArticle(string sc,string a,string v,string img,string desc,int c,string p,string d)
        {
            return writeSQL("insert into article values('"+sc+"','"+a+"','"+v+"','"+img+"','"+desc+"','"+c+"','"+p+"','"+d+"',0,0,0)");
        }

        public int modifierArticle(string ns,string n,string a,string i,string d,string p,string numA)
        {
            return writeSQL("update article set numSouCatg = '" + ns + "',nomArticle='" + n + "',Adresse='" + a + "',img='" + i + "',descr='" + d + "',prix= '" + p + "' where numArticle = '" + numA + "'");
        }

        public int addClient(string Nom , string Login , string Passe , string Adresse ,string Ville , string Telephone ){
            return writeSQL("INSERT INTO client VALUES ('" + Nom + "','" + Adresse + "','" + Ville + "','" + Telephone + "','" + Login + "','" + Passe + "',0)");
        }

        public SqlDataReader findClient(string login , string pass ){
        return readSQL("select * from client where username='" + login + "' and pass='" + pass + "'");
        }
       
        public SqlDataReader infoClient(string numClient)
        {
            return readSQL("select * from client where numClient = '" + numClient+"'" );
        }

        public int modifierClient(string n,string a,string v,string t,string u,string p,int nu)
        {
            return writeSQL("update client set nom = '"+n+"',adresse='"+a+"',ville='"+v+"',tele='"+t+"',username='"+u+"',pass='"+p+"' where numClient = "+nu);
        }

        public int signalerArticle(string a, string c)
        {
            return writeSQL("insert into banned values ('" + a + "','" + c + "')");
        }

        public int suiviArticle(string c , string a)
        {
            return writeSQL("insert into suivi values ('"+c+"','"+a+"')");
        }

        public int commentaires(string a,string c,string d,string m)
        {
            return writeSQL("insert into chat values ('" + a + "','" + c + "','" + d + "','" + m + "')");
        }

        public SqlDataReader listCommentaires(string a)
        {

            return readSQL("select x.numArticle,c.nom,x.date_msg,x.msg from chat x , client c where x.numClient = c.numClient and  numArticle='" + a + "' ");
        }

        public int cache(string n)
        {
            return writeSQL("update article set hidden=1 where numArticle = '"+n+"'");
        }

        public int decache(string n)
        {
            return writeSQL("update article set hidden=0 where numArticle = '" + n + "'");
        }

        public int suppSuivi(string n)
        {
            return writeSQL("delete from suivi where numArticle = '" + n + "'");
        }

        public int suppArticle(string n)
        {
            return writeSQL("delete from article where numArticle = '" + n + "'");
        }

        // partie admin

        public SqlDataReader listClient()
        {

            return readSQL("select * from client where ban != 1");

        }

        public SqlDataReader clientBanned()
        {

            return readSQL("select * from client where ban = 1");

        }
       public SqlDataReader tousArticle()
        {

            return readSQL("select a.numArticle,a.nomArticle,a.img,a.descr,a.numClient,a.prix,a.date_article,c.nom,a.nbSign from article a , client c where a.numClient=c.numClient and a.ban=0");

        }
        public SqlDataReader tousArticleBanned()
        {

            return readSQL("select a.numArticle,a.nomArticle,a.img,a.descr,a.numClient,a.prix,a.date_article,c.nom,a.nbSign from article a , client c where a.numClient=c.numClient and a.ban=1");

        }

        public int nombreSignaler(string id)
        {
            return writeSQL("update article set nbSign = (select count(*) from banned where numArticle='" + id + "') where numArticle = '" + id + "'");
        }

        public int bannedClient(string id)
        {
            return writeSQL("update client set ban = 1 where numClient = '"+id+"'");
        }

        public int unbannedClient(string id)
        {
            return writeSQL("update client set ban = 0 where numClient = '" + id + "'");
        }

        public int bannedArticle(string id)
        {
            return writeSQL("update article set ban = 1 where numArticle = '" + id + "'");
        }

        public int unbannedArticle(string id)
        {
            return writeSQL("update article set ban = 0 where numArticle = '" + id + "'");
        }

    }
}
