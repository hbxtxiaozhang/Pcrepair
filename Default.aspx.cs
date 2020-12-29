using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    UserInfo uf = new UserInfo();
    Select se = new Select();
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = uf.uname;
        DataSet ds = se.selectbyuser(username);
        GridView1.DataSource = ds.Tables[0];        
        GridView1.DataBind();
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
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.GridView1.DataBind();

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
}