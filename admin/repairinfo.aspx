<%@ Page Language="C#" AutoEventWireup="true" CodeFile="repairinfo.aspx.cs" Inherits="repairinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .style1
        {
            width: 350px;
            text-align: left;
        }
        .style2
        {
            text-align: left;
            height:30px;
            width:160px;
        }
                
        .style7
        {
            height: 50px;
        }
        .style8
        {
            width: 100px;
            text-align: left;
            height: 150px;
        }
        .style9
        {
            width: 610px;
            text-align: left;
            height: 22px;
        }
                
        </style>
</head>
<body style="text-align:center;">
    <form id="form1" runat="server">
    <div style="text-align:center;width:1024px;height:768px;margin:auto;">
    
        <table style="border: 1px groove #000000; width:610px; height:510px;">
            <tr>
                <td colspan="2" class="style7" style="font-size: 30px">
                    报修详细信息</td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="30px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    报修编号:</td>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    标&nbsp;&nbsp;&nbsp; 题:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="280px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    内&nbsp;&nbsp;&nbsp; 容:</td>
                <td class="style9">
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" Width="280px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    报 修 人:</td>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    维修地点:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox4" runat="server" Width="280px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    使 用 者:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox5" runat="server" Width="280px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    联系电话:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox6" runat="server" Width="280px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    I P地 址:</td>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    报修时间:</td>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Fuchsia"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    维修时间:</td>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Fuchsia"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    故障接收人:</td>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" ForeColor="Fuchsia"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    查看确认:</td>
                <td align="left" class="style1">
                    <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click" 
                        style="width: 35px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
