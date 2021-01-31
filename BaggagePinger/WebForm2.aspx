<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="BaggagePinger.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url('images/min.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .auto-style1 {
            font-family: Arial;
            color:royalblue;
            text-align: center;
        }
        .auto-style2 {
            background: rgba(233,233,233,0.8);
            font-family: Arial;
            width: 41%;
        }
        .auto-style6 {
            font-size: 30pt;
        }
        .auto-style7 {
            color: white;
            font-size: 45pt;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style13 {
            width: 279px;
            text-align: center;
            font-size: x-large;
            height: 54px;
        }
        .auto-style14 {
            height: 54px;
            width: 343px;
        }
        .auto-style15 {
            font-family: Arial;
            font-size: 15pt;
            margin-left: 575px;
            margin-right: 0px;
            margin-top: 69px;
        }
    </style>
</head>
<body style="height: 402px">
    <form id="form2" runat="server">
        <div class="auto-style1">
            <strong>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
        </asp:Timer>
            <span class="auto-style6">Welcome</span></strong></div>
        <p class="auto-style1">
            <strong>
            <asp:Label ID="textName" runat="server" CssClass="auto-style7"></asp:Label>
            </strong>
        </p>
        <p>
            &nbsp;</p>
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style13"><strong>Number of Bags:</strong></td>
                <td class="auto-style14">
                    <asp:Label ID="numBagsLabel" runat="server" CssClass="auto-style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Weights (kg):</strong></td>
                <td class="auto-style14">
                    <asp:Label ID="weightLabel" runat="server" CssClass="auto-style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Check-in:</strong></td>
                <td class="auto-style14">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:Label ID="checkInLabel" runat="server" CssClass="auto-style8"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>At Carousel:</strong></td>
                <td class="auto-style14">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:Label ID="AtCarouselLabel" runat="server" CssClass="auto-style8"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
        <asp:Button ID="logoutButton" runat="server" CssClass="auto-style15" Height="45px" OnClick="logoutButton_Click" Text="log out" Width="113px" />
    </form>
</body>
</html>
