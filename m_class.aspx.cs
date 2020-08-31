using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class m_class : System.Web.UI.Page
{
    SqlConnection sms_conn;
    public int PageCount, PageSize, RecordCount, CurrentPage;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sms_connstr = System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
        // 建立连接
        sms_conn = new SqlConnection(sms_connstr);

        PageSize = 8;
        if (!IsPostBack)
        {
            // SMS_DataBand();　 
            //计算总共有多少记录
            //CurrentPage = 0; 
            ListBind();
            ViewState["PageIndex"] = 0;
            RecordCount = CalculateRecord();
            lblRecordCount.Text = RecordCount.ToString();
            //计算总共有多少页
            if ((RecordCount % PageSize) == 0)
                PageCount = (RecordCount / PageSize);
            else
                PageCount = (RecordCount / PageSize) + 1;

            lblPageCount.Text = PageCount.ToString();
            ViewState["PageCount"] = PageCount;
            //string sms_sqlstr2 = "select specialityname,specialityid from [speciality]";
            //SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
            //DataSet sms_ds2 = new DataSet();
            //sms_da2.Fill(sms_ds2, "T");

            //for (int i = 0; i < sms_ds2.Tables["T"].Rows.Count; i++)
            //{
            //   DropDownList1.Items.Add(new ListItem(sms_ds2.Tables["T"].Rows[i]["specialityname"].ToString()));
            // }
            // sms_ds2.Clear();
            sms_conn.Open();
            string sms_sqlstr2 = "select specialityname from [speciality]";
            SqlDataAdapter sms_da2 = new SqlDataAdapter(sms_sqlstr2, sms_conn);
            DataSet sms_ds2 = new DataSet();
            sms_da2.Fill(sms_ds2, "T");
            sms_conn.Close();
            DropDownList1.DataSource = sms_ds2.Tables["T"];
            DropDownList1.DataTextField = "specialityname";
            DropDownList1.DataValueField = "specialityname";
            DropDownList1.DataBind();
            sms_ds2.Clear();
            sms_ds2.Dispose();
        }
    }
    //计算总共有多少条记录
    public int CalculateRecord()
    {
        int intCount;

        string strCount = "select count(*) as co from class";
        sms_conn.Open();
        SqlCommand MyComm = new SqlCommand(strCount, sms_conn);
        SqlDataReader dr = MyComm.ExecuteReader();
        if (dr.Read())
        {
            intCount = Int32.Parse(dr["co"].ToString());
        }
        else
        {
            intCount = 0;
        }
        dr.Close();
        sms_conn.Close();
        return intCount;
    }

    public ICollection CreateSource()
    {
        int StartIndex;
        //设定导入的起终地址
        StartIndex = CurrentPage * PageSize;
        string strSel = "select * from [class],[student],[speciality] where class.specialityid=speciality.specialityid and class.monitorid=student.studentid";
        DataSet ds = new DataSet();
        SqlDataAdapter MyAdapter = new SqlDataAdapter(strSel, sms_conn);
        MyAdapter.Fill(ds, StartIndex, PageSize, "guest");
        return ds.Tables["guest"].DefaultView;
    }

    #region   Web   窗体设计器生成的代码
    override protected void OnInit(EventArgs e)
    {
        //   
        //   CODEGEN:   该调用是   ASP.NET   Web   窗体设计器所必需的。   
        //   
        InitializeComponent();
        base.OnInit(e);
    }

    ///   <summary>   
    ///   设计器支持所需的方法   -   不要使用代码编辑器修改   
    ///   此方法的内容。   
    ///   </summary>   
    private void InitializeComponent()
    {
        this.Load += new System.EventHandler(this.Page_Load);

    }
    #endregion

    public void ListBind()
    {
        sms_class.DataSource = CreateSource();
        sms_class.DataBind();
        lbnNextPage.Enabled = true;
        lbnPrevPage.Enabled = true;
        if (CurrentPage == (PageCount - 1)) lbnNextPage.Enabled = false;
        if (CurrentPage == 0) lbnPrevPage.Enabled = false;
        lblCurrentPage.Text = (CurrentPage + 1).ToString();


    }


    public void Page_OnClick(Object sender, CommandEventArgs e)
    {
        CurrentPage = (int)ViewState["PageIndex"];
        PageCount = (int)ViewState["PageCount"];
        string cmd = e.CommandName;
        //判断cmd，以判定翻页方向
        switch (cmd)
        {
            case "next":
                if (CurrentPage < (PageCount - 1)) CurrentPage++;
                break;
            case "prev":
                if (CurrentPage > 0) CurrentPage--;
                break;
        }
        ViewState["PageIndex"] = CurrentPage;
        ListBind();
    }
    public void DataList_EditCommand(object sender, DataListCommandEventArgs e)
    {
        sms_class.EditItemIndex = e.Item.ItemIndex;
        sms_class.SelectedIndex = -1;
        ListBind();
    }
    public void Datalist_CancelCommand(object sender, DataListCommandEventArgs e)
    {
        sms_class.EditItemIndex = -1;
        ListBind();
    }

    public void Datalist_UpdateCommand(object sender, DataListCommandEventArgs e)
    {

        TextBox spename, cname, ent, monname;
        Label cid;
        cid = (Label)(e.Item.FindControl("Lblcid"));
        spename = (TextBox)(e.Item.FindControl("TextBox2"));
        cname = (TextBox)(e.Item.FindControl("TextBox4"));
        ent = (TextBox)(e.Item.FindControl("TextBox3"));
        monname = (TextBox)(e.Item.FindControl("TextBox1"));
        string sms_sqlstr2 = "update class set monitorid=(Select studentid from student where studentname='" + monname.Text + "'),classname='" + cname.Text + "',EntranceYear='" + ent.Text + "'where classid='" + cid.Text + "'";
        SqlCommand sms_comm = new SqlCommand(sms_sqlstr2, sms_conn);
        sms_comm.Connection.Open();
        try
        {
            sms_comm.ExecuteNonQuery();
        }
        catch (SqlException)
        {

        }
        sms_comm.Connection.Close();
        sms_class.SelectedIndex = -1; //屏蔽已选的
        sms_class.EditItemIndex = -1;
        ListBind();
    }
    public void Datalist_DeleteCommand(object sender, DataListCommandEventArgs e)
    {

        Label cid;
        cid = (Label)(e.Item.FindControl("Label3"));
        string sms_sqlstr = " delete from class where classid='" + cid.Text + "'";
        SqlCommand sms_comm = new SqlCommand(sms_sqlstr, sms_conn);
        sms_comm.Connection.Open();
        try
        {
            sms_comm.ExecuteNonQuery();
        }
        catch (SqlException)
        {

        }
        sms_comm.Connection.Close();
        ListBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //TextBox name = (TextBox)(e.Item.FindControl("TextBox1"));
        string strCount = "select studentname from student where studentname='" + message.Text + "'";
        sms_conn.Open();
        SqlCommand MyComm = new SqlCommand(strCount, sms_conn);
        SqlDataReader dr = MyComm.ExecuteReader();
        if (dr.Read())
        {
            message.Text = "专业和学生信息不正确!";
        }
        else
        {
            message.Text = "专业和学生信息有误!";
        }
        dr.Close();
        sms_conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ListBind2();
    }
    public ICollection CreateSource2()
    {
        int StartIndex;
        //设定导入的起终地址
        StartIndex = CurrentPage * PageSize;
        string strSel = "select * from [class],[student],[speciality] where class.specialityid=speciality.specialityid and class.monitorid=student.studentid and class.specialityname='" + DropDownList1.SelectedItem.Text + "'";
        DataSet ds = new DataSet();
        SqlDataAdapter MyAdapter = new SqlDataAdapter(strSel, sms_conn);
        MyAdapter.Fill(ds, StartIndex, PageSize, "guest");
        return ds.Tables["guest"].DefaultView;
    }
    public void ListBind2()
    {
        sms_class.DataSource = CreateSource2();
        sms_class.DataBind();

    }
    protected void add_Click(object sender, EventArgs e)
    {
        Response.Redirect("addclass.aspx");
    }
}
