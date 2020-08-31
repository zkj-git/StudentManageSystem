using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//该源码下载自www.mycodes.net

namespace myResult
{
	/// <summary>
	/// connDB 的摘要说明。
	/// </summary>
	public class connDB
	{
		public connDB()
		{
			//
			// TODO: 在此处添加构造函数逻辑
			//
		}
		#region ##########数据库联接##########
		/// <summary>
		/// 建立数据联接
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
