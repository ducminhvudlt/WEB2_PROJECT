using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class publogo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection("Server=HDMV;database=pubs;uid=sa;pwd=ducminhvu7101996");
        string pub_id = Request.QueryString["pubid"];
        string sql = "Select logo from pub_info where pub_id = '" + pub_id + "'";
        SqlCommand comm = new SqlCommand(sql, con);
        try
        {
            con.Open();
            SqlDataReader dr = comm.ExecuteReader();
            dr.Read();
            byte[] logo = (byte[])dr["logo"];
            Response.BinaryWrite(logo);
        }
        catch (Exception)
        {
            Response.Write("No image");
            throw;
        }
        finally
        {
            con.Close();
        }
    }
}