
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
//��Դ��������www.mycodes.net

namespace zz
{
    ///   <summary>   
    ///   SqlConnection   ��ժҪ˵����   
    ///   </summary>   
    public class CConnection
    {

        public SqlConnection connstr; //�����ַ���
        public string getconnstr() //��ȡ�����ַ���
        {
            string constr;
            constr = System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
            return constr;
        }
        public void open() //�����ݿ�
        {
            string constr;
            constr=getconnstr();
            connstr=new SqlConnection(constr);
            connstr.Open();
        }
        public void close() //�ر����ݿ�
        {
            connstr.Dispose();
            connstr.Close();
         }
        public void execsql(string sql) //ִ��sql���
        {
            open();
            SqlCommand cmd = new SqlCommand(sql, connstr);
            cmd.ExecuteNonQuery();
            close();
        }
        public DataSet dataset(string sql) //����DataSet����
        {
            open();
            SqlDataAdapter rs = new SqlDataAdapter(sql, connstr);
            DataSet ds = new DataSet();
            rs.Fill(ds);
            return ds;
        }
        public DataView dataview(string sql) //����DataView����
        {
            DataSet ds = new DataSet();
            ds = dataset(sql);
            DataView dv = new DataView(ds.Tables[0]);
            return dv;
        }
        public SqlDataReader datareader(string sql) //����DataReader����
        {
            open();
            SqlCommand cmd = new SqlCommand(sql, connstr);
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
     }
}
