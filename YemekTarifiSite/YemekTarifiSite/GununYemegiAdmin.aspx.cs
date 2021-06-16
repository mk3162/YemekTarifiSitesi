using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        SqlSinif baglan = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler",baglan.Baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}