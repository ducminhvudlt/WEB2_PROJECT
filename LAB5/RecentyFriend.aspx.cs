using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class RecentyFriend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["lab5"].ConnectionString);
            string sql = "SELECT dbo.Users.UserID, dbo.Users.UserName, dbo.Users.Avatar, dbo.FriendDetail.SendingDate, dbo.FriendDetail.ReceivingDate, dbo.FriendDetail.FromID " +
                         "FROM dbo.FriendDetail INNER JOIN " +
                         "dbo.Users ON dbo.FriendDetail.ToID = dbo.Users.UserID " +
                         "WHERE(dbo.FriendDetail.SendingDate IS NOT NULL) AND(dbo.FriendDetail.ReceivingDate IS NOT NULL) " +
                         "AND(dbo.FriendDetail.FromID = " + Session["UserID"].ToString() + ")";
            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dlFriendlLst.DataSource = dt;
            dlFriendlLst.DataBind();
        }
    }
}