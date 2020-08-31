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

public partial class coursetype : System.Web.UI.Page
{
    SqlConnection sms_conn;
    string sqlstr;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sms_connstr = ConfigurationSettings.AppSettings["sms_dbconn"];
        // 建立连接
        sms_conn = new SqlConnection(sms_connstr);

        if (!IsPostBack)
        {
            SMS_BindRepeater();
            sqlstr = "select * from coursetype";
            SqlDataAdapter cmd = new SqlDataAdapter(sqlstr, sms_conn);
            //创建填充 DataSet.
            DataSet ds = new DataSet();
            cmd.Fill(ds, "T");
            for (int i = 0; i < ds.Tables["T"].Rows.Count; i++)
            {
                DropDownList1.Items.Add(new ListItem(ds.Tables["T"].Rows[i]["typename"].ToString(), ds.Tables["T"].Rows[i]["coursetypeid"].ToString()));
            }
            ds.Clear();
            ds.Dispose();
            sms_conn.Close();
            sms_conn.Dispose();
        }

    }
    private void SMS_BindRepeater()
    {
        sqlstr = "select * from coursetype";
        SqlDataAdapter cmd = new SqlDataAdapter(sqlstr, sms_conn);
        //创建填充 DataSet.
        DataSet ds = new DataSet();
        cmd.Fill(ds, "TD1");
        RepeaterD.DataSource = ds.Tables["TD1"];
        RepeaterD.DataBind();
        ds.Clear();
        ds.Dispose();
    }
    public void RepeaterIC(object sender, RepeaterCommandEventArgs e)
    {
        System.Web.UI.WebControls.LinkButton update = (LinkButton)e.Item.FindControl("LinkButton2");//找到这个按钮
        System.Web.UI.WebControls.LinkButton cancel = (LinkButton)e.Item.FindControl("LinkButton1");//找到这个按钮
        System.Web.UI.WebControls.LinkButton edit = (LinkButton)e.Item.FindControl("LinkButton3");
        System.Web.UI.WebControls.LinkButton delete = (LinkButton)e.Item.FindControl("LinkButton4");
        System.Web.UI.WebControls.Label LabDepid = (Label)e.Item.FindControl("LabDepid");
        System.Web.UI.WebControls.Label LabDepname = (Label)e.Item.FindControl("LabDepname");
        System.Web.UI.WebControls.TextBox TetDepid = (TextBox)e.Item.FindControl("TxtDepid");
        System.Web.UI.WebControls.TextBox TetDepname = (TextBox)e.Item.FindControl("TxtDepname");
        if (e.CommandName == "edit")
        {
            update.Visible = true;
            cancel.Visible = true;
            edit.Visible = false;
            LabDepname.Visible = false;
            TetDepname.Visible = true;

        }
        if (e.CommandName == "cancel")
        {
            SMS_BindRepeater();
        }
        if (e.CommandName == "update")
        {
            sqlstr = "update coursetype set typename='" + TetDepname.Text + "'where coursetypeid='" + LabDepid.Text + "'";

            SqlCommand sqlcom = new SqlCommand(sqlstr, sms_conn);
            sms_conn.Open();
            sqlcom.ExecuteNonQuery();
            SMS_BindRepeater();
            sms_conn.Close();
        }
        if (e.CommandName == "delete")
        {
            sqlstr = "delete coursetype where coursetypeid='" + LabDepid.Text + "'";
            SqlCommand sqlcom = new SqlCommand(sqlstr, sms_conn);
            sms_conn.Open();
            sqlcom.ExecuteNonQuery();
            SMS_BindRepeater();
            sms_conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sqlstr = "select * from coursetype where coursetypeid='" + DropDownList1.SelectedValue.ToString() + "'";
        SqlDataAdapter cmd = new SqlDataAdapter(sqlstr, sms_conn);
        //创建填充 DataSet.
        DataSet ds = new DataSet();
        cmd.Fill(ds, "TD1");
        RepeaterD.DataSource = ds.Tables["TD1"];
        RepeaterD.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SMS_BindRepeater();
    }
    protected void LinkButtonADD_Click(object sender, EventArgs e)
    {
        Response.Redirect("addcoursetype.aspx");
    }
}


