<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alterinfo.aspx.cs" Inherits="admin_alterinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      
        .style1
        {
              width: 150px;
            height:90px;
        }
      
        .style4
        {
            height: 90px;
        }
        .style5
        {
            height: 35px;
        }
        .style6
        {
            width: 150px;
            height: 35px
        }
        .style7
        {
            width: 150px;
            height: 34px
        }
      
    </style>
</head>
<body style="text-align:center;">
    <form id="form1" runat="server" style="margin:auto;">
    <table style="border: 1px groove #000000;">
        <tr>
            <td align="center" colspan="2" class="style5">
                修改个人信息</td>
        </tr>
        <tr>
            <td class="style6">
                用 户 ID:</td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                用 户 名：</td>
            <td class="style5">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                电子邮箱:</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="199px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                联系电话:</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                备&nbsp;&nbsp;&nbsp; 注:</td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" 
                    Width="203px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" align="center">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="height: 21px" Text="提交" />
            </td>
            <td class="style7" align="center">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="重写" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
