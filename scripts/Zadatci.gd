extends Node

var kriz	# krizanje koje smo odabrali
var zad		# zadatak koji smo odabrali - povezano s krizanjem
var odg		# odgovor povezan s odabranim krizanjem


var M_zad = ['Prikazi kriaznje ljubicasta cvijeta heterozigota sa cvijetom recesivna svojstva za boju i oznaci omjere fenotipa.',
		'Prikazi krizanje mahune graska cije je svojstvo za oblik dominantan homozigot s heterozigotom za to isto svojstvo i oznaci omjere fenotipa.',
		'Prikazi krizanje dva heterozigota za polozaj cvijeta i odredi omjere njihova fenotipa i genotipa.',
		'Prikazi krizanje zelene sjemenke graska i homozigota za zutu boju sjemenke, odredi omjere fenotipa i genotipa.']
var M_odg = ['P: Aa x aa \ng: A,a;  a \nF: Aa, aa  -> 1:1',
		'P: AA x Aa \ng: A; A, a \nF: AA, Aa  -> 100% glatka',
		'P: Aa x Aa \ng: A, a; A, a \nF: AA, Aa, Aa, aa  -> 3:1 \nomjer genotipa -> 1:2:1',
		'P: aa x AA \ng: a; A \nF: Aa  -> 100% zuta \nomjer genotipa -> 100% Aa']

var SND_zad = ['Prikazi krizanje crvenog i ruzicastog nocurka. Opisi fenotipove i njihove omjere. \nC2 - bijelo', 
			'Prikazi krizanje sive kokosi i bijelog pijetla. Opisi fenotipove i njihove omjere. \nD1 - crno',
			'Napisi omjere fenotipa F1 i F2 generacije i omjer genotipa f2. Krizaju se bijeli i crveni nocurak. \nR1 - crveno',
			'Prikazi krizanje i oznaci omjere fenotipa ruzicaste i bijele zijevalice. \nC1 - crveno']
var SND_odg = ['P: C1C1 x C1C2 \ng: C1;  C1, C2 \nF: C1C1, C1C2  -> 1:1',
			'P: D1D1 x D1D2 \ng: D1;  D1, D2 \nF: D1D1, D1D2  -> 1:1',
			'P: R1R1 x R2R2 \ng: R1;  R2 \nF1: R1R2 x R1R2 \n-> 100% ruzicasti \nF2: R1R1, R1R2, R1R2, R2R2 \n-> 1:2:1 \nOmjer genotipa F2 -> 1:2:1',
			'P: C1C2 x C2C2 \ng: C1, C2; C2 \nF: C1C2, C2C2 -> 1:1']

var MNT_zad = ['Krizanjem graska nepoznatog dominantnog genotipa dobivena su 98 glatke i 101 naborane mahune. Drugi roditelj je naborane mahune. \nP - glatka mahuna',
			'Krizanjem graska nepoznatog dominantnog genotipa dobiveno je 49 biljaka zutih sjemenki i 51 zeleni. Drugi roditelj je zelenih sjemenki. \nG - zute sjemenke',
			'Krizanjem zeceva dobivena su 3 potomka crne kratke dlake i 3 potomka crne duge dlake. Odredi genotip roditelja. \nDuga dlaka = a, siva dlaka = B',
			'Krizanjem goveda dobivena su 4 jednobojna smeda potomka. Odredi genotip roditelja. \nCrna = a, tockasta = b']
var MNT_odg = ['omjer -> 1:1 \nP: Pp x pp \ng: P, p;  p \nF: Pp, pp  -> 1:1',
			'omjer -> 1:1 \nP: Gg x gg \ng: G, g;  g \nF: Gg, gg  -> 1:1',
			'omjer -> 1:1 \nP: Aabb x aabb \ng: Ab, ab; ab \nF: Aabb, aabb -> 1:1',
			'omjer -> 100% jednobojna smeda \nP: AABB x aabb \ng: AB; ab \nF: AaBb->100% jednobojna smeda']

var DIH_zad = ['Prikazi krizanje graska ciste linije okruglih zutih sjemenki s graskom smezuranih zelenih sjemenki. Odredi omjer fenotipa.',
			'Prikazi grasak ljubicaste boje cvijeta heterozigota i homozigota za bocni polozaj cvijeta kriza se sa bijelo cvijetnim graskom, sa heterozigotom za visinu stabiljke.\nOdredi omjere fenotipa i genotipa.',
			'Napisi omjere fenotipa F1 i F2 generacije, krizaju se crno pjegavo govedo i smeda jednobojna krava. Jednike su homozigoti za oba svojstva. Odredi omjer fenotipa. \nCrno = C, jednobojno = R',
			'Grasak visoke stabiljke i bijelog cvijeta, homozigot za oba svojstva kriza se s graskom ljubicastog cvijeta i visoke stabiljke heterozigotom za oba svojstva. \nVisoka stabiljka = A, \nLJubicasta = B']
var DIH_odg = ['P: AABB x aabb \ng: AB; ab \nF: AaBb  -> 100% okrugli zuti',
			'P: AaBB x aaBb \ng: AB, aB; aB, ab \nF: AaBB, AaBb, aaBB, aaBb -> 1:1 \nOmjer genotipa: 1:1:1:1',
			'P: CCrr x ccRR \ng: Cr; cR \nF1: CcRr x CcRr \n-> 100% crni jednobojni \nF2: CCRR, CCRr, CcRR, CcRr, CCRr,\nCCrr, CcRr, Ccrr, CcRR, CcRr, ccRR,\nccRr, CcRr, Ccrr, ccRr, ccrr \n-> 9:3:3:1',
			'P: AAbb x AaBb \ng: Ab; AB, Ab, aB, ab \nF: AABb, AAbb, AaBb, Aabb -> 1:1']

var odb = {'MON': [M_zad, M_odg], 'M_SND':[SND_zad, SND_odg], 'MON_T':[MNT_zad, MNT_odg], 'DIH':[DIH_zad, DIH_odg]}


func _on_B_odgovor_pressed():
	$Panel/B_odgovor.hide()
	$Panel/Odgovor.show()
	$Panel/Buttons.show()
	pass # replace with function body

func _on_B_back_pressed():
	$Panel.hide()
func _on_B_again_pressed():
	postavi_zadatak()
	pass

func _on_B_mon_pressed():
	kriz = 'MON'
	postavi_zadatak()
func _on_B_monSND_pressed():
	kriz = 'M_SND'
	postavi_zadatak()
func _on_B_monT_pressed():
	kriz = 'MON_T'
	postavi_zadatak()
func _on_B_dihibrid_pressed():
	kriz = 'DIH'
	postavi_zadatak()

func postavi_zadatak():
	randomize()
	zad = odb[kriz][0]
	print(odb[kriz][1])
	odg = odb[kriz][1]
	var CH = randi() % len(zad)
	$Panel/Odgovor.hide()
	$Panel/Buttons.hide()
	$Panel/Zadatak.text = zad[CH]
	$Panel/Odgovor.text = odg[CH]
	$Panel/B_odgovor.show()
	pass



