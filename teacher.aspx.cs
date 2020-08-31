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

public partial class teacher : System.Web.UI.Page
{
    SqlConnection sms_conn;

    // protected System.Web.UI.WebControls.DataGrid sms_teacher;
    //  protected System.Web.UI.WebControls.Label sms_lbl_note;

    string sms_sqlstr, sms_sqlstr2;
    private void Page_Load(object sender, System.EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        string sms_connstr = System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
        sms_conn = new SqlConnection(sms_connstr);
        if (!IsPostBack)
            SMS_BindGrid();
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

    public void DataGrid_Page(object sender, DataGridPageChangedEventArgs e)
    {
        sms_teacher.CurrentPageIndex = e.NewPageIndex;
        SMS_BindGrid();
    }
    public void DataGrid_edit(object sender, DataGridCommandEventArgs e)
    {

        sms_teacher.EditItemIndex = (int)e.Item.ItemIndex;
        SMS_BindGrid();

    }
    public void DataGrid_cancel(object sender, DataGridCommandEventArgs e)
    {

        sms_teacher.EditItemIndex = -1;
        SMS_BindGrid();

    }
    public void DataGrid_delete(object sender, DataGridCommandEventArgs e)
    {


        string sms_sqlstr = "delete from teacher where Teacherid=@teacher_id";
        SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
        sms_comm.Parameters.Add(new SqlParameter("@teacher_id", SqlDbType.Char, 8));
        sms_comm.Parameters["@teacher_id"].Value = sms_teacher.DataKeys[(int)e.Item.ItemIndex];
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
        SMS_BindGrid();

    }

    public void SMS_BindGrid()
    {
        sms_sqlstr = "select teacherid,teachername,department.departmentid,department.departmentname,sex,telephone from teacher,department where teacher.departmentid=department.departmentid";
        SqlDataAdapter sms_da = new SqlDataAdapter(sms_sqlstr, sms_conn);
        DataSet sms_ds = new DataSet();
        sms_da.Fill(sms_ds, "T");
        sms_teacher.DataSource = sms_ds;
        sms_teacher.DataBind();

        sms_sqlstr2 = "select * from department";
        SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
        DataSet sms_ds2 = new DataSet();
        sms_da2.Fill(sms_ds2, "T");
        DropDownList1.DataSource = sms_ds2.Tables["T"];
        DropDownList1.DataTextField = "departmentname";
        DropDownList1.DataValueField = "departmentname";
        DropDownList1.DataBind();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //sms_sqlstr = "select teacherid,teachername,department.departmentid,department.departmentname,sex,telephone from teacher,department where teacher.departmentid=department.departmentid and (teachername='" + TextBox1.Text + "' or teacherid='" + TextBox2.Text + "' or department.departmentname='" + DropDownList1.SelectedItem.Text + "')";
        SqlCommand sms_comm = new SqlCommand("Employess_Sel", sms_conn);
        sms_comm.CommandType = CommandType.StoredProcedure;
        sms_comm.CommandText = "Employess_Sel";
        sms_comm.Connection = sms_conn;
        SqlDataAdapter sms_da = new SqlDataAdapter(sms_comm);
        sms_da.SelectCommand.Parameters.Add("@lastname", SqlDbType.NVarChar);
        sms_da.SelectCommand.Parameters.Add("@department", SqlDbType.VarChar, 30);
        sms_da.SelectCommand.Parameters["@lastname"].Value = this.TextBox1.Text.Trim().Replace("'", "''");
        sms_da.SelectCommand.Parameters["@department"].Value = this.DropDownList1.SelectedValue.ToString(); ;
        DataSet sms_ds = new DataSet();
        sms_da.Fill(sms_ds);
        sms_teacher.DataSource = sms_ds;
        sms_teacher.DataBind();
    }

}


