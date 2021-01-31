<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BaggagePinger.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        body {
            background-image: url('images/14561.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .auto-style1 {
            background-color: white;
            color:royalblue;
            font-family: Arial;
            font-size: xx-large;
            text-align: center;
            width: 729px;
            margin-left: 2px;
            height: 51px;
            text-decoration: underline;
        }
        .auto-style2 {
            background-color: white;
            font-family: Arial;
            width: 100%;
            height: 199px;
        }
        .auto-style3 {
            background-color: white;
            height: 49px;
            width: 937px;
        }
        .auto-style10 {
            background-color: white;
            height: 51px;
            width: 937px;
        }
        .auto-style11 {
            background-color: white;
            height: 49px;
            width: 684px;
        }
        .auto-style12 {
            background-color: white;
            height: 51px;
            width: 684px;
            text-align: center;
        }
        .auto-style13 {
            background-color: white;
            height: 49px;
            width: 684px;
            text-align: center;
        }
    </style>
</head>
<body style="width: 733px; height: 256px; margin-left: 472px; margin-top: 219px">
    <form id="form1" runat="server">
        <div class="auto-style1" style="margin-top: 0px">
            <strong>Login </strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style13"><strong>Username</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtuser" runat="server" Width="346px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Password</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtpass" runat="server" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="232px" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>




