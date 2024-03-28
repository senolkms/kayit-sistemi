<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%mahalle=request.form("mahalle")
sokak=request.form("sokak")
numara=request.form("numara")
pKodu=request.form("pKodu")
ilce=request.form("ilce")
il=request.form("il")
durum=request.form("durum")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%if durum=1 then
	Set rs= conn.Execute("UPDATE tblMusteriAdres SET durum=0 WHERE kad='" & session("userName") & "'")
end if
Set rs= conn.Execute("SELECT * FROM tblMusteriAdres WHERE kad='" & session("username") & "' AND mahalle='" & mahalle & "' AND sokak='" & sokak & "' AND numara='" & numara & "' AND pKodu='" & pKodu & "' AND ilce='" & ilce & "' AND il='" & il & "'")
if rs.EOF then%>
	<%Set rs= conn.Execute("INSERT INTO tblMusteriAdres (kad, mahalle, sokak, numara, pKodu, ilce, il, durum) VALUES('" & session("username") & "', '" & mahalle & "', '" & sokak & "', '" & numara & "', '" & pKodu & "', '" & ilce & "', '" & il & "', " & durum & ")")%>
	<script>alert("Kayýt gerçekleþti.")
	window.location = 'mAdres.asp'</script>
<%else%>
	<script>alert("Bu adres kayýtlý bir adrestir.")
	window.location = 'mAdres.asp'</script>
<%end if%>
</body>
</html>
