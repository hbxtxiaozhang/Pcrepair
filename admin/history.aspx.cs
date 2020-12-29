using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_history : System.Web.UI.Page
{
    Select se = new Select();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = se.selectdoinganddone();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        int isdone = GridView1.Rows.Count;

        for (int i = 0; i < isdone; i++)
        {
            if (GridView1.Rows[i].Cells[6].Text.ToString() == "1")
            {
                GridView1.Rows[i].BackColor = System.Drawing.Color.Gray;
            } 
            else
           {
                GridView1.Rows[i].BackColor = System.Drawing.Color.ForestGreen;
           }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       //待解决的维修
        DataSet ds = se.selectwait(1);
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //已解决的维修

        DataSet ds = se.selectwait(2);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //全部
        DataSet ds = se.selectdoinganddone();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}