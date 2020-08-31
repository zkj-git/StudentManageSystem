using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;
public partial class u_student : System.Web.UI.Page
{
    SqlConnection sms_conn;
    string sms_sqlstr, sms_sqlstr2, str;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sms_connstr = System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
        // 建立连接
        sms_conn = new SqlConnection(sms_connstr);
        if (!IsPostBack)
            SMS_BindGrid();
    }

    public void SMS_BindGrid()
    {
        sms_conn.Open();
        string sms_sqlstr = "select * from [student],[class] where student.classid=class.classid";
        SqlDataAdapter sms_adp = new SqlDataAdapter(sms_sqlstr, sms_conn);
        DataSet sms_ds = new DataSet();
        sms_adp.Fill(sms_ds);
        sms_conn.Close();
        sms_student.DataSource = sms_ds;
        sms_student.DataBind();
        sms_ds.Clear();
        sms_ds.Dispose();

        sms_conn.Open();
        sms_sqlstr2 = "select * from class";
        SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
        DataSet sms_ds2 = new DataSet();
        sms_da2.Fill(sms_ds2, "T");
        sms_conn.Close();
        DropDownList1.DataSource = sms_ds2.Tables["T"];
        DropDownList1.DataTextField = "classname";
        DropDownList1.DataValueField = "classname";
        DropDownList1.DataBind();
        sms_ds2.Clear();
        sms_ds2.Dispose();

    }

    public void Data_Page(object sender, GridViewPageEventArgs e)
    {
        try
        {
            sms_student.PageIndex = e.NewPageIndex;
            SMS_BindGrid();
        }
        catch { }
    }
    /// <summary>
    /// ////////////////////////////////////////////////////////////////
    /// </summary>
    /// <param name="e"></param>

    #region Web Form Designer generated code
    override protected void OnInit(EventArgs e)
    {
        //
        // CODEGEN：该调用是 ASP.NET Web 窗体设计器所必需的。
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

        this.Load += new System.EventHandler(this.Page_Load);

    }
    #endregion
    /// <summary>
    /// ///////////////////////////////////////////////////////////////
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < sms_student.Rows.Count; i++)
        {
            CheckBox chkSelect = (CheckBox)sms_student.Rows[i].FindControl("chkSelect");
            chkSelect.Checked = true;
        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < sms_student.Rows.Count; i++)
        {
            CheckBox chkSelect = (CheckBox)sms_student.Rows[i].FindControl("chkSelect");
            chkSelect.Checked = !chkSelect.Checked;
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < sms_student.Rows.Count; i++)
        {
            CheckBox chkSelect = (CheckBox)sms_student.Rows[i].FindControl("chkSelect");
            if (chkSelect.Checked)
            {
                string str = ((Label)sms_student.Rows[i].FindControl("Label3")).Text;
                string sms_sqlstr = "delete from student where studentid='" + str + "'";
                SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
                sms_comm.Connection.Open();
                try
                {
                    sms_comm.ExecuteNonQuery();
                    sms_lbl_note.Text = "删除成功";

                }
                catch (SqlException)
                {
                    sms_lbl_note.Text = "删除失败";
                    sms_lbl_note.Style["color"] = "red";
                }
                sms_comm.Connection.Close();

            }
        }
        SMS_BindGrid();
    }


    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < sms_student.Rows.Count; i++)
        {
            CheckBox chkSelect = (CheckBox)sms_student.Rows[i].FindControl("chkSelect");
            chkSelect.Checked = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (TextBox3.Text == "" && TextBox4.Text != "")
        //{
        //    sms_sqlstr = "select * from [student],[class] where student.classid=class.classid and (studentid='" + TextBox4.Text + "')";

        //}
        //else if (TextBox4.Text == "" && (TextBox3.Text != ""))
        //{
        //    sms_sqlstr = "select * from [student],[class] where student.classid=class.classid and (studentname='" + TextBox3.Text + "')"; 
        //}
        //else if ((TextBox3.Text == "" )&&( TextBox4.Text=="") )
        //{
        //    sms_sqlstr = "select * from [student],[class] where student.classid=class.classid and (studentname='" + TextBox3.Text + "' or studentid='" + TextBox4.Text + "' or class.classname='" + DropDownList1.SelectedItem.Text + "')";
        //}
        //else
        //{
        //    sms_sqlstr = "select * from [student],[class] where student.classid=class.classid and (studentname='" + TextBox3.Text + "' or studentid='" + TextBox4.Text + "' or class.classname='" + DropDownList1.SelectedItem.Text + "')";
        //}
        sms_conn.Open();
        SqlCommand sms_comm = new SqlCommand("Student_Sel", sms_conn);
        sms_comm.CommandType = CommandType.StoredProcedure;
        sms_comm.CommandText = "Student_Sel";
        sms_comm.Connection = sms_conn;
        SqlDataAdapter sms_da = new SqlDataAdapter(sms_comm);
        sms_da.SelectCommand.Parameters.Add("@lastname", SqlDbType.NVarChar);
        sms_da.SelectCommand.Parameters.Add("@department", SqlDbType.VarChar, 30);
        sms_da.SelectCommand.Parameters.Add("@studentid", SqlDbType.VarChar, 10);
        sms_da.SelectCommand.Parameters["@lastname"].Value = this.TextBox3.Text.Trim().Replace("'", "''");
        sms_da.SelectCommand.Parameters["@department"].Value = this.DropDownList1.SelectedValue.ToString();
        sms_da.SelectCommand.Parameters["@studentid"].Value = this.TextBox4.Text.Trim().Replace("'", "''");
        DataSet sms_ds = new DataSet();
        sms_da.Fill(sms_ds);
        sms_conn.Close();
        sms_student.DataSource = sms_ds;
        sms_student.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SMS_BindGrid();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("addstu.aspx");

    }
    protected void RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //int i;
        ////执行循环，保证每条数据都可以更新
        //for (i = 0; i < GridView1.Rows.Count; i++)
        //{
        //    //首先判断是否是数据行
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        //当鼠标停留时更改背景色
        //        e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#00A9FF'");
        //        //当鼠标移开时还原背景色
        //        e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
        //    }
        //}
        //如果是绑定数据行 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //鼠标经过时，行背景色变 
            e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#E6F5FA'");
            //鼠标移出时，行背景色变 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFFF'");
            //如果是绑定数据行 //清清月儿http://blog.csdn.net/21aspnet 
        }


    }
}