using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
///Insert 的摘要说明
/// </summary>
public class Insert
{
	public Insert()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    //添加系统用户
    public bool addsys(string name, string pwd, int power, string factory, string depart, string context, string tel, string mail)
    {
        bool b;
        string cmdstr = "insert into pcUsers(uname,upwd,upower,ufactory,udepart,umail,utel,ucontext) values('"+name+"','"+pwd+"',"+power+",'"+factory+"','"+depart+"','"+mail+"','"+tel+"','"+context+"')";
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            b =true;
        }
        else
        {
            b = false;
        }
        conn.Close();
        return b;
    }
    //添加在线报修信息
    public bool addrepair(string rtitle, string rcontext,string username, string rplace, string ruser, string rtel,string ipaddr)
    {
        bool b;
        string cmdstr = "insert into repair(rtitle,rcontext,username,rplace,ruser,rtel,rip) values('"+rtitle+"','"+rcontext+"','"+username+"','"+rplace+"','"+ruser+"','"+rtel+"','"+ipaddr+"')";
        string constr=ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(cmdstr, con);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            b = true;
        }
        else
        {
            b = false;
        }
        con.Close();
        return b;
    }
    //添加投诉和建议
    public int addcomplain(string title,string context,int cuid)
    {
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        string cmdstr = "insert into complain(ctitle,ccontext,cuid) values('"+title+"','"+context+"','"+cuid+"')";
        SqlCommand cmd = new SqlCommand(cmdstr,con);
        con.Open();
        i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    //维修记录登记
    public int repairbywho(string rid, int uid)
    {
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        string cmdstr = "insert into repairbywho values('" + rid + "'," + uid + ")";
        SqlCommand cmd = new SqlCommand(cmdstr, con);
        con.Open();
        i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
}