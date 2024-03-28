d<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%bilgi=request.queryString("bilgi")
adres= Split(bilgi,"~")

mahalle=adres(0)
sokak=adres(1)
numara=adres(2)
pKodu=adres(3)
ilce=adres(4)
il=adres(5)
durum=adres(6)%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("DELETE FROM tblMusteriAdres WHERE kad='" & session("username") & "' AND mahalle='" & mahalle & "' AND sokak='" & sokak & "' AND numara='" & numara & "' AND pKodu='" & pKodu & "' AND ilce='" & ilce & "' AND il='" & il & "' AND durum=" & durum)%>
<script>alert("<%=session("username")%> IDli Kaydýn Adres Bilgisi silindi.")
window.location = 'mAdres.asp?kad=<%=session("userName")%>'</script>
</body>
</html>
