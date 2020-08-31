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

public partial class Editstu : System.Web.UI.Page
{
    SqlConnection sms_conn;

    // protected System.Web.UI.WebControls.DataGrid sms_teacher;
    //  protected System.Web.UI.WebControls.Label sms_lbl_note;

    string sms_sqlstr, sms_sqlstr2;
    private void Page_Load(object sender, System.EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        string sms_connstr = ConfigurationSettings.AppSettings["SMS_dbconn"];
        sms_conn = new SqlConnection(sms_connstr);
        if (!IsPostBack)
            SMS_BindGrid();
    }



    public void SMS_BindGrid()
    {

        TextBox1.Text = Request.QueryString["id"];
        sms_sqlstr = "select * from class,student  where student.classid=class.classid and studentid='" + TextBox1.Text + "'";
        //sms_conn.Open();
        SqlDataAdapter sms_da = new SqlDataAdapter(sms_sqlstr, sms_conn);
        DataSet sms_ds = new DataSet();
        sms_da.Fill(sms_ds, "table1");

        TextBox2.Text = sms_ds.Tables["table1"].Rows[0]["studentname"].ToString();
        RadioButtonList1.SelectedValue = sms_ds.Tables["table1"].Rows[0]["sex"].ToString();
        TextBox5.Text = sms_ds.Tables["table1"].Rows[0]["birthday"].ToString();
        TextBox8.Text = sms_ds.Tables["table1"].Rows[0]["telephone"].ToString();
        TextBox7.Text = sms_ds.Tables["table1"].Rows[0]["credithour"].ToString();
        TextBox11.Text = sms_ds.Tables["table1"].Rows[0]["pwd"].ToString();
        TextBox10.Text = sms_ds.Tables["table1"].Rows[0]["address"].ToString();
        TextBox6.Text = sms_ds.Tables["table1"].Rows[0]["remark"].ToString();
        for (int i = 2000; i <= 2020; i++)
        {
            DropDownList2.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
        string x = sms_ds.Tables["table1"].Rows[0]["ru_date"].ToString();
        DropDownList2.Items.FindByValue(x).Selected = true;
        //绑定Dropdownlist2;

        sms_sqlstr2 = "select * from [class]";
        SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
        DataSet sms_ds2 = new DataSet();
        sms_da2.Fill(sms_ds2, "T");

        for (int i = 0; i < sms_ds2.Tables["T"].Rows.Count; i++)
        {
            DropDownList1.Items.Add(new ListItem(sms_ds2.Tables["T"].Rows[i]["classname"].ToString(), sms_ds2.Tables["T"].Rows[i]["classid"].ToString()));
        }
        x = sms_ds.Tables["table1"].Rows[0]["classname"].ToString();
        DropDownList1.Items.FindByText(x).Selected = true;
        //DropDownList1.DataSource = sms_ds2.Tables["T"];DropDownList1.DataTextField = "departmentname";
        //DropDownList1.DataValueField = "departmentname";
        //DropDownList1.DataBind();
        sms_conn.Close();
        sms_ds.Clear();
        sms_ds.Dispose();
        sms_ds2.Clear();
        sms_ds2.Dispose();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sms_sqlstr = "update student set studentname='" + TextBox2.Text + "',sex='" + RadioButtonList1.SelectedItem.Text + "',classid='" + DropDownList1.SelectedValue.ToString() + "',telephone='" + TextBox8.Text + "',address='" + TextBox10.Text + "',credithour='" + TextBox7.Text + "',pwd='" + TextBox11.Text + "',remark='" + TextBox6.Text + "',ru_date='" + DropDownList2.SelectedValue.ToString() + "',birthday='" + TextBox5.Text + "' where studentid='" + TextBox1.Text + "'";
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
        SMS_BindGrid();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("student.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SMS_BindGrid();
    }
}

