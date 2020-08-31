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

public partial class addcoursetype : System.Web.UI.Page
{
    SqlConnection sms_conn;

    // protected System.Web.UI.WebControls.DataGrid sms_teacher;
    //  protected System.Web.UI.WebControls.Label sms_lbl_note;


    private void Page_Load(object sender, System.EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        string sms_connstr = ConfigurationSettings.AppSettings["SMS_dbconn"];
        sms_conn = new SqlConnection(sms_connstr);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sms_sqlstr = "insert into coursetype (typename,coursetypeid) values('" + TextBox2.Text + "','" + TextBox1.Text + "')";
        SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
        sms_comm.Connection.Open();
        try
        {
            sms_comm.ExecuteNonQuery();
            sms_lbl_note.Text = "编辑成功";

        }
        catch (SqlException)
        {
            sms_lbl_note.Text = "编辑失败";
            sms_lbl_note.Style["color"] = "red";
        }
        sms_comm.Connection.Close();
        Response.Redirect("coursetype.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("coursetype.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("addcoursetype.aspx");
    }
}
