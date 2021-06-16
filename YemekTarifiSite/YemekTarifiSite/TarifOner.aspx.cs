using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", baglan.Baglanti());
            komut.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", txtYapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", txtTarifOneren.Text);
            komut.Parameters.AddWithValue("@t6", txtMailAdresi.Text);

            int tarifSayisi = komut.ExecuteNonQuery();
            baglan.Baglanti().Close();
            Response.Write(tarifSayisi + " Adet Tarifiniz Alınmıştır...");

            FormYenile();

        }

        private void FormYenile()
        {
            txtTarifAd.Text = string.Empty;
            txtMalzemeler.Text = string.Empty;
            txtYapilis.Text = string.Empty;
            txtTarifOneren.Text = string.Empty;
            txtMailAdresi.Text = string.Empty;
        }
    }
}