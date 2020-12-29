using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class main : System.Web.UI.Page
{ 
    UserInfo uf = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = uf.ufactory + " | "+uf.udepart +" | "+ uf.uname;
         IPHostEntry ipHost = Dns.Resolve(Dns.GetHostName());
         IPAddress ipAddr = ipHost.AddressList[0];
         uf.ipaddr = ipAddr.ToString();
         Label3.Text = ipAddr.ToString();

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("login.aspx");
    }
}