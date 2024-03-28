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
			alert("Kullanýcý Adý Alaný Boþ Olamaz!");
			document.register.kad.focus();
			returnVAL =false;
			}
		else if (document.register.sifre_1.value=='' || isNaN(document.register.sifre_1.value))
			{
			alert("Þifre Alaný Boþ Olamaz ve Sayýsal Olmayan Ýfade Ýçeremez!");
			document.register.sifre_1.value="";
			document.register.sifre_1.focus();
			returnVAL =false;
			}
		else if (document.register.sifre_2.value=='' || isNaN(document.register.sifre_2.value))
			{
			alert("Þifre (Tekrar) Alaný Boþ Olamaz ve Sayýsal Olmayan Ýfade Ýçeremez!");
			document.register.sifre_2.value="";
			document.register.sifre_2.focus();
			returnVAL =false;
			}
		else if (document.register.sifre_1.value!=document.register.sifre_2.value)
			{
			alert("Þifreler Eþleþmiyor!");
			document.register.sifre_1.value="";
			document.register.sifre_2.value="";
			document.register.sifre_1.focus();
			returnVAL =false;
			}
		else if (document.register.ad.value=='')
			{
			alert("Adý Alaný Boþ Olamaz!");
			document.register.ad.focus();
			returnVAL =false;
			}
		else if (document.register.sad.value=='')
			{
			alert("Soyadý Alaný Boþ Olamaz!");
			document.register.sad.focus();
			returnVAL =false;
			}
		else if (document.register.mail.value=='')
			{
			alert("Mail Alaný Boþ Olamaz!");
			document.register.mail.focus();
			returnVAL =false;
			}
		else if (document.register.tel.value=='')
			{
			alert("Telefon Alaný Boþ Olamaz!");
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
		<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Kayýt Güncelleme</font></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Kullanýcý Adý</td>
		<td><input type="Text" id="kad" name="kad" value="<%=session("userName")%>" readonly></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Þifre</td>
		<td><input type="Text" id="sifre_1" name="sifre_1" value="<%=rs("sifre")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Þifre (Tekrar)</td>
		<td><input type="Text" id="sifre_2" name="sifre_2" value="<%=rs("sifre")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Adýnýz</td>
		<td><input type="Text" id="ad" name="ad" value="<%=rs("ad")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Soyadýnýz</td>
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
		<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Güncelle">
		<a href="m.asp">Müþteri Ýþlemleri</a></td>
	</tr>
</table>
</form>
</body>
</html>
