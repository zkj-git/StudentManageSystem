using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Logoin : System.Web.UI.Page
{
    SqlConnection sms_conn;
    public int PageCount, PageSize, RecordCount, CurrentPage;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sms_connstr =System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
        // 建立连接
        sms_conn = new SqlConnection(sms_connstr);
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str_pwd = this.mypassword.Text.Trim().Replace("'", "''");
        string sqlstr = "select usertype from Users where username='"+ username.Text+"'and mypassword=@password";
        SqlCommand cmd = new SqlCommand(sqlstr,sms_conn);
        cmd.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar,50));
        cmd.Parameters["@password"].Value = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_pwd, "MD5").ToString();//密码加密
        sms_conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read() == true)
        {            
            Session["user"] = this.username.Text.Trim();//管理员用户,Session进行传值
            Session["type"] = dr["userType"].ToString().Trim();//管理员类型
            FormsAuthentication.RedirectFromLoginPage(username.Text, false);
            sms_conn.Close();
            Response.Redirect("index.aspx", false);
        }
        else
        { 
           sms_conn.Close();
           message.Text = "您必须输入有效的用户名和密码！";
        } 

    }
}
