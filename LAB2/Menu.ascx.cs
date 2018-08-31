using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Menu : System.Web.UI.UserControl
{
    public void LoadMenu()
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShopLaptop"].ConnectionString);
        string Sql = "SELECT * FROM category";

        SqlDataAdapter da = new SqlDataAdapter(Sql, cnn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            MenuItem item = new MenuItem(dr["CateName"].ToString(), dr["CateID"].ToString());
            Menu1.Items.Add(item);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadMenu();
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        string cid = Menu1.SelectedValue;
        Response.Redirect("Default.aspx?cid=" + cid);
    }
}