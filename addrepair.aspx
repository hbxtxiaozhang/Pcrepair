<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addrepair.aspx.cs" Inherits="addrepair" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align:center;
            width: 620px;
        }
        .style3
        {
            width:620px;
            height: 42px;
        }
        .style4
        {
            width: 120px;
            height: 30px;
        }
        .style5
        {
            height: 125px;
            width: 120px;
        }
        .style6
        {
            height: 80px;
            width: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="text-align:center;">
    <div style="width:620px;margin:auto;">
        <table width="620" style="border: 1px groove #000000;text-align:left;">
            <tr>
                <td align="center" class="style3" colspan="2" 
                    style="background-color: #C0C0C0; font-size: 25px;">
                    时代皮具厂电脑在线保障系统</td>
            </tr>
            <tr>
                <td class="style4">
                    故障标题：</td>
                <td width="500">
                    <asp:TextBox ID="TextBox2" runat="server" Width="260px"></asp:TextBox>
                    (例如：蓝屏、无法开机)</td>
            </tr>
            <tr>
                <td class="style5">
                    详细描述：</td>
                <td width="500">
                    <asp:TextBox ID="TextBox3" runat="server" Height="125px" TextMode="MultiLine" 
                        Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    故障地点：</td>
                <td width="500">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>时代东莞厂</asp:ListItem>
                        <asp:ListItem>时代英德厂</asp:ListItem>
                    </asp:DropDownList>
                    厂<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>人事部</asp:ListItem>
                        <asp:ListItem>业务部</asp:ListItem>
                        <asp:ListItem>计划部</asp:ListItem>
                        <asp:ListItem>采购部</asp:ListItem>
                        <asp:ListItem>生产部</asp:ListItem>
                        <asp:ListItem>货仓</asp:ListItem>
                        <asp:ListItem>船务部</asp:ListItem>
                        <asp:ListItem>报关部</asp:ListItem>
                        <asp:ListItem>QC部</asp:ListItem>
                    </asp:DropDownList>
                    部门<asp:TextBox ID="TextBox1" runat="server" Width="89px"></asp:TextBox>
                    地点(例如:时代东莞厂生产部手袋1车间、时代英德厂QC部拉杆2车间验货房等等！请填写详细的故障地点！)</td>
            </tr>
            <tr>
                <td class="style4">
                    联 系 人：</td>
                <td width="500">
                    <asp:TextBox ID="TextBox4" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    联系电话：</td>
                <td width="500">
                    <asp:TextBox ID="TextBox5" runat="server" Width="260px"></asp:TextBox>
                    (如果有短号，在这里填写您的短号!)</td>
            </tr>
            <tr>
                <td class="style1" colspan="2" width="310px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="重写" onclick="Button2_Click" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
