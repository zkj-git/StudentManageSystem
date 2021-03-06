﻿using System;
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

public partial class grade : System.Web.UI.Page
{
    //protected System.Web.UI.WebControls.DataGrid sms_grade;
    SqlConnection sms_conn;
    string sms_sqlstr, sms_sqlstr2, str;

    protected void Page_Load(object sender, EventArgs e)
    {
        string sms_connstr = ConfigurationSettings.AppSettings["sms_dbconn"];
        // 建立连接
        sms_conn = new SqlConnection(sms_connstr);
        if (!IsPostBack)
            SMS_BindGrid();
        LinkButton3.Attributes.Add("onclick", "javascript:return confirm('你确认要删除吗?')");

    }
    public void SMS_BindGrid()
    {
        //sms_conn.Open();
        TextBox2.Text = Request.QueryString["id"];
        string sms_sqlstr = "select * from [grade],[course],[student] where grade.courseid=course.courseid and grade.studentid=student.studentid";
        if (TextBox2.Text != "")
        {
            sms_sqlstr = "select * from [grade],[course],[student] where grade.courseid=course.courseid and grade.studentid=student.studentid and grade.courseid='" + TextBox2.Text + "'";
            TextBox2.Text = "";
        }

        SqlDataAdapter sms_adp = new SqlDataAdapter(sms_sqlstr, sms_conn);
        DataSet sms_ds = new DataSet();
        sms_adp.Fill(sms_ds);
        sms_conn.Close();
        sms_grade.DataSource = sms_ds;
        sms_grade.DataBind();
        sms_ds.Clear();
        sms_ds.Dispose();

        sms_conn.Open();
        sms_sqlstr2 = "select coursename,courseid from course";
        SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
        DataSet sms_ds2 = new DataSet();
        sms_da2.Fill(sms_ds2, "T");
        sms_conn.Close();
        DropDownList1.DataSource = sms_ds2.Tables["T"];
        DropDownList1.DataTextField = "coursename";
        DropDownList1.DataValueField = "coursename";
        DropDownList1.DataBind();
        RepeaterC.DataSource = sms_ds2.Tables["T"];
        RepeaterC.DataBind();
        sms_ds2.Clear();
        sms_ds2.Dispose();
    }
    public void Data_Page(object sender, GridViewPageEventArgs e)
    {
        try
        {
            sms_grade.PageIndex = e.NewPageIndex;
            SMS_BindGrid();
        }
        catch { }
    }
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < sms_grade.Rows.Count; i++)
        {
            CheckBox chkSelect = (CheckBox)sms_grade.Rows[i].FindControl("chkSelect");
            chkSelect.Checked = true;
        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < sms_grade.Rows.Count; i++)
        {
            CheckBox chkSelect = (CheckBox)sms_grade.Rows[i].FindControl("chkSelect");
            chkSelect.Checked = !chkSelect.Checked;
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        //如果是绑定数据行 



        for (int i = 0; i < sms_grade.Rows.Count; i++)
        {
            CheckBox chkSelect = (CheckBox)sms_grade.Rows[i].FindControl("chkSelect");
            if (chkSelect.Checked)
            {
                string str = ((Label)sms_grade.Rows[i].FindControl("Label3")).Text;
                string sid = ((Label)sms_grade.Rows[i].FindControl("lblsid")).Text;
                string sms_sqlstr = "delete from grade where studentid='" + sid + "'and courseid='" + str + "'";
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
        for (int i = 0; i < sms_grade.Rows.Count; i++)
        {
            CheckBox chkSelect = (CheckBox)sms_grade.Rows[i].FindControl("chkSelect");
            chkSelect.Checked = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "" && TextBox4.Text != "")
        {
            sms_sqlstr = "select * from [student],[grade],[course] where grade.studentid=student.studentid and grade.courseid=course.courseid and (student.studentid='" + TextBox4.Text + "')";
        }
        else if (TextBox4.Text == "" && (TextBox3.Text != ""))
        {
            sms_sqlstr = "select * from [student],[grade],[course] where grade.studentid=student.studentid and grade.courseid=course.courseid and (student.studentname='" + TextBox3.Text + "')";
        }
        else if ((TextBox3.Text == "") && (TextBox4.Text == ""))
        {
            sms_sqlstr = "select * from [student],[grade],[course] where grade.studentid=student.studentid and grade.courseid=course.courseid and  (student.studentname='" + TextBox3.Text + "' or student.studentid='" + TextBox4.Text + "' or course.coursename='" + DropDownList1.SelectedItem.Text + "')";
        }
        else
        {
            sms_sqlstr = "select * from [student],[grade],[course] where grade.studentid=student.studentid and grade.courseid=course.courseid and  (studentstudentname='" + TextBox3.Text + "' or student.studentid='" + TextBox4.Text + "' or course.coursename='" + DropDownList1.SelectedItem.Text + "')";
        }
        sms_conn.Open();
        SqlDataAdapter sms_da = new SqlDataAdapter(sms_sqlstr, sms_conn);
        DataSet sms_ds = new DataSet();
        sms_da.Fill(sms_ds);
        sms_conn.Close();
        sms_grade.DataSource = sms_ds;
        sms_grade.DataBind();
        TextBox3.Text = "";
        TextBox4.EnableViewState = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("grade.aspx");
        //SMS_BindGrid();
    }

    protected void Linkbutton1_Click(object sender, EventArgs e)
    {
        int index = 0;
        LinkButton lb = (LinkButton)sender;
        for (int i = 0; i < sms_grade.Rows.Count; i++)
        {
            if ((LinkButton)(sms_grade.Rows[i].FindControl("LinkButton1")) == lb)
            {
                index = i;
                break;
            }
        }

        str = ((Label)(sms_grade.Rows[index].Cells[0].FindControl("Label3"))).Text.ToString();
        //
        Label14.Text = str;
        //

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("addgrade.aspx");
    }
    protected void RowEditing(object sender, GridViewEditEventArgs e)
    {
        sms_grade.EditIndex = e.NewEditIndex;
        SMS_BindGrid();

    }
    //更新
    protected void RowUpdata(object sender, GridViewUpdateEventArgs e)
    {

        string sqlstr = "update grade set grade='" + ((TextBox)(sms_grade.Rows[e.RowIndex].Cells[4].Controls[1])).Text.ToString().Trim() +
         "' where studentid='" + ((Label)(sms_grade.Rows[e.RowIndex].Cells[2].Controls[1])).Text.ToString().Trim() +
         "'and courseid='" + ((Label)(sms_grade.Rows[e.RowIndex].Cells[0].Controls[1])).Text.ToString().Trim() + "'";

        SqlCommand sqlcom = new SqlCommand(sqlstr, sms_conn);
        sms_conn.Open();
        sqlcom.ExecuteNonQuery();
        sms_grade.EditIndex = -1;
        SMS_BindGrid();
        sms_conn.Close();
    }

    //取消
    protected void RowCancel(object sender, GridViewCancelEditEventArgs e)
    {
        sms_grade.EditIndex = -1;
        SMS_BindGrid();
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

