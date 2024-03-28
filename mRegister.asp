<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%kad=request.form("kad")
sifre=request.form("sifre_1")
ad=request.form("ad")
sad=request.form("sad")
mail=request.form("mail")
tel=request.form("tel")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblMusteri WHERE kad='" & kad & "'")
if rs.EOF then%>
	<%Set rs= conn.Execute("INSERT INTO tblMusteri (kad, sifre, ad, soyad, mail, tel) VALUES('" & kad & "', " & sifre & ", '" & ad & "', '" & sad & "', '" & mail & "', '" & tel & "')")%>
	<script>alert("Kayýt gerçekleþti.")
	window.location = 'm.asp'</script>
<%else%>
	<script>alert("Bu kullanýcý adý baþka biri tarafýndan kullanýlmaktadýr.")
	window.location = 'm.asp'</script>
<%end if%>
</body>
</html>
