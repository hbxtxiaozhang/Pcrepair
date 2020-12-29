using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
///Select数据库查询语句类
/// </summary>
public class Select
{
	public Select()
	{
       

    }
    //显示队列
    public int showros(string redate, int doneid)
    {
        int i = 0;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        string cmdstr = "select count(*) from repair where risdone="+doneid+"and rdate < '"+redate+"'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(cmdstr,conn);
        i =Convert.ToInt32(cmd.ExecuteScalar());
        conn.Close();
        return i;
    }

    //用户验证
    public bool checklogin(string name, string pwd, int power)
    {
        UserInfo ui = new UserInfo();
        bool b;
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        string cmdstr="select * from pcUsers where uname='"+name+"' and upwd='"+pwd+"' and upower="+power;
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            b = true;
            ui.uid =Convert.ToInt32(dr["uid"].ToString());
            ui.uname = dr["uname"].ToString();
            ui.upwd = dr["upwd"].ToString();
            ui.upower = Convert.ToInt32(dr["upower"].ToString());
            ui.ufactory = dr["ufactory"].ToString();
            ui.udepart = dr["udepart"].ToString();
            ui.umail = dr["umail"].ToString();
            ui.utel = dr["utel"].ToString();
            ui.ucontext = dr["ucontext"].ToString();
            ui.udate =Convert.ToDateTime(dr["uregdate"].ToString());
        }
        else
        {
            b = false;
        }
        conn.Close();
        return b;
    }

    public DataSet selectid(string rtitle, string rcontext, string username, string rplace, string ruser, string rtel)
    {
        DataSet ds = new DataSet();
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        string cmdstr = "select top 1 * from repair where rtitle='" + rtitle + "' and rcontext='" + rcontext + "' and username='" + username + "' and rplace='" + rplace + "' and ruser='" + ruser + "' and rtel='" + rtel + "'";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        conn.Open();
        sda.Fill(ds);
        conn.Close();
        return ds;
    }

    public DataSet selectbyuser(string name)
    {
        DataSet ds = new DataSet("info");
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        string cmdstr="select * from repair where username='"+name+"' order by rdate desc";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        conn.Open();
        sda.Fill(ds);
        conn.Close();
        return ds;
    }
    public DataSet selectbyrid(string id)
    {
        DataSet ds = new DataSet("repairid");
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        string cmdstr = "select * from repair where rid='"+id+"'";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        conn.Open();
        sda.Fill(ds);
        conn.Close();
        return ds;
    }
    public string repairuser(string id)
    {
        string rt="";
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        string cmdstr = "select uname from pcUsers join repairbywho on pcUsers.uid=repairbywho.uid where repairbywho.rid='"+id+"'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            rt = dr[0].ToString();
            
        }
        conn.Close();
        return rt;
    }

    public DataSet selectallrepair()
    {
        DataSet ds = new DataSet();
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        string cmdstr = "select * from repair order by rdate desc";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        sda.Fill(ds);
        conn.Close();
        return ds;
    }

    public DataSet selectrepair(int done)
    {
        DataSet ds = new DataSet();
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        string cmdstr = "select * from repair where risdone=" + done + "order by rdate desc";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        sda.Fill(ds);
        conn.Close();
        return ds;
    }

    public DataSet selectbydate(DateTime sdate, DateTime edate)
    {
        DataSet ds = new DataSet();
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        string cmdstr = "select * from repair where rdate between '"+sdate+"' and '"+edate+"' order by rdate desc";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        sda.Fill(ds);
        conn.Close();


        return ds;
    }

    public DataSet selectdoinganddone()
    {
        DataSet ds = new DataSet();
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        string cmdstr = "select repair.rid,pcUsers.uname,repair.rtitle,repair.ruser,repair.rplace,repair.risdone,repair.rdate,repair.rdonedate from repair,pcUsers,repairbywho where repair.rid=repairbywho.rid and repairbywho.uid=pcUsers.uid order by rid desc";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        sda.Fill(ds);
        conn.Close();
        return ds;
    }

    public DataSet selectalluser()
    {
        DataSet ds = new DataSet();
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        string cmdstr = "select * from pcUsers order by upower asc";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        sda.Fill(ds);
        conn.Close();
        return ds;
    }
    public DataSet userinfobyid(int id)
    {
        DataSet ds = new DataSet();
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        string cmdstr = "select * from pcUsers where uid="+id;
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        sda.Fill(ds);
        conn.Close();
        return ds;
    }
    //维修记录
    public DataSet selectwait(int done)
    {
        DataSet ds = new DataSet();
        string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);
        conn.Open();
        string cmdstr = "select repair.rid,pcUsers.uname,repair.rtitle,repair.ruser,repair.rplace,repair.risdone,repair.rdate,repair.rdonedate from repair,pcUsers,repairbywho where repair.rid=repairbywho.rid and repairbywho.uid=pcUsers.uid and repair.risdone="+done+" order by rid desc";
        SqlDataAdapter sda = new SqlDataAdapter(cmdstr, conn);
        sda.Fill(ds);
        conn.Close();
        return ds;
    }
 }       

	
