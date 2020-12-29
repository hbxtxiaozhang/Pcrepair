using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_alteruser : System.Web.UI.Page
{
    UserInfo uf = new UserInfo();
    Select se = new Select();
    static int upower;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request["id"]);               
                DataSet ds = se.userinfobyid(id);
                Label1.Text = id.ToString();
                Label2.Text = ds.Tables[0].Rows[0]["uname"].ToString();
                TextBox1.Attributes.Add("value",ds.Tables[0].Rows[0]["upwd"].ToString());
                int power = Convert.ToInt32(ds.Tables[0].Rows[0]["upower"]);
                upower = power;
                if (power == 1)
                {
                    RadioButton3.Checked = true;
                }
                else if (power == 2)
                {
                    RadioButton2.Checked = true;
                }
                else
                {
                    RadioButton1.Checked = true;
                }
                TextBox2.Text = ds.Tables[0].Rows[0]["ufactory"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["udepart"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["umail"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["utel"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["ucontext"].ToString();
                Label3.Text = ds.Tables[0].Rows[0]["uregdate"].ToString();   
            }
        }
       catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.ToString()+"')</script>");
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //修改
        try
        {
            int adminpower = uf.upower;
            int userpower = upower;            
            if (adminpower < upower)
            {
                int p;
                int id = Convert.ToInt32(Request["id"]);
                Update up = new Update();
                if(RadioButton1.Checked==true)
                {
                    p=3;
                }
                else if(RadioButton2.Checked==true)
                {
                    p=2;
                }
                else
                {
                    p=1;
                }

                int rt = up.upuserinfobyid(id, TextBox1.Text, p, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);
                if (rt == 1)
                {
                    Response.Write("<script>alert('修改成功！')</script>");
                }
            }
            else if (adminpower == upower)
            {
                Response.Write("<script>alert('权限相同，您无权修改对方资料！')</script>");
            }
            else
            {
                Response.Write("<script>alert('权限低于对方，您无权修改对方资料！')</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
        }
            
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //删除
        try
        {
            int adminpower = uf.upower;
            int userpower=upower;
            if (adminpower < upower)
            {
                int id = Convert.ToInt32(Request["id"]);
                Delete dt = new Delete();
                int rt = dt.deleteuserbyid(id);
                if (rt == 1)
                {
                    Response.Write("<script>alert('删除成功！')</script>");
                }
            }
            else if (adminpower == upower)
            {
                Response.Write("<script>alert('权限相同，您无权删除！')</script>");
            }
            else
            {
                Response.Write("<script>alert('权限低于对方，您无权删除！')</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.ToString()+"')</script>");
        }
            
    }
}