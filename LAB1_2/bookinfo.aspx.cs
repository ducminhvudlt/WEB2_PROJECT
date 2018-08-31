using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class bookinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    string cnnstr = ConfigurationManager.ConnectionStrings["pubs"].ConnectionString;
        //    SqlConnection cnn = new SqlConnection(cnnstr);
        //    string pub_id = Request.QueryString["pubid"];
        //    string sql = "Select * from titles where pub_id = " + pub_id;
        //    SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    repBooks.DataSource = dt;
        //    repBooks.DataBind();
        //}

        string cnnstr = ConfigurationManager.ConnectionStrings["pubs"].ConnectionString;
        SqlConnection cnn = new SqlConnection(cnnstr);
        SqlDataAdapter da = new SqlDataAdapter("select title_id,title from titles", cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Titles");
        repBooks.DataSource = ds.Tables[0].DefaultView;
        repBooks.DataBind();

        string bookid = Request.QueryString["bookid"];
        if (bookid == null)
        {
            
        }
        else
        {
            string sql = "SELECT * " +
                         "FROM titles a join publishers b " +
                         "on a.pub_id = b.pub_id " +
                         "WHERE title_id = '" + bookid + "'";
            da = new SqlDataAdapter(sql, cnn);
            da.Fill(ds,"title");

            lblTitle.Text = ds.Tables[1].Rows[0]["title"].ToString();
            lblNote.Text = ds.Tables[1].Rows[0]["notes"].ToString();
            lblType.Text = ds.Tables[1].Rows[0]["type"].ToString();
            lblPublisher.Text = ds.Tables[1].Rows[0]["pub_name"].ToString();
            lblPrice.Text = ds.Tables[1].Rows[0]["price"].ToString();
            lblDate.Text = ds.Tables[1].Rows[0]["pubdate"].ToString();
        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        //if (e.CommandName.ToLower() == "select")
        //{
        //    string cnnstr = ConfigurationManager.ConnectionStrings["pubs"].ConnectionString;
        //    SqlConnection cnn = new SqlConnection(cnnstr);
        //    string bookid = ((Label)repBooks.Items[e.Item.ItemIndex].FindControl("Label1")).Text;
        //    string sql = "SELECT * " +
        //                 "FROM titles a join publishers b " +
        //                 "on a.pub_id = b.pub_id " +
        //                 "WHERE title_id = '" + bookid + "'";
        //    SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);

        //    if (dt.Rows.Count > 0)
        //    {
        //        lblTitle.Text = dt.Rows[0]["title"].ToString();
        //        lblNote.Text = dt.Rows[0]["notes"].ToString();
        //        lblType.Text = dt.Rows[0]["type"].ToString();
        //        lblPublisher.Text = dt.Rows[0]["pub_name"].ToString();
        //        lblPrice.Text = dt.Rows[0]["price"].ToString();
        //        lblDate.Text = dt.Rows[0]["pubdate"].ToString();
        //    }
        //}
    }
}