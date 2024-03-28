<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%kad=request.form("kad")
sifre=request.form("sifre")%>

<%
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")
%>

<%Set rs= conn.Execute("SELECT * FROM tblMusteri WHERE kad='" & kad & "' AND sifre=" & sifre)
if rs.EOF then%>
	<script>alert("Bu kullanýcý kayýtlý deðil veya þifre hatalý!")
	window.location = 'm.asp'</script>
<%else
	session("userName")=rs("kad")
	session("ad")=rs("ad")
	session("soyad")=rs("soyad")
	session("mail")=rs("mail")
	session("tel")=rs("tel")%>
	<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
		<tr height="40px" bgcolor="#ffffff" align="center">
			<td>Kullanýcý Adý</td>
			<td><%=session("userName")%></td>
		</tr>
		<tr height="40px" bgcolor="#ffffff" align="center">
			<td>Ad</td>
			<td><%=session("ad")%></td>
		</tr>
		<tr height="40px" bgcolor="#ffffff" align="center">
			<td>Soyad</td>
			<td><%=session("soyad")%></td>
		</tr>
		<tr height="40px" bgcolor="#ffffff" align="center">
			<td>Mail</td>
			<td><%=session("mail")%></td>
		</tr>
		<tr height="40px" bgcolor="#ffffff" align="center">
			<td>Telefon</td>
			<td><%=session("tel")%></td>
		</tr>
		<tr height="40px" bgcolor="#ffffff" align="center">
			<td colspan="2"><a href="m.asp">Geri Dön</a></td>
		</tr>
	</table>
<%end if%>

</body>
</html>
