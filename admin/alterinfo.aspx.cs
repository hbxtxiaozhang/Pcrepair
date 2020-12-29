using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_alterinfo : System.Web.UI.Page
{
    
    Update up = new Update();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UserInfo uf = new UserInfo();
            Label1.Text = uf.uid.ToString();
            Label2.Text = uf.uname;
            TextBox1.Text = uf.umail;
            TextBox2.Text = uf.utel;
            TextBox3.Text = uf.ucontext;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = ""; 
        TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //修改个人信息
        try
        {
            UserInfo uf = new UserInfo();
            string mail = TextBox1.Text;
            string tel = TextBox2.Text;
            string context = TextBox3.Text;
            int id = uf.uid;
            int i = up.upinfo(mail, tel, context, id);
            if (i == 1)
            {
                Response.Write("<script>alert('个人信息修改成功！')</script>");
               uf.umail  =TextBox1.Text ;
               uf.utel  =TextBox2.Text ;
              uf.ucontext =  TextBox3.Text ;
            }
            else
            {
                Response.Write("<script>alert('个人信息修改失败！')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.ToString()+"')</script>");
        }
    }
}