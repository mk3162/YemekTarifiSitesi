using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string yemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["yemekId"];

            SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where YemekId=@yemekId", baglan.Baglanti());
            komut.Parameters.AddWithValue("@yemekId", yemekId);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            baglan.Baglanti().Close();

            // Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YemekId=@p2", baglan.Baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekId);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("Insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values (@p1,@p2,@p3,@p4)", baglan.Baglanti());
            komut3.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            komut3.Parameters.AddWithValue("@p2", txtMail.Text);
            komut3.Parameters.AddWithValue("@p3", txtYorum.Text);
            komut3.Parameters.AddWithValue("@p4", yemekId);
            komut3.ExecuteNonQuery();

            FormYenile();

            baglan.Baglanti().Close();
        }

        private void FormYenile()
        {
            txtAdSoyad.Text = string.Empty;
            txtMail.Text = string.Empty;
            txtYorum.Text = string.Empty;
        }
    }
}