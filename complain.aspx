<%@ Page Language="C#" AutoEventWireup="true" CodeFile="complain.aspx.cs" Inherits="complain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align:center;
        }
        .style2
        {
            width: 130px;
            text-align:left;
        }
    </style>
</head>
<body style="text-align:center;">
    <form id="form1" runat="server">
    <div style="margin:auto;">
        <table width="580px" Height="350px" style="border: 1px groove #000000">
            <tr>
                <td align="center" colspan="2" height="30">
                    投诉和建议</td>
            </tr>
            <tr>
                <td class="style2">
                    标题:</td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server" Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    内容:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="240px" TextMode="MultiLine" 
                        Width="450px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2" height="30">
                    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" 
                        Width="50px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="重写" onclick="Button2_Click" 
                        Width="50px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
