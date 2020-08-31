using System;
using System.Data;
using System.Data.SqlClient;
namespace myResult
{
	/// <summary>
	/// data 的摘要说明。
	/// </summary>
	public class data
	{
		public data()
		{
			//
			// TODO: 在此处添加构造函数逻辑
			//
		}
		//#region    ##########执行删除#########
		/// <summary>
		/// 执行删除
		/// </summary>
		/// <param name="str_del">删除语句</param>
        //public static void ExecuteDel(string str_del)
        //{
        //    SqlConnection conn=connDB.createConn();
        //    if(conn.State==ConnectionState.Closed)
        //    {
        //        conn.Open();
        //    }
        //    SqlCommand myCmd=new SqlCommand(str_del,conn);
        //    myCmd.ExecuteNonQuery();
        //    conn.Close();
        //}
        //#endregion
		#region     ############验证用户是否存在################
		public static int ExecuteSel(string str_sel)
		{
			SqlConnection conn=connDB.createConn();			
		    conn.Open();		
			SqlCommand myCmd=new SqlCommand(str_sel,conn);
			int count=Convert.ToInt16(myCmd.ExecuteScalar());
			return count;
		}
		#endregion
	}
}
