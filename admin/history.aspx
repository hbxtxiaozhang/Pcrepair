<%@ Page Language="C#" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="admin_history" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin:auto;">
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="2">
                    电脑部已经接手的维修信息</td>
            </tr>
            <tr>
                <td align="left" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="已解决" BackColor="ForestGreen" 
                        onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="待解决" BackColor="Gray" 
                        onclick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="全部信息" onclick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        onrowdatabound="GridView1_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="rid" HeaderText="维修单号" />
                            <asp:BoundField DataField="uname" HeaderText="维修人" />
                            <asp:BoundField DataField="ruser" HeaderText="报修人" />
                            <asp:BoundField DataField="rplace" HeaderText="报修地点" />
                            <asp:BoundField DataField="rtitle" HeaderText="故障标题" />
                            <asp:BoundField DataField="rdate" HeaderText="报修时间" />
                            <asp:BoundField DataField="risdone" HeaderText="是否处理" />
                            <asp:BoundField DataField="rdonedate" HeaderText="检修时间" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
