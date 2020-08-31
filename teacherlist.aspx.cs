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

public partial class teacherlist : System.Web.UI.Page
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
        sms_sqlstr = "select * from teacher,department  where Teacherid='" + TextBox1.Text + "'and teacher.departmentid=department.departmentid";
        sms_conn.Open();
        SqlDataAdapter sms_da = new SqlDataAdapter(sms_sqlstr, sms_conn);
        DataSet sms_ds = new DataSet();
        sms_da.Fill(sms_ds,"table1");
      
        TextBox2.Text = sms_ds.Tables["table1"].Rows[0]["teacherName"].ToString();
        RadioButtonList1.SelectedValue= sms_ds.Tables["table1"].Rows[0]["sex"].ToString();
       // TextBox3.Text = sms_ds.Tables["table1"].Rows[0]["departmentname"].ToString();
        DropDownList3.SelectedItem.Text = sms_ds.Tables["table1"].Rows[0]["departmentname"].ToString();
        DropDownList2.SelectedItem.Text= sms_ds.Tables["table1"].Rows[0]["technicalpost"].ToString();
        TextBox8.Text = sms_ds.Tables["table1"].Rows[0]["telephone"].ToString();
        TextBox7.Text = sms_ds.Tables["table1"].Rows[0]["homeaddr"].ToString();
        TextBox9.Text = sms_ds.Tables["table1"].Rows[0]["pwd"].ToString();
        TextBox6.Text = sms_ds.Tables["table1"].Rows[0]["remark"].ToString();

        sms_ds.Clear();
        sms_ds.Dispose();
        sms_conn.Close();
        sms_sqlstr2 = "select * from department";
        //SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
        //DataSet sms_ds2 = new DataSet();
        //sms_da2.Fill(sms_ds2, "T");
        //DropDownList1.DataSource = sms_ds2.Tables["T"];
        //DropDownList1.DataTextField = "departmentname";
        //DropDownList1.DataValueField = "departmentname";
        //DropDownList1.DataBind();
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sms_sqlstr = "update teacher set Teachername='" + TextBox2.Text + "',sex='" + RadioButtonList1.SelectedItem.Text + "',technicalpost='" + DropDownList2.SelectedItem.Text + "',telephone='" + TextBox8.Text + "',homeaddr='" + TextBox7.Text + "',pwd='" + TextBox9.Text + "',remark='" + TextBox6.Text + "',departmentid='" + DropDownList3.SelectedValue.ToString() + "' where Teacherid='" + TextBox1.Text + "'";
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
        Response.Redirect("teacher.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SMS_BindGrid();
    }
}






