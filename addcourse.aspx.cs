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

public partial class addcourse : System.Web.UI.Page
{
    SqlConnection sms_conn;
    string sms_sqlstr;
    private void Page_Load(object sender, System.EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        string sms_connstr = ConfigurationSettings.AppSettings["SMS_dbconn"];
        sms_conn = new SqlConnection(sms_connstr);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sms_sqlstr = "insert into course (courseid,coursename,coursetypeid,credithour,totalperiod,weekperiod,remark) values('" + TextBox1.Text + "','" + TextBox8.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + DropDownList3.SelectedValue.ToString() + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + TextBox6.Text + "')";
        SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
        sms_comm.Connection.Open();
        try
        {
            sms_comm.ExecuteNonQuery();
            Response.Redirect("course.aspx");

        }
        catch (SqlException)
        {
            sms_lbl_note.Text = "编辑失败";
            sms_lbl_note.Style["color"] = "red";
        }
        sms_comm.Connection.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("course.aspx");
    }
}
