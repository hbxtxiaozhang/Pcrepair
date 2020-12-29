using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_default : System.Web.UI.Page
{
    Select se = new Select();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = se.selectallrepair();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int isdone = GridView1.Rows.Count;

        for (int i = 0; i < isdone; i++)
        {
            if (GridView1.Rows[i].Cells[5].Text.ToString() == "0")
            {
                GridView1.Rows[i].BackColor = System.Drawing.Color.Yellow;
            }
            else
                if (GridView1.Rows[i].Cells[5].Text.ToString() == "1")
                {
                    GridView1.Rows[i].BackColor = System.Drawing.Color.Gray;
                }
                else
                {
                    GridView1.Rows[i].BackColor = System.Drawing.Color.ForestGreen;
                }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = se.selectrepair(0);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataSet ds = se.selectrepair(1);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataSet ds = se.selectrepair(2);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        DataSet ds = se.selectallrepair();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //按日期查找
        if (Convert.ToDateTime(TextBox1.Text) < Convert.ToDateTime(TextBox2.Text))
        {
            string startdate = TextBox1.Text+" 00:00:00.000";
            string enddate = TextBox2.Text+" 00:00:00.000";
            DataSet ds = se.selectbydate(Convert.ToDateTime(startdate), Convert.ToDateTime(enddate));
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('日期范围有误，请重新设置！')</script>");
        }
    }
}