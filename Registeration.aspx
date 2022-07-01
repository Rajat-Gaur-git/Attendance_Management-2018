<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 168px;
        }
        .style6
        {
            width: 11px;
        }
        .style7
        {
            width: 168px;
            height: 46px;
        }
        .style8
        {
            width: 11px;
            height: 46px;
        }
        .style9
        {
            height: 46px;
        }
        .style10
        {
            width: 168px;
            height: 31px;
        }
        .style11
        {
            width: 11px;
            height: 31px;
        }
        .style12
        {
            height: 31px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1" border="Dotted" 
        style="font-family: 'Arial Black'; font-style: inherit; color: #800000">
        <tr>
            <td class="style5">
                Name</td>
            <td class="style6">
                :</td>
            <td style="font-weight: 700">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*Please fill your name" Font-Italic="True" 
                    ForeColor="#FF3300" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Course</td>
            <td class="style6">
                :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*Please fill your course" Font-Italic="True" 
                    ForeColor="#FF3300" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Semester</td>
            <td class="style6">
                :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*Please fill your Semester" Font-Italic="True" 
                    ForeColor="#FF3300" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Roll No.</td>
            <td class="style6">
                :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*Please fill your Roll N0." Font-Italic="True" 
                    ForeColor="#FF3300" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Date of Birth</td>
            <td class="style6">
                :</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*Please fill your DoB" Font-Italic="True" 
                    ForeColor="#FF3300" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Mobile No.</td>
            <td class="style11">
                :</td>
            <td class="style12">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*Please fill your Mobile No." Font-Italic="True" 
                    ForeColor="#FF3300" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Password</td>
            <td class="style6">
                :</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*Please fill your Password" Font-Italic="True" 
                    ForeColor="#FF3300" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Photo</td>
            <td class="style6">
                :</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*Please browse your picture " Font-Italic="True" 
                    ForeColor="#FF3300" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" BackColor="#3366FF" BorderColor="White" 
                    BorderStyle="Double" BorderWidth="2px" Height="39px" Text="REGISTER" 
                    Width="125px" onclick="Button1_Click" />
            </td>
            <td class="style8">
                </td>
            <td class="style9">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
        </table>
</asp:Content>

