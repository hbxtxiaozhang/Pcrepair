<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #navi
        {
            height: 160px;
        }
        .style1
        {
            height: 20px;
        }
        .style2
        {
            height: 36px;
        }
        .style3
        {
            width:158px;
            height:35px;
        }
        </style>
    


</head>
<body id="by"  style="width:auto;height:auto;text-align:center;background-color:ButtonFace">
    <form id="form1" runat="server">
    <div id="navi"  
        style="width: 1000px; height:80px; font-family: 仿宋_GB2312;margin:auto;"> 
    <div id="txt" style="font-size: 35px; width: 1000px; height: 40px;">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
            ForeColor="#660033" Height="32px" Text="时代电脑在线报修系统"></asp:Label></div>
            
                 <div id="userandtimer" 
            style="width: 1000px; height: 40px; text-align: left; font-size: 16px;">欢迎您：<asp:Label 
                         ID="Label2" runat="server" Text="Label" ForeColor="#CC6600"></asp:Label>
                     当前系统时间:<span id="clock"></span><script>
                                                      var clock = new Clock();
                                                      clock.display(document.getElementById("clock"));
                                                      function Clock() {
                                                          var date = new Date();
                                                          this.year = date.getFullYear();
                                                          this.month = date.getMonth() + 1;
                                                          this.date = date.getDate();
                                                          this.day = new Array(" | 星期日 |", " | 星期一 |", " | 星期二 |", " | 星期三 |", " | 星期四 |", " | 星期五 |", " | 星期六 |")[date.getDay()];
                                                          this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
                                                          this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
                                                          this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

                                                          this.toString = function () {
                                                              return "" + this.year + "年" + this.month + "月" + this.date + "日  |  " + this.hour + ":" + this.minute + ":" + this.second + " " + this.day;
                                                          };
                                                          this.toSimpleDate = function () {
                                                              return this.year + "-" + this.month + "-" + this.date;
                                                          };
                                                          this.toDetailDate = function () {
                                                              return this.year + "-" + this.month + "-" + this.date + " " + this.hour + ":" + this.minute + ":" + this.second;
                                                          };
                                                          this.display = function (ele) {
                                                              var clock = new Clock();
                                                              ele.innerHTML = clock.toString();
                                                              window.setTimeout(function () { clock.display(ele); }, 1000); //没秒刷新一次
                                                          };
                                                      }
</script>您的IP地址是:<asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#CC6600"></asp:Label>
        </div>
    <div id="main" style="width:1000px;height:623px">
    <div id="left" style="width:160px; height:623px;float:left">
        <table style="width:100%;">
            <tr>
                <td bgcolor="Gray" class="style2">
                    系统功能</td>
            </tr>
             <tr>
                <td>
                    <input id="Button2" type="button" value="我要报修" class="style3" onclick="parent.ifr.location.href='addrepair.aspx'"/></td>
            </tr>
            <tr>
                <td>
                    <input id="Button3" type="button" value="报修历史" class="style3" onclick="parent.ifr.location.href='default.aspx'"/></td>
            </tr>
            <tr>
                <td class="style1">
                    <input id="Button4" type="button" value="查找用户" class="style3" onclick="parent.ifr.location.href='admin/searchuser.aspx'"/></td>
            </tr>
             <tr>
                <td>
                    <input id="Button5" type="button" value="投诉建议" class="style3" onclick="parent.ifr.location.href='complain.aspx'"/></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="安全登出" CssClass="style3" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td bgcolor="Gray" class="style2">
                    个人设置</td>
            </tr>
             <tr>
                <td>
                    <input id="Button6" type="button" value="个人信息修改" class="style3" onclick="parent.ifr.location.href='admin/alterinfo.aspx'"/></td>
            </tr>
            <tr>
                <td>
                    <input id="Button7" type="button" value="密码修改" class="style3" onclick="parent.ifr.location.href='admin/alterpwd.aspx'"/></td>
            </tr>
            <tr>
                <td bgcolor="Gray" class="style2">
                    关于系统</td>
            </tr>
            <tr>
                <td class="style3">
                    <input id="Button8" type="button" value="关于程序" class="style3" onclick="parent.ifr.location.href='about.aspx'"/></td>
            </tr>
            <tr>
                <td class="style3">
                    <input id="Button9" type="button" value="流程说明" class="style3" 
                        onclick="parent.ifr.location.href='update.aspx'"/></td>
            </tr>
        </table>
        </div>
        <div id="right" style="width:840px;height:623px;float:right">
            <div id="view" style="width:840px;height:572px">
            <iframe name="ifr" style="width:840px;height:623px;"src="default.aspx"></iframe>
            </div>
        </div>

   </div>
    </form>
</body>
</html>
