
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
//该源码下载自www.mycodes.net

namespace zz
{
    ///   <summary>   
    ///   SqlConnection   的摘要说明。   
    ///   </summary>   
    public class CConnection
    {

        public SqlConnection connstr; //连接字符串
        public string getconnstr() //获取连接字符串
        {
            string constr;
            constr = System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
            return constr;
        }
        public void open() //打开数据库
        {
            string constr;
            constr=getconnstr();
            connstr=new SqlConnection(constr);
            connstr.Open();
        }
        public void close() //关闭数据库
        {
            connstr.Dispose();
            connstr.Close();
         }
        public void execsql(string sql) //执行sql语句
        {
            open();
            SqlCommand cmd = new SqlCommand(sql, connstr);
            cmd.ExecuteNonQuery();
            close();
        }
        public DataSet dataset(string sql) //返回DataSet对象
        {
            open();
            SqlDataAdapter rs = new SqlDataAdapter(sql, connstr);
            DataSet ds = new DataSet();
            rs.Fill(ds);
            return ds;
        }
        public DataView dataview(string sql) //返回DataView对象
        {
            DataSet ds = new DataSet();
            ds = dataset(sql);
            DataView dv = new DataView(ds.Tables[0]);
            return dv;
        }
        public SqlDataReader datareader(string sql) //返回DataReader对象
        {
            open();
            SqlCommand cmd = new SqlCommand(sql, connstr);
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
     }
}
