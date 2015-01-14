<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBug.aspx.cs" Inherits="CheckList.AddBug" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Add Bug - CheckList</title>
    <link href="css/default.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="ctwrp">
        <table cellpadding="0" cellspacing="0" width="60%" class="addform">
            <tr>
                <td colspan="2" class="tt">Add Bug Form</td>
            </tr>
            <tr>
                <td class="label">FileName:</td>
                <td><asp:TextBox ID="FileName" runat="server" Columns="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="label">Persons:</td>
                <td><asp:TextBox ID="Persons" runat="server" Columns="50"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="label">Bug:</td>
                <td><asp:FileUpload ID="Bug" runat="server" /></td>
            </tr>
            <tr>
                <td class="label">Remark:</td>
                <td><asp:TextBox ID="Remark" runat="server" Columns="60" Rows="10" 
                        TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td class="tbtn">
                    <asp:Button ID="Submit" runat="server" 
                        Text="  Submit  " onclick="Submit_Click" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
