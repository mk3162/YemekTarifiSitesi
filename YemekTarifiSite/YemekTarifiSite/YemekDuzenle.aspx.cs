using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where YemekId=@yemekid", baglan.Baglanti());
                komut.Parameters.AddWithValue("@yemekid", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txtYemekAd.Text = dr["YemekAd"].ToString();
                    txtMalzemeler.Text = dr["YemekMalzeme"].ToString();
                    txtTarif.Text = dr["YemekTarif"].ToString();
                }

                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", baglan.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                ddlKategori.DataTextField = "KategoriAd";
                ddlKategori.DataValueField = "KategoriId";
                ddlKategori.DataSource = dr2;
                ddlKategori.DataBind();

                baglan.Baglanti().Close();
            }           
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@yemekad,YemekMalzeme=@yemekmalzeme,YemekTarif=@yemektarif,KategoriId=@kategoriid,YemekResim=@yemekresim where YemekId=@yemekid", baglan.Baglanti());
            komut.Parameters.AddWithValue("@yemekad", txtYemekAd.Text);
            komut.Parameters.AddWithValue("@yemekmalzeme", txtMalzemeler.Text);
            komut.Parameters.AddWithValue("@yemektarif", txtTarif.Text);
            komut.Parameters.AddWithValue("@kategoriid", ddlKategori.SelectedValue);
            komut.Parameters.AddWithValue("@yemekresim", "~/resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@yemekid", id);

            komut.ExecuteNonQuery();

            FormYenile();

            baglan.Baglanti().Close();

        }
        protected void btnGununYemegiSec_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumunu false yaptık.
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Durum=0", baglan.Baglanti());
            komut.ExecuteNonQuery();
            baglan.Baglanti().Close();

            //günün yemeğini id ye göre durumu true yapalım.
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set Durum=1 where YemekId=@yemekid", baglan.Baglanti());
            komut2.Parameters.AddWithValue("@yemekid", id);
            komut2.ExecuteNonQuery();
            baglan.Baglanti().Close();
        }

        private void FormYenile()
        {
            txtYemekAd.Text = string.Empty;
            txtMalzemeler.Text = string.Empty;
            txtTarif.Text = string.Empty;
        }

    }
}