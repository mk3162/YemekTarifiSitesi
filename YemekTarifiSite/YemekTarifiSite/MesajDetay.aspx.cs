using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];
           
            SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar where MesajId=@mesajid",baglan.Baglanti());
            komut.Parameters.AddWithValue("@mesajid", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtGonderen.Text = dr["MesajGonderen"].ToString();
                txtBaslik.Text = dr["MesajBaslik"].ToString();
                txtMail.Text = dr["MesajMail"].ToString();
                txtIcerik.Text = dr["MesajIcerik"].ToString();
            }
            baglan.Baglanti().Close();
        }
    }
}