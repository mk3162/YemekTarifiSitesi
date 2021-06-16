using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class İletisim : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) values (@p1,@p2,@p3,@p4)", baglan.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", txtKonu.Text);
            komut.Parameters.AddWithValue("@p3", txtMail.Text);
            komut.Parameters.AddWithValue("@p4", txtMesaj.Text);

            komut.ExecuteNonQuery();

            FormYenile();

            baglan.Baglanti().Close();

        }

        private void FormYenile()
        {
            txtAdSoyad.Text = string.Empty;
            txtKonu.Text = string.Empty;
            txtMail.Text = string.Empty;
            txtMesaj.Text = string.Empty;
        }
    }
}