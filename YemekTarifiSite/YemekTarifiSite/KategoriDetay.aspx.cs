using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["kategoriId"];

            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where KategoriId=@kategoriId", baglan.Baglanti());
            komut.Parameters.AddWithValue("@kategoriId", kategoriId);
            SqlDataReader dr = komut.ExecuteReader();

            DataList2.DataSource = dr;
            DataList2.DataBind();
             

            baglan.Baglanti().Close();

        }
    }
}