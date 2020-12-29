<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 50px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button1_onclick() {

        }

        function Button2_onclick() {

        }

// ]]>
    </script>
</head>
<body style="width:850px;height:620px">
    <form id="form1" runat="server">
    <div style="width:100%;margin:auto;">
    
        <table style="width:100%">
            <tr>
                <td class="style1" align="center" style="font-size: 30px" height="50" 
                    width="800">
    
                    时代皮具厂用户报修历史记录</td>
            </tr>
            <tr>
                <td class="style1">
    
                    <asp:Button ID="Button1" runat="server" BackColor="Yellow" Text="待处理故障" 
                        Width="97px" ToolTip="e" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="Gray" Text="已查看故障" 
                        onclick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" BackColor="ForestGreen" Text="已解决故障" 
                        onclick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Text="显示全部" />
                </td>
            </tr>
            <tr>
                <td align="left">
    
                    <asp:GridView ID="GridView1" runat="server"
                        AutoGenerateColumns="False" onrowdatabound="GridView1_RowDataBound" 
                        AllowPaging="True" BorderStyle="Groove" 
                        onpageindexchanging="GridView1_PageIndexChanging" PageSize="12">
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
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
