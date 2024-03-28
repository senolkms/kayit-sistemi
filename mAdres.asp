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
			alert("Mahalle Alaný Boþ Olamaz!");
			document.mAdres.mahalle.focus();
			returnVAL =false;
			}
		else if (document.mAdres.sokak.value=='')
			{
			alert("Sokak Alaný Boþ Olamaz!");
			document.mAdres.sokak.focus();
			returnVAL =false;
			}
		else if (document.mAdres.numara.value=='')
			{
			alert("Numara Alaný Boþ Olamaz!");
			document.mAdres.numara.focus();
			returnVAL =false;
			}
		else if (document.mAdres.pKodu.value=='')
			{
			alert("Posta Kodu Alaný Boþ Olamaz!");
			document.mAdres.pKodu.focus();
			returnVAL =false;
			}
		else if (document.mAdres.ilce.value=='Ýlçe Seçiniz')
			{
			alert("Ýlce Seçiniz!");
			document.mAdres.ilce.focus();
			returnVAL =false;
			}
		else if (document.mAdres.ilce.value=='')
			{
			alert("Ýlce Alaný Boþ Olamaz!");
			document.mAdres.ilce.focus();
			returnVAL =false;
			}
		else if (document.mAdres.il.value=='Ýl Seçiniz')
			{
			alert("Ýl Seçiniz!");
			document.mAdres.il.focus();
			returnVAL =false;
			}
		else if (document.mAdres.il.value=='')
			{
			alert("Ýl Alaný Boþ Olamaz!");
			document.mAdres.il.focus();
			returnVAL =false;
			}
		else if (document.mAdres.durum.value<0 || document.mAdres.durum.value>1)
			{
			alert("Aktif/Pasif Adres Seçimi Yapýnýz!");
			document.mAdres.durum.focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	</script>
</head>

<body>

<!--kitap iþlemleri-->
<form name="mAdres" method="post" onsubmit="return mAdresKontrol()" action="mAdresRegister.asp">
<table align="center" bgcolor="#ff0000" cellpadding="5" cellspacing="1">
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Adres Ýþlemleri</font></td>
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
		<td>Ýlçe</td>
		<td>
			<%ilceler=Array("ABANA", "ACIGÖL", "ACIPAYAM", "ADAKLI", "ADALAR", "ADAPAZARI", "ADIYAMAN MERKEZ", "ADÝLCEVAZ", "AFÞÝN", "AFYONKARAHÝSAR MERKEZ", "AÐAÇÖREN", "AÐIN", "AÐLASUN", "AÐLI", "AÐRI MERKEZ", "AHIRLI", "AHLAT", "AHMETLÝ", "AKÇAABAT", "AKÇADAÐ", "AKÇAKALE", "AKÇAKENT", "AKÇAKOCA", "AKDAÐMADENÝ", "AKDENÝZ", "AKHÝSAR", "AKINCILAR", "AKKIÞLA", "AKKUÞ", "AKÖREN", "AKPINAR", "AKSARAY MERKEZ", "AKSEKÝ", "AKSU", "AKÞEHÝR", "AKYAKA", "AKYAZI", "AKYU RT", "ALACA", "ALACAKAYA", "ALAÇAM", "ALADAÐ", "ALANYA", "ALAPLI", "ALAÞEHÝR", "ALÝAÐA", "ALMUS", "ALPU", "ALTIEYLÜL", "ALTINDAÐ", "ALTINEKÝN", "ALTINORDU", "ALTINOVA", "ALTINÖZÜ", "ALTINTAÞ", "ALTINYAYLA", "ALTUNHÝSAR", "ALUCRA", "AMASRA", "AMASYA MERKEZ", "ANAMUR", "ANDIRIN", "ANTAKYA", "ARABAN", "ARAÇ", "ARAKLI", "ARALIK", "ARAPGÝR", "ARDAHAN MERKEZ", "ARDANUÇ", "ARDEÞEN", "ARGUVAN", "ARHAVÝ", "ARICAK", "ARÝFÝYE", "ARMUTLU", "ARNAVUTKÖY", "ARPAÇAY", "ARSÝN", "ARSUZ", "ARTOVA", "ARTU KLU", "ARTVÝN MERKEZ", "ASARCIK", "ASLANAPA", "AÞKALE", "ATABEY", "ATAKUM", "ATAÞEHÝR", "ATKARACALAR", "AVANOS", "AVCILAR", "AYANCIK", "AYAÞ", "AYBASTI", "AYDINCIK", "AYDINTEPE", "AYRANCI", "AYVACIK", "AYVALIK", "AZDAVAY", "AZÝZÝYE", "BABADAÐ", "BABAESKÝ", "BAFRA", "BAÐCILAR", "BAÐLAR", "BAHÇE", "BAHÇELÝEVLER", "BAHÇESARAY", "BAHÞÝLÝ", "BAKIRKÖY", "BAKLAN", "BALA", "BALÇOVA", "BALIÞEYH", "BALYA", "BANAZ", "BANDIRMA", "BARTIN MERKEZ", "BASKÝL", "BAÞAKÞEHÝR", "BAÞÇÝFTLÝK", "BAÞÝSKELE", "BAÞKALE", "BAÞMAKÇI", "BAÞYAYLA", "BATMAN MERKEZ", "BATTALGAZÝ", "BAYAT", "BAYBURT MERKEZ", "BAYINDIR", "BAYKAN", "BAYRAKLI", "BAYRAMÝÇ", "BAYRAMÖREN", "BAYRAMPAÞA", "BEKÝLL", "BELEN", "BERGAMA", "BESNÝ", "BEÞÝKDÜZÜ", "BEÞÝKTAÞ", "BEÞÝRÝ", "BEYAÐAÇ", "BEYDAÐ", "BEYKOZ", "BEYLÝKDÜZÜ", "BEYLÝKOVA", "BEYOÐLU", "BEYPAZARI", "BEYÞEHÝR", "BEYTÜÞÞEBAP", "BÝGA", "BÝGADÝÇ", "BÝLECÝK MERKEZ", "BÝNGÖL MERKEZ", "BÝRECÝK", "BÝSMÝL", "BÝTLÝS MERKEZ", "BODRUM", "BOÐAZKALE", "BOÐAZLIYAN", "BOLU MERKEZ", "BOLVADÝN", "BOR", "BORÇKA", "BORNOVA", "BOYABAT", "BOZCAADA", "BOZDOÐAN", "BOZKIR", "BOZKURT", "BOZOVA", "BOZTEPE", "BOZÜYÜK", "BOZYAZI", "BU LDAN", "BUCA", "BUCAK", "BUHARKENT", "BULANCAK", "BULANIK", "BULDAN", "BURDUR MERKEZ", "BURHANÝYE", "BÜ NYAN", "BÜYÜKÇEKMECE", "BÜYÜKORHAN", "CANÝK", "CEYHAN", "CEYLANPINAR", "CÝDE", "CÝHANBEYL", "CÝZRE", "CUMAYERÝ", "ÇAÐLAYANCERÝT", "ÇAL", "ÇALDIRAN", "ÇAMARDI", "ÇAMAÞ", "ÇAMEL", "ÇAMLIDERE", "ÇAMLIHEMÞÝN", "ÇAMLIYAYLA", "ÇAMOLUK", "ÇAN", "ÇANAKÇI", "ÇANAKKALE MERKEZ", "ÇANDIR", "ÇANKAYA", "ÇANKIRI MERKEZ", "ÇARDAK", "ÇARÞAMBA", "ÇARÞIBAÞI", "ÇAT", "ÇATAK", "ÇATALCA", "ÇATALPINAR", "ÇATALZEYTÝN", "ÇAVDARHÝSAR", "ÇAVDIR", "ÇAY", "ÇAYBAÞI", "ÇAYCUMA", "ÇAYELÝ", "ÇAYIRALAN", "ÇAYIRLI", "ÇAYIROVA", "ÇAYKARA", "ÇEKEREK", "ÇEKMEKÖY", "ÇELEBÝ", "ÇELÝKHAN", "ÇELTÝK", "ÇELTÝKÇÝ", "ÇEMÝÞGEZEK", "ÇERKEÞ", "ÇERKEZKÖY", "ÇERMÝK", "ÇEÞME", "ÇILDIR", "ÇINAR", "ÇINARCIK", "ÇÝÇEKDAÐI", "ÇÝFTELER", "ÇÝFTLÝK", "ÇÝFTLÝKKÖY", "ÇÝÐLÝ", "ÇÝLÝML", "ÇÝNE", "ÇÝVRÝL", "ÇOBANLAR", "ÇORLU", "ÇORUM MERKEZ", "ÇUBUK", "ÇUKURCA", "ÇUKUROVA", "ÇUMRA", "ÇÜNGÜÞ", "DADAY", "DALAMAN", "DAMAL", "DARENDE", "DARGEÇÝT", "DARICA", "DATÇA", "DAZKIRI", "DEFNE", "DELÝCE", "DEMÝRCÝ", "DEMÝRKÖY", "DEMÝRÖZÜ", "DEMRE", "DERBENT", "DEREBUCAK", "DERECÝK", "DEREL", "DEREPAZARI", "DERÝK", "DERÝNCE", "DERÝNKUYU", "DERNEKPAZARI", "DEVELÝ", "DEVREK", "DEVREKANÝ", "DÝCLE", "DÝDÝM", "DÝGOR", "DÝKÝL", "DÝKMEN", "DÝLOVASI", "DÝNAR", "DÝVRÝÐÝ", "DÝYADÝN", "DODURGA", "DOÐANHÝSAR", "DOÐANKENT", "DOÐANÞAR", "DOÐANÞEHÝR", "DOÐANYOL", "DOÐANYURT", "DOÐUBAYAZIT", "DOMANÝÇ", "DÖRTDÝVAN", "DÖRTYOL", "DÖÞEMEALTI", "DU LKADÝROÐLU", "DUMLUPINAR", "DURAÐAN", "DURSUNBEY", "DÜZCE MERKEZ", "DÜZÝÇÝ", "DÜZKÖY", "ECEABAT", "EDÝRNE MERKEZ", "EDREMÝT", "EFELER", "EFLANÝ", "EÐÝL", "EÐÝRDÝR", "EKÝNÖZÜ", "ELAZIÐ MERKEZ", "ELBEYL", "ELBÝSTAN", "ELDÝVAN", "ELEÞKÝRT", "ELMADAÐ", "ELMALI", "EMET", "EMÝRDAÐ", "EMÝRGAZÝ", "ENEZ", "ERBAA", "ERCÝÞ", "ERDEK", "ERDEML", "ERDEMLÝ", "EREÐLÝ", "ERENLER", "ERFELEK", "ERGANÝ", "ERGENE", "ERMENEK", "ERUH", "ERZÝN", "ERZÝNCAN MERKEZ", "ESENLER", "ESENYURT", "ESKÝL", "ESKÝPAZAR", "ESPÝYE", "EÞME", "ETÝMESGUT", "EVCÝLER", "EVREN", "EYNESÝL", "EYÜPSULTAN", "EYYÜ BÝYE", "EZÝNE", "FATÝH", "FATSA", "FEKE", "FELAHÝYE", "FERÝZLÝ", "FETHÝYE", "FINDIKLI", "FÝNÝKE", "FOÇA", "GAZÝEMÝR", "GAZÝOSMANPAÞA", "GAZÝPAÞA", "GEBZE", "GEDÝZ", "GELENDOST", "GELÝBOLU", "GEMEREK", "GEMLÝK", "GENÇ", "GERCÜÞ", "GEREDE", "GERGER", "GERMENCÝK", "GERZE", "GEVAÞ", "GEYVE", "GÝRESUN MERKEZ", "GÖKÇEADA", "GÖKÇEBEY", "GÖKSUN", "GÖLBAÞI", "GÖLCÜK", "GÖLE", "GÖLHÝSAR", "GÖLKÖY", "GÖLMARMARA", "GÖLOVA", "GÖLPAZARI", "GÖLYAKA", "GÖMEÇ", "GÖNEN", "GÖRDES", "GÖRELE", "GÖYNÜCEK", "GÖYNÜK", "GÜCE", "GÜÇLÜKONAK", "GÜDÜL", "GÜLAÐAÇ", "GÜLNAR", "GÜLÞEHÝR", "GÜLYALI", "GÜMÜÞHACIKÖY", "GÜMÜÞHANE MERKEZ", "GÜMÜÞOVA", "GÜNDOÐMUÞ", "GÜNEY", "GÜNEYSINIR", "GÜNEYSU", "GÜNGÖREN", "GÜNYÜZÜ", "GÜRGENTEPE", "GÜROYMAK", "GÜRPINAR", "GÜRSU", "GÜRÜN", "GÜZELBAHÇE", "GÜZELYURT", "HACIBEKTAÞ", "HACILAR", "HADÝM", "HAFÝK", "HAKKARÝ MERKEZ", "HALFETÝ", "HALÝLÝYE", "HALKAPINAR", "HAMAMÖZÜ", "HAMUR", "HAN", "HANAK", "HANÝ", "HANÖNÜ", "HARMANCIK", "HARRAN", "HASANBEYLÝ", "HASANKEYF", "HASKÖY", "HASSA", "HAVRAN", "HAVSA", "HAVZA", "HAYMANA", "HAYRABOLU", "HAYRAT", "HAZRO", "HEKÝMHAN", "HEMÞÝN", "HENDEK", "HINIS", "HÝLVAN", "HÝSARCIK", "HÝZAN", "HOCALAR", "HONAZ", "HOPA", "HORASAN", "HOZAT", "HÜYÜK", "IÐDIR MERKEZ", "ILGAZ", "ILGIN", "ISPARTA MERKEZ", "ÝBRADI", "ÝDÝL", "ÝHSANGAZÝ", "ÝHSANÝYE", "ÝKÝZCE", "ÝKÝZDERE", "ÝLKADIM", "ÝMAMOÐLU", "ÝMRANLI", "ÝNCESU", "ÝNCÝRLÝOVA", "ÝNEBOLU", "ÝNEGÖL", "ÝNHÝSAR", "ÝNÖNÜ", "ÝPEKYOLU", "ÝPSALA", "ÝSCEHÝSAR", "ÝSKENDERUN", "ÝSKÝLÝP", "ÝSLAHÝYE", "ÝSPARTA MERKEZ", "ÝSPÝR", "ÝVRÝNDÝ", "ÝYÝDERE", "ÝZMÝT", "ÝZNÝK", "KABADÜZ", "KABATAÞ", "KADIKÖY", "KADINHANI", "KADIÞEHRÝ", "KADÝRL", "KAÐITHANE", "KAÐIZMAN", "KAHRAMANKAZAN", "KAHTA", "KALE", "KALECÝK", "KALKANDERE", "KAMAN", "KANDIRA", "KANGAL", "KAPAKLI", "KARABAÐLAR", "KARABURUN", "KARABÜK MERKEZ", "KARACABEY", "KARACASU", "KARAÇOBAN", "KARAHALLI", "KARAÝSAL", "KARAÝSALI", "KARAKEÇÝL", "KARAKOÇAN", "KARAKOYUNLU", "KARAKÖPRÜ", "KARAMAN MERKEZ", "KARAMANLI", "KARAMÜRSEL", "KARAPINAR", "KARAPÜRÇEK", "KARASU", "KARATAÞ", "KARATAY", "KARAYAZI", "KARESÝ", "KARGI", "KARKAMIÞ", "KARLIOVA", "KARPUZLU", "KARS MERKEZ", "KARÞIYAKA", "KARTAL", "KARTEPE", "KASTAMONU MERKEZ", "KAÞ", "KAVAK", "KAVAKLIDERE", "KAYAPINAR", "KAYNARCA", "KAYNAÞLI", "KAZIMKARABEKÝR", "KEBAN", "KEÇÝBORLU", "KEÇÝÖREN", "KELES", "KELKÝT", "KEMAH", "KEMALÝYE", "KEMALPAÞA", "KEMER", "KEPEZ", "KEPSUT", "KESKÝN", "KESTEL", "KEÞAN", "KEÞAP", "KIBRISCIK", "KINIK", "KIRIKHAN", "KIRIKKALE MERKEZ", "KIRKAÐAÇ", "KIRKLARELÝ MERKEZ", "KIRÞEHÝR MERKEZ", "KIZILCAHAMAM", "KIZILIRMAK", "KIZILÖREN", "KIZILTEPE", "KÝÐI", "KÝLÝML", "KÝLÝS MERKEZ", "KÝRAZ", "KOCAAL", "KOCAKÖY", "KOCASÝNAN", "KOÇARLI", "KOFÇAZ", "KONAK", "KONYAALTI", "KORGAN", "KORGUN", "KORKUT", "KORKUTEL", "KOVANCILAR", "KOYULHÝSAR", "KOZAKLI", "KOZAN", "KOZLU", "KOZLUK", "KÖPRÜBAÞI", "KÖPRÜKÖY", "KÖRFEZ", "KÖSE", "KÖÞK", "KÖYCEÐÝZ", "KULA", "KULP", "KULU", "KULUNCAK", "KUMLU", "KUMLUCA", "KUMRU", "KURÞUNLU", "KURTALAN", "KURUCAÞÝLE", "KUÞADASI", "KUYUCAK", "KÜÇÜKÇEKMECE", "KÜRE", "KÜRTÜN", "KÜTAHYA MERKEZ", "LAÇÝN", "LADÝK", "LALAPAÞA", "LAPSEKÝ", "LÝCE", "LÝÇ", "LÜLEBURGAZ", "MAÇKA", "MADEN", "MAHMUDÝYE", "MALAZGÝRT", "MALKARA", "MALTEPE", "MAMAK", "MANAVGAT", "MANYAS", "MARMARA", "MARMARAEREÐLÝSÝ", "MARMARÝS", "MAZGÝRT", "MAZIDAÐI", "MECÝTÖZÜ", "MELÝKGAZÝ", "MENDERES", "MENEMEN", "MENGEN", "MENTEÞE", "MERAM", "MERÝÇ", "MERKEZEFENDÝ", "MERZÝFON", "MESUDÝYE", "MEZÝTL", "MÝDYAT", "MÝHALGAZÝ", "MÝHALIÇÇIK", "MÝLAS", "MUCUR", "MUDANYA", "MUDURNU", "MURADÝYE", "MURATLI", "MURATPAÞA", "MURGUL", "MUSABEYLÝ", "MUSTAFAKEMALPAÞA", "MUÞ MERKEZ", "MUT", "MUTKÝ", "NALLIHAN", "NARLIDERE", "NARMAN", "NAZIMÝYE", "NAZÝLLÝ", "NEVÞEHÝR MERKEZ", "NÝÐDE MERKEZ", "NÝKSAR", "NÝLÜFER", "NÝZÝP", "NURDAÐI", "NURHAK", "NUSAYBÝN", "ODUNPAZARI", "OF", "OÐUZELÝ", "OÐUZLAR", "OLTU", "OLUR", "ONÝKÝÞUBAT", "ORHANEL", "ORHANGAZÝ", "ORTA", "ORTACA", "ORTAHÝSAR", "ORTAKÖY", "OSMANCIK", "OSMANELÝ", "OSMANGAZÝ", "OSMANÝYE MERKEZ", "OTLUKBELÝ", "OVACIK", "ÖDEMÝÞ", "ÖMERL", "ÖMERLÝ", "ÖZALP", "ÖZVATAN", "PALANDÖKEN", "PALU", "PAMU KOVA", "PAMUKKALE", "PASÝNLER", "PATNOS", "PAYAS", "PAZAR", "PAZARCIK", "PAZARLAR", "PAZARYERÝ", "PAZARYOLU", "PEHLÝVANKÖY", "PENDÝK", "PERÞEMBE", "PERTEK", "PERVARÝ", "PINARBAÞI", "PINARHÝSAR", "PÝRAZÝZ", "POLATEL", "POLATLI", "POSOF", "POZANTI", "PURSAKLAR", "PÜLÜMÜR", "PÜTÜRGE", "REFAHÝYE", "REÞADÝYE", "REYHANLI", "RÝZE MERKEZ", "SAFRANBOLU", "SAÝMBEYL", "SAÝMBEYLÝ", "SALIPAZARI", "SALÝHLÝ", "SAMANDAÐ", "SAMSAT", "SANCAKTEPE", "SANDIKLI", "SAPANCA", "SARAY", "SARAYDÜZÜ", "SARAYKENT", "SARAYKÖY", "SARAYÖNÜ", "SARICAKAYA", "SARIÇAM", "SARIGÖL", "SARIKAMIÞ", "SARIKAYA", "SARIOÐLAN", "SARIVELÝLER", "SARIYAHÞÝ", "SARIYER", "SARIZ", "SARUHANLI", "SASON", "SAVAÞTEPE", "SAVUR", "SEBEN", "SEFERÝHÝSAR", "SELÇUK", "SELÇUKLU", "SELENDÝ", "SELÝM", "SENÝRKENT", "SERDÝVAN", "SERÝK", "SERÝNHÝSAR", "SEYDÝKEMER", "SEYDÝLER", "SEYDÝÞEHÝR", "SEYHAN", "SEYÝTGAZÝ", "SINDIRGI", "SÝÝRT MERKEZ", "SÝLÝFKE", "SÝLÝVRÝ", "SÝLOPÝ", "SÝLVAN", "SÝMAV", "SÝNANPAÞA", "SÝNCAN", "SÝNCÝK", "SÝNOP MERKEZ", "SÝVAS MERKEZ", "SÝVASLI", "SÝVEREK", "SÝVRÝCE", "SÝVRÝHÝSAR", "SOLHAN", "SOMA", "SORGUN", "SÖÐÜT", "SÖÐÜTLÜ", "SÖKE", "SULAKYURT", "SULTANBEYL", "SULTANBEYLÝ", "SULTANDAÐI", "SULTANGAZÝ", "SULTANHANI", "SULTANHÝSAR", "SULUOVA", "SULUSARAY", "SUMBAS", "SUNGURLU", "SUR", "SURUÇ", "SUSURLUK", "SUSUZ", "SUÞEHRÝ", "SÜLEYMANPAÞA", "SÜLOÐLU", "SÜRMENE", "SÜTÇÜLER", "ÞABANÖZÜ", "ÞAHÝNBEY", "ÞALPAZARI", "ÞAPHANE", "ÞARKIÞLA", "ÞARKÝKARAAÐAÇ", "ÞARKÖY", "ÞAVÞAT", "ÞEBÝNKARAHÝSAR", "ÞEFAATLÝ", "ÞEHÝTKAMÝL", "ÞEHZADELER", "ÞEMDÝNL", "ÞENKAYA", "ÞENPAZAR", "ÞEREFLÝKOÇHÝSAR", "ÞIRNAK MERKEZ", "ÞÝLE", "ÞÝRAN", "ÞÝRVAN", "ÞÝÞL", "ÞUHUT", "TALAS", "TARAKLI", "TARSUS", "TAÞKENT", "TAÞKÖPRÜ", "TAÞLIÇAY", "TAÞOVA", "TATVAN", "TAVAS", "TAVÞANLI", "TEFENNÝ", "TEKKEKÖY", "TEKMAN", "TEPEBAÞI", "TERCAN", "TERMAL", "TERME", "TÝLLO", "TÝRE", "TÝREBOLU", "TOKAT MERKEZ", "TOMARZA", "TONYA", "TOPRAKKALE", "TORBALI", "TOROSLAR", "TORTUM", "TORUL", "TOSYA", "TU FANBEYLÝ", "TUNCELÝ MERKEZ", "TURGUTLU", "TURHAL", "TUÞBA", "TUT", "TUTAK", "TUZLA", "TUZLUCA", "TUZLUKÇU", "TÜRKEL", "TÜRKOÐLU", "UÐURLUDAÐ", "ULA", "ULAÞ", "ULUBEY", "ULUBORLU", "ULUDERE", "ULUKIÞLA", "ULUS", "URLA", "UÞAK MERKEZ", "UZUNDERE", "UZUNKÖPRÜ", "ÜMRANÝYE", "ÜNYE", "ÜRGÜP", "ÜSKÜDAR", "ÜZÜMLÜ", "VAKFIKEBÝR", "VARTO", "VEZÝRKÖPRÜ", "VÝRANÞEHÝR", "VÝZE", "YAÐLIDERE", "YAHÞÝHAN", "YAHYALI", "YAKAKENT", "YAKUTÝYE", "YALIHÜYÜK", "YALOVA MERKEZ", "YALVAÇ", "YAPRAKLI", "YATAÐAN", "YAVUZELÝ", "YAYLADAÐI", "YAYLADERE", "YAZIHAN", "YEDÝSU", "YENÝCE", "YENÝÇAÐA", "YENÝFAKILI", "YENÝMAHALLE", "YENÝPAZAR", "YENÝÞARBADEMLÝ", "YENÝÞEHÝR", "YERKÖY", "YEÞÝLHÝSAR", "YEÞÝLLÝ", "YEÞÝLOVA", "YEÞÝLYURT", "YIÐILCA", "YILDIRIM", "YILDIZEL", "YOMRA", "YOZGAT MERKEZ", "YUMURTALIK", "YUNAK", "YUNUSEMRE", "YUSUFELÝ", "YÜKSEKOVA", "YÜREÐÝR", "ZARA", "ZEYTÝNBURNU", "ZÝLE", "ZONGULDAK MERKEZ")%>
			<select id="ilce" name="ilce">
				<option>Ýlçe Seçiniz</option>
				<%For Each ilce In ilceler%>
				<option value="<%=ilce%>"><%=ilce%></option>
				<%next%>
			</select>
		</td>
	</tr>	
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Ýl</td>
		<td>
			<%iller=Array("ADANA", "ADIYAMAN", "AFYONKARAHÝSAR", "AÐRI", "AKSARAY", "AMASYA", "ANKARA", "ANTALYA", "ARDAHAN", "ARTVÝN", "AYDIN", "BALIKESÝR", "BARTIN", "BATMAN", "BAYBURT", "BÝLECÝK", "BÝNGÖL", "BÝTLÝS", "BOLU", "BURDUR", "BURSA", "ÇANAKKALE", "ÇANKIRI", "ÇORUM", "DENÝZLÝ", "DÝYARBAKIR", "DÜZCE", "EDÝRNE", "ELAZIÐ", "ERZÝNCAN", "ERZURUM", "ESKÝÞEHÝR", "GAZÝANTEP", "GÝRESUN", "GÜMÜÞHANE", "HAKKARÝ", "HATAY", "IÐDIR", "ISPARTA", "ÝSTANBUL", "ÝZMÝR", "KAHRAMANMARAÞ", "KARABÜK", "KARAMAN", "KARS", "KASTAMONU", "KAYSERÝ", "KIRIKKALE", "KIRKLARELÝ", "KIRÞEHÝR", "KÝLÝS", "KOCAELÝ", "KONYA", "KÜTAHYA", "MALATYA", "MANÝSA", "MARDÝN", "MERSÝN", "MUÐLA", "MUÞ", "NEVÞEHÝR", "NÝÐDE", "ORDU", "OSMANÝYE", "RÝZE", "SAKARYA", "SAMSUN", "SÝÝRT", "SÝNOP", "SÝVAS", "ÞANLIURFA", "ÞIRNAK", "TEKÝRDAÐ", "TOKAT", "TRABZON", "TUNCELÝ", "UÞAK", "VAN", "YALOVA", "YOZGAT", "ZONGULDAK")%>
			<select id="il" name="il">
				<option>Ýl Seçiniz</option>
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
		<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kaydet"> <a href="m.asp">Müþteri Ýþlemleri</a></td>
	</tr>
</table>
</form><br>
<table align="center" bgcolor="#ff0000" cellpadding="1" cellspacing="1">
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="8"><font color="#ff0000" style="font-weight: bold;">Kayýtlý Adresler</font></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td><b>Mahalle</b></td>
		<td><b>Sokak</b></td>
		<td><b>Numara</b></td>
		<td><b>Posta Kodu</b></td>
		<td><b>Ýlçe</b></td>
		<td><b>Ýl</b></td>
		<td><b>Aktif/Pasif</b></td>
		<td><b>Ýþlemler</b></td>
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
			<td><a href="mAdresDelete.asp?bilgi=<%=rs("mahalle")%>~<%=rs("sokak")%>~<%=rs("numara")%>~<%=rs("pKodu")%>~<%=rs("ilce")%>~<%=rs("il")%>~<%=rs("durum")%>">Sil</a> / <a href="mAdresUpdate.asp?bilgi=<%=rs("mahalle")%>~<%=rs("sokak")%>~<%=rs("numara")%>~<%=rs("pKodu")%>~<%=rs("ilce")%>~<%=rs("il")%>~<%=rs("durum")%>">Güncelle</a></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	</tr>
</table>

</body>
</html>
