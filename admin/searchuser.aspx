<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchuser.aspx.cs" Inherits="admin_searchuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
        .style4
        {
            height: 50px;
        }       
    </style>
</head>
<body style="text-align:center;width:800px; height:600px;">
    <form id="form1" runat="server">
    <div style="text-align:center;width:800px;height:600px;margin:auto;">
        <table style="width:800px;height:600px;">
            <tr>
                
                <td align="center" class="style4" 
                    style="border: 1px groove #000000; font-size: 30px;">
                   查找用户</td>
            </tr>
            <tr>
                
                <td class="style1" align="right" style="border: 1px groove #000000">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="查找" onclick="Button1_Click" 
                        style="width: 40px" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px groove #000000;width:800px;height:500px;">
                    <asp:Panel ID="Panel1" runat="server" Height="500px" Visible="False" 
                        style="margin-top: 0px" Width="800px" BorderColor="#999999" 
                        BorderWidth="1px">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="uid" DataSourceID="SqlDataSource1" CellPadding="4" 
                            ForeColor="#333333" GridLines="None" Height="287px" Width="790px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="uid" HeaderText="用户编号" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="uid" >
                                <ControlStyle Height="40px" Width="60px" />
                                <HeaderStyle Height="40px" Width="80px" />
                                <ItemStyle BackColor="#999999" BorderStyle="Groove" BorderWidth="1px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="uname" HeaderText="用户名" SortExpression="uname" >
                                <ControlStyle Height="40px" Width="60px" />
                                <HeaderStyle Height="40px" Width="60px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ufactory" HeaderText="所属工厂" 
                                    SortExpression="ufactory" >
                                <ControlStyle Height="40px" Width="80px" />
                                <HeaderStyle Height="40px" Width="80px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="udepart" HeaderText="所属部门" 
                                    SortExpression="udepart" >
                                <ControlStyle Height="40px" Width="80px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="umail" HeaderText="电子邮箱" SortExpression="umail" >
                                <ControlStyle Height="40px" Width="80px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="utel" HeaderText="联系电话" SortExpression="utel" >
                                <ControlStyle Height="40px" Width="80px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ucontext" HeaderText="用户备注" 
                                    SortExpression="ucontext" >
                                <ControlStyle Height="40px" Width="240px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="uregdate" HeaderText="注册时间" 
                                    SortExpression="uregdate" >
                                <ControlStyle Height="40px" Width="100px" />
                                </asp:BoundField>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:pcDBConnectionString %>" 
                            SelectCommand="SELECT * FROM [pcUsers] WHERE ([uname] LIKE '%' + @uname + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="uname" PropertyName="Text" 
                                    Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
