<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%sifre=request.form("sifre_1")
ad=request.form("ad")
sad=request.form("sad")
mail=request.form("mail")
tel=request.form("tel")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("UPDATE tblMusteri SET sifre=" & sifre & ", ad='" & ad & "', soyad='" & sad & "', mail='" & mail & "', tel='" & tel & "' WHERE kad='" & session("userName") & "'")
session("sifre")=sifre
session("ad")=ad
session("soyad")=sad
session("mail")=mail
session("tel")=tel%>
<script>alert("Kayýt güncellendi.")
window.location = 'm.asp'</script>
</body>
</html>
