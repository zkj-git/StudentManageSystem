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
using myResult;


public partial class addlogoin : System.Web.UI.Page
{
    protected SqlConnection conn;
    protected SqlCommand myCmd;
    protected SqlDataAdapter myDa;
    protected DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Logoin.aspx");
        }
        else
        {
            string str_type = Session["type"].ToString();
            if (str_type == "普通管理员")
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "show", "<script>alert('你没有这个权限！');history.go(-1);</script>");
            }
        }
    }
    protected void btninput_Click(object sender, System.EventArgs e)
    {
        if (this.txtuser.Text == "" || this.txtpwd.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "show_message", "<script language='javascript'>alert('用户名和密码不能为空！');</script>");
        }
        else
        {
            this.ExecuteInsert();

        }
    }

    private void ExecuteInsert()
    {
        string str_user = this.txtuser.Text.Trim().Replace("'", "''");
        string str_pwd = this.txtpwd.Text.Trim().Replace("'", "''");
        string str_pwdMD5 = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_pwd, "MD5").ToString();//加密后
        string sms_connstr = System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
        conn = new SqlConnection(sms_connstr);
        string str_type = this.ddltype.SelectedValue.ToString();
        conn.Open();
        myCmd = new SqlCommand("procAdmin", conn);
        myCmd.CommandType = CommandType.StoredProcedure;
        myCmd.Parameters.Add("@Auser", SqlDbType.Char, 10);
        myCmd.Parameters.Add("@Apwd", SqlDbType.VarChar, 50);
        myCmd.Parameters.Add("@Atype", SqlDbType.VarChar, 20);
        myCmd.Parameters["@Auser"].Value = str_user;
        myCmd.Parameters["@Apwd"].Value = str_pwdMD5;
        myCmd.Parameters["@Atype"].Value = str_type;
        myCmd.ExecuteNonQuery();
        conn.Close();
        string Dhtmlalert = "";
        Dhtmlalert += "<script language=javascript>";
        Dhtmlalert += "alert('添加成功!');";
        Dhtmlalert += "</script>";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert_news", Dhtmlalert);
    }
    private void cuvuser_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
    {
        string str_user = args.Value;
        string str_sel = "select count(username) from users where username='" + str_user + "'";
        int count = data.ExecuteSel(str_sel);
        if (count > 0)//用户已存在
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    #region Web 窗体设计器生成的代码
    override protected void OnInit(EventArgs e)
    {
        //
        // CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
        //
        InitializeComponent();
        base.OnInit(e);
    }

    /// <summary>
    /// 设计器支持所需的方法 - 不要使用代码编辑器修改
    /// 此方法的内容。
    /// </summary>
    private void InitializeComponent()
    {
        this.cuvuser.ServerValidate += new System.Web.UI.WebControls.ServerValidateEventHandler(this.cuvuser_ServerValidate);

    }
    #endregion
}

