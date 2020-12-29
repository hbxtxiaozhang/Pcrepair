using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class addrepair : System.Web.UI.Page
{
    UserInfo uf = new UserInfo();
    Select sec = new Select();
    Update up = new Update();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //重写
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //提交
        try
        {
            string place=DropDownList1.SelectedItem.Text+DropDownList2.SelectedItem.Text+TextBox1.Text;
            Insert ins = new Insert();
            bool rt = ins.addrepair(TextBox2.Text, TextBox3.Text, uf.uname, place, TextBox4.Text ,TextBox5.Text,uf.ipaddr);
            if (rt == true)
            {
               
                DataSet ds =sec.selectid(TextBox2.Text, TextBox3.Text, uf.uname, place, TextBox4.Text, TextBox5.Text);
                int id =Convert.ToInt32(ds.Tables[0].Rows[0]["id"].ToString());
                string tm = DateTime.Now.ToString();
                string time = tm.Substring(0, 4) + tm.Substring(5, 2) + tm.Substring(8, 2) + id.ToString().Substring(0, 5);
                int i = up.updaterid(time, id);
                if (i == 1)
                {
                    Response.Write("<script>alert('提交成功！')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                }
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.ToString()+"')</script>");
            //

           
        }


    }
}