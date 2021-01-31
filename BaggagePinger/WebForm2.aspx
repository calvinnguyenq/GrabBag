<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="BaggagePinger.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 49%;
        }
        .auto-style3 {
            width: 325px;
            text-align: center;
        }
        .auto-style4 {
            width: 325px;
            height: 23px;
            text-align: center;
        }
        .auto-style5 {
            height: 23px;
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
            Welcome</strong></div>
        <p class="auto-style1">
            <asp:Label ID="textName" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style3"><strong>Number of Bags</strong></td>
                <td>
                    <asp:Label ID="numBagsLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Weights (kg)</strong></td>
                <td class="auto-style5">
                    <asp:Label ID="weightLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Check-in</strong></td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:Label ID="checkInLabel" runat="server"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>At Carousel</strong></td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:Label ID="AtCarouselLabel" runat="server"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
