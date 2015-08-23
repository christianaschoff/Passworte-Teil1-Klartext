<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="OwhPlainText._default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PlainText SQL Injection</title>       
    <link href="default.css" rel="stylesheet" />
</head>
<body>

    <h1>SQL Injection Demo</h1>

    <form id="form1" runat="server">
        <div>        
            <div class="bw">Benutzer:</div> <input type="text" id="user" runat="server" />
            <br /><div class="bw">Passwort:</div> <input type="password" id="pw" runat="server" />
            <br /><div class="bw">&nbsp;</div>
            <asp:Button Text="anmelden" runat="server" OnClick="Anmelden_Click" />
        </div>
        <br />
        <br />
        <br /><strong>Ergebnis:</strong>
        <div id="erg" runat="server"></div>        
    </form>

    <br />
    <br /><strong>SQL Injection:</strong>
    <br />Im Feld "Benutzer" folgenden Code eingeben:
    <br /><span class="code">'UNION ALL SELECT * FROM PlainText;--</span>
    <br />Das Passwort kann beliebig sein.
</body>
</html>
