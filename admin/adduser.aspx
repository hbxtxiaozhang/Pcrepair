<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="adduser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {}
        .style2
        {
            width: 199px;
            height: 20px;
        }
        .style3
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="text-align:center">
    <div style="width:600px;height:300px; clip: rect(auto, auto, auto, auto);margin:auto;">
    
        <table style="padding: 1px; margin: 1px; border: 1px groove #333300; width:100%;">
            <tr>
                <td colspan="3">
                    添加系统用户</td>
            </tr>
            <tr>
                <td class="style1">
                    用 户 名：</td>
                <td align="left" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="*必填"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    密&nbsp;&nbsp;&nbsp; 码：</td>
                <td align="left" class="style3" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="*必填"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    用户权限：</td>
                <td align="left" colspan="2">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                        GroupName="power" Text="员工" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="power" 
                        Text="管理员" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    所属部门：</td>
                <td align="left" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>时代英德厂</asp:ListItem>
                        <asp:ListItem>时代东莞厂</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label1" runat="server" Text="厂"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Width="71px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="部门"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Width="71px"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" Text="详细备注"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    联系电话：</td>
                <td align="left" colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    联系邮箱：</td>
                <td align="left" colspan="2">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" 
                        Width="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="重置" onclick="Button2_Click" 
                        Width="40px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style3">
                    </td>
                <td class="style3">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
