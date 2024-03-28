<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FriendList.aspx.cs" Inherits="FriendList" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="NewFriend.aspx">Insert An New Friend</a>
        <asp:GridView ID="gvFriend" DataKeyNames="FriendImage" runat="server" AutoGenerateColumns="false" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            <Columns>
                <asp:BoundField  DataField="FriendID" HeaderText="Friend ID"/>
                <asp:BoundField  DataField="Name" HeaderText="Friend Name"/>
                <asp:BoundField  DataField="Place" HeaderText="Place"/>
                <asp:BoundField  DataField="Mobile" HeaderText="Mobile Number"/>
                <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <asp:Image ID="imgPicture" runat="server" ImageUrl='<%# Eval("FriendImage", "~/FriendPhoto/{0}") %>' Width="200px" />
                         </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnView" runat="server" Text="View" OnClick="btnView_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Download">
                    <ItemTemplate>
                        <asp:Button ID="btnDownload" runat="server" Text="Download" OnClick="btnDownload_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
