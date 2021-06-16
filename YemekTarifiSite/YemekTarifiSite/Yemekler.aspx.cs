using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];
            }

            if (Page.IsPostBack == false)
            {
                // Kategori Listesi Çekme
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", baglan.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                ddlKategori.DataTextField = "KategoriAd";
                ddlKategori.DataValueField = "KategoriId";
                ddlKategori.DataSource = dr2;
                ddlKategori.DataBind();
            }

            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", baglan.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut3 = new SqlCommand("Delete from Tbl_Yemekler where YemekId=@yemekid", baglan.Baglanti());
                komut3.Parameters.AddWithValue("@yemekid", id);

                komut3.ExecuteNonQuery();
                baglan.Baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", baglan.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", txtYemekTarifi.Text);
            komut.Parameters.AddWithValue("@p4", ddlKategori.SelectedValue);

            komut.ExecuteNonQuery();

            FormYenile();

            baglan.Baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet + 1 where KategoriId=@kategoriid", baglan.Baglanti());
            komut2.Parameters.AddWithValue("@kategoriid", ddlKategori.SelectedValue);

            komut2.ExecuteNonQuery();

            baglan.Baglanti().Close();
        }

        private void FormYenile()
        {
            txtYemekAd.Text = string.Empty;
            txtMalzemeler.Text = string.Empty;
            txtYemekTarifi.Text = string.Empty;
            ddlKategori.SelectedIndex = 0;
        }
    }
}