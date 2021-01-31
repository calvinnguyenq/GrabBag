<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BaggagePinger.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        body {background-color: #8AD0F5;} 
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            width: 807px;
            margin-left: 505px;
        }
        .auto-style2 {
            width: 100%;
            height: 135px;
        }
        .auto-style3 {
            height: 49px;
            width: 937px;
        }
        .auto-style10 {
            height: 50px;
            width: 937px;
        }
        .auto-style11 {
            height: 49px;
            width: 178px;
        }
        .auto-style12 {
            height: 50px;
            width: 178px;
        }
        .auto-style13 {
            height: 49px;
            width: 684px;
        }
        .auto-style14 {
            height: 50px;
            width: 684px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="margin-top: 0px">
            <strong>Login Form</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11"><strong>Username</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtuser" runat="server" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style12"><strong>Password</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtpass" runat="server" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11"></td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="159px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
