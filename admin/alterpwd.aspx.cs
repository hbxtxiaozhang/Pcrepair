using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_alterpwd : System.Web.UI.Page
{
    UserInfo uf = new UserInfo();
    Update up = new Update();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //确定
            int uid = uf.uid;
           // Response.Write("<script>alert('"+uid+"')</script>");
           string oldp = TextBox1.Text;
            string newp = TextBox2.Text;
            int i = up.uppwd(uid, oldp, newp);
            if (i == 1)
            {
                Response.Write("<script>alert('修改成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('您输入的旧密码错误，修改失败！')</script>");
            }
          
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.ToString()+"')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //取消
        Response.Redirect("~/default.aspx");
    }
}