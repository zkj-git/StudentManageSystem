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

public partial class addteacher : System.Web.UI.Page
{
    SqlConnection sms_conn;

    // protected System.Web.UI.WebControls.DataGrid sms_teacher;
    //  protected System.Web.UI.WebControls.Label sms_lbl_note;

    string sms_sqlstr;
    private void Page_Load(object sender, System.EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        string sms_connstr = ConfigurationSettings.AppSettings["SMS_dbconn"];
        sms_conn = new SqlConnection(sms_connstr);


    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        string sms_sqlstr = "insert into teacher (Teachername,sex,technicalpost,telephone,homeaddr,pwd,remark,departmentid,teacherid) values('" + TextBox2.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox8.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox6.Text + "','" + DropDownList3.SelectedValue.ToString() + "','" + TextBox1.Text + "')";
        SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
        sms_comm.Connection.Open();
        try
        {
            sms_comm.ExecuteNonQuery();
            Response.Redirect("teacher.aspx");

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
        Response.Redirect("teacher.aspx");
    }

}






