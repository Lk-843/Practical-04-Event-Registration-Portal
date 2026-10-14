<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event-Registration-Form.aspx.cs" Inherits="Practical_04_Event_Registration_Portal.Event_Registration_Form" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Registration Portal</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; margin: 24px; }
        h2 { margin-bottom: 20px; }
        table { border-collapse: collapse; }
        td { padding: 8px; vertical-align: top; }
        .field { width: 260px; }
        .error { color: #cc0000; }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <h2>Event Registration Portal</h2>
    <table>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Name" /></td>
            <td class="field"><asp:TextBox ID="txtName" runat="server" /></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtName" ErrorMessage="Enter your name" ForeColor="#CC0000" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Enrollment No." /></td>
            <td><asp:TextBox ID="txtEnroll" runat="server" /></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="txtEnroll" ErrorMessage="Enter your enrollment no." ForeColor="#CC0000" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Department" /></td>
            <td>
                <asp:DropDownList ID="dropDownDepart" runat="server">
                    <asp:ListItem Text="Select a department" Value="" />
                    <asp:ListItem Text="CSE - Core" Value="CSE - Core" />
                    <asp:ListItem Text="CSE - AI / ML" Value="CSE - AI / ML" />
                    <asp:ListItem Text="CSE - AI / DS" Value="CSE - AI / DS" />
                </asp:DropDownList>
            </td>
            <td><asp:RequiredFieldValidator ID="DepartmentValidator" runat="server"
                ControlToValidate="dropDownDepart" InitialValue="" ErrorMessage="Select a department" ForeColor="#CC0000" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Email" /></td>
            <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email" /></td>
            <td><asp:RequiredFieldValidator ID="EmailValidator" runat="server"
                ControlToValidate="txtEmail" ErrorMessage="Enter your email" ForeColor="#CC0000" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Mobile No." /></td>
            <td><asp:TextBox ID="txtMobile" runat="server" TextMode="Number" MaxLength="10" /></td>
            <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ControlToValidate="txtMobile" ErrorMessage="Enter a valid (10 digits) mobile number"
                ForeColor="#CC0000" ValidationExpression="^[0-9]{10}$" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label7" runat="server" Text="Gender" /></td>
            <td>
                <asp:RadioButton ID="radioMale" runat="server" GroupName="radioGender" Text="Male" />
                <asp:RadioButton ID="radioFemale" runat="server" GroupName="radioGender" Text="Female" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label9" runat="server" Text="Tech Stack" /></td>
            <td>
                <asp:CheckBox ID="chkPython" runat="server" Text="Python" />
                <asp:CheckBox ID="chkJavaScript" runat="server" Text="JavaScript" />
                <asp:CheckBox ID="chkReact" runat="server" Text="React JS" /><br />
                <asp:CheckBox ID="chkCSharp" runat="server" Text="C#" />
                <asp:CheckBox ID="chkRust" runat="server" Text="Rust" />
                <asp:CheckBox ID="chkNode" runat="server" Text="Node JS" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="Events" /></td>
            <td>
                <asp:ListBox ID="listBoxEvent" runat="server" SelectionMode="Multiple">
                    <asp:ListItem Text="Hackathon" Value="Hackathon" />
                    <asp:ListItem Text="Web Development Workshop" Value="Web Development Workshop" />
                    <asp:ListItem Text="AI / ML Workshop" Value="AI / ML Workshop" />
                    <asp:ListItem Text="Cyber Security Workshop" Value="Cyber Security Workshop" />
                </asp:ListBox>
            </td>
            <td><asp:CustomValidator ID="EventsValidator" runat="server" ErrorMessage="Select one or more events"
                ForeColor="#CC0000" OnServerValidate="EventsValidator_ServerValidate" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label8" runat="server" Text="Terms" /></td>
            <td><asp:CheckBox ID="chkTerms" runat="server" Text="I agree to the Terms and Conditions" /></td>
            <td><asp:CustomValidator ID="TermsValidator" runat="server" ErrorMessage="Please accept the Terms and Conditions"
                ForeColor="#CC0000" OnServerValidate="TermsValidator_ServerValidate" /></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" />
</form>
</body>
</html>
