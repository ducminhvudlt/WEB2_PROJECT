using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] != null)
        {
            Login1.UserName = Request.Cookies["Login"]["Username"].ToString();
            //Login1.Password = Request.Cookies["Login"]["Password"].ToString();
        }
    }

    protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["lab5"].ConnectionString);
        string sql = "Select UserID, UserName, UserPass from Users Where UserName = '" + Login1.UserName + "' And UserPass = '" + Login1.Password + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            if (Login1.RememberMeSet)
            {
                Request.Cookies["Login"]["Username"] = Login1.UserName;
                Request.Cookies["Login"]["Password"] = Login1.Password;
            }
            Session["Username"] = Login1.UserName;
            Session["UserID"] = dt.Rows[0]["UserID"];
            Response.Redirect("~/User.aspx");
        }
    }
}