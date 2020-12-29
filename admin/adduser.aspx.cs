using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adduser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //提交
        try
        {
            if (TextBox1.Text.Trim() == "" || TextBox1.Text.Trim() == null || TextBox2.Text.Trim() == "" || TextBox2.Text.Trim() == null)
            {
                Response.Write("<script>alert('用户名和密码不能为空！')</script>");
            }
            else
            {
                int power = 0;
                if (RadioButton1.Checked==true)
                {
                    power = 3;
                }
                else
                {
                    power = 2;
                }
                string name = TextBox1.Text;
                string pwd = TextBox2.Text;
                string factory = DropDownList1.SelectedItem.Text;
                string depart = TextBox4.Text;
                string tel = TextBox6.Text;
                string mail = TextBox7.Text;
                string context = TextBox5.Text;
                Insert ise = new Insert();
                bool b= ise.addsys(name, pwd, power, factory, depart, context, tel, mail);
                if (b == true)
                {
                    Response.Write("<script>alert('注册成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('注册失败！')</script>");
                }
            }
        }
        catch (Exception ex)
        {
            //抛出异常
            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = ""; 
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
}