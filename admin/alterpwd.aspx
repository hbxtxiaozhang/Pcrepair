<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alterpwd.aspx.cs" Inherits="admin_alterpwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 91px;
        }
        .style3
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;margin:auto;">
        <table style="border: 1px groove #000000; width:550px; height:250px">
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center" colspan="2">
                    修改登录密码</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    原密码</td>
                <td class="style3" align="left">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    新密码</td>
                <td class="style3" align="left">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    确认密码</td>
                <td class="style3" align="left">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="两次输入的密码不一样！" ForeColor="#FF0066"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style1" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="关闭" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
