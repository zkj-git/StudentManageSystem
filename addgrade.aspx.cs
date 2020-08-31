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

public partial class addgrade : System.Web.UI.Page
{
    SqlConnection sms_conn;
    string sms_sqlstr;
    protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        string sms_connstr = ConfigurationSettings.AppSettings["SMS_dbconn"];
        sms_conn = new SqlConnection(sms_connstr);
        if (!IsPostBack)
        { SMS_Databind(); }
    }
    public void SMS_Databind()
    {

        sms_sqlstr = "select * from [course]";
        SqlDataAdapter sms_da = new SqlDataAdapter(sms_sqlstr, sms_conn);
        DataSet sms_ds = new DataSet();
        sms_da.Fill(sms_ds, "T");

        for (int i = 0; i < sms_ds.Tables["T"].Rows.Count; i++)
        {
            DropDownList2.Items.Add(new ListItem(sms_ds.Tables["T"].Rows[i]["coursename"].ToString(), sms_ds.Tables["T"].Rows[i]["courseid"].ToString()));
        }
        Label4.Text = DropDownList2.SelectedValue.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        sms_sqlstr = "insert into grade(courseid,grade.studentid,grade) values('" + Label4.Text + "','" + Label5.Text + "','" + TextBox2.Text + "')";
        SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
        sms_comm.Connection.Open();
        try
        {
            sms_comm.ExecuteNonQuery();
            Response.Redirect("grade.aspx");

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
        Response.Redirect("grade.aspx");
    }
    protected void LBox2_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        Label4.Text = DropDownList2.SelectedValue.ToString();
    }
    protected void validate_Click(object sender, EventArgs e)
    {
        sms_sqlstr = "select * from student where studentname='" + TextBox1.Text + "'";
        SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
        sms_comm.Connection.Open();
        SqlDataAdapter sms_adp = new SqlDataAdapter(sms_comm);
        DataSet sms_ds = new DataSet();

        sms_adp.Fill(sms_ds, "table1");
        Label5.Text = sms_ds.Tables["table1"].Rows[0]["studentid"].ToString();
        Label6.Text = sms_ds.Tables["table1"].Rows[0]["credithour"].ToString();
        sms_comm.Connection.Close();

        //SqlDataAdapter sms_adp = new SqlDataAdapter(sms_sqlstr, sms_conn);
        //DataSet sms_ds = new DataSet();
        // sms_adp.Fill(sms_ds,"table1");
        //Label5.Text = sms_ds.Tables["table1"].Rows[0]["studentid"].ToString()
    }
}

