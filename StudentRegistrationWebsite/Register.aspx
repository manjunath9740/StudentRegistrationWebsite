<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentRegistrationWebsite.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #3399FF;
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 173px;
        }
        .auto-style5 {
            width: 351px;
        }
        .auto-style6 {
            color: #FF3300;
        }
        .auto-style7 {
            width: 173px;
            height: 23px;
        }
        .auto-style8 {
            width: 351px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 173px;
            height: 48px;
        }
        .auto-style11 {
            width: 351px;
            height: 48px;
        }
        .auto-style12 {
            height: 48px;
        }
        .auto-style13 {
            margin-left: 182px;
        }
        .auto-style14 {
            margin-left: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style2"><strong>Student Registration Form</strong></h1>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style10">Student Name</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server" Width="332px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style6" ErrorMessage="Enter Characters Only" ValidationExpression="[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Class</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="113px">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7">Date-Of-Birth</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Width="251px"  ></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/calendar.png" OnClick="ImageButton1_Click" Width="61px" ImageAlign="AbsBottom" />
                    <asp:Calendar ID="Calendar1" runat="server" Height="263px" Width="283px" BackColor="#CCCCCC" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender"></asp:Calendar>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Mother Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="329px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" CssClass="auto-style6" ErrorMessage="Enter Characters Only" ValidationExpression="[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Father Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="331px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" CssClass="auto-style6" ErrorMessage="Enter Characters Only" ValidationExpression="[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mobile Number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="329px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" CssClass="auto-style6" ErrorMessage="Enter Valid Number" ValidationExpression="([7-9]{1})([0-9]{9})"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox6" runat="server" Height="49px" Width="327px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Text="Submit" Width="152px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Text="Cancel" Width="150px" OnClick="Button2_Click" />
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Green"></asp:Label>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
