using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class ProductDetail : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int pid;
        if (Request.QueryString["pid"] != null)
            pid = Convert.ToInt32(Request.QueryString["pid"]);
        else
            pid = 0;

        string Sql;
        if (pid != 0)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopLaptop"].ConnectionString);
            Sql = "SELECT * FROM product WHERE ProID= " + pid;
            SqlDataAdapter da = new SqlDataAdapter(Sql, cnn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Image1.ImageUrl = "~/Images/" + dt.Rows[0]["ProImage"].ToString();
                LabelName.Text = dt.Rows[0]["ProName"].ToString();
                LabelPDesc.Text = dt.Rows[0]["ProDesc"].ToString();
                LabelPrice.Text = dt.Rows[0]["ProPrice"].ToString();
            }
        }
    }
}