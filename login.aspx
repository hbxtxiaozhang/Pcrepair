<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/login.css" rel="stylesheet" type="text/css" />    

    <style type="text/css">
        .style1
        {
            width: 400px;
            height: 277px;
            
        }
        .style3
        {
            width: 249px;
        }
        .style4
        {
            width: 118px;
        }
        .style5
        {
            width: 165px;
            text-align: right;
        }       
    </style>
</head>
<body style="text-align:center; height: 298px;background-color:ButtonFace">
    <form id="form1" runat="server" style="text-align: center;">
    <div id="main" style="background-image: url('images/login.png'); background-repeat: no-repeat; width: 447px;margin:auto;">
        <br />
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style5">
                    &nbsp;
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;
                </td>
                <td class="style3">
                    &nbsp;
                </td>
                <td class="style4">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style5">
                    用户名：
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtName" runat="server" Width="170px"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;
                    密&nbsp; 码：
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtPwd" runat="server" Width="170px" TextMode="Password" ></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                </td>
            </tr>        
            <tr>
                <td class="style5">
                    身&nbsp; 份：
                </td>
                <td class="style3">
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
                        Width="170px">
                        <asp:ListItem Value="1">超级管理员</asp:ListItem>
                        <asp:ListItem Value="2">系统管理员</asp:ListItem>
                        <asp:ListItem Selected="True" Value="3">职员</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;
                </td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="重置" onclick="Button2_Click" />
                </td>
                <td class="style4">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="left" colspan="3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ClientIDMode="AutoID" ControlToValidate="txtName" ErrorMessage="用户名不能为空！" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="密码不能为空！"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
