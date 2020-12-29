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
    UserInfo uf = new UserInfo();
    Insert ins = new Insert();
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
            Label6.Text = ds.Tables[0].Rows[0]["rip"].ToString();
            
            string donedate = ds.Tables[0].Rows[0]["rdonedate"].ToString();
            if (donedate == "")
            {
                Label4.Text = "目前还没人去处理！";
                Button1.Enabled = true;
                Label7.Text = "暂无";
            }
            else
            {
                Label4.Text = donedate;
                Button1.Enabled = false;
                Label7.Text = se.repairuser(id);
            }
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //电脑部维修查看确认
        try
        {
            string id = Request["id"];
            int i = up.updone(id, 1);
            int uid = uf.uid;
            if (i == 1)
            {
                DateTime time = DateTime.Now;
                int j = up.updonedate(id, time);
                if (j == 1)
                {
                    int l = ins.repairbywho(id, uid);
                    if (l == 1)
                    {
                        Response.Write("<script>alert('查看维修成功，请您尽快解决该故障！')</script>");
                    }
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('"+ex.ToString()+"')</script>");
        }
    }
}