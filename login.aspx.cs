using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {      
        try
        {
           
            Select se = new Select();
            int power =Convert.ToInt32(DropDownList1.SelectedItem.Value);
            bool rt = se.checklogin(txtName.Text, txtPwd.Text, power);
            if (rt == true)
            {
                if (power == 3)
                {
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Response.Redirect("~/admin/admindefault.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('用户名或者密码错误!')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
        
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtPwd.Text = "";
    }
}



