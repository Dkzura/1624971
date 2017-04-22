<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBlogEntry.aspx.cs" Inherits="Meirose.AddBlogEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblTitle" runat="server" Text="Title" AssociatedControlID="txtTitle"></asp:Label>
        <asp:TextBox ID="txtTitle" runat="server" MaxLength="100"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblBody" runat="server" Text="Body" AssociatedControlID="txtBody"></asp:Label>
        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine">
        </asp:TextBox>
    </div>
    <asp:Button ID="btnAddEntry" runat="server" Text="Add Blog Entry" OnClick="btnAddEntry_Click" />
    </form>
</body>
</html>