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


public partial class addstu : System.Web.UI.Page
{
    SqlConnection sms_conn;
    string sms_sqlstr2;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*TextBox1.Text = Request.QueryString["id"];
        TextBox2.Text = Request.QueryString["name"];
        TextBox3.Text = Request.QueryString["classid"];
        TextBox4.Text = Request.QueryString["sex"];
        TextBox5.Text = Request.QueryString["bir"];
        TextBox8.Text = Request.QueryString["tele"];
        TextBox7.Text = Request.QueryString["cred"];
        TextBox10.Text = Request.QueryString["add"];
        TextBox11.Text = Request.QueryString["pwd"];
        TextBox9.Text = Request.QueryString["ru"];*/
        // 在此处放置用户代码以初始化页面
        string sms_connstr = ConfigurationSettings.AppSettings["SMS_dbconn"];
        sms_conn = new SqlConnection(sms_connstr);
        if (!IsPostBack)
            SMS_DataBind();
    }
    public void SMS_DataBind()
    {

        sms_sqlstr2 = "select * from [class]";
        SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
        DataSet sms_ds2 = new DataSet();
        sms_da2.Fill(sms_ds2, "T");
        /*for (int i = 2000; i <= 2020; i++)
         {
             DropDownList1.Items.Add(new ListItem(i.ToString(), i.ToString()));
         }*/
        for (int i = 0; i < sms_ds2.Tables["T"].Rows.Count; i++)
        {
            DropDownList1.Items.Add(new ListItem(sms_ds2.Tables["T"].Rows[i]["classname"].ToString(), sms_ds2.Tables["T"].Rows[i]["classid"].ToString()));
        }
        //   Label5.Text = DropDownList1.SelectedValue.ToString();
        TextBox3.Text = DropDownList1.SelectedValue.ToString();
        sms_conn.Close();
        sms_ds2.Clear();
        sms_ds2.Dispose();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox3.Text = DropDownList1.SelectedValue.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //  string sms_sqlstr = "insert into student (studentid,studentname,sex,classid,birthday,telephone,credithour,ru_date,address,pwd,remark) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','"+TextBox9.Text+"','"+TextBox10.Text+"','"+TextBox11.Text+"')";
        string sms_sqlstr = "insert into student (studentid,studentname,sex,classid,birthday,telephone,credithour,ru_date,address,pwd,remark) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')";

        SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
        sms_comm.Connection.Open();
        try
        {
            sms_comm.ExecuteNonQuery();
            //  sms_lbl_note.Text = "编辑成功";
            // message.Text = "添加成功！！！";

        }
        catch (SqlException)
        {
            //sms_lbl_note.Text = "编辑失败";
            //sms_lbl_note.Style["color"] = "red";
            message.Text = "添加失败";
            message.Style["color"] = "red";
        }
        sms_comm.Connection.Close();
        Response.Write("<script language=javascript>alert('恭喜您，添加成功！')</script>");
        Response.Write("<script language=javascript>window.location.href='addstu.aspx'</script>");
        //  Response.Write("<script>alert('添加成功！')</script>");
        //Response.Redirect("stuadd_index.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("stuadd.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

}