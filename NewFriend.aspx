<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewFriend.aspx.cs" Inherits="NewFriend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Friend Detail</h1>
        <table>
            <tr>
                <td>
                    Name
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Place
                </td>
                <td>
                    <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Mobile
                </td>
                <td>
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Photo/Image
                </td>
                <td>
                    <asp:FileUpload ID="fuImage" runat="server" accept=".png,.PNG,.bmp,.BMP,.jpeg,.JPEG,.jpg,.JPG" ></asp:FileUpload>   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
                <td>
                    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" PostBackUrl="~/FriendList.aspx" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
