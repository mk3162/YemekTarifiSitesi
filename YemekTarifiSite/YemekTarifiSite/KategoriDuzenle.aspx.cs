using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler where KategoriId=@kategoriId", baglan.Baglanti());
                komut.Parameters.AddWithValue("@kategoriId", id);

                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtKategoriAdi.Text = dr["KategoriAd"].ToString();
                    txtAdet.Text = dr["KategoriAdet"].ToString();
                }
                baglan.Baglanti().Close();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update Tbl_Kategoriler set KategoriAd=@kategoriad , KategoriAdet=@kategoriadet where KategoriId=@kategoriid", baglan.Baglanti());
            komut2.Parameters.AddWithValue("@kategoriid", id);
            komut2.Parameters.AddWithValue("@kategoriad", txtKategoriAdi.Text);
            komut2.Parameters.AddWithValue("@kategoriadet", txtAdet.Text);
            komut2.ExecuteNonQuery();

            FormYenile();

            baglan.Baglanti().Close();
        }

        private void FormYenile()
        {
            txtKategoriAdi.Text = string.Empty;
            txtAdet.Text = string.Empty;
        }
    }
}