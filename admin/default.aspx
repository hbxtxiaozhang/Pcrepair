<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="admin_default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 97px;
        }
        .style2
        {
            width: 40px;
        }
        .style3
        {
            width: 107px;
        }
        .style4
        {
            width: 93px;
        }
        
    </style>
    
<script src="../My97DatePicker/WdatePicker.js"></script> 


</head>
<body style="width:1000px;height:768px;">
    <form id="form1" runat="server">
    <div>
        <table style="width:100%;margin:auto;">
            <tr>
                <td colspan="5" align="center">
                    报修信息列表</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="Button1" runat="server" BackColor="Yellow" Text="待处理故障" 
                        Width="97px" ToolTip="e" onclick="Button1_Click" />
                </td>
                <td class="style2">
                    <asp:Button ID="Button2" runat="server" BackColor="Gray" Text="已查看故障" 
                        onclick="Button2_Click" />
                </td>
                <td class="style3">
                    <asp:Button ID="Button3" runat="server" BackColor="ForestGreen" Text="已解决故障" 
                        onclick="Button3_Click" />
                </td>
                <td class="style4">
                    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="显示全部" />
                </td>
                <td>
                    按日期范围:在<asp:TextBox ID="TextBox1" runat="server" onkeydown="return false;" onfocus="new WdatePicker(this,'%Y-%M-%D',true,'default')" onClick="WdatePicker()"
></asp:TextBox>
                    到<asp:TextBox ID="TextBox2" runat="server" onkeydown="return false;" onfocus="new WdatePicker(this,'%Y-%M-%D',true,'default')" onClick="WdatePicker()"
></asp:TextBox>之间<asp:Button ID="Button5" runat="server" Text="查找" onclick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    
                                       
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        onrowdatabound="GridView1_RowDataBound">
                    <Columns>
                            <asp:BoundField HeaderText="维修编号" DataField="rid">
                            <ControlStyle Height="30px" Width="110px" />
                            <HeaderStyle Height="30px" Width="110px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="故障标题" DataField="rtitle">
                            <ControlStyle Height="30px" Width="165px" />
                            <HeaderStyle Height="30px" Width="165px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="报修人" DataField="username">
                            <ControlStyle Height="30px" Width="80px" />
                            <HeaderStyle Height="30px" Width="80px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="维修地点" DataField="rplace">
                            <ControlStyle Height="30px" Width="260px" />
                            <HeaderStyle Height="30px" Width="260px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="报修时间" DataField="rdate">
                            <ControlStyle Height="30px" Width="120px" />
                            <HeaderStyle Height="30px" Width="120px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="risdone" HeaderText="是否处理">
                            <ControlStyle Height="30px" Width="80px" />
                            <HeaderStyle Width="80px" Height="30px" />
                            </asp:BoundField>
                            <asp:HyperLinkField HeaderText="详情" Text="详情" DataNavigateUrlFields="rid" DataNavigateUrlFormatString="repairinfo.aspx?id={0}" Target="_blank">
                            <HeaderStyle Height="30px" Width="60px" />
                            </asp:HyperLinkField>
                            <asp:BoundField DataField="rdonedate" HeaderText="维修时间" Visible="False" />
                        </Columns>
                    </asp:GridView>
                </tr>
            <tr>
                <td colspan="5">
                    &nbsp;</td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
