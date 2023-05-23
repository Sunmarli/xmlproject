<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="xmlproject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Arvutid xml failist</title>
    <link rel="stylesheet" href="arvutistiil.css" />
</head>
<body>
    <h1>XML arvutid</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Xml runat="server" DocumentSource="~/XMLFile1.xml" TransformSource="~/arvutidvalja.xslt" />
        </div>
    </form>
</body>
</html>
