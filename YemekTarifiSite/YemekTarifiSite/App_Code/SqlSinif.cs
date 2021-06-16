using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public class SqlSinif
    {
        public SqlConnection Baglanti()
        {
            SqlConnection baglan = new SqlConnection("Server=LAPTOP-MT10M9LK; Database=Dbo_yemektarifi; Integrated Security=true;");
            baglan.Open();
            return baglan;
        }
    }
}