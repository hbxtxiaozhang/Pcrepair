<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 120px;
            height:80px;
        }
        .style3
        {
            height: 81px;
        }
        .style4
        {
            width: 120px;
            height: 81px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin:auto;">
    
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="2" height="40px" style="border: 1px groove #000000;" 
                    width="840">
                    流程简介和说明</td>
            </tr>
            <tr>
                <td class="style4" style="border: 1px groove #000000">
                    流程简介:</td>
                <td width="840" class="style3" style="border: 1px groove #000000">
                    1.员工提交报修信息后(单据显示颜色：黄色)等待维修====》2.电脑部查看报修信息并去维修(单据显示颜色：灰色)====》3.员工确认故障已经修好(详细信息----确认),此时单据完结（单据显示颜色:绿色)</td>
            </tr>
            <tr>
                <td class="style1" height="100%" style="border: 1px groove #000000">
                    使用说明：</td>
                <td height="100%" width="840" style="border: 1px groove #000000">
                    1.员工提交单据后，请在电脑部查看并维修后再点击确定(即显示颜色由黄色变成灰色后，并且故障已修好)，不然会被认为是员工自动放弃维修或者机器故障自己恢复了。2.请不要提交内容完全一样的信息，如果两次故障相同，请适当修改下故障详细描述，不要有完全重复的内容(完全重复的内容系统不会去生存单号，会被认为是重复刷故障)。3.使用过程中遇到任何问题和程序异常，您可以通过投诉和建议将信息反馈回来，或者通过内网邮箱发送到开发者邮箱yeshuai_zhang@sitoydg.com,我会逐渐改进程序的功能和漏洞。4.在IE8以及以上版本下，由于兼容性问题，许多页面无法对齐和居中，建议大家用IE6和IE7。</td>
            </tr>
            <tr>
                <td class="style1" height="100%" style="border: 1px groove #000000">
                    权限说明:</td>
                <td height="100%" width="840" style="border: 1px groove #000000">
                    1.超级管理员具有最高权限，管理员其次。2.管理员可以增加员工用户和管理员用户，但是管理员无法删除和修改权限和自己相同以及高于的自己的用户。3.修改个人信息，请在个人设置中修改。</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
