using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class adminlogin : System.Web.UI.Page
{
    UserInfo uf = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = uf.ufactory + " | " + uf.udepart + " | " + uf.uname;
       
            IPHostEntry ipHost = Dns.Resolve(Dns.GetHostName());
            IPAddress ipAddr = ipHost.AddressList[0];
            Label3.Text = ipAddr.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //安全登出
        Response.Redirect("../login.aspx");
    }
}