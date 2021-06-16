using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", baglan.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme İşlemi
            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete from Tbl_Kategoriler where KategoriId=@kategoriid", baglan.Baglanti());
                komut2.Parameters.AddWithValue("@kategoriid", id);
                komut2.ExecuteNonQuery();

                baglan.Baglanti().Close();

            }

            Panel2.Visible = false;
            Panel4.Visible = false;
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
            SqlCommand komut = new SqlCommand("Insert into Tbl_Kategoriler (KategoriAd) values (@p1)", baglan.Baglanti());
            komut.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            komut.ExecuteNonQuery();

            txtKategoriAd.Text = string.Empty;

            baglan.Baglanti().Close();
        }
    }
}