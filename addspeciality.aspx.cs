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

public partial class addspeciality : System.Web.UI.Page
{
    SqlConnection sms_conn;

    // protected System.Web.UI.WebControls.DataGrid sms_teacher;
    //  protected System.Web.UI.WebControls.Label sms_lbl_note;

    string sms_sqlstr2;
    private void Page_Load(object sender, System.EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        string sms_connstr = ConfigurationSettings.AppSettings["SMS_dbconn"];
        sms_conn = new SqlConnection(sms_connstr);

        if (!IsPostBack)
        {
            sms_sqlstr2 = "select * from [department]";
            SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
            DataSet sms_ds2 = new DataSet();
            sms_da2.Fill(sms_ds2, "T");
            for (int i = 0; i < sms_ds2.Tables["T"].Rows.Count; i++)
            {
                DropDownList2.Items.Add(new ListItem(sms_ds2.Tables["T"].Rows[i]["departmentname"].ToString(), sms_ds2.Tables["T"].Rows[i]["departmentid"].ToString()));
            }
            Labdar.Text = DropDownList2.SelectedValue.ToString();
            LabSpeidF.Text = DropDownList2.SelectedValue.ToString();
            sms_conn.Close();
            sms_ds2.Clear();
            sms_ds2.Dispose();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sms_sqlstr = "insert into speciality (specialityname,specialityid,departmentid) values('" + TextBox11.Text + "',left('" + LabSpeidF.Text + "',1)+'" + TextBox7.Text + "','" + Labdar.Text + "')";
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
        Response.Redirect("speciality.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("speciality.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("addspeciality.aspx");
    }
    protected void DDL2SelectedChanged(object sender, EventArgs e)
    {
        Labdar.Text = DropDownList2.SelectedValue.ToString();
        LabSpeidF.Text = DropDownList2.SelectedValue.ToString();
    }
}
