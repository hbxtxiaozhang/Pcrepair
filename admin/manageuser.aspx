<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="admin_manageuser" %>

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
                <td colspan="2" align="center">
                    用户管理</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" BackColor="AntiqueWhite" Text="员工" 
                        onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="ForestGreen" Text="管理员" 
                        onclick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="超级管理员" onclick="Button3_Click" BackColor="Yellow"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                        onrowdatabound="GridView1_RowDataBound">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="uid" HeaderText="用户编号" />
                            <asp:BoundField DataField="uname" HeaderText="用户名" />
                            <asp:BoundField DataField="upower" HeaderText="用户权限" />
                            <asp:BoundField DataField="ufactory" HeaderText="所在工厂" />
                            <asp:BoundField DataField="udepart" HeaderText="所在部门" />
                            <asp:BoundField DataField="utel" HeaderText="联系电话" />
                            <asp:BoundField DataField="umail" HeaderText="联系邮箱" />
                            <asp:HyperLinkField HeaderText="详细信息" Text="修改" DataNavigateUrlFields="uid" DataNavigateUrlFormatString="alteruser.aspx?id={0}" Target="_blank"/>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
