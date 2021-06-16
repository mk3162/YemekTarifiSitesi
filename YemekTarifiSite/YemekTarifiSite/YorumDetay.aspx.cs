using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select yorum.YorumAdSoyad, yorum.YorumMail, yorum.YorumIcerik, yemek.YemekAd from Tbl_Yorumlar as yorum inner join Tbl_Yemekler as yemek on yorum.YemekId=yemek.YemekId where YorumId=@yorumid", baglan.Baglanti());
                komut.Parameters.AddWithValue("@yorumid", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtAdSoyad.Text = dr["YorumAdSoyad"].ToString();
                    txtMail.Text = dr["YorumMail"].ToString();
                    txticerik.Text = dr["YorumIcerik"].ToString();
                    txtYemek.Text = dr["YemekAd"].ToString();
                }
                baglan.Baglanti().Close();
            }

        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set YorumOnay=1, YorumIcerik=@yorumicerik where YorumId=@yorumid", baglan.Baglanti());
            komut.Parameters.AddWithValue("@yorumicerik", txticerik.Text);
            komut.Parameters.AddWithValue("@yorumid", id);
            komut.ExecuteNonQuery();

            FormYenile();
            baglan.Baglanti().Close();
        }

        private void FormYenile()
        {
            txtAdSoyad.Text = string.Empty;
            txtMail.Text = string.Empty;
            txticerik.Text = string.Empty;
            txtYemek.Text = string.Empty;
        }
    }
}