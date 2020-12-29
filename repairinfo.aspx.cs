using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class repairinfo : System.Web.UI.Page
{
    Select se = new Select();
    Update up = new Update();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request["id"];
            Label1.Text = id;
            DataSet ds = se.selectbyrid(id);
            Label2.Text = ds.Tables[0].Rows[0]["username"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0]["rtitle"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["rcontext"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["ruser"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["rplace"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["rtel"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["rdate"].ToString();
            string donedate = ds.Tables[0].Rows[0]["rdonedate"].ToString();
            if (donedate == "")
            {
                Select se2 = new Select();
                int i= se2.showros(Label3.Text, 0);                
                Label4.Text = "请耐心等待维修人员给您维修！";
                
                Label5.Text = "您的前面还有"+i.ToString()+"人等待维修，请耐心排队等候！";
            }
            else
            {
                Label4.Text = donedate;
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('提交成功!')</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //是
        string id = Request["id"];
        int i = up.updone(id,2);
        if (i == 1)
        {
            Response.Write("<script>alert('确认成功！')</script>");
        }
    }
}