using System;
using System.Data;
using System.Data.SqlClient;
namespace myResult
{
	/// <summary>
	/// data ��ժҪ˵����
	/// </summary>
	public class data
	{
		public data()
		{
			//
			// TODO: �ڴ˴���ӹ��캯���߼�
			//
		}
		//#region    ##########ִ��ɾ��#########
		/// <summary>
		/// ִ��ɾ��
		/// </summary>
		/// <param name="str_del">ɾ�����</param>
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
		#region     ############��֤�û��Ƿ����################
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
