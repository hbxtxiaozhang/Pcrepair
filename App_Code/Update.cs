using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
///Update 的摘要说明
/// </summary>
public class Update
{
	public Update()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public int updaterid(string rid,int id)
    {
        //发布报修时修改id，生成自动ID
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        string cmdstr = "update repair set rid='"+rid+"' where id="+id;
        SqlConnection conn = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        conn.Open();
        i = cmd.ExecuteNonQuery();
        return i;
    }
    public int updone(string rid,int id)
    {
        //修改维修状态：已解决
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        string cmdstr = "update repair set risdone="+id+" where rid='"+rid+"'";
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        i = cmd.ExecuteNonQuery();
        conn.Close();
        return i;
    }
    public int uppwd(int id, string oldpwd, string newpwd)
    {
        //修改个人密码
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        string cmdstr1 = "select * from pcUsers where uid=" + id + " and upwd='" + oldpwd + "'";
       
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand(cmdstr1, conn);
       
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            SqlConnection conn2 = new SqlConnection(constr);
            conn2.Open();
            string cmdstr2 = "update pcUsers set upwd='"+newpwd+"' where uid="+id;
            SqlCommand cmd2 = new SqlCommand(cmdstr2, conn2);
            i = cmd2.ExecuteNonQuery();
            conn2.Close();
        }
        conn.Close();
        return i;
    }
    public int upinfo(string mail, string tel, string context, int id)
    {
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        string cmdstr = "update pcUsers set umail='"+mail+"',utel='"+tel+"',ucontext='"+context+"' where uid="+id;//update pcUsers set umail='123@sitoy.com',utel='669999',ucontext='testtest' where uid='100003'
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        i = cmd.ExecuteNonQuery();
        conn.Close();
        return i;
    }
    //查看维修后修改维修时间
    public int updonedate(string rid, DateTime dt)
    {
        int i=0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        string cmdstr = "update repair set rdonedate='"+dt+"' where rid='"+rid+"'";
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        i = cmd.ExecuteNonQuery();
        conn.Close();
        return i;
    }
    //修改用户信息
    public int upuserinfobyid(int id,string pwd,int power,string factory,string depart,string mail,string tel,string context)
    {
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        string cmdstr = "update pcUsers set upwd='"+pwd+"',upower="+power+",ufactory='"+factory+"',udepart='"+depart+"',umail='"+mail+"',utel='"+tel+"',ucontext='"+context+"' where uid="+id;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        i = cmd.ExecuteNonQuery();
        conn.Close();
        return i;
    }
}