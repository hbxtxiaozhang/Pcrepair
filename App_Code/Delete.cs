using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
///Delete 的摘要说明
/// </summary>
public class Delete
{
	public Delete()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    //删除用户
    public int deleteuserbyid(int id)
    {
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        string cmdstr = "delete from pcUsers where uid="+id;
        SqlConnection conn = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        conn.Open();
        i = cmd.ExecuteNonQuery();
        conn.Close();
        return i;
    }
}