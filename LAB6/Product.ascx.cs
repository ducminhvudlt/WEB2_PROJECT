using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }

    public void LoadData()
    {
        DataTable dt = new DataTable();
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["lab6"].ConnectionString);
        int cid;
        if (Request.QueryString["cateid"] != null)
            cid = Convert.ToInt32(Request.QueryString["cateid"]);
        else
            cid = 0;

        string Sql;
        if (cid == 0)
            Sql = "SELECT * FROM product";
        else
            Sql = "SELECT * FROM product WHERE CateID= " + cid;

        SqlDataAdapter da = new SqlDataAdapter(Sql, cnn);

        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('No find product with the category')</script>");
        }
    }


    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string pid = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        Response.Redirect("~/productdetail.aspx?pid=" + pid);
    }
}