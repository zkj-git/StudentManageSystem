using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//��Դ��������www.mycodes.net

namespace myResult
{
	/// <summary>
	/// connDB ��ժҪ˵����
	/// </summary>
	public class connDB
	{
		public connDB()
		{
			//
			// TODO: �ڴ˴���ӹ��캯���߼�
			//
		}
		#region ##########���ݿ�����##########
		/// <summary>
		/// ������������
		/// </summary>
		/// <returns></returns>
		public static SqlConnection createConn()
		{
            string sms_connstr = System.Configuration.ConfigurationManager.AppSettings["sms_dbconn"];
            //string str_conn = System.Configuration.ConfigurationManager.AppSettings["connectionString"];
            SqlConnection conn = new SqlConnection(sms_connstr);
			return conn;
		}
		#endregion
	}
}
