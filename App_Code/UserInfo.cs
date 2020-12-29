using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///UserInfo 的摘要说明
/// </summary>
public class UserInfo
{
	public UserInfo()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
       

	}
    private static int _uid;
    private static string _uname;
    private static string _upwd;
    private static int _upower;
    private static string _ufactory;
    private static string _udepart;
    private static string _umail;
    private static string _utel;
    private static string _ucontext;
    private static DateTime _udate;
    private static string _ipaddr;

    public int uid
    {
        get
        {
            return _uid;
        }
        set
        {
            _uid = value;
        }
    }
    public string uname
    {
        get
        {
            return _uname;
        }
        set
        {
            _uname = value;
        }
    }
    public string upwd
    {
        get
        {
            return _upwd;
        }
        set
        {
            _upwd = value;
        }
    }
    public int upower
    {
        get
        {
            return _upower;
        }
        set
        {
            _upower = value;
        }
    }
    public string ufactory
    {
        get
        {
            return _ufactory;
        }
        set
        {
            _ufactory = value;
        }
    }
    public string udepart
    {
        get
        {
            return _udepart;
        }
        set
        {
            _udepart = value;
        }
    }
    public string umail
    {
        get
        {
            return _umail;
        }
        set
        {
            _umail = value;
        }
    }
    public string utel
    {
        get
        {
            return _utel;
        }
        set
        {
            _utel = value;
        }
    }
    public string ucontext
    {
        get
        {
            return _ucontext;
        }
        set
        {
            _ucontext = value;
        }
    }
    public DateTime udate
    {
        get
        {
            return _udate;
        }
        set
        {
            _udate = value;
        }
    }
    public string ipaddr
    {
        get
        {
            return _ipaddr;
        }
        set
        {
            _ipaddr = value;
        }
    }
}