<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alteruser.aspx.cs" Inherits="admin_alteruser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .style1
        {
            width: 150px;
            height:40px;
            text-align:left;
            
        }
                
        .style3
        {
            width: 152px;
            height: 40px;
        }
       
        .style4
        {
            height: 40px;
        }
       .style5
       {
           width:500px;
           height:40px;
           text-align:left;
       }
        .style6
        {
        }
        </style>
</head>
<body style="text-align:center";>
    <form id="form1" runat="server">
    <div style="margin:auto;">
    
        <table style="border: 1px groove #000000; width: 600px; height:600px;">
            <tr>
                <td align="center" colspan="4" class="style4">
                    修改用户信息</td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    用户 I D:</td>
                <td colspan="2" class="style5">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    用 户 名:</td>
                <td colspan="2" class="style5">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    密&nbsp;&nbsp;&nbsp; 码:</td>
                <td colspan="2" class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    用户权限:</td>
                <td align="left" class="style6" colspan="2">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                        GroupName="power" Text="员工" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="power" 
                        Text="管理员" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="power" 
                        Text="超级管理员" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    所属工厂:</td>
                <td colspan="2" class="style5">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    所属部门:</td>
                <td colspan="2" class="style5">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    电子邮箱:</td>
                <td colspan="2" class="style5">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    联系电话:</td>
                <td colspan="2" class="style5">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    备&nbsp;&nbsp; 注:</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server" Height="191px" Width="396px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    注册时间:</td>
                <td colspan="2" class="style5">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" align="center">
                    <asp:Button ID="Button1" runat="server" Text="修改信息" onclick="Button1_Click" 
                        style="height: 21px" />
                </td>
                <td class="style3" colspan="2" align="center">
                    <asp:Button ID="Button2" runat="server" Text="清空重置" Width="72px" 
                        onclick="Button2_Click" />
                </td>
                <td align="center">
                    <asp:Button ID="Button3" runat="server" Text="删除此用户" onclick="Button3_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
