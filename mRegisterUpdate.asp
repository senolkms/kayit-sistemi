<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<script type="text/javascript">
	function registerKontrol()
		{
		var returnVAL = true;
		if (document.register.kad.value=='')
			{
			alert("Kullan�c� Ad� Alan� Bo� Olamaz!");
			document.register.kad.focus();
			returnVAL =false;
			}
		else if (document.register.sifre_1.value=='' || isNaN(document.register.sifre_1.value))
			{
			alert("�ifre Alan� Bo� Olamaz ve Say�sal Olmayan �fade ��eremez!");
			document.register.sifre_1.value="";
			document.register.sifre_1.focus();
			returnVAL =false;
			}
		else if (document.register.sifre_2.value=='' || isNaN(document.register.sifre_2.value))
			{
			alert("�ifre (Tekrar) Alan� Bo� Olamaz ve Say�sal Olmayan �fade ��eremez!");
			document.register.sifre_2.value="";
			document.register.sifre_2.focus();
			returnVAL =false;
			}
		else if (document.register.sifre_1.value!=document.register.sifre_2.value)
			{
			alert("�ifreler E�le�miyor!");
			document.register.sifre_1.value="";
			document.register.sifre_2.value="";
			document.register.sifre_1.focus();
			returnVAL =false;
			}
		else if (document.register.ad.value=='')
			{
			alert("Ad� Alan� Bo� Olamaz!");
			document.register.ad.focus();
			returnVAL =false;
			}
		else if (document.register.sad.value=='')
			{
			alert("Soyad� Alan� Bo� Olamaz!");
			document.register.sad.focus();
			returnVAL =false;
			}
		else if (document.register.mail.value=='')
			{
			alert("Mail Alan� Bo� Olamaz!");
			document.register.mail.focus();
			returnVAL =false;
			}
		else if (document.register.tel.value=='')
			{
			alert("Telefon Alan� Bo� Olamaz!");
			document.register.tel.focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	</script>
</head>

<body>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblMusteri WHERE kad='" & session("userName") & "'")%>
<form name="register"  method="post" onsubmit="return registerKontrol()" action="mRegisterUpdate2.asp">
<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Kay�t G�ncelleme</font></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Kullan�c� Ad�</td>
		<td><input type="Text" id="kad" name="kad" value="<%=session("userName")%>" readonly></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>�ifre</td>
		<td><input type="Text" id="sifre_1" name="sifre_1" value="<%=rs("sifre")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>�ifre (Tekrar)</td>
		<td><input type="Text" id="sifre_2" name="sifre_2" value="<%=rs("sifre")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Ad�n�z</td>
		<td><input type="Text" id="ad" name="ad" value="<%=rs("ad")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Soyad�n�z</td>
		<td><input type="Text" id="sad" name="sad" value="<%=rs("soyad")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>e-Mail</td>
		<td><input type="Text" id="mail" name="mail" value="<%=rs("mail")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Telefon</td>
		<td><input type="Text" id="tel" name="tel" value="<%=rs("tel")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="G�ncelle">
		<a href="m.asp">M��teri ��lemleri</a></td>
	</tr>
</table>
</form>
</body>
</html>
