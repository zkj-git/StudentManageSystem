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

public partial class u_password : System.Web.UI.Page
{
    SqlConnection sms_conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sms_connstr = System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
        // 建立连接
        sms_conn = new SqlConnection(sms_connstr);
        if (!IsPostBack)
           
        lblusername.Text = Session["user"].ToString();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        sms_conn.Open();
        string str_pwd = this.TextBox1.Text.Trim().Replace("'", "''");
        string str_pwdMD5 = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_pwd, "MD5").ToString();//加密后
        string sql = "update users set mypassword='" + str_pwdMD5 + "' where username='" + Session["user"].ToString().Trim() + "'";
        SqlCommand cmd = new SqlCommand(sql,sms_conn);
        //Response.Write("<script language=javascript>alert('恭喜您，修改成功！')</script>");
       // cmd.ExecuteNonQuery();
        try {
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('恭喜您，修改成功！')</script>");
        Response.Write("<script language=javascript>window.location.href='u_password.aspx'</script>");

        }
        catch(Exception)
        {
            Response.Write("<script language=javascript>alert('修改失败！')</script>");
            Response.Write("<script language=javascript>window.location.href='u_password.aspx'</script>");
        }
        sms_conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";

    }
}