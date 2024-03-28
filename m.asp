<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<script type="text/javascript">
	function loginKontrol()
		{
		var returnVAL = true;
		if (document.login.kad.value=='')
			{
			alert("Kullanýcý Adý Alaný Boþ Olamaz!");
			document.login.kad.focus();
			returnVAL =false;
			}
		else if (document.login.sifre.value=='' || isNaN(document.login.sifre.value))
			{
			alert("Þifre Alaný Boþ Olamaz ve Sayýsal Olmayan Ýfade Ýçeremez!");
			document.login.sifre.value="";
			document.login.sifre.focus();
			returnVAL =false;
			}
		return returnVAL;
		}
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

<%if session("userName")="" then%>
<table width="650" align="center">
	<tr>
		<td valign="top">
			<form name="login" method="post" onsubmit="return loginKontrol()" action="mLogin.asp">
			<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Login Ýþlemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Kullanýcý Adý</td>
					<td><input type="Text" id="kad" name="kad" value="mfk"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Þifre</td>
					<td><input type="Password" id="sifre" name="sifre" value="1234"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Giriþ Yap"></td>
				</tr>
			</table>
			</form>
		</td>
		<td>
			<form name="register"  method="post" onsubmit="return registerKontrol()" action="mRegister.asp">
			<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Register Ýþlemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Kullanýcý Adý</td>
					<td><input type="Text" id="kad" name="kad"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Þifre</td>
					<td><input type="Password" id="sifre_1" name="sifre_1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Þifre (Tekrar)</td>
					<td><input type="Password" id="sifre_2" name="sifre_2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Adýnýz</td>
					<td><input type="Text" id="ad" name="ad"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Soyadýnýz</td>
					<td><input type="Text" id="sad" name="sad"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>e-Mail</td>
					<td><input type="Text" id="mail" name="mail"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Telefon</td>
					<td><input type="Text" id="tel" name="tel"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kayýt Ol"></td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
</table>
<%else%>
	<ul type="disc">
		<li>Müþteri Ýþlemleri
			<ul type="circle">
				<li><a href="mRegisterUpdate.asp">Bilgileri Güncelle</a></li>
				<li><a href="mAdres.asp">Adres Ýþlemleri</a></li>
				<li><a href="cikis.asp">Çýkýþ</a></li>
			</ul>
		</li>
	</ul>
<%end if%>

</body>
</html>
