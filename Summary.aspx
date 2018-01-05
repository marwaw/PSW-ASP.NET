<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Summary.aspx.cs" Inherits="Summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Podsumowanie</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:ListBox ID="selected" runat="server" Width="200px" Height="100px" ></asp:ListBox>
            </p>
            <p>
                <asp:Label ID="isempty" runat ="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
