using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_manageuser : System.Web.UI.Page
{
    Select se = new Select();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = se.selectalluser();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //员工
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //管理员
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //超级管理员
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int power = GridView1.Rows.Count;

        for (int i = 0; i < power; i++)
        {
            if (GridView1.Rows[i].Cells[2].Text.ToString() == "1")
            {
                GridView1.Rows[i].BackColor = System.Drawing.Color.Yellow;
            }
            else
                if (GridView1.Rows[i].Cells[2].Text.ToString() == "2")
                {
                    GridView1.Rows[i].BackColor = System.Drawing.Color.ForestGreen;
                }
                else
                {
                    GridView1.Rows[i].BackColor = System.Drawing.Color.AntiqueWhite;
                }

        }
    }
}