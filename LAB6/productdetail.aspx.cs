using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class productdetail : System.Web.UI.Page
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
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["lab6"].ConnectionString);
            Sql = "SELECT * FROM product WHERE ProID= " + pid;
            SqlDataAdapter da = new SqlDataAdapter(Sql, cnn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Image1.ImageUrl = "~/image/" + dt.Rows[0]["ProImage"].ToString();
                lblName.Text = dt.Rows[0]["ProName"].ToString();
                lblDes.Text = dt.Rows[0]["ProDesc"].ToString();
                lblPrice.Text = dt.Rows[0]["ProPrice"].ToString();
                lblWarranty.Text = dt.Rows[0]["ProWarranty"].ToString();
            }

            LoadData();
        }
    }

    private void LoadData()
    {
        string Sql;
        int pid = Convert.ToInt32(Request.QueryString["pid"]);
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["lab6"].ConnectionString);
        Sql = "Select * From comment Where ProID = " + pid;
        SqlDataAdapter da = new SqlDataAdapter(Sql, cnn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        lblTotal.Text = dt.Rows.Count.ToString();
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        int pid = Convert.ToInt32(Request.QueryString["pid"]);
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["lab6"].ConnectionString);
        string Sql = "Insert into comment(ProID,DateSend,Content,Email,Status) Values ("+ pid + ",'" + DateTime.Now + "','" + txtContent.Text + "','" + txtEmail.Text +"',1)";
        SqlCommand command = new SqlCommand(Sql, cnn);
        command.CommandType = CommandType.Text;
        command.Connection.Open();
        command.ExecuteNonQuery();
        LoadData();
    }
}