using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", baglan.Baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtHakkimizda.Text = dr[0].ToString();
                }
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

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda set Metin=@metin",baglan.Baglanti());
            komut.Parameters.AddWithValue("@metin", txtHakkimizda.Text);
            komut.ExecuteNonQuery();

            txtHakkimizda.Text = string.Empty;

            baglan.Baglanti().Close();
        }
    }
}