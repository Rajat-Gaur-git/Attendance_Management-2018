<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 137px;
            font-size: medium;
            font-weight: 700;
            font-family: Bahnschrift;
        }
        .style6
        {
            width: 15px;
            font-weight: 700;
        }
        .style7
        {
            width: 137px;
            font-size: medium;
            font-weight: 700;
            font-family: Bahnschrift;
            height: 26px;
        }
        .style8
        {
            width: 15px;
            font-weight: 700;
            height: 26px;
        }
        .style9
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1" bgcolor="#009933">
        <tr>
            <td class="style5">
                USER NAME</td>
            <td class="style6">
                :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="147px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*Please fill your User Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                PASSWORD</td>
            <td class="style8">
                :</td>
            <td class="style9">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#0099FF" 
                    BorderStyle="Inset" Width="150px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*Please fill your password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                USER TYPE</td>
            <td class="style6">
                :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>TEACHER</asp:ListItem>
                    <asp:ListItem>STUDENT</asp:ListItem>
                    <asp:ListItem>ADMIN</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" BackColor="#660066" BorderColor="White" 
                    BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="Medium" 
                    ForeColor="White" Text="LOGIN" Width="125px" onclick="Button1_Click" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Italic="True" ForeColor="Red"></asp:Label>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        </table>
</asp:Content>

