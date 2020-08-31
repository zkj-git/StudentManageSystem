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
using zz;
public partial class Text : System.Web.UI.Page
{
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {       
        if (!IsPostBack)
            SMS_DataBind();
    }

    private void SMS_DataBind()
    {
        CConnection conn = new CConnection();
        sql = "select * from [teacher]";
        DataSet ds =conn.dataset(sql);
        sms_T.DataSource = ds;
        sms_T.DataBind();
        ds.Clear();
        ds.Dispose();

        
        int number;
        char code;
        string checkCode = String.Empty;
        System.Random random = new Random();

        //for (int i = 0; i < 5; i++)
        //{
            number =2;
           
            //if (number % 2 == 0)
                code = (char)('0'+(char)(number % 10));
            //else
            //    code = (char)('A' + (char)(number % 26));

            checkCode += code.ToString();
        //}

        Label2.Text = checkCode;
       
    }
}