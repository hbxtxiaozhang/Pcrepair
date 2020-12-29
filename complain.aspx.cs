using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class complain : System.Web.UI.Page
{
    UserInfo uf=new UserInfo();
    Insert ins = new Insert();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            int i = ins.addcomplain(TextBox1.Text, TextBox2.Text, uf.uid);
            if (i == 1)
            {
                Response.Write("<script>alert('提交成功')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.ToString()+"')</script>");
        }
    }
}