<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bugs.aspx.cs" Inherits="CheckList.Bugs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Bugs - CheckList</title>
    <link href="css/default.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="ctwrp">
    <%if (ListBug != null)
      { %>
      <%foreach (var One in ListBug)
        { %>
        <table cellpadding="0" cellspacing="0" width="60%" class="addform">
            <tr>
                <td colspan="2" class="tt">Bug Time:<%=CheckList.CMTool.FORMAT_UNIXTIME((long)One.addtime)%></td>
            </tr>
            <tr>
                <td class="label">FileName:</td>
                <td><%=One.filename %></td>
            </tr>
            <tr>
                <td class="label">Persons:</td>
                <td><%=One.persons %></td>
            </tr>
            <tr>
                <td class="label">Bug:</td>
                <td><a href="<%=One.bug %>" target="_blank"><img src="<%=One.bug %>" style="max-height:100px" /></a></td>
            </tr>
            <tr>
                <td class="label">Remark:</td>
                <td class="brln"><%=One.remark %></td>
            </tr>
        </table>
       <%} %>
    <%} %>
    </div>
    </form>
</body>
</html>
