using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class pubinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cnnstr = ConfigurationManager.ConnectionStrings["pubs"].ConnectionString;
        SqlConnection cnn = new SqlConnection(cnnstr);
        string sql = "Select * from publishers";
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        dtlPublishers.DataSource = dt;
        dtlPublishers.DataBind();
    }
}