<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<script type="text/javascript">
	function mAdresKontrol()
		{
		var returnVAL = true;
		if (document.mAdres.mahalle.value=='')
			{
			alert("Mahalle Alan� Bo� Olamaz!");
			document.mAdres.mahalle.focus();
			returnVAL =false;
			}
		else if (document.mAdres.sokak.value=='')
			{
			alert("Sokak Alan� Bo� Olamaz!");
			document.mAdres.sokak.focus();
			returnVAL =false;
			}
		else if (document.mAdres.numara.value=='')
			{
			alert("Numara Alan� Bo� Olamaz!");
			document.mAdres.numara.focus();
			returnVAL =false;
			}
		else if (document.mAdres.pKodu.value=='')
			{
			alert("Posta Kodu Alan� Bo� Olamaz!");
			document.mAdres.pKodu.focus();
			returnVAL =false;
			}
		else if (document.mAdres.ilce.value=='�l�e Se�iniz')
			{
			alert("�lce Se�iniz!");
			document.mAdres.ilce.focus();
			returnVAL =false;
			}
		else if (document.mAdres.ilce.value=='')
			{
			alert("�lce Alan� Bo� Olamaz!");
			document.mAdres.ilce.focus();
			returnVAL =false;
			}
		else if (document.mAdres.il.value=='�l Se�iniz')
			{
			alert("�l Se�iniz!");
			document.mAdres.il.focus();
			returnVAL =false;
			}
		else if (document.mAdres.il.value=='')
			{
			alert("�l Alan� Bo� Olamaz!");
			document.mAdres.il.focus();
			returnVAL =false;
			}
		else if (document.mAdres.durum.value<0 || document.mAdres.durum.value>1)
			{
			alert("Aktif/Pasif Adres Se�imi Yap�n�z!");
			document.mAdres.durum.focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	</script>
</head>

<body>

<!--kitap i�lemleri-->
<form name="mAdres" method="post" onsubmit="return mAdresKontrol()" action="mAdresRegister.asp">
<table align="center" bgcolor="#ff0000" cellpadding="5" cellspacing="1">
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Adres ��lemleri</font></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Mahalle</td>
		<td><input type="Text" id="mahalle" name="mahalle"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Sokak</td>
		<td><input type="Text" id="sokak" name="sokak"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Numara</td>
		<td><input type="Text" id="numara" name="numara"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Posta Kodu</td>
		<td><input type="Text" id="pKodu" name="pKodu"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>�l�e</td>
		<td>
			<%ilceler=Array("ABANA", "ACIG�L", "ACIPAYAM", "ADAKLI", "ADALAR", "ADAPAZARI", "ADIYAMAN MERKEZ", "AD�LCEVAZ", "AF��N", "AFYONKARAH�SAR MERKEZ", "A�A��REN", "A�IN", "A�LASUN", "A�LI", "A�RI MERKEZ", "AHIRLI", "AHLAT", "AHMETL�", "AK�AABAT", "AK�ADA�", "AK�AKALE", "AK�AKENT", "AK�AKOCA", "AKDA�MADEN�", "AKDEN�Z", "AKH�SAR", "AKINCILAR", "AKKI�LA", "AKKU�", "AK�REN", "AKPINAR", "AKSARAY MERKEZ", "AKSEK�", "AKSU", "AK�EH�R", "AKYAKA", "AKYAZI", "AKYU RT", "ALACA", "ALACAKAYA", "ALA�AM", "ALADA�", "ALANYA", "ALAPLI", "ALA�EH�R", "AL�A�A", "ALMUS", "ALPU", "ALTIEYL�L", "ALTINDA�", "ALTINEK�N", "ALTINORDU", "ALTINOVA", "ALTIN�Z�", "ALTINTA�", "ALTINYAYLA", "ALTUNH�SAR", "ALUCRA", "AMASRA", "AMASYA MERKEZ", "ANAMUR", "ANDIRIN", "ANTAKYA", "ARABAN", "ARA�", "ARAKLI", "ARALIK", "ARAPG�R", "ARDAHAN MERKEZ", "ARDANU�", "ARDE�EN", "ARGUVAN", "ARHAV�", "ARICAK", "AR�F�YE", "ARMUTLU", "ARNAVUTK�Y", "ARPA�AY", "ARS�N", "ARSUZ", "ARTOVA", "ARTU KLU", "ARTV�N MERKEZ", "ASARCIK", "ASLANAPA", "A�KALE", "ATABEY", "ATAKUM", "ATA�EH�R", "ATKARACALAR", "AVANOS", "AVCILAR", "AYANCIK", "AYA�", "AYBASTI", "AYDINCIK", "AYDINTEPE", "AYRANCI", "AYVACIK", "AYVALIK", "AZDAVAY", "AZ�Z�YE", "BABADA�", "BABAESK�", "BAFRA", "BA�CILAR", "BA�LAR", "BAH�E", "BAH�EL�EVLER", "BAH�ESARAY", "BAH��L�", "BAKIRK�Y", "BAKLAN", "BALA", "BAL�OVA", "BALI�EYH", "BALYA", "BANAZ", "BANDIRMA", "BARTIN MERKEZ", "BASK�L", "BA�AK�EH�R", "BA���FTL�K", "BA��SKELE", "BA�KALE", "BA�MAK�I", "BA�YAYLA", "BATMAN MERKEZ", "BATTALGAZ�", "BAYAT", "BAYBURT MERKEZ", "BAYINDIR", "BAYKAN", "BAYRAKLI", "BAYRAM��", "BAYRAM�REN", "BAYRAMPA�A", "BEK�LL", "BELEN", "BERGAMA", "BESN�", "BE��KD�Z�", "BE��KTA�", "BE��R�", "BEYA�A�", "BEYDA�", "BEYKOZ", "BEYL�KD�Z�", "BEYL�KOVA", "BEYO�LU", "BEYPAZARI", "BEY�EH�R", "BEYT���EBAP", "B�GA", "B�GAD��", "B�LEC�K MERKEZ", "B�NG�L MERKEZ", "B�REC�K", "B�SM�L", "B�TL�S MERKEZ", "BODRUM", "BO�AZKALE", "BO�AZLIYAN", "BOLU MERKEZ", "BOLVAD�N", "BOR", "BOR�KA", "BORNOVA", "BOYABAT", "BOZCAADA", "BOZDO�AN", "BOZKIR", "BOZKURT", "BOZOVA", "BOZTEPE", "BOZ�Y�K", "BOZYAZI", "BU LDAN", "BUCA", "BUCAK", "BUHARKENT", "BULANCAK", "BULANIK", "BULDAN", "BURDUR MERKEZ", "BURHAN�YE", "B� NYAN", "B�Y�K�EKMECE", "B�Y�KORHAN", "CAN�K", "CEYHAN", "CEYLANPINAR", "C�DE", "C�HANBEYL", "C�ZRE", "CUMAYER�", "�A�LAYANCER�T", "�AL", "�ALDIRAN", "�AMARDI", "�AMA�", "�AMEL", "�AMLIDERE", "�AMLIHEM��N", "�AMLIYAYLA", "�AMOLUK", "�AN", "�ANAK�I", "�ANAKKALE MERKEZ", "�ANDIR", "�ANKAYA", "�ANKIRI MERKEZ", "�ARDAK", "�AR�AMBA", "�AR�IBA�I", "�AT", "�ATAK", "�ATALCA", "�ATALPINAR", "�ATALZEYT�N", "�AVDARH�SAR", "�AVDIR", "�AY", "�AYBA�I", "�AYCUMA", "�AYEL�", "�AYIRALAN", "�AYIRLI", "�AYIROVA", "�AYKARA", "�EKEREK", "�EKMEK�Y", "�ELEB�", "�EL�KHAN", "�ELT�K", "�ELT�K��", "�EM��GEZEK", "�ERKE�", "�ERKEZK�Y", "�ERM�K", "�E�ME", "�ILDIR", "�INAR", "�INARCIK", "���EKDA�I", "��FTELER", "��FTL�K", "��FTL�KK�Y", "���L�", "��L�ML", "��NE", "��VR�L", "�OBANLAR", "�ORLU", "�ORUM MERKEZ", "�UBUK", "�UKURCA", "�UKUROVA", "�UMRA", "��NG��", "DADAY", "DALAMAN", "DAMAL", "DARENDE", "DARGE��T", "DARICA", "DAT�A", "DAZKIRI", "DEFNE", "DEL�CE", "DEM�RC�", "DEM�RK�Y", "DEM�R�Z�", "DEMRE", "DERBENT", "DEREBUCAK", "DEREC�K", "DEREL", "DEREPAZARI", "DER�K", "DER�NCE", "DER�NKUYU", "DERNEKPAZARI", "DEVEL�", "DEVREK", "DEVREKAN�", "D�CLE", "D�D�M", "D�GOR", "D�K�L", "D�KMEN", "D�LOVASI", "D�NAR", "D�VR���", "D�YAD�N", "DODURGA", "DO�ANH�SAR", "DO�ANKENT", "DO�AN�AR", "DO�AN�EH�R", "DO�ANYOL", "DO�ANYURT", "DO�UBAYAZIT", "DOMAN��", "D�RTD�VAN", "D�RTYOL", "D��EMEALTI", "DU LKAD�RO�LU", "DUMLUPINAR", "DURA�AN", "DURSUNBEY", "D�ZCE MERKEZ", "D�Z���", "D�ZK�Y", "ECEABAT", "ED�RNE MERKEZ", "EDREM�T", "EFELER", "EFLAN�", "E��L", "E��RD�R", "EK�N�Z�", "ELAZI� MERKEZ", "ELBEYL", "ELB�STAN", "ELD�VAN", "ELE�K�RT", "ELMADA�", "ELMALI", "EMET", "EM�RDA�", "EM�RGAZ�", "ENEZ", "ERBAA", "ERC��", "ERDEK", "ERDEML", "ERDEML�", "ERE�L�", "ERENLER", "ERFELEK", "ERGAN�", "ERGENE", "ERMENEK", "ERUH", "ERZ�N", "ERZ�NCAN MERKEZ", "ESENLER", "ESENYURT", "ESK�L", "ESK�PAZAR", "ESP�YE", "E�ME", "ET�MESGUT", "EVC�LER", "EVREN", "EYNES�L", "EY�PSULTAN", "EYY� B�YE", "EZ�NE", "FAT�H", "FATSA", "FEKE", "FELAH�YE", "FER�ZL�", "FETH�YE", "FINDIKLI", "F�N�KE", "FO�A", "GAZ�EM�R", "GAZ�OSMANPA�A", "GAZ�PA�A", "GEBZE", "GED�Z", "GELENDOST", "GEL�BOLU", "GEMEREK", "GEML�K", "GEN�", "GERC��", "GEREDE", "GERGER", "GERMENC�K", "GERZE", "GEVA�", "GEYVE", "G�RESUN MERKEZ", "G�K�EADA", "G�K�EBEY", "G�KSUN", "G�LBA�I", "G�LC�K", "G�LE", "G�LH�SAR", "G�LK�Y", "G�LMARMARA", "G�LOVA", "G�LPAZARI", "G�LYAKA", "G�ME�", "G�NEN", "G�RDES", "G�RELE", "G�YN�CEK", "G�YN�K", "G�CE", "G��L�KONAK", "G�D�L", "G�LA�A�", "G�LNAR", "G�L�EH�R", "G�LYALI", "G�M��HACIK�Y", "G�M��HANE MERKEZ", "G�M��OVA", "G�NDO�MU�", "G�NEY", "G�NEYSINIR", "G�NEYSU", "G�NG�REN", "G�NY�Z�", "G�RGENTEPE", "G�ROYMAK", "G�RPINAR", "G�RSU", "G�R�N", "G�ZELBAH�E", "G�ZELYURT", "HACIBEKTA�", "HACILAR", "HAD�M", "HAF�K", "HAKKAR� MERKEZ", "HALFET�", "HAL�L�YE", "HALKAPINAR", "HAMAM�Z�", "HAMUR", "HAN", "HANAK", "HAN�", "HAN�N�", "HARMANCIK", "HARRAN", "HASANBEYL�", "HASANKEYF", "HASK�Y", "HASSA", "HAVRAN", "HAVSA", "HAVZA", "HAYMANA", "HAYRABOLU", "HAYRAT", "HAZRO", "HEK�MHAN", "HEM��N", "HENDEK", "HINIS", "H�LVAN", "H�SARCIK", "H�ZAN", "HOCALAR", "HONAZ", "HOPA", "HORASAN", "HOZAT", "H�Y�K", "I�DIR MERKEZ", "ILGAZ", "ILGIN", "ISPARTA MERKEZ", "�BRADI", "�D�L", "�HSANGAZ�", "�HSAN�YE", "�K�ZCE", "�K�ZDERE", "�LKADIM", "�MAMO�LU", "�MRANLI", "�NCESU", "�NC�RL�OVA", "�NEBOLU", "�NEG�L", "�NH�SAR", "�N�N�", "�PEKYOLU", "�PSALA", "�SCEH�SAR", "�SKENDERUN", "�SK�L�P", "�SLAH�YE", "�SPARTA MERKEZ", "�SP�R", "�VR�ND�", "�Y�DERE", "�ZM�T", "�ZN�K", "KABAD�Z", "KABATA�", "KADIK�Y", "KADINHANI", "KADI�EHR�", "KAD�RL", "KA�ITHANE", "KA�IZMAN", "KAHRAMANKAZAN", "KAHTA", "KALE", "KALEC�K", "KALKANDERE", "KAMAN", "KANDIRA", "KANGAL", "KAPAKLI", "KARABA�LAR", "KARABURUN", "KARAB�K MERKEZ", "KARACABEY", "KARACASU", "KARA�OBAN", "KARAHALLI", "KARA�SAL", "KARA�SALI", "KARAKE��L", "KARAKO�AN", "KARAKOYUNLU", "KARAK�PR�", "KARAMAN MERKEZ", "KARAMANLI", "KARAM�RSEL", "KARAPINAR", "KARAP�R�EK", "KARASU", "KARATA�", "KARATAY", "KARAYAZI", "KARES�", "KARGI", "KARKAMI�", "KARLIOVA", "KARPUZLU", "KARS MERKEZ", "KAR�IYAKA", "KARTAL", "KARTEPE", "KASTAMONU MERKEZ", "KA�", "KAVAK", "KAVAKLIDERE", "KAYAPINAR", "KAYNARCA", "KAYNA�LI", "KAZIMKARABEK�R", "KEBAN", "KE��BORLU", "KE���REN", "KELES", "KELK�T", "KEMAH", "KEMAL�YE", "KEMALPA�A", "KEMER", "KEPEZ", "KEPSUT", "KESK�N", "KESTEL", "KE�AN", "KE�AP", "KIBRISCIK", "KINIK", "KIRIKHAN", "KIRIKKALE MERKEZ", "KIRKA�A�", "KIRKLAREL� MERKEZ", "KIR�EH�R MERKEZ", "KIZILCAHAMAM", "KIZILIRMAK", "KIZIL�REN", "KIZILTEPE", "K��I", "K�L�ML", "K�L�S MERKEZ", "K�RAZ", "KOCAAL", "KOCAK�Y", "KOCAS�NAN", "KO�ARLI", "KOF�AZ", "KONAK", "KONYAALTI", "KORGAN", "KORGUN", "KORKUT", "KORKUTEL", "KOVANCILAR", "KOYULH�SAR", "KOZAKLI", "KOZAN", "KOZLU", "KOZLUK", "K�PR�BA�I", "K�PR�K�Y", "K�RFEZ", "K�SE", "K��K", "K�YCE��Z", "KULA", "KULP", "KULU", "KULUNCAK", "KUMLU", "KUMLUCA", "KUMRU", "KUR�UNLU", "KURTALAN", "KURUCA��LE", "KU�ADASI", "KUYUCAK", "K���K�EKMECE", "K�RE", "K�RT�N", "K�TAHYA MERKEZ", "LA��N", "LAD�K", "LALAPA�A", "LAPSEK�", "L�CE", "L��", "L�LEBURGAZ", "MA�KA", "MADEN", "MAHMUD�YE", "MALAZG�RT", "MALKARA", "MALTEPE", "MAMAK", "MANAVGAT", "MANYAS", "MARMARA", "MARMARAERE�L�S�", "MARMAR�S", "MAZG�RT", "MAZIDA�I", "MEC�T�Z�", "MEL�KGAZ�", "MENDERES", "MENEMEN", "MENGEN", "MENTE�E", "MERAM", "MER��", "MERKEZEFEND�", "MERZ�FON", "MESUD�YE", "MEZ�TL", "M�DYAT", "M�HALGAZ�", "M�HALI��IK", "M�LAS", "MUCUR", "MUDANYA", "MUDURNU", "MURAD�YE", "MURATLI", "MURATPA�A", "MURGUL", "MUSABEYL�", "MUSTAFAKEMALPA�A", "MU� MERKEZ", "MUT", "MUTK�", "NALLIHAN", "NARLIDERE", "NARMAN", "NAZIM�YE", "NAZ�LL�", "NEV�EH�R MERKEZ", "N��DE MERKEZ", "N�KSAR", "N�L�FER", "N�Z�P", "NURDA�I", "NURHAK", "NUSAYB�N", "ODUNPAZARI", "OF", "O�UZEL�", "O�UZLAR", "OLTU", "OLUR", "ON�K��UBAT", "ORHANEL", "ORHANGAZ�", "ORTA", "ORTACA", "ORTAH�SAR", "ORTAK�Y", "OSMANCIK", "OSMANEL�", "OSMANGAZ�", "OSMAN�YE MERKEZ", "OTLUKBEL�", "OVACIK", "�DEM��", "�MERL", "�MERL�", "�ZALP", "�ZVATAN", "PALAND�KEN", "PALU", "PAMU KOVA", "PAMUKKALE", "PAS�NLER", "PATNOS", "PAYAS", "PAZAR", "PAZARCIK", "PAZARLAR", "PAZARYER�", "PAZARYOLU", "PEHL�VANK�Y", "PEND�K", "PER�EMBE", "PERTEK", "PERVAR�", "PINARBA�I", "PINARH�SAR", "P�RAZ�Z", "POLATEL", "POLATLI", "POSOF", "POZANTI", "PURSAKLAR", "P�L�M�R", "P�T�RGE", "REFAH�YE", "RE�AD�YE", "REYHANLI", "R�ZE MERKEZ", "SAFRANBOLU", "SA�MBEYL", "SA�MBEYL�", "SALIPAZARI", "SAL�HL�", "SAMANDA�", "SAMSAT", "SANCAKTEPE", "SANDIKLI", "SAPANCA", "SARAY", "SARAYD�Z�", "SARAYKENT", "SARAYK�Y", "SARAY�N�", "SARICAKAYA", "SARI�AM", "SARIG�L", "SARIKAMI�", "SARIKAYA", "SARIO�LAN", "SARIVEL�LER", "SARIYAH��", "SARIYER", "SARIZ", "SARUHANLI", "SASON", "SAVA�TEPE", "SAVUR", "SEBEN", "SEFER�H�SAR", "SEL�UK", "SEL�UKLU", "SELEND�", "SEL�M", "SEN�RKENT", "SERD�VAN", "SER�K", "SER�NH�SAR", "SEYD�KEMER", "SEYD�LER", "SEYD��EH�R", "SEYHAN", "SEY�TGAZ�", "SINDIRGI", "S��RT MERKEZ", "S�L�FKE", "S�L�VR�", "S�LOP�", "S�LVAN", "S�MAV", "S�NANPA�A", "S�NCAN", "S�NC�K", "S�NOP MERKEZ", "S�VAS MERKEZ", "S�VASLI", "S�VEREK", "S�VR�CE", "S�VR�H�SAR", "SOLHAN", "SOMA", "SORGUN", "S���T", "S���TL�", "S�KE", "SULAKYURT", "SULTANBEYL", "SULTANBEYL�", "SULTANDA�I", "SULTANGAZ�", "SULTANHANI", "SULTANH�SAR", "SULUOVA", "SULUSARAY", "SUMBAS", "SUNGURLU", "SUR", "SURU�", "SUSURLUK", "SUSUZ", "SU�EHR�", "S�LEYMANPA�A", "S�LO�LU", "S�RMENE", "S�T��LER", "�ABAN�Z�", "�AH�NBEY", "�ALPAZARI", "�APHANE", "�ARKI�LA", "�ARK�KARAA�A�", "�ARK�Y", "�AV�AT", "�EB�NKARAH�SAR", "�EFAATL�", "�EH�TKAM�L", "�EHZADELER", "�EMD�NL", "�ENKAYA", "�ENPAZAR", "�EREFL�KO�H�SAR", "�IRNAK MERKEZ", "��LE", "��RAN", "��RVAN", "���L", "�UHUT", "TALAS", "TARAKLI", "TARSUS", "TA�KENT", "TA�K�PR�", "TA�LI�AY", "TA�OVA", "TATVAN", "TAVAS", "TAV�ANLI", "TEFENN�", "TEKKEK�Y", "TEKMAN", "TEPEBA�I", "TERCAN", "TERMAL", "TERME", "T�LLO", "T�RE", "T�REBOLU", "TOKAT MERKEZ", "TOMARZA", "TONYA", "TOPRAKKALE", "TORBALI", "TOROSLAR", "TORTUM", "TORUL", "TOSYA", "TU FANBEYL�", "TUNCEL� MERKEZ", "TURGUTLU", "TURHAL", "TU�BA", "TUT", "TUTAK", "TUZLA", "TUZLUCA", "TUZLUK�U", "T�RKEL", "T�RKO�LU", "U�URLUDA�", "ULA", "ULA�", "ULUBEY", "ULUBORLU", "ULUDERE", "ULUKI�LA", "ULUS", "URLA", "U�AK MERKEZ", "UZUNDERE", "UZUNK�PR�", "�MRAN�YE", "�NYE", "�RG�P", "�SK�DAR", "�Z�ML�", "VAKFIKEB�R", "VARTO", "VEZ�RK�PR�", "V�RAN�EH�R", "V�ZE", "YA�LIDERE", "YAH��HAN", "YAHYALI", "YAKAKENT", "YAKUT�YE", "YALIH�Y�K", "YALOVA MERKEZ", "YALVA�", "YAPRAKLI", "YATA�AN", "YAVUZEL�", "YAYLADA�I", "YAYLADERE", "YAZIHAN", "YED�SU", "YEN�CE", "YEN��A�A", "YEN�FAKILI", "YEN�MAHALLE", "YEN�PAZAR", "YEN��ARBADEML�", "YEN��EH�R", "YERK�Y", "YE��LH�SAR", "YE��LL�", "YE��LOVA", "YE��LYURT", "YI�ILCA", "YILDIRIM", "YILDIZEL", "YOMRA", "YOZGAT MERKEZ", "YUMURTALIK", "YUNAK", "YUNUSEMRE", "YUSUFEL�", "Y�KSEKOVA", "Y�RE��R", "ZARA", "ZEYT�NBURNU", "Z�LE", "ZONGULDAK MERKEZ")%>
			<select id="ilce" name="ilce">
				<option>�l�e Se�iniz</option>
				<%For Each ilce In ilceler%>
				<option value="<%=ilce%>"><%=ilce%></option>
				<%next%>
			</select>
		</td>
	</tr>	
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>�l</td>
		<td>
			<%iller=Array("ADANA", "ADIYAMAN", "AFYONKARAH�SAR", "A�RI", "AKSARAY", "AMASYA", "ANKARA", "ANTALYA", "ARDAHAN", "ARTV�N", "AYDIN", "BALIKES�R", "BARTIN", "BATMAN", "BAYBURT", "B�LEC�K", "B�NG�L", "B�TL�S", "BOLU", "BURDUR", "BURSA", "�ANAKKALE", "�ANKIRI", "�ORUM", "DEN�ZL�", "D�YARBAKIR", "D�ZCE", "ED�RNE", "ELAZI�", "ERZ�NCAN", "ERZURUM", "ESK��EH�R", "GAZ�ANTEP", "G�RESUN", "G�M��HANE", "HAKKAR�", "HATAY", "I�DIR", "ISPARTA", "�STANBUL", "�ZM�R", "KAHRAMANMARA�", "KARAB�K", "KARAMAN", "KARS", "KASTAMONU", "KAYSER�", "KIRIKKALE", "KIRKLAREL�", "KIR�EH�R", "K�L�S", "KOCAEL�", "KONYA", "K�TAHYA", "MALATYA", "MAN�SA", "MARD�N", "MERS�N", "MU�LA", "MU�", "NEV�EH�R", "N��DE", "ORDU", "OSMAN�YE", "R�ZE", "SAKARYA", "SAMSUN", "S��RT", "S�NOP", "S�VAS", "�ANLIURFA", "�IRNAK", "TEK�RDA�", "TOKAT", "TRABZON", "TUNCEL�", "U�AK", "VAN", "YALOVA", "YOZGAT", "ZONGULDAK")%>
			<select id="il" name="il">
				<option>�l Se�iniz</option>
				<%For Each il In iller%>
				<option value="<%=il%>"><%=il%></option>
				<%next%>
			</select>
		</td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Aktif/Pasif</td>
		<td>
			<select id="durum" name="durum">
				<option value="-1">Aktif/Pasif</option>
				<option value="1">Aktif</option>
				<option value="0">Pasif</option>
			</select>
		</td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kaydet"> <a href="m.asp">M��teri ��lemleri</a></td>
	</tr>
</table>
</form><br>
<table align="center" bgcolor="#ff0000" cellpadding="1" cellspacing="1">
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="8"><font color="#ff0000" style="font-weight: bold;">Kay�tl� Adresler</font></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td><b>Mahalle</b></td>
		<td><b>Sokak</b></td>
		<td><b>Numara</b></td>
		<td><b>Posta Kodu</b></td>
		<td><b>�l�e</b></td>
		<td><b>�l</b></td>
		<td><b>Aktif/Pasif</b></td>
		<td><b>��lemler</b></td>
	</tr>					
	<%Set conn = Server.CreateObject("ADODB.Connection")
	conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
	
	<%Set rs= conn.Execute("SELECT * FROM tblMusteriAdres WHERE kad='" & session("userName") & "' ORDER BY durum DESC, mahalle, sokak")%>
	<%Do while Not rs.eof%>
		<%if rs("durum")=1 then
			drm="Aktif"
			st="background-color: #FFD700;"
		else
			drm="Pasif"
			st="background-color: #ffffff;"
		end if%>
		<tr height="40px" bgcolor="#ffffff" align="center" style="<%=st%>">
			<td><%=rs("mahalle")%></td>
			<td><%=rs("sokak")%></td>
			<td><%=rs("numara")%></td>
			<td><%=rs("pKodu")%></td>
			<td><%=rs("ilce")%></td>
			<td><%=rs("il")%></td>
			<td><%=drm%></td>
			<td><a href="mAdresDelete.asp?bilgi=<%=rs("mahalle")%>~<%=rs("sokak")%>~<%=rs("numara")%>~<%=rs("pKodu")%>~<%=rs("ilce")%>~<%=rs("il")%>~<%=rs("durum")%>">Sil</a> / <a href="mAdresUpdate.asp?bilgi=<%=rs("mahalle")%>~<%=rs("sokak")%>~<%=rs("numara")%>~<%=rs("pKodu")%>~<%=rs("ilce")%>~<%=rs("il")%>~<%=rs("durum")%>">G�ncelle</a></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	</tr>
</table>

</body>
</html>
