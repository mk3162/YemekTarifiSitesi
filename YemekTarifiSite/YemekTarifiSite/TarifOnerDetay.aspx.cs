using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifId=@tarifid", baglan.Baglanti());
                komut.Parameters.AddWithValue("@tarifid", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtTarifAd.Text = dr["TarifAd"].ToString();
                    txtTarifMalzemeler.Text = dr["TarifMalzeme"].ToString();
                    txtYapilis.Text = dr["TarifYapilis"].ToString();
                    txtOneren.Text = dr["TarifSahip"].ToString();
                    txtMail.Text = dr["TarifSahipMail"].ToString();
                }

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", baglan.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                ddlKategori.DataTextField = "KategoriAd";
                ddlKategori.DataValueField = "KategoriId";
                ddlKategori.DataSource = dr2;
                ddlKategori.DataBind();

                baglan.Baglanti().Close();
            }
        }
        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where TarifId=@tarifid", baglan.Baglanti());
            komut.Parameters.AddWithValue("@tarifid", id);
            komut.ExecuteNonQuery();

            baglan.Baglanti().Close();

            //Yemeği anasayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", baglan.Baglanti());
            komut2.Parameters.AddWithValue("@p1", txtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", txtTarifMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", txtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", ddlKategori.SelectedValue);

            komut2.ExecuteNonQuery();

            txtTarifAd.Text = string.Empty;
            txtTarifMalzemeler.Text = string.Empty;
            txtYapilis.Text = string.Empty;


        }
    }
}