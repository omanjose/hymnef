import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EfikController extends GetxController with WidgetsBindingObserver {
  Rx<List<Map<String, dynamic>>> foundHymns =
      Rx<List<Map<String, dynamic>>>([]);

  final searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    if(searchController.value.text.isEmpty){
      foundHymns.value= allEfikHymns;
    }
    // player1.playerStateStream.listen((state) {
    //   if (state.processingState == ProcessingState.completed) {
    //     isPlaying.value = false;
    //     stopPlay();
    //     // _player.seek(Duration.zero); //Resets playback position
    //   }
    // });

    foundHymns.value = allEfikHymns;
    WidgetsBinding.instance.addObserver(this);
  }

  filterEfikHymns(String titleName) {
    List<Map<String, dynamic>> results = [];
    if (titleName.isEmpty) {
      results = allEfikHymns;
    } else {
      results = allEfikHymns
          .where((element) =>
              '${element["title"]}).toString().contains(titleName)-${element['id']}-${element['body']}'
                  .toString()
                  .contains(titleName))
          .toList();
    }
    foundHymns.value = results;
  }

  final List<Map<String, dynamic>> allEfikHymns = [
    {
      "id": 1,
      "title": "	KPUKPRU EKWÖ, IMMANUEL!",
      // "audio":"",
      "body": """
KEY Bb 4/2  

{s,|d :-.r lm :d |d :-.L, ls, :d |t, :l 
-.,L, :s, .,L, |s, :-lm,}       
      
1. IMÖKÖM Fi, Immanuel, 
Inö Fi anyanya nyin; 
Yak kpukpru enam uduak 
Fo, 
Emen uyo ekwö Fi, 
Edidem ye Andinyaña, 
Uyo ikwö udim enyöñ, 
Ososim nyin mi ke isöñ: 
Ekwö,… ekwö!... 
Ekwö, Ekwö! Immanuel! 

Körös: 
S: Kwö, … 
ATB: Kwö Edidem nyin imade, 
S: Immanuel, Immanuel! 
ATB: Kwö, (Immanuel!) 
S: Kwö, … 
ATB: Kwö Edidem nyin imade, 
S: Immanuel, Immanuel! 
ATB: Kwö, (Immanuel!) 
S: Uböñ ye ukpono ye uku, 
ATB: Uböñ ye ukpono, 
S: Ifiök y’odudu enyene Fi, 
ATB: Y’ifiök enyene Fi, 
All: Kemi k’nsinsi! 
S: Kwö, … 
ATB: Kwö Edidem nyin imade, 
S: Immanuel, Immanuel! 
ATB: Kwö, (Immanuel!) 
S: Kwö, … 
ATB: Kwö Edidem nyin imade, 
S: Immanuel, Immanuel! 
ATB: Kwö, (Immanuel!) 
All: Edidem y’Öböñ kpukpru, 
Ekwö, Immanuel! 

2. Imököm Fi, Immanuel, 
Mö ek’efakde eda 
Ye ndidem isöñ ñko, 
Man enim Fi k’Edidem. 
Mö oro efakde k’eset, 
Edude k’afia ebekpo, 
Etoro ñko k’nsi-nsi: 
Ekwö,… ekwö!... 
Ekwö, Ekwö! Immanuel! 

3. Imököm Fi, Immanuel, 
Edidem y’Andinyaña! 
Afo eset, akan m’asua 
Onyuñ odu k’nsi-nsi, 
Amakan idiökñkpö y’mkpa 
Odudu Satan abiara; 
Uböñ enyene enyiñ Fo 
Ekwö,… ekwö!... 
Ekwö, Ekwö! Immanuel! 

Amen. 
      
      """
    },
    {
      "id": 2,
      "title": "MBUFO ME ENYIN USUÑ, EMENERE MBUOT MBUFO",
      // "audio":"",
      "body": """
      
      
KEY Eb 4/2  

{:d|d :rlm:f|s:-ls:-ls:-l-:s 
lf :mlr:dlm :-lr } 
      
1. M’ENYIN-usuñ, emenere; 
Me nsinsi itim 
Emenere mbuot man 
Edidem uböñ oduk, 
TB: 
Anie ’di Edidem uböñ? 

All: 
Jehovah Ökpösöñ;
Kpa Jehovah Ökpösöñ, 
Edi uko ke eköñ 
Kpa Jehovah Ökpösöñ, 
Edi uko ke eköñ. 

2. M’enyin-usuñ, emenere; 
Nsi-nsi itim 
Emenere mbuot man 
Edidem uböñ oduk, 
TB: 
Edi Anie ’di Edidem? 

All: 
Anie ’di Edidem uböñ? 
Jehovah me-udim, 
Enye ’di Edidem uböñ 
Jehovah me-udim, 
Enye ’di Edidem uböñ. 

Körös: 

Halleluja! Halleluja! Halleluja! 
Halleluja! Halleluja! 
Amen, Amen, 

A-men. 

      
      """
    },
    {
      "id": 3,
      "title": "TORO ENYIÑ ESIE",
      // "audio":"",
      "body": """
KEY Eb 6/4 

{|s:-:s ls:-:mls:-:Lls:m:d|m 
:-:r lr :-:-lf :-:m lm :-:-} 

1. KPUKPR’ usuñ Öböñ ke ada mi; 
Tor’ Enye, tor’ Enye! 
Ada manna k’enyöñ öbök mi; 
Tor’ enyiñ Esie. 


Körös: 

Hallelujah; Ami ‘nyekwö, 
Jesus, Jesus, kpukpru usen; 
Yak imen uyo ke ikwö, 
Tor’ enyiñ Esie. 

2. K’memidem Enye ’kama mi; 
Tor’ Enye, tor’ Enye! 
K’ ndik, ubök Esie omum mi; 
Tor’ enyiñ Esie. 

3. Ke ini ukut anamde mi; 
Tor’ Enye, Tor’ Enye! 
Enye ikpöñke, ikpöñke mi; 
Tor’ enyiñ Esie.
 
Amen. 
      
      """
    },
    {
      "id": 4,
      "title": "UTÖK YE EÑWAN OMOKURE",
      // "audio":"",
      "body": """
     KEY C 3/4 

{|d' :d' :t ld' :-.t :L ls :s :fe ls :-.f :m 
lr :d :t, ld :-:-} 

2nd Tune 
KEY Eb 3/4 


{:m :m |f :-:-lm :s :s lL :-:-ls :s 
:d' lt, :-:-ld' :-:-} 

1. f ALLELUIA! Alleluia! 
Alleluia! 
Eñwan ebe, eköñ etre; 
Kemi idara Andikan; 
O yak nyin ikwö itoro: 
Alleluia! 

2. M’odudu mkpa eñwana, 
Edi Jesus akan m’asua; 
Yak ikwö inyuñ idara: 
Alleluia! 

3. Eset k’öyöh’ usen ita 
K’akwa uböñ ndikara; 
Yak isio mkpo idara: 
Alleluia! 

4. p Öböñ oto ke ubiak Fo, 
Anam nyin iböhö mkpa, 
f 
Idu uwem, itoro Fi, 
Alleluia! 

Amen. 

      
      """
    },
    {
      "id": 5,
      "title": "KE ENYIÑ JESUS ",
      // "audio":"",
      "body": """
    
KEY Eb 4/4

{|m:s lL:sld' :-ls: -lf:mlr: -.dld 
: -l -:} 

1. mf K’ENYIÑ Öböñ Jesus, 
M’edöñ etöñö, 
Enyuñ enyim’ Enye, 
Edidem uböñ; 
Enem Ete esit, 
Kot Enye Öböñ, 
Emi k’ eritöñö, 
Edide Ikö. 

2. f K’uyo Esie me ‘ñkpö 
Ewörö eda, 
Kpukpr’ udim me enjel 
Ye me uñwana, 
M’ebekpo, y’odudu, 
Me ‘ntanta öfiöñ, 
Kpukpru udim enyöñ 
Ke me udim mö. 

3.p Esukhöre Enye, 
Man enyen’ enyiñ 
Oto m’idiök owo, 
Enye afakde; 
mf Enye öyö ukut 
Osim k’ akpatre, 
Enyene erikan 
K’eriset Esie. 

4. f Öyö onyuñ akan, 
Ke esinede 
Mbiet obukidem, 
Ödök ke enyöñ 
K’ebekpo Abasi, 
Ke esit Ete, 
Enye ’duök odudu 
K’odukde k’uböñ. 

5. Ekot enyiñ Esie -
Utibe Ima, 
p Ekot ke uteñe 
Ye nnyekidem, 
mf Akwa AndinyañaEdi Christ Öböñ, 
Yak ebak, ekpono, 
Etoro Enye. 

6. Kpon’ Enye k’esit fo 
Man Enye abiat 
Kpukpru se minenke -
Kpukpru abiaña;
Nim Enye ke Öböñ, 
Kini idomo, 
Saña ke uduak ye 
K’uñwana Esie. 

7. f Ufan, Jesus emi 
Eyefiak edi 
K’ uböñ Ete Esie 
Ye m’enjel Esie; 
Me ukara eken 
Ekpono Enye, 
Yak iyara Enye, 
Edidem uböñ. Amen.  
      
      """
    },
    {
      "id": 6,
      "title": "UKPONO FO, O ABASI",
      // "audio":"",
      "body": """
      
  KEY F 4/4

{:m lf :m lm :r |d :-l-:s lL:m lr :d 
lr :-l -} 

1.mf ABASI, imama 
Ebiet ukpono Fo, 
Idara obio Fo, 
Akan eke isöñ. 

2. Edi ufök akam, 
Ebiet ibohode,
Omodu mi, Öböñ 
Abuana y’iköt Fo. 

3. Nyin imama ebiet 
Emi Eti SpiritÖduökde edidiöñ 
Esie oto k’enyöñ. 

4. Ima itie uwa, 
Ewe eye k’ isöñ? 
Do ke mbuötidem, 
Ikut ndudu Fo.
 
5. Ima ikö uwem,
Önöde nyin emem, 
Ndöñesit k’eñwan, 
Y’nsinsi idara. 

6. Nyin ikwö mi k’isöñ, 
K’ mböm önöde nyin, 
Edi O ikpama 
Ndikwö ke enyöñ. 

7.mf Jesus nö nyin mfön, 
Ndima Fi ñkan, 
f Ndikut Fi k’ enyöñ, 
Ikwö y’nti owo. Amen.    
      
      """
    },
    {
      "id": 7,
      "title": "ENJEL EKEKWÖDE ",
      // "audio":"",
      "body": """
      
     KEY Ab 4/4 

{|m :r |f :-.m |r :L, |t,:-|d :s,|d :-.r 
|m :fe |s :-} 

1. mf ME enjel eketoro, 
Ke ikwö alleluia; 
Abasi k’eritöñö, 
Ödöhö ndien ada. 

2. Ekekwö ke usiere, 
K’ emana Öböñ emem, 
f 
Ikwö itor’ ekedu, 
Ke ini uwör’ ufn. 


3. p Enyöñ y’ isöñ eyebe, 
Me itoro eyedu; 
f Obufa enyöñ y’ isöñ 
Eyetöñö k’itoro. 

4. p Owo eyedi imum 
Tut’ obio uböñ edi? 
f 
Baba! Ndima k’ ekwö 
M’ ikwö Psalm ye itoro. 

5. mf Ndima k’isöñ k’ ekwö, 
Edara ke itoro; 
Mi k’ekpep ikwö enyöñ, 
K’ mbuötidem ye ima. 
unison 

6. f M’ ikwö uböñ y’ itoro, 
Ete, ikwö inö Fi; 
Christ, uböñ edi Okuo, 
Y’eke Spirit k’nsi nsi.
 
Amen. 
      
      """
    },
    {
      "id": 8,
      "title": "NSI NSI ABASI IFIÖK ",
      // "audio":"",
      "body": """
 KEY Ab 4/3 

{:d lL, :f, :r lt, :s. :d lm :m :r ld :-} 

1. NSINSI Abasi, öyöhö 
k’ifiök, 
Edibe k’ uñwana, owo 
ikwe Fi, 
Akakan k’ ukpono, Andisöñ 
usen,
Ökpösöñ, Andikan, itor’ 
enyiñ Fo. 

2. Ukpötke, omodop nte 
uñwana, 
Emekem ke kpukpru, akara 
k’uböñ, 
Akpanikö Fo omoköñ ke 
enyöñ, 
Mbara Fo owut mfön y’ima 
Fo. 

3. Ömönö nyin uwem, ikpö 
ye ñkpri, 
Ke kpukpru Okuo edi ata 
uwem, 
Nyin isiakha nte iköñ ke 
eto 
Inyuñ iyemere, Afo ’söñ’ 
ada. 

4. Akwa Ete k’uböñ, Ete 
uñwana, 
Me enjel ekpono Fi, efuk 
iso, 
Nyin iyetim ikwö, ñwam 
nyin ndikut, 
Edi uñwana anam nyin 
mikwe Fi.

Amen. 
    
      
      """
    },
    {
      "id": 9,
      "title": "MME ANIE EDI EMI EBIETDE NTANTA ÖFIÖÑ ",
      // "audio":"",
      "body": """
     KEY C 4/4

{|d':slL:L |s:-.f lm:d|s:L.t 
|d’ :t |L :L |s :-} 

1. M’ ANIE ebiet ntant’öfiöñ, 
Ke ebekpo Abasi; 
Eyarade anyanya gold 
M’anie edi mö emi, 
Ekwöde Alleluia; 
Etor’ Edidem uböñ. 

2. M’anie ke akwa uyama, 
Esin’ ido Abasi; 
Öföñ idem mö esana, 
Uyai mö esöñ eda, 
Idiök iditukke mö; 
Me mö emi eto möñ? 

3. Me mö emi ekeñwana 
Man enö Öböñ uböñ 
Eñwana esim akpatre, 
Ekesin ’dinam idiök, 
Mö esöñö ke eñwan, 
Emekan oto ke Christ. 

4. Mö ekedu ke mfukhö, 
Oto ke akwa ukut; 
Eñwana oto ke akam, 
Enö Abasi uböñ, 
Kemi eñwan mö ebe; 
Öböñ ödöñ mö esit. 

5. Mö k’iso Ata Ökpösöñ, 
Ekeda .nte me oku, 
Ke ofri uwem ekebet 
Ndinam uyo Esie; 
Kemi k’iso Abasi, 
Mö ebö edidiöñ mö. 

Amen. 
      """
    },
    {
      "id": 10,
      "title": "KABAÑA UYAI ISÖÑ ",
      // "audio":"",
      "body": """
    KEY Ab 4/4

{|d lt, .d :r ld |f :f lm :-|L, :t, ld :L, 
ls, :s, ls, :-} 


1. KABAÑA uyai isöñ, 
Kabaña uböñ enyöñ, 
Kabaña akwa ima 
Eke ’kande nyin okuk; 
Christ imemen uyo nyin 
Ndikwö itoro Fo. 

2. Ke me utibe ñkpö 
Ikutde kpukpru ini, 
M’obot ye itikhere, 
Utin y’ntanta öfiöñ; 
Christ Öböñ, itoro Fi, 
Ke ikwö itoro nyin. 

3. Ke ima uduot owo, 
Ete, eka ye eyen, 
M’ufan k’isöñ ye k’enyöñ, 
Ye nti ekikere; 
Christ Öböñ itoro Fi 
Ke ikwö itoro nyin. 

4. Kabaña iköt Fo mi 
Emenerede ubök, 
K’eriwa k’ofri ebiet 
Uwa edisan’ ima; 
Christ Öböñ itoro Fi 
Ke ikwö itoro nyin. 
Amen.  
      """
    },
    {
      "id": 11,
      "title": "ETORO ABASI KE NSINSI ",
      // "audio":"",
      "body": """
    KEY G 4/2 

{|m:s lr:-.mlf:rlm:-|m:slr 
:-.m lf :r ld:-} 

1. TOR’ Abasi k’nsinsi, 
K’ima Esie ye nyin mi; 
Andinö nyin idara, 
Yak ikwö itoro Fo. 

2. Ke me mbuñwum iñwañ 
Ye ke me mfri esie, 
K’idara ini idök, 
Nyin ikwö itoro Fo. 

3. K’ata nti eridiöñ, 
Yak inö Fi esit nyin 
Ye ke me utom ima 
Sia mfön Fo ewakde. 

Amen.  
      """
    },
    {
      "id": 12,
      "title": "USEN EMI KE JEHOVAH AKANAM ",
      // "audio": "",
      "body": """
      KEY G 3/2 

{:d |m .,m :m :r |d .,d :d :r|m .s 
:f :m lm :r } 

1. EMI edi usen Öböñ, 
M’ini edi Esie; 
Yak heven ye isöñ ekwö, 
Ekanar’ ebekpo. 

2. Enye eset, ökpöñ udi 
Uböñ Satan öduö; 
Me ndima esuan etop, 
Etiñ ndyö Esie. 

3. Kwö Hosanna nö Edidem, 
Nö kpa Eyen David; 
Di ñwam nyin O 
Andinyaña, 
Nö erinyaña Fo. 


4. Eköm Öböñ önöde nyin 
M’ikö mfön Esie; 
Edi k’enyiñ Ete Esie, 
Ndinyaña owo. 

Amen
      """
    },
    {
      "id": 13,
      "title": "SAÑA SUÑ SUÑ ",
      // "audio": "",
      "body": """
      KEY Bb 4/4 

{:s,|s, :-lm, :d ld :-|s, :m, ls, :-ls, 
:s,|s, :-l-} 

1. DOP uyo, dop uyo, 
p Kop suñ suñ uyo, 
Dop uyo, kpañ utöñ, 
O dip mö k’esit. 


Körös: 
SA: Saña suñ, psaña suñ, 
TB: Saña suñ suñ, psaña suñ 
suñ, 

All: Öböñ odu mi, 

SA: Saña suñ, psaña suñ, 
TB: Saña suñ suñ, psaña suñ 
suñ, 

All: rit. Okot nyin idi. 

2. Dop uyo, dop uyo, 
p K’edisan’ ebiet, 
Itie-uwa k’etiñ 
Me-ikö mfön. 


3. Dop uyo, dop uyo, 
p Böñ akam suñ suñ, 
Inem iñwañ Eden 
K’ibuana k’esit. 

4. Dop uyo, dop uyo, 
p Ti mböm Esie, 
Dop uyo, dop uyo, 
Nyuñ suk bet Öböñ. 

Amen. 
      """
    },
    {
      "id": 14,
      "title": "UKPÖÑ MI TORO JEHOVAH",
      "audio": "",
      "body": """
      KEY D 2/2

{|s :s ls :s ld' :t lL :-ls:-lf :m 
lL :s lm :f lr :-} 

Unison 
1. UKPÖÑ mi toro Jehovah; 
Da utomo sök Enye; 
Afak, ökök, efefen fi, 
Di kwö itoro Esie; 
Toro Enye! Toro Enye! 
Toro Akwa Edidem. 

Harmony 
2. Toro Enye k’mfön Esie 
Ye m’ete nyin ke ukut; 
Toro Enye k’nsi nsi, 
Ke ime ödiöñ owo: 
Toro Enye! Toro Enye! 
Ke akpanikö Esie. 
Soprano (slower) 

3. Enye öfön ido ye nyin, 
Ömöfiök idi mem-mem; 
Akama nyin k’ubök Esie, 
Osio nyin k’ubök m’asua 
Toro Enye! Toro Enye! 
Ke uwak mböm Esie. 

Harmony 
4. Itie nte iköñ iñwañ, 
Ofim emende efep; 
Idu uwem, ibe ifep, 
Enye ikpukhökere: 
Toro Enye! Toro Enye! 
Edikoñ Abasi-Ibom. 

Unison 
5. Me Enjel, ebuana ye nyin, 
Emekut iso Ete; 
Utin, öfiöñ, ekpon’ Enye; 
Kpukpru me utom Esie, 
Toro Enye! Toro Enye! 
Etoro Öböñ mfön . 

Amen . 
      """
    },
    {
      "id": 15,
      "title": "KE ADAÑA EMI JEHOVAH AFIAKDE ETIENE",
      "audio": "",
      "body": """
     
KEY C 4/4

{:m .,f ls :s .,s ls .,s :s ld' :-.s ls 
:m .s ls :-.f lr :f |f :-lm :} 


mf K’ÖBÖÑ afiakde ese 
mbuot-eköñ 

Eketañd’ efep ke Zion 
p Eketie ye nyin 
rit Nte ndap. 

a tempo 

S: f Inua nyin ’köyöhö 
y’imam, 
Ye imam, ye imam. 


A: Inua, Inua nyin ököyöhö 
y’imam 
T: Inua nyin ököyöhö 
y’imam, y’ imam 
B: Inua nyin ’köyöhö 
y’imam 
All: Edeme nyin y’ikwö 
Ye ikwö ye ikwö 
Inua nyin ’köyöhö 
y’imam 
Edeme nyin y’ikwö. 

B: Mö etiñ ke otu m’idut 
SAT: Mö etiñ ke otu m’idut 
All: Jehovah anam ikpöñkpö 
Anam ikpö ñkpö ’nö mö 

(solo) Andante 
A or B: Owo obiomde mkpasip 
Ke mmöñ eyet 
Owo obiomde mkpasip 
Ke mmöñ eyet 

(solo) Allegretto 
S or T: Iditreke ‘ndinyöñ 
Ke idara, idara 
Obiom m’ebek 
M’ebek esie. 

Körös: Allegro 
Iditreke ‘ndinyöñ ke idara 
Iditreke ‘ndinyöñ ke idara 
SA: Obiom m’ebek, obiom 
m’ebek 
TB: Obiom m’ebek, obiom 
m’ebek 

SA: Obiom m’ebek esie, 
TB: esie, 

S: Obiom m’ebek 
T: Obiom m’ebek 

SA: Obiom m’ebek esie önyöñ 
TB: M’ebek esie önyöñ. 

Amen.  
      """
    },
    {
      "id": 16,
      "title": "ÖFÖFÖN YE MÖ ",
      // "audio": "",
      "body": """
      
KEY D 4/4

{|s:-.sls :flm:-ls:s|L:-.slt 
:d' ld' :-lt } 

mf ÖFÖFÖN ye mö ekwöde, 
Ke idara, 
Öföfön ye mö ekwöde, 
Ke idara. 

SA: Eyesaña, O Öböñ 
K’ uñwana iso Fo! 
All: f Eyesaña, O Öböñ 
K’ uñwana iso Fo! 

B: p Eyedara ke enyiñ Fo, 
Edinen ido Fo eyemenere 
mö, 
All: f Eyedara ke enyiñ Fo, 
Edinen ido Fo eyemenere 
mö, 

p Eyesaña, O Öböñ 
K’ uñwana iso Fo, 


B: f Ndien edinen ido Fo, 
Edinen ido Fo, eyemenere 
mö, 
SAT: Ndien edinen ido Fo 
eyemenere mö, 
All: Onim ke enyöñ. 

Amen. 

      """
    },
    {
      "id": 17,
      "title": "ETORO ÖBÖÑ",
      // "audio": "",
      "body": """
      KEY Bb 4/4

{:s,|d:-.dld:d.m|m:r l :s,lr:-.r 
lr :r .f lf:ml} 

(Kwö ye inemesit) 

O M’IDUT etoro Öböñ, 
O m’idut etoro Öböñ, 
Toro Öböñ, toro Öböñ, 
O m’idut etoro Öböñ. 

S: \$ Toro . . . Öböñ, 
Kpukpru . . . me obio, 
Tor’. . . Öböñ 
Kpukpru me obio DS 

ATB: \$ Tor’ Öböñ, tor’ Öböñ 
Kpukpru me obio, 
tor’ Öböñ 
Kpukpru me obio, 
tor’ Öböñ 

Kpukpru me obio. DS 

All: Koro ima Esie okponde 
Ye nyin mi, 
Akpanikö Esie, 
Akpanikö Esie, 
Akpanikö Esie, 
Ebighi k’nsinsi. 

Toro Öböñ, toro Öböñ 
Amen... Amen... 

      """
    },
    {
      "id": 18,
      "title": "ABASI ISRAEL ",
      // "audio": "",
      "body": """
      KEY D 4/4

{|d':-ld':-|d':sl:|m':-lm':.
m'lm' :d’ |} 

f ABAS’ Israel, ff Akwa 
Jehovah, 
p Idi k’iso Fo – idi k’iso Fo, 
mf O kpañ utöñ, kop uyo 
nditö Fo, 
SA: Yak akam nyin mi ödök, 
All: mfYak akam nyin mi ödök, 
SA: Iyetoro enyiñ Fo 

All: Iyetoro enyiñ Fo 
f Iyeto –ro (iyeto – ro) 
enyiñ Fo 

p Ke mfön Fo ye mböm Fo 
Ke mfön Fo ye mböm Fo 
Iyetoro Fi k’ nsinsi 
Ye ke nsi nsi. 

TB: Ke mfön Fo, 
SA: Ke mfön Fo 
TB: Ye mböm Fo 
SA: Ye mböm Fo 

All: Iyetor’ enyiñ Fo k’nsinsi 
K’ nsi nsi, iyetor’ enyiñ 
Fo k’nsinsi, 
K’nsi nsi, kemi ye k’nsinsi, 

Bass Solo: 

O ekwö enö Jehovah, 
Da eköm di Enye k’ iso, 
Edara ke mböm Esie. 
O ekwö enyiñ Esie, 


Baritone Obligeto: 

Kwö itoro nö Jehovah 
K’ iso Esie, duk ye idara 
O edara kpukpru m’idut 
Etoro Enye k’ ndido 

All: Kwö itoro nö Jehovah 
K’iso Esie duk ye idara 
O edara kpukpru m’idut 
Etor’enyiñ Esie. 


Faster: 

All: f O edara ke Öböñ, 
O edara ke Öböñ, 
O edara ke Öböñ, 
Etoro Enye k’ nsinsi 
O edara ke Öböñ, 
Etoro Enye k’ nsinsi 

Baritone Obligeto: 

O kwö, toro enyiñ Esie 
Di k’iso Esie y’ikwö 
Tor’ enyiñ Esie k’ nsinsi 
k’ nsi nsi 

All: Tor’ enyiñ Esie 
Di k’iso Esie y’ikwö 
Di k’iso Esie y’ikwö 

All: Nyuñ tor’ Enye k’nsi nsi 
Toro Enye k’nsi nsi 
K’nsi nsi. 

Amen. 
      """
    },
    {
      "id": 19,
      "title": "OBIO ABASI NYIN ",
      // "audio": "",
      "body": """
      
KEY A 3/4 

{|d :-:d .d |m :-:m lm .,m :m :r |d :t, } 

ÖBÖÑ okpon, 
Odot se etorode, 
Öböñ okpon, 
Odot se etorode, 

Öböñ okpon, 
Odot se etorode, 
Ke obio Abasi nyin, 
Ke obio Abasi nyin, 
Ke edisana obot Esie. 

Ebiet eke eyede 
Ye idara isöñ, 
Ebiet eke eyede 
Ye idara isöñ, 
Edi Zion, obot Zion 
Abasi edi uböhö, k’ebiet 
Esie; 

Öböñ okpon, 
Odot se etorode, 
Öböñ okpon 
Odot se etorode, 
Öböñ okpon, 
Odot se etorode, 
Ke obio Abasi nyin, 
Ke obio Abasi nyin 
Ke edisana obot Esie. 

Tenor Solo: 
Imekere ima ye 
Mfönido Fo O Abasi, 
Imekere ima ye 
Mfönido Fo O Abasi, 
Koro ima Fo öfönde 
akan uwem, 
Inua mi ’yekwö itoro Fo. 

Semi Chorus: 
Imekere ima ye 
Mfönido Fo O Abasi, 
Imekere ima ye, 
Mfönido Fo O Abasi, 
Koro ima Fo öfönde akan uwem, 
Inua mi ’yekwö itoro Fo. 

Full Chorus: 
Kwö (kwö) nö Jehovah, 
(Kwö nö Jehovah,) 
Kwö nö Jehovah, (kwö) 
Anam utibe ‘ñkpö; 
Kwö (kwö) nö Jehovah, 
Kwö nö Jehovah (kwö) 
Anam utibe ‘ñkpö k’ ererimbot. 

TB: Fiori nyuñ kwö, 
Afo andiduñ ke Zion, 

All: Fiori nyuñ kwö, 
Afo andiduñ ke Zion, 
Fiori nyuñ kwö, 
Afo andiduñ ke Zion, 
Koro Jehovah ’mokpon, 
Koro Jehovah omokpon 
Ke uföt fo, 
Fiori nyuñ kwö, 
Fiori nyuñ kwö, 
Fiori nyuñ kwö 
Afo andiduñ ke Zion, 
Fiori nyuñ kwö, 
Afo andiduñ ke Zion, 
Koro Jehovah ’mokpon, 
Koro Jehovah ’mokpon, 
Koro Jehovah omokpon 
Ke uföt fo. 

Amen. 

      """
    },
    {
      "id": 20,
      "title": "YAK HEVEN EFIORI ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:d ld :-.d lm :s|d' :-l-:t .L ls :-.L 
ls :flm :-l-} 

1. YAK heven efiori 
K’ nditö ekwöde 
Christ Edidem, 
Tiñ utibe mbuk, 
Baña ima Esie 
Ekedide k’isöñ, 
Jesus Öböñ. 

2. ’Kedi ‘nt’ Eyenöwöñ, 
Anana idiökñkpö, 
Man edep nyin, 
’Kana k’ufök enañ, 
Ibuot ek’ Edidem, 
Eda enam uwa, 
Etre idiök. 

3. Kemi, k’ ukot Esie, 
Kpono Christ kpa Eyen, 
Toro Enye, 
Uyama ntant’ öfiöñ, 
Ebin ekim efep, 
Ke Christ amanade 
Y’ ikwö m’enjel. 

Amen. 
      """
    },
    {
      "id": 21,
      "title": "HOSANNA! HOSANNA! HOSANNA! ",
      // "audio":"".
      "body": """
 KEY D 4/4

{: .,d'|d' :-ls : .,m' lm' :-ld': .,d' ld' :l-:-|
d' :-l-: } 

f HOSANNA! Hosanna! 
Hosanna! 
Öföfön ye Andidi, 
Öföfön ye Andidi, 
Öföfön ye Andidi 
Ke enyiñ Jehovah. 


S: Öföfön y’ Edidem Israel, 
T: Öföfön y’ Edidem Israel, 
All: Öfön, öfön öfön, 
Öfön, öfön, öfön 
Öföfön ye Andidi 
Ke enyiñ Jehovah, 
Ke enyiñ Jehovah 
Hosanna! Hosanna! 
Hosanna! 

Amen. 
      """
    },
    {
      "id": 22,
      "title": "ENYE ESET, ANDINYAÑA ESET ",
      // "audio":"".
      "body": """
  
KEYC 4/4

{: m .f |s:-lL:-ls :-l-:m|s:-lf:-lm 
:-l -: } 

1. ENYE eset, Öböñ eset, 
Akan mkpa ye me asua, 
Enjel akpat itiat efep, 
Önö nsi nsi usen. 

Körös: 
S: Fiori ösöñ hallelujah, 
Ekwö Andifak y’Edidem, 
ATB: Fiori ösöñ hallelujah, 
Fiori ösöñ hallelujah, 
EkwöAndifak y’Edidem, 
Andifak y’Edidem, 

All: Fiori inem (inem) 
Eti etop (etop) 

SA: Ke erikwö ke kpukpr’ 
ebiet. 
TB: Ke erikwö, k’erikwö 
ke kpukpru ebiet. 

2. Dara, utom omokure, 
Ufak oto ke Christ Öböñ! 
Iyarake aba ‘ñkukim, 
Uböñ omokpon akan cross. 

3. Enyeeset!Akanudi, 
Eset,AkwaAndinyaña, 
Ada ima edi k’isöñ, 
Idara nyin okpon k’enyöñ. 

Amen. 
    
      """
    },
    {
      "id": 23,
      "title": "MBAKKE NDIYOM FI ",
      // "audio":"".
      "body": """
    KEY Ab 4/4

{:s,|s, .,s, :s, .,s, lL, .,s, :L, .,t, ld :ls, 
} 

1. AFO usinke mi ke 
usenubök, 
Me ke ndide ke okoneyo, 
Afo eyedara mi ke usiere, 
Kpasuk ntre k’ ekim okoneyo. 

Körös: 
Öböñ,Abasi mi, 
Nyebak nyom Fi, 
Nyebak nyom Fi, 
Öböñ mi. 

2. Baba idiök idighe, Afo 
’mokut, 
K’afaneköñ, Afo emekpere, 
Afo omofuk mi k’idak mba Fo, 
Ndik iduhe k’ndibe ’biet Fo. 

3. Mkpoyomke Fi k’usiere 
uwem mi, 
Me ke akpatre ini usöñ mi, 
Tutu Afo owut mi usier’ 
enyöñ, 
Man ñkut Fi ke ekim ebede? 

Amen
  
      """
    },
    {
      "id": 24,
      "title": "MKPE UBÖK ",
      // "audio":"".
      "body": """
     
KEYD 4/4 

{:d |m :f ls :-.s lf .s :L .t ld' :s lL :ls 
:m lr :-l-} 

1. ÖBÖÑ mfön, nsinsi 
Andibot nyin, 
Edi ima, 
Se nditö Fo mi döñ edidiöñ 
Fo, 
Oto k’enyöñ. 


Körös: 
Nsinsi Spirit otode ke enyöñ 
K’ebekpo emi ekwöd’inem 
ikwö, 
Duök ibifik Fo ke ukpöñ nyin 
kemi, 
Eti Spirit. 

2. Imedi ke uñwöñö emi Afo 
Akanamde, 
K’ Enyiñ Fo, k’iba m’ita 
ebohode, 
Afo k’uföt. 


3. Ibeñe esit udöñ Christian 
y’ime, 
Ndibiom cross, 
Nö nyin mfön k’utom ye 
mbuötidem, 
Ye ke akam. 


4. Nö mfön ndiyak idem 
nyin ’nö Fi 
K’ata ima, 
O Öböñ, duök nyin uwak 
edidiöñ Fo, 
Oto k’enyöñ. 

Amen.  
      """
    },
    {
      "id": 25,
      "title": "ABASI EDI IMA ",
      // "audio":"".
      "body": """
      
KEY D 4/4

{|d :m .f ls :s lL :t ld' :-lr' :-lt :-ld' 
:-l-: } 

1. DI, yak nyin ikwö, Abasi 
Ed’ ima! 
Enyöñ y’isöñ ’kwö, Abasi 
Ed’ ima! 
Yak kpukpr’ ukpöñ ekpöñ 
idiök, 
K’ ata inem uyo ikwö, 
Etoro Jesus, Abasi 
Edi ima! 

Körös: 
A..ba..si ed’ima! 
Yak kpukpru ekwö: Abasi 
Edi ima! 

2. Tiñ nö ekondo, Abasi 
Ed’ ima! 
Uböhö ke Christ, Abasi 
Ed’ ima! 
Iyip Esie eyet m’idiök, 
Spirit Esie añwam nyin mi 
Yak nyin idara, Abasi 
Edi ima! 

3. O! enem didie, Abasi 
Ed’ ima! 
K’nti uñwöñö, Abasi 
Ed’ ima! 
Utin ye otu eköñ nyin, 
Andikpeme k’ okoneyo, 
Ada nyin usuñ, Abasi 
Edi ima! 

Amen. 
      """
    },
    {
      "id": 26,
      "title": "KWÖ KE IDARA ",
      // "audio":"".
      "body": """
     KEY E 3/4

{|s :fe :s|d':-.s :m ls :L :m lf :-:-|f 
:m :f |t :-.L :s |f :s :r |m :-:-} 

Duet: Sop & Alto 

1. KWÖ ke idara ye ke uteñe, 
Eti Jesus, nsinsi Edidem! 
Enye, Itiat desert, idibe do 
Ke idak ökpösöñ mfut Esie. 

Körös: 
Kwö k’idara…kwö k’idara… 
Kwö k’idara…nsinsi 
Uñwana, 
Uku enyene Fi 
Kemi, k’nsinsi, Jesus 
Edidem. 

2. Kwö y’esit eköm, kpon’ 
enyiñ Esie, 
Kwörö s’Enye anamde 
önö nyin; 
Uñwöñö Esie edemere 
nyin; 
Öböñ mböñ, omodot 
itoro! 

3. Kwö ke mbuötidem nyuñ 
dorenyin 
K’obio ayamade akan 
isöñ 
Y’ esit öyöhöde y’ima Esie, 
Kwö tutu ukpöñ nyin edök 
k’ enyöñ. 

Amen.  
      """
    },
    {
      "id": 27,
      "title": "IKWÖ ME ENJEL ",
      // "audio":"".
      "body": """
      KEY Eb 4/4 

{|m.,m:m.,fls:lL.,L :L.,Lls: 
ld' .,d' :d' .,d' lt :L .,t ld' :-l s :} 

f “TORO Abasi, toro Abasi, 
Toro Abasi k’ata enyöñ! 
P Emem odu y’owo k’isöñ, 
Toro Abasi k’enyöñ!” 

SA: Kop! Ikwö ke enyöñ, 
Nso inem ikwö! 

All: Tutu ke usiere, 
Enem owo k’utöñ! 
Kpukpru edop 
Ke ekopde ökpösöñ ye 
Inem uyo 

TB: Kop! Me enjel k’ekwö, 
SA: “Toro Abasi k’ata enyöñ! 
Emem odu y’owo k’isöñ, 
Toro Abasi k’enyöñ!' 

All ffMe enjel k’ ekwö, 
“Toro Abasi, 
Toro Abasi k’ata enyöñ! 
Emem odu y’owo k’isöñ 
Toro Abasi k’enyöñ!” 

Amen. 


      """
    },
    {
      "id": 28,
      "title": "EDISANA UFÖK ABASI EYEKAN",
      // "audio":"".
      "body": """
      KEY Ab 2/2

{.s,|d .,r :m .r ld .s,:m, .s, ld .,d 
:r .r lm :-} 

1. EKA iso ke utom 
Enam akpanikö; 
Öböñ k’anam ikpö ‘ñkpö, 
Eyesuk ananam; 
Me udim eköñ Esie 
K’ewawak kpukpr’ ini, 
’Yekwö mfiori idara, 
Ekondo eyekop! 

Körös: 
Dara, dara (dara) 
Menam utom ’dara 
Edara ke ikwö (k’ikwö) 
Edara ke ikwö! 
UfökAbasi eyekan, 
Eyekan, eyekan, 
Eyedi Edidem, 
Akara nyin. 


2. Ukara ererimbot 
Eyeduö ke ntöñ; 
Ofut akpanikö nyin 
Efen ikank’Enye; 
M’udim ekim ekpewak 
Eyöhö ke isöñ, 
UfökAbasi adada 
Ye Christ otu eköñ. 

3. Se! Enye ke ’ka iso 
K’ata akwa uböñ 
Osim ke una isöñ -
Akande nyin okuk, 
Oduk ke ñkpri obio 
Ye ke ikpö obio 
Ke ekwökwö enö Jesus 
Ndien m’itun ekop.
 
Amen. 

      """
    },
    {
      "id": 29,
      "title": "NYIN ITORO FI ",
      // "audio":"".
      "body": """
  KEY Db 3/4

{:s ls :-:fe .s lL :s :m ls :d' :m ls :-} 

1. IMEDI, Andifak, ikwö ima Fo, 
Idian uyo kiet ye me enjel 
k’enyöñ; 
Iboho ndikpono Fi Edidem, 
Ndien k’iso Fo ida uwa idi. 

Körös: 
Ikwö Fi, itoro, 
Ikpon’enyiñ Fo; 
Kpukpru ukpono y’ uböñ 
enyene Fi! 
Ikwö Fi, itoro, 
Ikpon’enyiñ Fo; 
Kpukpru ukpono y’ uböñ 
enyene Fi! 

2. Iköm Fi ke mbara edidiöñ Fo, 
Iköm Fi, ima Fo edi mbufa; 
Iköm Fi, man enim ke 
akpanikö 
Enyuñ ebö nsinsi uwem 
k’Afo. 

3. Ibeñe ukpeme Fo, Andinyaña 
Yak mfön Fo ofuk nyin 
kini idiök, 
Iyom Spirit Fo edi 
Andikpep nyin, 
Ada nyin usuñ k’erinam 
utom Fo. 

Amen.    
      """
    },
    {
      "id": 30,
      "title": "O KWÖ ITORO ",
      // "audio":"".
      "body": """
     KEYG 2/2

{|d :-lr :-lm :d l : l r :-lm :-lf :r l : |m 
:-ls :-ld :f lm :r ld :-lt, :-ld :-l -: -} 

KWÖ itoro ( ’toro) 
Kwö itoro ( ’toro) 
Kwö itoro nöAbasi. 


SA: \$ Ke mfön ye ima Esie 
Önöde nditö Esie; 
Kwö itoro, itoro, itoro 
Itoro, itoro nöAbasi. DS 

TB: \$ Ke mfön ye ima Esie 
Önöde nditö Esie; 
Kwö itoro, toro, 
Kwö itoro, itoro, itoro 
nö Abasi. DS 

All: Toro Öböñ. 

Amen.  
      """
    },
    {
      "id": 31,
      "title": "JESUS IMEMENERE UYO NYIN ",
      // "audio":"".
      "body": """
     KEYBb 4/4 
     
{:s, .,d |m :-l -.,m :r .,d |L, :-l:
d ., L, ls, :-l – .,d :t, .,d lr :-l -} 

1. JESUS, imemen uyo 
Ndikwö Fi Edidem; 
Tie k’ebekpo kpañ utöñ 
Kop ikwö nyin ikwöde, 
Afo ’ködiöñ nditö, 
Ke odude mi k’isöñ; 
Kop uyo möAndifak 
Da usuñ ke s’enamde. 

2. Jesus, k’eti usen Fo, 
Ibono k’ukpepñkpö; 
Ikpono k’akpanikö 
Iyeduö ke ukot Fo. 
Ke mkpa Fo k’enyöñ cross, 
Okobiomde ukut nyin, 
Kpukpru nyin iyeköm Fi 
Iyetoro enyiñ Fo. 

3. Jesus iyom mfön Fo, 
Yak ikop ndudu Fo; 
Du ke esit kpukpru nyin, 
Ke isuk ibetde mi 
Yak idu uwem k’Afo, 
Tutu uwem nyin ebe. 
Iyekwö k’ebekpo Fo 
Ke otu mbon enyöñ. 

Amen.  
      """
    },
    {
      "id": 32,
      "title": "TORO NYUÑ KPONO ENYIÑ ESIE ",
      // "audio":"".
      "body": """
    KEYBb 2/2

{|d :-ld :-.d |d :-l-:s, lL, :t, ld :r lm 
:-lr :-} 

TORO Öböñ, 
Etoro Enye m’idut; 
Toro Öböñ 
Y’enyiñ Esie 
Toro Öböñ 
Nö Jehovah ukpono 
Etor’ Abasi Is-ra-el. 
AniebietAbasi Is-ra-el? 
Etoro enyiñ Esie, 
Toro Öböñ, toro Öböñ, 
Toro, kpono enyiñ Esie 

k’nsinsi. 
A-men,A-men. 
  
      """
    },
    {
      "id": 33,
      "title": "BÖ IKWÖ IDARA NYIN ",
      // "audio":"".
      "body": """
      KEYA 4/4 

{:s,|d :t, .d lr :s, .s, lr :d .r lm :-.m 
lf :m .r lm :r .d ld :t, .d lr :-} 

1. ETI Andinyaña imetiene Fi, 
Nte nditö idu mi k’idara, 
Ndaeyo edi ye nti mfri 
Anam nyin idara ke me 
edidiöñ. 

Körös: 
O Jesus Edidem bö itoro nyin, 
K’idara iyemenere uyo nyin, 
Ikwö Fi, inyuñ ikpe Fi ubök, 
Iyewa esit idara nyin mfin. 

2. Ke ini eset ñkukut okodu, 
Edi kemi imoyom ndudu Fo 
Edisana item önöde nyin mi, 
Eyeñwam nyin ndidök 
nsim heven. 

3. M’ete nyin iwiwa ke ebe efep 
Nö nyin ifiök ndidu eti uwem, 
Man k’erinyöñ mö, nyin 
iduk k’uñwana, 
Iñwan’ eköñ Jesus ke 
akpanikö. 

4. K’mboho ye eyo nyin okurede, 
Ini mkpa edi, m’utom nyin efön, 
Ke iwöröde ke tuep ererimbot, 
Bö nyin Öböñ, da duk ke 
paradise Fo. 

Amen. 

      """
    },
    {
      "id": 34,
      "title": "IMEDI YE INEMESIT ",
      // "audio":"".
      "body": """
      KEYG 6/8

{:s, |d :-:d ld :r :m |f :-:-lt, :-:t, ld 
:-:d ld :-:r |m :-:-:-:-} 

1. IMEDI y’inemesit 
Ye ikwö idara, 
Imedian esit y’uyo, 
Ndikwo itoro. 

Körös: 
SAT: Nyin i . . . medi … 
B: Nyin imedi, nyin imedi 

All: Imedi y’inemesit, 

SAT: Nyin i . . . medi … 
B: Nyin imedi, nyin imedi 

All: Ye ikwö idara 

SAT: Nyin i . . . median 
B: Nyin imedian, nyin 
imedian 

All: Imedian esit y’uyo, 
K’ikwö idara y’itoro 
K’otu menemesit. 

2. Nyin ikwö Andikpep nyin 
Ata eti usuñ, 
Adade nyin edi, man 
Ituak ibuot mfin. 

3. Itoro Andibot nyin, 
Öböñ y’Andinyaña, 
Ödiöñde isöñ k’uyai 
Ye idimmöñ ñko. 

4. Imököm Andinyaña, 
K’enö önöde nyin, 
Ye kpukpru mfön Esie, 
Ye k’ukpeme Esie. 

5. Yak osuk ekpeme nyin, 
K’ofri ini iso, 
Anam itoro Enye 
Ke iduñ emem ko.
 
Amen. 
      """
    },
    {
      "id": 35,
      "title": "EDARA, O ISÖÑ! ",
      // "audio":"".
      "body": """
      KEYAb 4/4

{:s,|d :s, ld :r lm :f ls :t, |d :d lf :m 
lr :-l-} 

1. EDARA! M’idut edara, 
Emen uyo ekwö; 
Efiori k’ökpösöñ uyo, 
EtoroAbasi. 

Körös: 
Dara . . . dara, 
Dara . . . dara, 
Dara . . . dara, 
Dara . . . dara. 


2. Dara!Afoudeminyañ, 
K’ofri mbufut fo; 
Kwö itoro erikan fo, 
NöAkwa Edidem. 

3. Edara! M’idut k’esit kiet, 
Ekwö nti ikwö, 
Etor’ÖböñAndifak nyin, 
Tutu ini etre.

 Amen. 
      """
    },
    {
      "id": 36,
      "title": "“ÖKPÖSÖÑ KE NDINYAÑA” ",
      // "audio":"".
      "body": """
      KEY G 3/4

{|d :-:d .,m |s :-:m .,m |r :d :r |m ::|
d:d:m|s:-.f:m|r:m:r |d:-:} 

1. KWÖ nö Öböñ, dara 
k’enyiñ Esie, 
Köm Enye ke m’utibe 
‘ñkpö Esie; 
Jesus amakan mkpa ye udi, 
Enye akan, ösöñ k’ndinyaña 
Enye akan, ösöñ k’ndinyaña. 

Körös: 
Eset ke uböñ, eset ke uböñ 
Jesus ufak nyin, ikpah’aba, 
f Jesus ufak nyin, ikpah’aba. 

2. EdaEnyent’eröñekewot, 
Ököduök iyip ke m’idiök 
O akwa mböm ye akwa ima! 
Etor’ Enye, mö efakde k’enyöñ, 
Etor’ Enye, mö efakde k’enyöñ. 

3. Eköñ ke cross, okut ukut, 
akpa, 
K’osukd’ ibuot, ofiori, “okure!” 
Itiat akasiakha, k’eköñd’ Öböñ, 
Do ikpehe temple akasiakha, 
Do ikpehe temple akasiakha. 

4. Se se! Ömödök k’enyöñ ye mkpo, 
“Emenere mbuot nsi ns’ itim” 
Jesus amakan mkpa ye udi, 
Odot uböñ, Akwa Andinyaña, 
Odot uböñ, Akwa Andinyaña. 

Amen. 
      """
    },
    {
      "id": 37,
      "title": "AKPANIKÖ FO OMOKPON ",
      // "audio":"".
      "body": """
  KEY Eb 3/4

{|m:m:m|m:-.r:r|f:f:f|f :m: -} 

1. AKPANIKÖ Fo omokpon, 
O! Ete, 
Mfut erikpuhöre iduhe, 
Koro mböm Fo mikureke 
y’ami, 
Afo edi suk ukem k’nsinsi 

Körös: 
Akpanikö okpon! Akpanikö 
okpon! 
Edi mbufa kpukpr’usenubök, 
Me unana mi, ubök Fo ömönö, 
Akpanikö Fo omokpon y’ami. 

2. Ukwö y’ndaeyo, utö 
y’ukpeñe, 
Utin y’öfiöñ, ntanta k’itie 
mö, 
Ebuana ke utom emi ndiwut 
Akpanikö, mböm ye ima Fo. 

3. Erifen y’emem emi 
ebighide, 
Afo omodu ndida usuñ, 
Ukeme kemi y’idorenyin 
k’iso, 
Y’uwak edidiöñ efen enö 
mi. 

Amen. 
    
      """
    },
    {
      "id": 38,
      "title": "ENYE EDI ÖKPÖSÖÑ KE NDINYAÑA ",
      // "audio":"".
      "body": """
   KEYDb 4/4

{|s:s.L ls:m.d|L:L.L|s:-} 

1. JESUS k’ebet ‘ndinö mfön 
Esie, 
Idiök ‘nte crimson eyefia 
‘nte snow, 
Ama nyin, önö uwem 
k’ibuot nyin, 
EtiAndifak ’diAndinyaña. 

Körös: 
All: “Andinyaña, Andinyaña” 
SA: Jesus ’diAndinyaña 
T: Jesus edi, ediAndinyaña, 
B: Jesus edi, edi Andinyaña, edi 
All: “Andinyaña,Andinyaña” 
Jesus ’diAndinyaña. 

2. Ndida ikpöñ k’eñwan, 
iyeduö, 
Ndidiana y’Öböñ nyin 
iyekan, 
K’iyomde uñwam inö mö 
eken 
K’akam y’mbuötidem, 
eyenyaña. 

3. Da mbiomo esit fo nö Enye, 
Yak nö, eyenö fi ndöñesit, 
K’omumde nyin, iyekan 
oyobio, 
Se Jesus ikpöñ, “Enye 
’yenyaña.” 

4. Ekim öwörö ke itikhere, 
Ke Jesus adade usiere ’di, 
Ikwö k’erikan, ikande udi, 
Etoro Jesus! Enye anyaña. 

Amen.    
      """
    },
    {
      "id": 39,
      "title": "NDIKWO KPUKPRU USEN",
      // "audio":"".
      "body": """
      KEY A b 4/4 

{:m, .f, ls, .s, :L, .d ld :d .d :r .r 
:f.f lm } 

1. AMI mökwö kpukpr’ 
usen, hallelujah ’nö 
Öböñ! 
Ami möyukhö, möyukhö 
ke nti ikö Esie, 
Ami mökwö k’idak cross, 
ebiet eyetd’idiök mi, 
K’eti erifen ke mböm, 
ami mökwö kpukpr’ 
usen. 

Körös: 
Mökwö kpukpr’usen, 
Mökwö kpukpr’usen 
Ntoro Itiat erinyaña; 
Ami mökwö k’idak cross, 
Ebiet ’yetde m’idiök mi; 
Hallelujah! Hallelujah! 
Tor’Öböñ! 

2. Amimökwökpukpr’usen, 
ikwö mi ’di obufa, 
Koro ‘ñkwöde Enye ’mi 
amade mi akan kpukpru, 
Ekpe isön idiök mi, 
emi me ñkemeke, 
Andinyaña yeAndifak, 
ke ñkwö kpukpru usen. 

3. Amimökwökpukpr’usen, 
ikwö mi ididopke, 
Sia Enye adade usuñ 
onyuñ önö mi emem, 
Ke spirit mi ödökde 
k’ufök miböpke k’ubök, 
Ami ’yekwö Andifak mi 
ke nsi nsi usen. 

Amen. 
      """
    },
    {
      "id": 40,
      "title": "ETI USEN ÖBÖÑ ",
      // "audio":"".
      "body": """
  KEYC 4/4 

{:s |d' :d' .,d' ld' :m .f |s :s .,s ls :-.s 
|m':r'.d'lr':d'.t ld':-l-} 

1. USEN Öböñ, nyin imadara Fi, 
Imöbö Fi ke ukpono, 
K’ibede m’idomo y’ukut uwem, 
Ikwö nyin eyedök k’enyöñ. 

Körös: 
Imedi k’isoAbasi Ima, 
Imemen itoro mfin, 
Ibeñe uwak edidiöñ Esie, 
Imen inyöñ ke idara. 

2. O! enem ndidu k’ufök Esie, 
Edi eti ini emem, 
Ufiop esit nyin eyedemere,
Ima y’ido Öböñ etöt. 

3. Öböñ odu k’ ufök Esie mfin, 
Spirit önö ndöñesit, 
Dibö mböm, mfön ye erifen, 
Kpañ utöñ nö ikot Esie. 

4. Eti usen Sabbath, usen 
Öböñ, 
Ima ini eridiöñ Fo, 
Ikwö nyin eyedök ke itoro, 
Otim ödök ko ke enyöñ. 

Amen.     
      """
    },
    {
      "id": 41,
      "title": "TORO ANDIBOT NYIN ",
      "audio": "",
      "body": """
    KEY C 4/4 

{:d .m |s :m .s ld' :s .d' |m' :r' .t 
ld' : -. } 

1. IMEN itoro inö Andibot 
nyin, 
K’ikwö idara, eköm ye 
itoro, 
Ntak itoro nyin k’ nsinsi 
edi, 
Koro ima Esie midikureke. 

Körös: 
Kwö, nyuñ buk utibe ima 
Esie, 
Fiori nyuñ toro enyiñ 
Jehovah, 
Kwö itoro ye me udim 
heven, 
Eköm Ete, Eyen y’ Eti 
Spirit. 

2. Imen itoro inö Andibot 
nyin, 
M’itoro esit nyin emi 
edotde, 
Ke uwak eridiöñ Esie 
k’ uwem nyin, 
Eduek Esie eyöhö ke 
ekondo. 

3. Ikwö hosanna inö Andibot 
nyin, 
Nyin iyeduö ke ukot 
Edidem nyin, 
Ukpono y’ uböñ eyenyene 
Enye, 
K’otu owo ye me enjel ke 
heven. 

Amen. 

    """
    },
    {
      "id": 42,
      "title": "IKWÖ ITORO ",
      // "audio": "",
      "body": """
    KEY Bb 4/4 

{|d :s, lm :r ld :-ls, :-|L, :dlf :m 
lr :-l-:} 

1.TOR’ akwa Jehovah, 
Kpon’ enyiñ Esie, 
Ke ikwö erikan, 
Suan etop Esie; 
M’ utom Esie ewut, 
Ukeme Esie, 
Yak nditö Esie 
Edara k’ ikwö. 
Körös: 

Tor’ akwa Jehovah! 
Kpon’ enyiñ Esie, 
Ke ikwö erikan, 
Suan etop Esie. 

2. Kpon’ Öböñ k’ idara, 
K’ esit ye uyo, 
Akara k’ nsinsi, 
Isöñ edara; 
K’ ata esit mböm, 
Ye ima Ete, 
Önö Eyen Esie, 
Ke uduot owo.
 
3. Enye, “Owo Ukut” 
Akan m’asua nyin, 
Ke akpatre eñwan, 
Eset, Andikan, 
Köm akwa Andinö, 
Ökpösöñ Ufan, 
Ke ikwö erikan, 
Yak nyin itoro. 

Amen. 

    """
    },
    {
      "id": 43,
      "title": "HALLELUJAH! IKWÖ IDARA ",
      // "audio": "",
      "body": """
 KEY Bb 4/4

{:m .f |s, :s, ls, :s, .d ld :t, ld :r lm 
:m lm :m .f lr :-l-} 

1. HALLELUJAH! ikwö 
idara, nsi nsi ikwö, 
Hallelujah! Inem ikwö 
me enjel ebuanade. 

Körös: 
(Etor’ Öböñ), kwö 
hallelujah! 
(Etor’ Öböñ), kwö 
hallelujah! 
(Etor’ Öböñ), kwö 
hallelujah! 
Etor’ Öböñ! 

2. Hallelujah! Iköt Fo mi, 
k’ekwö ikwö erikan, 
Hallelujah! Etoro Fi, 
mö emi Afo ’fakde. 

3. Hallelujah! Yak ikwö nyin 
ödök k’ enyöñ k’ esit kiet, 
Hallelujah! Kpukpru ini 
nyin ke ikpere Öböñ. 

4. K’ mkpe ubök, nyin iyom 
Fi, Edisana Abasi, 
Ada nyin edi k’ iso Fo, 
man nyin ikut uböñ Fo. 

Amen.    
    """
    },
    {
      "id": 44,
      "title": "EKA! EKENYAÑA ",
      // "audio": "",
      "body": """
    
KEY Bb 4/4

{:s , .L, t, ld :s, lm, :s, lr, : - l - 
 :L, t,dlr:L,lf,:s,lm,:-l-}


1. TOR’ Öböñ, imöböhö! 
Christ önö nyin uböhö! 
Nte k’eköñ, ika ndisio 
M’ owo k’ ufn idiök, 
p Ediwak ke ekpaña! 
Kop uyom ntuaña mö! 
Christ k’ okot ata mbon eköñ, 
“Eka ekenyaña!” 

Körös: 
Ka iso nyin iyekan! 
Kop, Andinyañ’ ödöhö; 
Ka iso tutu akan, 
Eyekop, “omotim anam.” 

2. Imenyene erikök 
Otode Andinyaña, 
Ke akam, Enye ekpere nyin, 
Onyuñ önö emem; 
p Ke cross uböhö odu 
Önö mendituak ibuot, 
Emem ye idara edu do, 
Di, kop uyo Esie. 

3. M’udim nyin, k’eka iso, 
Mi, ye ke kpukpru ebiet, 
Iñwana ke uko ye m’ asua, 
Ndik inamke nyin, 
p K’ uböñ isöñ ebede, 
Ukpono esie etre, 
Iyekwö idara Christ Öböñ, 
K’ nsi nsi ini. Amen. 

    """
    },
    {
      "id": 45,
      "title": "MADAT ESIT ",
      // "audio": "",
      "body": """
    KEY G 4/4 
{ld :d lm :d .m |m .r :d .t, ld : } 


S: MADARA k’ edöhöde ete, 
SA: Madara k’ edöhöde ete, 
All: Nyin iyeka ke ufök Jehovah, 

(Nyin iyeka ke ufök Jehovah,) 
Iyeka, iyeka, 
Nyin iyeka ke ufök Jehovah, 
ATB: Nyin iyeka ke ufök, 
Ufök Jehovah, 
All: K’ esit ufök Jehovah. 

3/4 Emem odu y’ afo... 
Emem odu y’ afo... 
Ifure odu ke ikpö ufök Fo, 

SA: Emem odu y’ afo, 
Emem odu y’ afo, 

All: Yak ifure odu, ifure 
Ke ikpö ufök Fo. 

Amen. 
    """
    },
    {
      "id": 46,
      "title": "O ÖBÖÑ, NYIN IMOTORO FI ",
      "audio": "",
      "body": """
    KEY C 4/4

{|s :-ls :m’ lr' .t :d' l :m' lr' .t :d' 
l :m' lf' :-lm':r' lm':-lr':-ld':-l} 

IMOTORO Fi, O Öböñ, 
Imotoro enyiñ Fo, 
SB: O imököm Fi, imököm, 
AT: Hallelujah! Hallelujah! 
SA: Imököm, ikwö akwa 
enyiñ Fo 

All: Hallelujah! Hallelujah! 
Hallelujah! Hallelujah!
Iköm enyiñ Fo, Öböñ 
Iköm enyiñ Fo 
Hallelujah! Hallelujah! 

SA: Iköm, itoro enyiñ Fo Öböñ, 
All: Hallelujah, Hallelujah, 

S: Hal – le – lu – jah! 
AT: Hallelujah! Hallelujah! 
All: Iköm itor’ enyiñ Fo Öböñ 
Itor’ enyiñ Fo. 
Amen, Amen.
    """
    },
    {
      "id": 47,
      "title": "AFO OKPON DIDIE! ",
      "audio": "",
      "body": """
    KEY Bb 4/4 


{.s, :s, .s, |m, :-.s, ls, .s, lL, .L, lf, 
:L,l -} 

1. ABASI k’ndude k’akwa ndik Fo, 
Ñkerede kpukpr’ utom ubök Fo, 
Ñkutd’ öfiöñ, ñkopd’ uyo obuma 
Odudu Fo ’wut ekondo idem. 

Körös: 
Ukpöñ mi ökwö ’nö Fi, Abasi, 
Afo ’mokpon! Okpon didie! 
Ukpöñ mi ökwö ’nö Fi, Abasi, 
Afo ’mokpon! Okpon didie! 

2. K’ nsañade k’iköt ye 
k’uföt akai, 
Ñkop m’inuen ekwöde ke eto, 
Ke nyuñ ndade ke ediye obot, 
Ñkop uyom möñ ye inem ofum. 

3. Ndien Abasi ifamk’ Eyen 
Esie, 
Ödöñ man akpa, ösöñ mi 
‘ndinim! 
Man do ke cross, obiom 
ukut k’ idara, 
Akpa man emen m’idiök mi efep. 

4. K’ eridi Christ ke akwa 
uböñ Esie 
Ada mi önyöñ, idara ’yekpon 
K’ nsukidem ‘nyetuak 
ibuot ’nö Enye, 
Öböñ Abasi mi, Afo ’mokpon! 

Amen. 
    """
    },
    {
      "id": 48,
      "title": "KA ISO KWÖ ",
      // "audio": "",
      "body": """
    KEY Eb 4/4

{|m .,r :d .,r lm :r ld :L ls :L ls :-lr :L ls 
:-lm :-} 

1. KUKERE uñwana me ekim 
Ka iso, kwö ikwö, 
Kiet odu etiñde fi enyin, 
Kwö ke kpukpru usen 
(kwö ikwö) 

Körös: 
Ukut efere ke ikwö 
(k’ ikwö) 
Ikwö ebebin ndik, 
K’ ikwö ye akam, usuñ ayama, 
Kwö ke kpukpru usen, 
(kwö ikwö) 
Kwö ikwö ke usen ubök 
(suk kwö) 
Kwö ke m’ini ebede, 
Mö eken k’ekopde, 
’Yebörö fi ñko (ke ikwö). 

2. Nte amakpa mba k’ usuñ? 
Ka iso, kwö ikwö, 
Cup inemesit eyeyöhö, 
Kwö ke kpukpru usen 
(kwö ikwö). 

3. Ke ökpösöñ ye idiök usen, 
Ka iso, kwö ikwö, 
Eyeñwam mö eken k’ ikwö fo, 
Kwö ke kpukpru usen, 
(kwö ikwö). 

4. Öböñ akan kpukpru, 
k’ ufukhö, 
Ka iso, kwö ikwö, 
Kufeghe! ikpöñk’ eyen Esie 
Kwö ke kpukpru usen 
(kwö ikwö). 

Amen. 
    """
    },
    {
      "id": 49,
      "title": "CHRIST EMESET,HALLELUJAH!",
      // "audio": "",
      "body": """
    KEY D 4/4

{| m .r :m.f ls:d'lL:d'ls:m| m.r 
:m.f ls: d'.t L.s :

l f.m lr:-} 

1. CHRIST emeset,hallelujah! 
Esio mkpo idara, 
Yak inö Enye ukpono, 
Itoro enyiñ Esie, 
Ekwörö erikan Esie, 
Esio mkpo erikan, 
Christ emeset, Christ 
Öböñ nyin, 
Od’ uwem ikpah’ aba. 

2. Christ emeset, hallelujah! 
M’enjel ekwö k’ erikan, 
Emen harp mbufo k’ikwö, 
Me’buana uböñ Esie, 
Etiñde eridi Esie, 
’Kebetde k’ udi Esie, 
Edara Andikan ekim, 
Onyuñ akande mkpa. 

3. Christ emeset, hallelujah! 
Akpa mfri k’ eriset 
Mendinim ke akpanikö 
Eyenyuñ eset y’ Enye 
Emenere uyo ekwö, 
Ikpö y’ ñkpri edara, 
Hallelujah! Hallelujah! 
Christ Öböñ ye Edidem. 

Amen. 
    """
    },
    {
      "id": 50,
      "title": "ITORO ANDIBOT ",
      "audio": "",
      "body": """
    KEY C 2/4

{|d' :d'.,d' ld' :t .L|s .,L :s .,f lm :d} 

1. f TORO Öböñ, una-isöñ ye 
obot, 
Toro Enye kpukpru iköñ 
obot, 
Toro Öböñ, me idim-möñ, 
efiori 
Tutu ekondo öyöhö y’ ikwö, 
mf Ndiy’ iköñ y’ akai, kini 
ndaeyo, 
Enukhö enö ofim ke ikwö, 
Mbufo uduö-möñ, edian 
uyo k’ ikwö, 
Eduö ke ukot Andisöñ usen, 
Eduö ke ukot Andisöñ usen. 

2. f Toro Öböñ, m’ofim ke 
kpukpru ebiet, 
Esioro ökpösöñ uyo k’ ikwö; 
Toro Andidöñ metua eyet 
esit, 
Kwö ñö Öböñ, esöñö 
k’ itoro, 
mf Kpukpru mbufut möñ, 
desert y’aba itiat, 
Ikpö itiat ye akwa ebedeñ 
Kudop uyo k’ ikwö, ekwö 
ke wilderness, 
Etor’ Öböñ, enyuñ ekpon’ 
EnyeEtor’ Öböñ, enyuñ ekpon’ 
Enye. 

3. f Toro Öböñ, kpukpru idut 
ye usem 
Ye ofri obio ke ererimbot, 
Ke ebiet emi utin ayamade, 
Yak ekop nti ikwö mbufo, 
mf Fiori tutu enyöñ öyöhö 
y’itoro 
Osim ke ebiet ntanta öfiöñ; 
Yak ikwö ima fo ödök 
osim k’ enyöñ, 
Eka iso tutu osim utit, 
Eka iso tutu osim utit. 

Amen. 
    """
    },
    {
      "id": 51,
      "title": "O MMOYOM TÖSN EDEME NDIKWÖ",
      // "audio": "",
      "body": """
    KEY Eb 4/2

{|s:-ls :d' lm :-.r lm :s ld :-lf :m 
lr :-l-:-ls :-lL .s :f .m lr :-.m lf :s 
lm :-l-:-} 

1. O ’MOYOM tösn edeme, 
Etoro Andifak, 
Y’ukpono Edidem k’enyöñ, 
K’ akwa mfön Esie! 
K’ akwa mfön Esie! 

2. Ete mfön, Abasi mi, 
Ñwam mi, ndikwörö, 
Ndisuan ke kpukpru ebiet, 
Ukpono enyiñ Fo, 
Ukpono enyiñ Fo.
 
3. Enyiñ Jesus akan ndik, 
Etre mfukhö nyin, 
Enem k’utöñ menamidiök, 
Önö uwem y’ emem, 
Önö uwem y’ emem. 

4. Ke ekopde uyo Esie, 
M’akpa mkpa eset, 
Esit mfukhö edara, 
Enim k’ akpanikö, 
Enim k’ akpanikö. 

5. Abiat odudu idiökñkpö, 
Önö uwör’ ufn, 
Iyip Esie eyet m’idiök, 
Iyip Christ ekem mi, 
Iyip Christ ekem mi. 

6. Se m’idiök fo k’ukot Jesus, 
Eröñ ekewotde, 
Ayak ukpöñ Esie k’ uwa, 
Önö kpukpru owo, 
Önö kpukpru owo.

 Amen. 
    """
    },
    {
      "id": 52,
      "title": "TORO, O TORO ABASI YE EDIDEM NYIN ",
      // "audio": "",
      "body": """
    KEY C 4/4 

{ld :m ls :m l f .s :L.t ld' 
:-|m' :m' lr' :d' lt:L 
ls :-} 

1. TORO Öböñ Abasi! 
Kwö ikwö ke uteñe: 

Körös: 
Koro mfön Esie ye 
Nyin mi idikureke. 

2. Tor’ Enye, anam utin 
Ayama k’ usen k’ usen. 

3. Öfiöñ ke okoneyo, 
Önö eti uñwana. 

4. Tor’ Enye, önö edim 
Ndiköri mkpasip. 

5. Anam me eto mfri 
Eñwum ata ekese. 

6. Toro Enye, k’ idök nyin 
Enye öyöhö ubet. 

7. Önö nsinsi uwem, 
Ökörö k’eti udia.
 
8. Toro Akwa Edidem, 
Ofri, ekondo ekwö. 
Körös: 

Toro Ete ye Eyen, 
Ye Edisana Spirit. 

Amen. 

    """
    },
    {
      "id": 53,
      "title": "ABASI MMI AFO EDI UTIBE",
      // "audio": "",
      "body": """
    
KEY C 4/4

{:m ls :s ld :d' lt :L ls 
:s lm' :t ld' :r' ls:-l -} 

1. ABASI mi, okpon didie, 
Uböñ Fo ayama, 
Itie mböm Fo emeye, 
Edu ke uñwana. 

2. Mini Fo enyene ndik 
O nsinsi Öböñ, 
Ke kpukpru ini me spirit 
Enukhö enö Fi. 

3. Eye didie, eye didie, 
K’ ekutde iso Fo, 
Akwa ifiök Fo y’odudu, 
Edi nsi nsi. 

4. M’abak Fi, ndudu Ete, 
Ke akwa uteñe, 
Nyuñ ’kpono Fi 
k’ idorenyin, 
Ye mbuñö esit. 

5. Nyema Fi ñko Öböñ, 
Ökpösöñ Abasi, 
Sia edide edise mi 
Ke idiök itie mi.
 
6. Ete me eka ke isöñ, 
Imaha ‘nte Afo 
Iyöhö nte öyöde 
Mi, anam idiökñkpö. 

7. Ete, k’ima önö Jesus, 
O nso idara, 
Ke ’nukhöde k’ebekpo Fo, 
Nyese iso Fo.
 
Amen. 
    """
    },
    {
      "id": 54,
      "title": "DI, AFO IDIM EDIDIÖÑ ",
      "audio": "",
      "body": """
    KEY Eb 3/4

{:m .r |d:d :m .s |r :r :m .s 
|L :s :m .r |d : -} 

1. DI, Afo idim edidiöñ, 
Nam mi ñkwö mfön Fo, 
Idim mböm ke öfiörö, 
Anam nyin itoro Fi, 
Kpep mi m’ inem ikwö oro, 
Mö ekwöde ke enyöñ, 
Motoro k’ obot ndade, 
Obot akwa ima Fo. 

2. Nyewuk itiat uböhö, 
Nyeyom uñwam Fo do, 
Nyesim iduñ k’ ifure 
Oto k’akwa ima Fo, 
Ke esen, Jesus oyom mi,
Nyode mkpöñ Öböñ, 
Anyaña mi k’iyip Esie, 
Osio k’ ndik ye mkpa. 

3. O! Ami ndu ke isöñ 
Kabaña mfön Öböñ, 
Yak mfön Fo, nt’ ebuka, 
Öböp esit mi k’Afo, 
K’esit mi oyomde ‘ndiyo
‘Ñkpöñ Öböñ emi ’made; 
Bö esit mi, nyuñ nam enye, 
Ebiet iduñ Fo k’ enyöñ. 

Amen. 
    """
    },
    {
      "id": 55,
      "title": "AKWA UTEÑE OMODU ",
      "audio": "",
      "body": """
    KEY Bb 6/8

{:s,|d :-:d lr :-:r |m : -:r ld :-:s, 
|L, :-:L, ld :-:L,|s, :-:-l-:-:-} 

1. AKWA uteñe omodu 
K’ iso Andinyaña, 
Enye ayara anyanya, 
Etiñ ikö mfön, 
Etiñ ikö mfön. 

2. Baba owo ibietk’ Enye, 
K’ otu owo k’ isöñ, 
Enye eye akan kpukpru, 
Edude ke enyöñ, 
Edude ke enyöñ.
 
3. Okokut mi k’ idiök itie, 
Edi .ndinyaña mi, 
K’ntak mi obiom but k’ eto, 
Emen mfukhö mi, 
Emen mfukhö mi. 

4. Mayak uwem mi nö Enye 
Y’idara mi kpukpru, 
Enye ’kan mkpa önö mi, 
Osio mi ke udi, 
Osio mi ke udi.
 
5. Ke uyöhö Esie, möbö 
Uwem oto k’ enyöñ, 
Mkpenyene tösn esit,
Öböñ, mkpönö Fi,
Öböñ mkpönö Fi.

 Amen. 
    """
    },
    {
      "id": 56,
      "title": "UBÖÑ ENYENE ABASI ",
      // "audio": "",
      "body": """
    KEY Bb 4/4

{|s, :m, ld :s,|m :-.r ld :s,|L, 
:L, ls, :d ls, :f, lm, :-} 

(Moderately fast) 

1. UKPONO enyene Ete, 
Ukpono enyen’ Eyen, 
Ukpono enyene Spirit: 
Abasi, Ita ke kiet, 
Ukpono, akwa ukpono, 
Ododu k’ nsi nsi. 

2. Ukpono enyene Enye, 
Andima nyin mi k’ isöñ, 
Eyetde me ukwañkpö nyin, 
Anam ikara y’ Enye, 
Ukpono, akwa ukpono, 
Enyene Eyeneröñ.
 
3. Ukpono enyen’ Edidem 
M’enjel y’ufök Abasi,
Öböñ ofri ererimbot, 
Enyöñ y’ isöñ ekwö Fi; 
Ukpono, akwa ukpono,
Enyene Öböñ uböñ. 

4. “Ukpono, akwa edidiöñ” 
Edi ikwö me enjel, 
“Ukpono y’uböñ y’odudu!” 
Kpukpru ekondo ekwö, 
Ukpono, akwa ukpono,
Enö Öböñ me mböñ. 

Amen. 

    """
    },
    {
      "id": 57,
      "title": "IMA ÖBÖÑ AKAN KPUKPRU",
      // "audio": "",
      "body": """
    KEY Ab 3/2

{|s, :-:s,lL, :-:L,ls, :d :m lm ::
r :d :-:t,|L, :-:s, ls, :t, :L, ls :-: -} 

1. IMA Öböñ akan kpukpru, 
Idara edi k’ isöñ! 
Nam iduñ Fo ke esit nyin, 
Nam ifiök me mböm Fo, 
Jesus, ömöyöhö y’mböm, 
Amasana ke ima, 
Tiene nyin y’ erinyaña Fo, 
Nö esit nnyekidem. 

2. Nö nyin Edisana Spirit, 
Oduk k’ esit enyekde, 
Nam nyin kpukpru iduñ y’Afo, 
Nam ikut uñwöñ’ emem, 
Sio ima idiök ido fep, 
“Eritöñö ye Utit;” 
Nam iwörö k’ufn idiök, 
Ibuötidem tut’ utit. 

3. Di akwa Ete, nyaña nyin, 
Yak inyene mfön Fo, 
Fiak di ke esit nyin, fiak di, 
Kukpöñ aba temple Fo, 
Afo ke nyin iditoro, 
Nte enamde k’ enyöñ, 
Idara Fi kpukpru ini, 
Iyöhö ke ima Fo. 

4. Nam nyin imana obufa, 
Inyuñ inana ntöi; 
Ikut ata erinyaña 
Emi Afo önöde, 
Ito k’ uböñ iduk k’ uböñ, 
Tutu nyin iduk heven, 
Inim anyanya k’ iso Fo, 
K’ utib’ ima y’ itoro. 

Amen. 

    """
    },
    {
      "id": 58,
      "title": "EYENERÖÑ OMODOT! ",
      // "audio": "",
      "body": """
    
KEY D 4/2

{|d'.d' :d' .d'lt .L :s |L .L 
:L .L ls .f :m } 

1. EYENERÖÑ omodot! 
Eyeneröñ omodot! 
Eyeneröñ omodot! 
’Kewotde. 

Körös: 
Toro, hallelujah! 
Toro, hallelujah! 
Toro, hallelujah! 
Tor’ Enye! 

2. Iyeyara anyanya, 
Iyenyene erikan, 
Iyebö mfön Ete, 
Ke Eyen. 

3. Ke isimde ko k’ enyöñ, 
K’ ediye obio ima, 
Nyin iyekop uyukhö 
Ke Eyen.
 
4 Diöñ utom Fo O Öböñ! 
K’ Eti Spirit ye ikö;
Diöñ utom Fo O Öböñ! 
Ke Eyen. 

5. Tuk anamidiök k’esit 
Man ofiori, ‘ndinam nso? 
Nam amana obufa 
Ke Eyen. 

Amen. 
    """
    },
    {
      "id": 59,
      "title": "UKPONO ENYENE ABASI, HALLELUJAH!",
      // "audio": "",
      "body": """
   KEY Eb 4/2 

{:d .r |m .m :m .m ls.m :r .d|L :L 
ls :-|d' :d' .,d' ld' .s :m .d lr :-.m lr} 

1. MÖDO nyin ikpaha mba 
ke akan’ ikwö 
Toro Öböñ, Hallelujah! 
Iyekwö k’ökpösöñ uyo 
ke mbuötidem, 
“Toro Öböñ, Hallelujah!” 

Körös: 
O nditö Abasi, 
Edot ndikwö ikwö, 
Koro usuñ k’ ayama, 
Ukpöñ nyin amadara, 
Amakem nyin iyeka, 
Ke okure Edidem, 
“Toro Öböñ, hallelujah!” 


2. Ima Abasi enyenyik esit 
nyin eti, 
“Toro Öböñ, hallelujah!” 
Nyin idök ke mba ika 
ke enyöñ obot, 
“Toro Öböñ, hallelujah!” 

3 Ika k’okure Edidem 
eböpde ke gold, 
“Toro Öböñ, hallelujah!” 
Do, iyesöp ikut Edidem 
k’ uböñ Esie, 
“Toro Öböñ, hallelujah!” 

4. Do iyekwö ima Esie 
k’ obufa ikwö, 
“Toro Öböñ, hallelujah!” 
Iyetoro Jesus ye mö 
edepde k’ iyip, 
“Toro Öböñ, hallelujah!” 

Amen.  
    """
    },
    {
      "id": 60,
      "title": "O, ÖBÖÑ ENYÖÑ ",
      "audio": "",
      "body": """
    KEY G 3/4

{|m:m:rld:-:s,ld :-:rlm:-:-|s, 
:d:mls :-:f lm:r :d lr:-:-} 

1. ÖBÖÑ enyöñ y’ inyañ 
y’isöñ, 
O, bö itoro ye uböñ, 
Idiwut ima nyin didie? 
O Andinö. 

2. Afo ufamke Eyen Fo, 
Ayak önö ererimbot, 
Ökönö Enye ke mfön, 
O Andinö. 

3. Nyin idöduök s’inyenede, 
Man ibö ata inyene, 
S’ inöde Fi edi ebuöt, 
O Andinö. 

4. Afo önö s’ inyenede, 
Uwem, enö ye odudu, 
O yak iduñ y’Afo k’enyöñ, 
O Andinö. 

Amen. 

    """
    },
    {
      "id": 61,
      "title": "ESÖÑÖ EDA YE JESUS ",
      // "audio":"",
      "body": """
      KEY G  4/4

{:s,|m :m lm :m lm :-lm :mlm :d 
lt, :d lf :-l-} 

Sop solo 

1. ESÖÑ’ eda ye Jesus, 
Mbon eköñ Öböñ; 
Emener’ uböñ Esie, 
M’asua idikanke, 
Nyin iyekan ke kpukpru 
Enye ’yeda usuñ, 
Tutu nyin ikan m’asua, 
Man Christ edi Öböñ. 

Körös: 
Eda (eda) ye Jesus, 
Mbon eköñ Öböñ; 
Emener’ uböñ Esie, ikanke! 
M’ asua idikanke. 


2. Esöñ’ eda ye Jesus, 
Ekop ikot Esie; 
Eyak ika ke eköñ, 
K’eti ini emi; 
Enam ‘nte irenowo 
Eñwana ye m’asua, 
Esin ifik eñwana, 
Eñwana ökpösöñ. 

3. Esöñ’ eda ye Jesus, 
Ke odudu Esie; 
Ubök owo isöñke, 
Kubuöt idem k’ okuo; 
Esine ñkpö eköñ, 
Ekpeme ke akam, 
K’eköñ ösöñde eti, 
Eñwan’ ukem ukem. 

4. Esöñ’ eda ye Jesus, 
Eköñ ibighike; 
Mfin, ema eñwana, 
Mkpöñ, eyekure; 
Enye emi akande, 
Enyene anyanya; 
Odu y’ Edidem uböñ, 
Akara k’ nsinsi. 

Amen. 
      """
    },
    {
      "id": 62,
      "title": "KWÖ IMA JESUS ",
      // "audio":"",
      "body": """
      KEY Ab  9/8

{|s, :-:s,ld :-:-l-:-:d lm :r :d |r 
:-:-lr:-:-lr :m :flm :-:r ld:-:lt, 
:-:-|d :-:-l-:-: } 

1. KWÖ, O kwö, akani mbuk 
Utibe ima Öböñ; 
Kwö Jesus ke uböñ Esie, 
Ye udim mbon enyöñ. 

Körös: 
S: Kwö, O kwö, et’ ima 
Jesus, 
ATB: Kwö, O kwö ima, et’ ima 
Jesus 
S: Tor’ Enye… ke kpukpr’ebiet, 
ATB: Toro Enye ke kpukpru 
ebiet 
All: Kwö, O kwö utibe mbuk 
Tutu ekondo ekop. 

2. Kwö ima Esie ye afo, 
Tiñ mkpa Jesus k’ikwö; 
Yak inem ikwö ’da m’udim 
Önö Eti Andifak.
 
3. Ekwö! mbufo efakde, 
Ekwö kpa mbuk oro, 
Tutu kpukpr’ usem ye 
m’idut 
Ebuana k’ikwö emi. 

Amen. 

      """
    },
    {
      "id": 63,
      "title": "KINI ISIMDE HEVEN",
      // "audio":"",
      "body": """
      KEY C 4/4 

{|s :s ls :d'| m .f :s .L ls :mlf :f 
lf .m :r .m lf :s lm :-} 

1. KWÖ utibe ima Jesus, 
Kwö mböm y’ mfön Esie; 
Ke ediye ufök k’enyöñ, 
Otim itie önö nyin. 

Körös: 
Kini isimde heven, 
O! akwa usen idara oro, 
Kini ’kutde Jesus, 
S: Iyekwö ikwö erikan. 
ATB: Nyin iyekwö, ifiori 
erikan. 

2. K’ isañade k’ uwem emi, 
Iyekut ukut k’usuñ; 
Edi k’ utit isañ nyin mi, 
Mfukhö iduh’ aba.
 
3. Yak nyin inam akpanikö; 
Ibuötidem kpukpr’ usen; 
K’ idikutde Enye k’uböñ 
Iyebö utip utom. 

4. Yak ifeghe ‘mbuba emi 
Man ikut iso Öböñ; 
Eyebered’ usuñ heven, 
Nyin iyesaña k’esit. 
Amen. 
      """
    },
    {
      "id": 64,
      "title": "ATA OBUFA IKWÖ",
      // "audio":"",
      "body": """
     KEY D 4/4 


{:m .,f|s :-.fe ls :d' .,d' lt :d' .r' ld’ 
:d' .t lL : L .,L ls :d .r lm :r .d ls } 

1. ME ikwö edu ’made ndikwö, 
Enem mi esit nt’ inuen k’enyöñ, 
Ikwö oro öyöhö y’idaresit, 
Anam uñwana ayama k’ekim. 

Körös: 
Obufa... ikwö... 
Obufa... ikwö... 
Nyekwö . . . kemi … 
Ye mö e…fakde, 
Uböñ ye odudu enyen’ 
Andifak (Andifak) 
Uböñ y’itor’ enyen’ 
Eyeneröñ. 

2. M’ inyene edu efönde eti, 
Edöñde mi esit ke ini ukut, 
Möfiök iduñ kiet eyede odu, 
Nyebuana ye mö ke ikwö do. 

3. Ndidop ikwö, mfukhö k’esit, 
K’ Öböñ ima önöde idara? 
K’Enye owutd’ ediwak ebiet iduñ, 
Ödöhö “Kiet odu önö fi do” 

4. Nyekut ibibene ’ke Jasper, 
Ke nsimde ekim mbubreyo, 
Möfiök mbukpöñ ekim oro önö, 
Uñwana adade osim Enye. 

Amen. 
 
      """
    },
    {
      "id": 65,
      "title": "ENYIÑ EMI MMADE ",
      // "audio":"",
      "body": """
      KEY A 3/4 

{:s,|m :-:r ld :-:t, lt, :L, :d|s, :-:s 
ls :f :m lm :r :d ld :t ,} 

1. ENYIÑ odu ’made ‘ndikop, 
Mama ‘ndikwö ñko, 
Enenem mi ñko k’utöñ, 
Akan kpukpru enyiñ. 

2. Etiñ ima Andinyaña, 
Akpade ‘ndifak mi; 
Y’eti iyip Esie ñko, 
K’ibuot anamidiök. 

3. Anam ukpöñ mi adara, 
Ösökhi möñ eyet, 
Ödöhö ke “suñ-suñ uyo,” 
Buötidem, kufeghe. 

4. Jesus, enyiñ ’made eti, 
Nyuñ ’made ndikop, 
Ösöñurua akan ‘nditiñ, 
Enem eti eti.
 
5. Enyiñ emi önö inem, 
K’usuñ ukut emi, 
Añwam mi ke usuñ isañ, 
Man ñkut Abasi.
 
6. Do ye mö edepde k’iyip, 
Ekpöñd’ idiök y’ukut, 
Nyekwö ’bufa k’nsinsi: 
Ima Jesus y’ami. 

Amen. 
      """
    },
    {
      "id": 66,
      "title": "EDIAN UYO KE IKWÖ ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:d.rlm.s :s.Lls.m:r.d|m.m 
:r .r ld } 

1. IKWÖ omodu ke heven 
eke owo mifiökke, 
Me enjel ekwö itoro 
Eyeneröñ k’ ebekpo, 
Mö ekwö ke inem harp mö 
k’uyo emi enemde, 
O yak nyin mi ibiet kpa mö 
k’ inamde utom Öböñ. 


Körös: 
“Edisana,” ed’ ikwö me enjel 
Modori enyin ndikwö do 
ye mö ke heven 
Eyefut mba kini idikwöd’ 
ikwö ufak 
Me enjel ifiökk’ idara 
ek’ erinyaña nyin. 

2. Edi mokop ikwö efen 
k’ ökpösöñ inem uyo, 
“Enö Enye ’mi akafakde 
onyuñ edepde nyin” 
Nyin ikebe k’akwa ukut – 
idi k’eti ’söñ emi, 
Ekeyet öföñ nyin afia 
k’idim möñ öfiöröde. 

3. Me enjel ekpañ utöñ mö 
ikemeke ndikwö, 
Nte uyom ediwak möñ 
oto mö ’yetde k’iyip; 
Ekwö ebaña idomo, 
eñwan ye erikan mö, 
Etoro Andifak mö etiñde, 
“omotim anam!” 

4. Okposuk ndighe enjel 
edi möfiök ke enyöñ, 
Nyebuana k’ikwö emi 
me enjel mibuanake, 
Nyekwö mbaña Andinyaña 
k’eto Calvary, 
Ekefende m’ukwañkpö 
akpa önö idiök owo. 

Amen. 
      """
    },
    {
      "id": 67,
      "title": "ME TÖSN EDEME ",
      // "audio":"",
      "body": """
      
KEY G 2/2 

{|d:m.,f| s L.s f:m .f| m.d :r.t ,
, , |d :-} 

1. O ’MOYOM tösn edeme, 
Etoro Andifak, 
Etoro Andifak, 
Ye uböñ Abasi Ibom, 
(Y’akwa mfön Esie.) 3x 

2. Öböñ mi ye Abasi mi, 
Ñwam mi nditoro, 
Ñwam mi nditoro, 
Nyuñ nsuan k’ofri ekondo, 
(Ukpono Enyiñ Fo.) 3x 

3. Jesus! Enyiñ ebinde ‘ndik, 
Akande ukut nyin, 
Akande ukut nyin, 
Ikwö k’utöñ anamidiök, 
(Nsöñidem y’uwem.) 3x 


4. Obuñ odudu idiökñkpö, 
Önö uwör’ ufn, 
Önö uwör’ ufn, 
Iyip Esie eyet idiök, 
(Onyuñ ekem y’ami.) 3x 

Amen. 
      """
    },
    {
      "id": 68,
      "title": "EDISANA, EDISANA, EDISANA! AKWA ÖBÖÑ ABASI",
      // "audio":"",
      "body": """
     KEY Eb 4/4
Moderately slow 

{|d :d lm :m ls :-ls :-lL :-lL:L ls :lm 
:-} 

1. EDISAN’ Abasi, Akwa Öböñ nyin! 
Ke usen ubök emi ikwö itoro Fo; 
Edisan’ Öböñ nyin, mböm ye odudu! 
Enyen’ Ete y’Eyen y’Eti Spirit. 


2. Edisan’ Abasi! nti owo Fo 
Etuak ibuot enö Fi k’iso 
ebekpo Fo; 
Cherubim, Seraphim, 
eduö ke iso Fo, 
Okodude, kemi ye k’nsinsi. 


3. Edisan’ Abasi! ’kposuk 
edi ‘nte 
Uböñ Fo odibede me i-di-ök owo; 
Afo edisana, efen ibietke Fi, 
Ösöñ k’odudu, k’ima ye uyai. 


4. Edisan’ Abasi!Akwa 
Öböñ nyin! 
Kpukpru ‘ñkpö etoro Fi 
ke enyöñ ye isöñ; 
Edisan’ Öböñ nyin! mböm 
ye odudu 
Enyen’ Ete y’ Eyen y’ Eti 
Spirit! 

Amen. 
 
      """
    },
    {
      "id": 69,
      "title": "UBÖÑ ENYENE ABASI ",
      // "audio":"",
      "body": """
      KEY Ab 3/4

{:s,|s, :-:L, .t, ld :s, :d lr :s, :r 
|m :-} 

1. 
ETORO Abasi, Anam ikpö ‘ñkpö:
Önö ererimbot Eyen Esiemö; 
Oto k’akwa ima, edi eyit 
nyin,
Önö usuñ uwem, man 
kpukpru eduk. 


Körös: 
Tor’ Öböñ, tor’ Öböñ, 
yak ekondo ekop!
Tor’ Öböñ, tor’ Öböñ, 
yak m’owo edara! 
O di tiene Ete ke Jesus Eyen, 
Enö Enye uböñ, Anam ikpö 
‘ñkpö! 


2. O! öyöhö ufak, edepde 
k’iyip, 
Andinim enyen’ uñwöñö 
Abasi; 
Anamidiök k’onimde 
k’akpanikö,
Enyene erifen k’Öböñ 
nyin Jesus. 


3. Anam ikpö ñkpö, ekpep 
nyin ntre, 
Idara eyekpon ke Jesus 
Eyen; 
Eyesana, okoñ, eyetim 
okpon: 
Utibe idara k’ikutde Jesus. 

Amen. 

      """
    },
    {
      "id": 70,
      "title": "AMI NYEKWÖ MBAÑA JESUS ",
      // "audio":"",
      "body": """
     KEY C 9/8

{lm:-:sld':-:-l-:-:t lr':d' :Ll 
s :-:-lm :-:-ls :-:d'lt :-:-l-::
s ls :L :t ld' :-:-l-:-:-} 

1.AMI ‘nyekwö ima Jesus-
Ima ek’ okpond’ akan; 
Ököduök uwem önö nyin, 
O ima okpon didie! 

Körös: 
Andifak mi, nyetoro, 
Ke kpukpru m’usen k’isöñ, 
SA: NyetoroAndinyaña, 
TB: Nyetoro, toro, toro 
Andinyaña, 
Jesus Christ, Öböñ mi ke 
uböñ. 

2. Ami ‘nyekwö ikö Jesus-
Öwöröd’ Enye k’inua; 
Etiñ emem y’ idöñesit, 
Öfönde ye ukpöñ mi. 

3. Ami ‘nyekwö mfön Jesus-
Eke ñkutde kemi; 
K’mbuötidem eyefen mi; 
K’nimde k’akpanikö. 

4. Ami ‘nyekwö enyiñ 
Jesus-
Enyiñ ek’ enemde mi 
Mö emi efakde ’yekwö 
Enyiñ Esie ko k’enyöñ. 

Amen.  
      """
    },
    {
      "id": 71,
      "title": "ENYE EDI ANIE?",
      // "audio":"",
      "body": """
      
KEY A 3/4 

{:s, .s,|s, :-.s, :s, .s, lL, :-:L, .L, 
ls, :-.s, :d .dlr :-:-} 

1. ANIE ke ufök enañ, 
M’ekpemeröñ ekpono? 

Körös: 
Edi Öböñ O utibe! 
Kpa Öböñ Edidem heven! 
p Yak iduö Enye k’ukotff 
Edidem kpukpru m’idut! 

2. Anie ke akwa ukut, 
Etre udia ke desert?
 
3. Anie ke mö etoro, 
Ke ikö mböm Esie? 

4. Anie ke m’ owo eda, 
Mbon ukut etiene? 

5. Anie ke okoneyo, 
Odu ke Gethsemane? 

6. Anie oto ke enyöñ, 
Akara kpukpru m’idut? 

Amen. 
      """
    },
    {
      "id": 72,
      "title": " EKÖM ÖBÖÑ EDIDEM ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s, |d : t, .L, ls, :d | m, :f, 
ls, :s, l L, .t, :dlr:r lm:-l-} 

1. EKÖM Öböñ, Edidem, 
Akwa Eyen David; 
Eköm Eyen emekde, 
Ndikara k’isöñ! 
Man abiat ufik y’utuk, 
Ayak mbuoteköñ; 
Emen idiökñkpö efep, 
Akara k’nsinsi. 

2. Eyedi ‘nte mbara 
Ödiöñ eti isöñ; 
Idaresit ye ima, 
Asiakha ‘nte iköñ. 
Ke iso Esie k’obot 
Eyekwörö emem; 
Edinen ido ‘nte möñ 
Eyeyöhö k’isöñ. 

3. Ndidem ’yetuak ibuot, 
Enö Enye uböñ; 
M’idut ’yekpono Enye, 
Etor’ Enye ñko. 
Koro Enye ’yekara 
K’obot ye ke inyañ. 
Adaña ‘nte ‘nturukpom 
Ye ibiom efede. 

4. Akam ye mkpe ubök, 
Eyetiene Enye; 
Ukara Esie ’yekpon, 
Inyeneke utit. 
Eyo y’ini ibiatke 
Me ediomi Esie; 
Enyiñ Esie k’nsinsi 
Ye nyin edi -Ima! 

Amen. 
      """
    },
    {
      "id": 73,
      "title": "AKWA ANDIKÖK",
      // "audio":"",
      "body": """
     KEY Eb 6/8

{:s|s:-:m ld:-:r|m:-:fls:-:s 
|s :-:d lm :-:d |r :-:-ld :-} 

1. AKWA Andikök k’ekpere, 
Jesus öyöhö y’mböm; 
K’etiñ ikö ndöñesit, 
O kpañ utöñ nö Jesus! 
Körös: 

Inem ikwö me enjel; 
Inem enyiñ k’otu nyin; 
Ikwö enemde akan: 
pp Jesus, eti Jesus! 

2. Me idiökñkpö fo emefen; 
O, kop uyo nö Jesus! 
Ka ke emem duk ke heven, 
Yar’ anyanya ye Jesus. 

3. Uböñ enyen’ Eyeneröñ! 
Möbuötidem ye Jesus! 
’Mama enyiñ Andinyaña, 
Mmama enyiñ Jesus. 

4. Enyiñ Esie ebin ndik, 
Efen ibietke Jesus; 
O, ami mama ndikop 
Edinem enyiñ Jesus! 

5. Iren, eñwam nditoro, 
Etoro enyiñ Jesus! 
Edi, iban, ekwö ñko, 
Etoro enyiñ Jesus! 

6. Nditö, ñkpri ye ikpö, 
Emi emade Jesus, 
Ekop enö ikot Esie 
K’erinam utom Jesus. 

7. Ke idikade k’enyöñ ko 
Iyesobo ye Jesus, 
Iyekwö k’ebekpo ima 
Enyiñ Esie, kpa “Jesus.” 

Amen.  
      """
    },
    {
      "id": 74,
      "title": "NIM ENYE EDIDEM!",
      // "audio":"",
      "body": """
      KEY G 4/4

{d :s, lm :d|s .,fe :s .,L ls :-lf :r lm 
:d lr .,de :r .,m lr :-} 

1. NÖ Christ uböñ, Öböñ 
y’Edidem, 
Toro Enye ke nsi nsi; 
Uböñ enyene enyiñ Esie, 
Kemi ye k’nsinsi. 

Körös: 
SA: Nyin iyenö Enye uböñ, 
TB: Toro Enye, toro Enye 
All: Ke obio uböñ iyetoro! 
SA: ’Yenö Enye uböñ – 
TB: Toro Enye, toro Enye 
All: Kwö itoro Esie. 

2. Toro Enye me enjel 
k’enyöñ, 
Ekpere ebekpo ye ikwö; 
Yak m’idut edian uyo ekwö: 
“Edidem me-ndidem!” 

3. Enye edi Andikan idiök; 
Yak Spirit Esie akara nyin; 
Ke enyiñ Esie nyin iyekan: 
Toro k’nsi nsi. 

Amen. 

      """
    },
    {
      "id": 75,
      "title": "ENYIÑ EMI ENEMDE AKAN ",
      // "audio":"",
      "body": """
      KEY G 3/4 

{:s,|d .d :m :d |L, .L, :d :L, ls, .d 
:m :d lm :r } 

1. ENYIÑ efen inemke mi, 
K’isöñ ye ko ke heven; 
Enyiñ k’iso eman’ Esie, 
Edi Christ Andinyaña. 

Körös: 
Imama ‘ndikwö Christ 
Öböñ, 
Idara eti Jesus! 
Iduhe ikö ikopde 
Ek’enemde ‘nte “JESUS.” 

2. K’ Enye ököñöde k’ eto, 
Ekewet enyiñ emi; 
Man ekut ntak emi nyin 
Imad’ Enye k’ nsinsi.
 
3. Kemi, ke ebekpo Ete-
Ökpösöñ k’ndinyaña 
Nsio ke idiök ye ubiak, 
Öböñ y’ Andifak, Jesus. 

4. O Jesus! Utibe enyiñ, 
Mfön Fo ikureke; 
Mkpöñ, mfin edi ukem, 
Afo odu k’ nsinsi! 

Amen. 
      """
    },
    {
      "id": 76,
      "title": "NÖ ENYE UBÖÑ!",
      // "audio":"",
      "body": """
      KEY F 4/4

{|m:-.relm:d|s :-.fels:m|r :-.de 
lr .f:m.r|d:-l-:-} 

1. SESE! Mendima Abasi; 
Se “Owo ukut” kemi, 
Ke eñwan Enye amakan; 
Kpukpru eyekpon’ Enye! 
Körös: 

Toro Enye, m’enjel toro! 
Toro Jesus Edidem! 
Toro Enye, m’enjel toro! 
Toro Jesus Edidem! 


2. Toro Öböñ! M’enjel toro! 
Jesus edi y’erikan; 
Nö Enye akakan uböñ, 
M’ udim enyöñ k’edara. 

3. Ediwak esak nsakhi, 
Esakhi utom Öböñ; 
Mendima esuk etoro, 
Etoro enyiñ Esie.
 
4. Kop iköt Öböñ k’efiori! 
Kop me ikwö erikan! 
Jesus ada akwa itie, 
O, idara omokpon! 

Amen. 

      """
    },
    {
      "id": 77,
      "title": "EDARA ENYIÑ JESUS ÖBÖÑ! ",
      // "audio":"",
      "body": """
      KEY Bb 3/4

{:s,|d :-:r l m .,f :s :d l r :d :t, |d :-} 

1. EDAR’ enyiñ Jesus Öböñ! 
Yak m’enjel ekpono; 
Yak m’enjel ekpono; 
Esio anyanya ek’ uböñ, 

Körös: 
SA: Ekpo…….no, 
TB: Ekpono, kpono, kpono 
(kpono) 
SAT: Kpono, kpono, kpono 
B: Kpo………no 
All: Yat Enye anyanya!
 
2. Mbufo ewotde k’Öböñ, 
Do ke itie uwa, 
Do ke itie uwa, 
Ekwö, etor’ Esañ Jesse. 

3. Israel emi ekemekde, 
Nsukhö y’ esisit, 
Nsukhö y’ esisit, 
Edara Andifak k’mfön,
 
4. Me idiök Gentile ekufre, 
Idiök itie ‘mbufo, 
Idiök itie ‘mbufo, 
Nim anyanya k’ukot Esie, 

5. Yak kpukpru oruk ye usem, 
K’ ererimbot emi, 
K’ ererimbot emi, 
Enö Enye kpukpru uböñ. 

6. O, yak nyin ye udim enyöñ 
Iduö Enye k’ ukot; 
Iduö Enye k’ ukot; 
Ikwö ye mö k’nsi nsi. 

Amen. 

      """
    },
    {
      "id": 78,
      "title": "TORO ENYE! TORO ENYE! ",
      // "audio":"",
      "body": """
      KEY Ab 6/8

{|m :-:-ls :-:-|d : -:-lm :-:-|r 
:m :r ld :t, :L,|s, :-:-ld :-:-} 

1. TORO Enye, Jesus ata 
Andifak nyin! 
Isöñ kwö, tiñ utib’ ima 
Esie, 
Kpono Enye, mbufo me 
enjel k’uböñ 
Ekpono enyiñ Esie 
k’ odudu! 
‘Nte ’kpemeröñ, Jesus 
ekpem’ Esiemö 
Enye akama mö k’ubök 
Esie. 

Körös: 
Toro Enye! tiñ baña odudu 
Esie; 
Toro Enye! toro k’nsi nsi! 

2. Toro Enye, Jesus ata 
Andifak nyin! 
K’idiökñkpö nyin ke Enye 
akakpa, 
Enye, Itiat, nsinsi erinyaña 
nyin, 
Kpono Enye! Jesus 
ekeköñde! 
Toro Jesus, okobiomde 
ukut nyin, 
Utibe, Ökpösöñ, akwa ima. 

3. Toro Enye, Jesus ata 
Andifak nyin! 
Me heven k’ekwö 
hosanna ñko! 
Jesus, Andinyaña, akara 
k’ nsinsi; 
Kpono Enye, Oku ye 
Edidem! 
Christ eyedi ndikan 
ererimbot, 
Odudu y’uböñ enyene 
Öböñ. 

Amen. 
      """
    },
    {
      "id": 79,
      "title": "UKPÖÑ MI KÖM ÖBÖÑ!",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{|d .,s, :m, .f, ls, .d :-|m .,r :d .t, 
ld :s, .s,|L, :L, lr .d :t, .L,|s, :L, lt,} 

1. TORO Öböñ uböñ, Öböñ 
kierakiet; 
Toro Enye k’utibe ima ye 
nyin; 
K’uñwöñö ndidu ye nyin 
k’isañ nyin; 
K’adah’ ikañ y’obubit 
enyöñ k’usen. 

Körös: 
SA: Me …enjel etoro 
TB: Me enjel etoro, ekwö ke 
harp gold 
SA: E...kwö ke harp gold, 
TB: Me enjel etoro, ekwö ke 
harp gold 
SA: M’u...dim Esie ekwö, 
TB: M’ udim Esie ekwö, me 
‘ndikut Enye 
SA: Me ... ‘ndikut Enye; 
TB: M’ udim Esie ekwö, me 
‘ndikut Enye 
SA: Ke ... ukara Esie 
TB: Ke ukara Esie, k’isua 
ebede 
SA: K’isua ebede 
TB: Ke ukara Esie, k’isua 
ebede 
All: M’utom ubök Esie, 
eyetoro Enye, 
Toro Enye, ukpöñ mi toro 
Öböñ! 

2. Tor’ Öböñ afakde kpukpru 
ke mfön; 
Tor’ Öböñ baña idim möñ 
ökökde; 
Kabaña mfönido y’ima 
Esie, 
Kabaña uñwöñö eriyer’ 
akam. 

3. Toro Enye baña ntunö-ima, 
Öböpde nyin adian ke ñkpö 
enyöñ; 
Ke mbuötidem ye ke 
idorenyin, 
Ye ke obio ndima ebohode. 

Amen. 
      """
    },
    {
      "id": 80,
      "title": "TORO ANDIBOT NYIN ",
      // "audio":"",
      "body": """
KEY C 4/4 

{|m :m .,f lL :s .,d'|m' :d' .,L lL :s |f 
:s.,f lm:d'.,tlL:t.,L ls:f } 

1. TORO Andibot, Nsinsi 
Andifak! 
Afakde nyin osio k’mkpa 
y’udi; 
Kwö uböñ Esie, O kwö 
nyuñ tor’ Enye, 
Ösöñde k’odudu, 
k’uñwam y’ ufak. 


Körös: 
S: Toro… Enye… 
ATB: Toro Enye, toro Enye 
All: Uböñ k’ata enyöñ, yak 
itoro Enye; 
S: Toro… Enye… 
ATB: Toro Enye, toro Enye 
All: Öföfön önö enyiñ Esie! 

2. Toro Andibot y’ akwa 
Andikpeme, 
Akwa Itiat udib’ iköt Esie; 
Nyin m’eröñ Esie, ada 
isañ nyin suñ 
Ösukhöre k’ebedeñ möñ 
uwem. 

3. Toro Andibot, Idim 
mfönido, 
Odude k’ uböñ y’akwa 
ukpono; 
Bere k’mböm, ye ke 
uñwöñö Esie 
Ososuk omum akama 
k’ima. 


Amen. 
      """
    },
    {
      "id": 81,
      "title": "ÖBÖÑ EDI EDISANA!",
      // "audio":"",
      "body": """
     KEY F 4/4 

{|m :m lm :m |r .,d :t, .,L, |s, :-|d 
:d .,r ld :t, |r :r .,m lr :d} 

1. EDISANA edi Abasi! 
Mbufo m’idut etoro Enye; 
Yak m’ obot enyek k’ ikö 
Esie, 
Enyuñ edara k’iso Esie; 
Okpon ke ifiök, awak ke 
mböm, 
Akwa Jehovah, Andikara! 

Körös: 
Edisana edi Abasi, 
M’ obot edara k’ iso Esie: 

2. Toro Enye, sio ‘mkpo 
idara! 
Andise Zion, suan eti mbuk; 
Eyesobo idiökñkpö 
y’ mkpa, 
Ekondo ’yekwö uböñ Esie, 
Etoro Enye ‘mbufo me enjel 
Ebanade ke uyai Esie. 

3. Etoro nsinsi Edidem, 
Yak iköt Esie ekpono Enye; 
Ko ke heven ’yebuana 
k’udim, 
Inim anyanya k’ iso Esie, 
Iyedemere ke mbiet Esie, 
Iyekut Enye, inyuñ ikwö! 

Amen. 
 
      """
    },
    {
      "id": 82,
      "title": "TORO NYUÑ KPONO EDIDEM NYIN",
      // "audio":"",
      "body": """
     KEY C 4/4 

{|d :m .,f ls :-.s|L .s :L .t ld' :-|r' 
:r'.,d' lt :-|m' :m' ., r' ld' :-} 

1. ÖBÖÑ okpon, Andikara 
kpukpru: 
Demere kwö! Demere kwö! 
Duö ke ukot Esie ke uteñe, 
Kwö, toro Edidem nyin! 

Körös: 
Mö emi efakde, 
Mia, mia harp ima fo! 
Köm Akwa Öböñ! 
Köm Akwa Öböñ! 
Ke m’utibe ñkpö; 
Fiori uböñ Esie; 
Kwö, toro Edidem nyin! 


2. Öböñ okpon, ikö Esie ada 
Demere kwö! Demere kwö! 
Ukpono y’ uböñ enyene 
Enye, 
Kwö, toro Edidem nyin! 

3. Öböñ okpon, edi y’ idaresit; 
Demere kwö! Demere kwö! 
Di y’ idara m’idut ererimbot, 
Kwö, toro Edidem nyin!
 
4. Öböñ okpon, enyiñ Esie 
’sana! 
Demere kwö! Demere kwö! 
Enjel y’owo, ebuk utom 
Esie, 
Kwö, toro Edidem nyin! 

Amen.
      """
    },
    {
      "id": 83,
      "title": "EYAK NYIN ITÖÑÖ NTAK IKWÖ ",
      // "audio":"",
      "body": """
     KEY A 4/4 

{:s, .,f,|m, .,s, :d .,r lm :f .,m|r :lL, 
:r .,d|t, .,t, :t, .t, lt, .f :m .,r lm 
:-l-} 

1. EYAK ikwö itoro 
Andinyaña, 
Akakpade man ifiök ima 
Ete, 
Yak isian ererimbot mböm 
Esie, 
Nte odude ndinam ‘mkpe 
ubök. 

Körös: 
Yak itiñ... utibe mbuk, 
Nt’ Enye… akakpade; 
Itoro ye uböñ enyene Enye; 
Okokut ukut man iböhö 
idiök (iböh’ idiök). 

2. Tor’ Enye k’ ikö ndöñesit 
Esie, 
Emi ekewetde enim toto ko; 
Enye ’kpere mendinim 
k’akpanikö, 
Eyenö mebuötidem mfön 
Esie. 

3. Toro Enye k’iko uñwöñö 
Esie 
Kabaña ebiet iduñ idikutde, 
Ke idude ye mendima ke uböñ, 
Do mfön Esie eyekan 
ndibuk. 

Amen.  
      """
    },
    {
      "id": 84,
      "title": "DI YAK ITUAK IBUOT ",
      // "audio":"",
      "body": """
     KEY G 4/4

{|m :-.f lm .t, :r .d|d :-lt,:L,|s, :-.d 
ld .d :t, .d|r :-ls :f 

1. O DI yak nyin ituak ibuot, 
Iboho k’ ufök akam, 
Köm Öböñ erinyaña nyin 
Emi ebetde nyin do.
 
Körös: 
O di yak nyin ituak ibuot, 
K’ ikwö ima y’ itoro, 
Inö Enye amade nyin, 
Kpukpru usen uwem nyin. 


2. Enye efen m’ukwañkpö 
nyin, 
Emen m’idiök nyin efep; 
Spirit Esie ’yeda usuñ 
Osim ke eti usen. 

3. Idomo eyesöp ebe, 
Ndien k’ otu mendima, 
Iyedu ye mö k’ nsinsi, 
K’ obio idara y’ emem. 

Amen. 
 
      """
    },
    {
      "id": 85,
      "title": "ENYE EDI ÑKPÖUTO ",
      // "audio":"",
      "body": """
      KEY A 4/4 

{:m .,r |d :s, ls, :d .t, |t, .L, :L, .L,
 lL, :r .r |d :t, lL, :s, |m:-l-} 

1. K’ESIT asanade, edi temple
Öböñ, 
Ikop ndudu Esie; 
O, idara ndibono k’ enyiñ 
Esie, 
Ke eti ini akam. 

Körös: 
Enye edi ‘ñkpö uto ’ñö 
mendinim, 
Enye edi ‘ñkpö uto ’ñö 
mendibö; 
O, iyebö ufön k’eribono 
k’ enyiñ Esie,
Öböñ eyebör’ akam. 

2. Uñwana uböñ Esie eyesim 
nyin mi, 
K’ ekikere okpude; 
Nditö eyekut akwa ima Esie, 
K’esañade ye Enye. 

3. Eyesöñ nyin idem 
k’eritiene Enye, 
Iyeyöhö y’ idara; 
Imotim ifiök k’ nsinsi 
ubök Esie 
Osuk ododu ye nyin. 

4. Yak iköri k’ mfön y’ ifiök 
akpanikö, 
Yak iduñ k’ata emem; 
Tutu idian ubök kiet ke 
ufök Öböñ, 
Ke nsinsi idara. 


Amen. 
      """
    },
    {
      "id": 86,
      "title": "ETOP MFARIDEM ",
      // "audio":"",
      "body": """
      KEY G 4/4

{:d .,r | m :m lm .f :s .L |s :m l :
r .,m |f:r lm :d|r :-l-} 

1. EKOP etop mfar’ idem, 
Ikwö idara k’ofim, 
Inem esie önö owo 
Odudu y’ idorenyin. 

Körös: 
Kop edi...nem uyo, 
Ikwö me andiböhö; 
Kop edi…nem uyo, 
Inem ikwö uböhö. 

2. Anyan ini asua emen, 
Mendima nte esie, 
Emebiat odudu esie, 
Ebekpo esie ’yeduö. 

3. M’ ufan edi! eduk k’ udim, 
Ebuana k’ eti ini, 
Uyama ke obot ewut 
Usiere eti usen.

 Amen. 

      """
    },
    {
      "id": 87,
      "title": "JESUS EYEDI ÖBÖÑ KE KPUKPRU EBIET ",
      // "audio":"",
      "body": """
     KEY E 2/4 

{|d :m .f|s : L .t |d' : t .L |s :|
s :s .s lL :s|f :m |r :-} 

1. JESUS eyedi Edidem, 
Ke kpukpru ebiet ke isöñ 
Uböñ Esie ’yesuk odu, 
Tutu öfiöñ ebe efep. 

2. Kpukpru m’idut y’ usem 
k’isöñ, 
Eduñ k’ ima Esie y’ ikwö; 
Uyo nditö eyetiñ, 
Edidiöñ mö k’ enyiñ Esie. 

3. Iyetoro, iböñ akam 
Inö Enye nte ibuot; 
Enyiñ Esie nt’ ufuöñkpö, 
’Yedök k’ uwa usenubök.
 
4. Kpukpru, edaha ke enyöñ, 
Edori Jesus Christ uböñ, 
Me enjel enenam ntem, 
Yak nyin mi idöhö 

“Amen.”   
      """
    },
    {
      "id": 88,
      "title": "UDIM ME CHRISTIAN",
      // "audio":"",
      "body": """
     KEY Eb 12/8

{:s,ld :-:r |m :-:-l-:-:-l-:-:s 
lf :-:L |s :-:-l-:-:-l -:-} 

1. K’ IKWÖ ida…ra y’ itoro… 
Imen esit...iköm Enye… 
Emi ada...de nyin usuñ… 
Ada ima… ekpeme nyin… 

Körös: 
Ida ke idara, idiana k’ esit 
kiet, 
Iyom mosop usuñ ’wörö 
k’ idiök y’ ukut 
Yak edi udöñ nyin –
‘ndisuan enyiñ Öböñ 
Jesus akwa Andinyaña, 
ibuk ima Esie. 

2. Ke kpukpru nyin… 
isobode… 
K’ ima emi... öböpde nyin… 
Yak akam nyin…ödök k’ enyöñ… 
Etien’ Enye… man ödiöñ 
nyin… 

3. Afo Ufan… nditöwöñ… 
Kpeme m’usuñ… ye 
m’isañ nyin… 
K’ akwa ubök… odudu Fo… 
Kpeme, kama…iköt Fo mi. 

Amen. 

      """
    },
    {
      "id": 89,
      "title": "MBUFO ETORO ÖBÖÑ!",
      // "audio":"",
      "body": """
    KEY F 4/4

{|m :r .,r ld :-.s,|d .r :m .f ls :m 
|L :L .,L ls :-.m |m .r :r .m |f :-} 

1. f ETOR’ Öböñ! emen uyo 
ke ikwö, 
Tiñ nö isöñ uböñ enyiñ Esie; 
Dian uyo ke ini ikwö idara, 
Suan etop enyiñ Esie ke isöñ. 

Körös: 
Iyebuk utibe mbuk, 
Iyekwö enyiñ Esie; 
Iyewut eti ukeme 
Ndisuan enyiñ Esie. 


2. f Etor’ Öböñ k’edisana 
ukpono, 
Enye odot ima nyin y’ itoro; 
Ese Enye, Itiat erinyaña nyin, 
Ubök mfön Esie ada usun. 

3. f Etor’ Öböñ, kpono Enye 
y’ idara! 
Eköm enyiñ Esie k’ utib’ ima; 
Yak itoro emen mfukhö efep, 
Kemi tutu isobo ke enyöñ. 

Amen. 
  
      """
    },
    {
      "id": 90,
      "title": "NYEKWÖ NYUÑ NTORO ANDINYAÑA MMI",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{d.r lm .m :m .m lr .r:r .r ld .d 
:t, .L,ls, :d .r lm .m :m .r ld.d :r .m 
lr : -l -:} 

1. NYEKWÖ ntoro Öböñ ke 
usuñ uwem emi 
Tutu ñkut uñwana obio 
heven (obio heven); 
Nyetiñ erinyaña Esie nsim 
obio oro, 
Nyeduñ ye Öböñ mi 
ndifumke (ndifumke). 

Körös: 
S: Nyekwö... ntoro... 
ATB: Nkwö k’ idara, ntoro 
k’ mfön 
All: Nyebuk nsi nsi mfön 
Esie; (mfön Esie) 
S: Nyekwö... ntoro... 
ATB: Ke kpukpru ini, itoro Esie 
SB: Tutu nsobo ye Enye ke 
enyöñ 
AT: Tutu nsobo ye Enye, nsobo 
y’Enye k’enyöñ. 

2. Nyekwö ntoro Öböñ, 
ukpem’ efen iduhe, 
Kpukpr’ unana mi Enye 
eyeyöhö (eyeyöhö) 
Enye omotim ofiök mi, 
eyebiom mbiomo mi, 
Tutu nsim obio idara 
k’ enyöñ (ko ke enyöñ) 

Amen. 
      """
    },
    {
      "id": 91,
      "title": "NYEKA KE EBIET EMI OYOMDE",
      // "audio":"",
      "body": """
     KEY F 6/8 

{:m |m :-:m ls :-:m .m|f :-:f lL ::
L |s :-.f :m ls :-:m |r :-:-l-:-} 

1. NDUSUK idighe ke obot, 
Me ke mbufut inyañ; 
Ndusuk idighe ke eñwan 
Öböñ mi eyeyom mi; 
Ekpedi suñ suñ uyo ikot 
Ñka k’ usuñ memfiökke, 
Nyebörö nyeka ye Afo, 
Ke ebiet oyomde ñka. 

Körös: 
Nyeka k’ ebiet oyomde,Öböñ, 
K’ obot, k’ inyan y’ una 
isöñ; 
Nyetiñ nte oyomde, Öböñ, 
‘Nyedi se oyomde ndi. 

2. Ndusuk nti ikö edu 
Jesus oyomde ntiñ; 
K’ usuñ idiök mendiyo edu 
Eke ami ‘mkpoyomde; 
O Öböñ, k’ adade mi usuñ, 
Ke usuñ edikimde, 
Ami nyesuan eti etop Fo, 
Nyetiñ nte oyomde. 

3. Me ebiet osuk ododu do 
Önö mi k’iñwañ idök, 
Ndinam utom k’ekpri ini 
Nö Jesus ekeköñde, 
Ntre k’ mbuotidem ye Afo, 
Nyuñ mfiökde ima Fo, 
‘Nyenam uduak Fo 
ke akpanikö, 
Nyedi s’ oyomde ndi. 

Amen.  
      """
    },
    {
      "id": 92,
      "title": "FIAK DEMERE NYIN ",
      // "audio":"",
      "body": """
      KEY G 3/4 

{:s, |d :d :d |d :-:d.r |m :m :m 
|m :-} 

1. IKÖM Fi, Ete! 
K’ edima Eyen Fo, 
Jesus akakpade, 
Eset ödök k’ enyöñ. 

Körös: 
Hallelujah! Itoro Fi, 
Hallelujah! Amen! 
Hallelujah! Itoro Fi, 
Fiak demere nyin. 


2. Iköm Fi, Ete! 
Ke Spirit uñwana, 
Owutd’ Andinyaña, 
Asuande ekim nyin. 

3. Ukpono y’ uböñ, 
Enyen’ Eyeneröñ, 
Obiomd’ idiökñkpö nyin, 
Eyet kpukpru ndek.
 
4. Fiak demere nyin, 
Yöhö nyin y’ ima Fo, 
Nam ukpöñ nyin ofiop, 
Y’ ikañ otod’ enyöñ. 

Amen. 
      """
    },
    {
      "id": 93,
      "title": "HOSANNA ENYENE JESUS ",
      // "audio":"",
      "body": """
      KEY F 6/8 

{:m |s :-:-l -:L :s |m :-:-ld :-:m 
|r :-:-l-:d:r |m :-:-l-} 

1. HOSANNA enyene 
Jesus Edidem, 
Ukut y’ erikan Esie ke 
nyin ikwö; 
Imenere esit ye uyo ikwö 
Itoro Esie ke ökpösöñ uyo. 
Körös: Sop solo: 
Ida inem ikwö idara idi, 
Inim k’itie uwa Jesus 
Edidem, 
Nyin iyekwö itoro enyiñ 
Esie, 
Ifiori ukpono k’mkpo idara. 

Körös: 
Ida inem ikwö idara idi, 
Ida inem ikwö idara idi, 
Inim k’ itie uwa, inim k’itie 
uwa, 
Eke Jesus Edidem nyin, 
Nyin iyekwö itoro enyiñ 
Esie, 
Nyin iyekwö itoro enyiñ 
Esie, 
Ifiori ukpono, ifiori ukpono, 
Ke mkpo, mkpo idara. 

2. Jesus omodot ndibö itoro, 
Edi k’mböm, emen mfukhö 
efep; 
Akpa afak nyin osio k’idiök 
ye hell, 
Man nyin ibuana ye me 
enjel k’uböñ. 

3. Ököbö ufen, ewot ke ntak 
nyin, 
Okobiom ukut ye ubiak 
k’ntak nyin; 
K’ima ye mböm öduök 
iyip Esie, 
Ayak uwem k’ufak önö 
Abasi. 

Amen. 
      """
    },
    {
      "id": 94,
      "title": "SUAN ETOP IDARA ",
      // "audio":"",
      "body": """
    KEY Bb 4/4 

{|s, :s, lL, :s,|m :d ld :L,|s, :L, ls, 
:d |t, :d lr :-} 

1. ESUAN etop, Christ emeset! 
Ekewot ke m’idiök nyin,
Öwörö ke mkpököbi, 
Anam m’owo edara. 

Körös :\$: 
SA: Esuan etop, esuan etop, 
suan etop idara. 
T: Suan etop, suan etop, etop 
i-dara 
B: Suan, suan, suan, suan 
etop idara. DS. 
All: Esuan etop, Christ emeset, 
Ekewot ke m’idiök nyin, 
Esuan etop, esuan etop, 
Christ akara k’esit nyin. 

2. Esuan etop k’inemesit, 
Emener’ uyo emem; 
Nam ererimbot enyeñe, 
Tutu eñwan okure. 

3. Esuan etop, iköt Öböñ 
’Kop ikwö idaresit, 
K’ ekwö eti mbuk eset, 
Nte Christ amanade. 
Amen. 
  
      """
    },
    {
      "id": 95,
      "title": "UKPONO ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|s, .,s, :s,|L, .,s, :s,|s, .m :r .d lt, 
:L,} 

TOR’ Öböñ, tor’ Öböñ, 
Tuak ibuot nö Enye, 
Ekem k’ uyo Esie, 
Yak itöñ’ edöñ nyin; 
K’ inua otop Esie, 
Itoro ye uböñ, 
Ye odudu odu, 
Kemi k’nsinsi. 


Sop Obligatto: 

Kwö... nyuñ dara 
Nam me-ndon edaresit, 
K’ inua otop 
Eda eköm y’itoro eduk; 
Idi iköt Esie, Enye akanam 

nyin; 
’Nam idara enö Jehovah, 
Köm enyiñ Esie. 

ATB: Kwö nyuñ dara, kwö 
nyuñ dara, 
Kwö nyuñ dara, dara ke

Öböñ, 
K’inua otop, k’inua otop, 
Duk k’okure Esie, 
Toro enyiñ Esie; 
Idi iköt Esie k’akpan, 

Edi Enye ’kanam nyin; 
’Nam idara enö Jehovah, 
Köm Enye toro enyiñ 

Esie k’nsinsi. 


All: Tor’ Öböñ, tor’ Öböñ, 
Tuak ibuot nö Enye 
Ekem k’ uyo Esie, 
Yak itöñ’ edöñ nyin; 
K’ inua otop Esie, 
Itoro ye uböñ 
Ye odudu odu 
Kemi k’nsinsi. 

Amen. 

      """
    },
    {
      "id": 96,
      "title": "ENYIÑ FO ENYENE UKPONO ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{ls :sls :m lL :L ls :m ld :r lm :s .f 
lm :r lm:-} 

1. ETI Jesus imököm Fi, 
Ibuk ima y’ mfön Fo; 
Omokpon onyuñ asana, 
Imokpono enyiñ Fo!
 
Körös: :\$: 
SA: U...kpono, u...kpono, 
T: U…kpono, u…kpono; 
B: Ukpono enyene Fi, 
{Ukpono enyene Fi, } 
All: Ukpono enyene Fi. DS 

2. Akwa Öböñ ye Andifak, 
Uñwana k’ nsi nsi; 
Yak ndima ke me idut, 
Ekwö kpa itoro Fo! 

3. Ökökpöñ ebekpo uböñ, 
Aka ke cross k’ esuene; 
Ökönö uwem ke ufak, 
Ndifak m’idiök owo! 

4. Di, O di, nsinsi Öböñ, 
Bö ebekpo uböñ Fo; 
Di nyuñ kara k’ nsi nsi, 
Ebekpo edi Okuo! 

Amen. 
      """
    },
    {
      "id": 97,
      "title": "NAM UDUAK FO, ÖBÖÑ",
      // "audio":"",
      "body": """
     KEY F 9/4

{|m :r:m lf:-:-lm :-:-ld :t,:d |r 
:-:-l-:-:-lr:de :r |m :-:-lr :-:lr 
:d :t, |d :-:-l-:-:-} 

1. UDUAK Fo Öböñ! 
Nam uduak Fo! 
Afo, Andibot, 
Ami, mbat, 
Nuak mi nyuñ bot mi, 
Ke uduak Fo, 
Ami k’mbebet 
K’nsukibuot. 

2. Uduak Fo Öböñ! 
Nam uduak Fo; 
Duñö, domo mi, 
Mfin Öböñ! 
Yet mi kemi man 
Mfia ‘ñkan snow, 
K’iso Fo ami 
Mosuk ibuot. 

3. Uduak Fo Öböñ! 
Nam uduak Fo! 
K’memidem mi, 
Ñwam mi mbök! 
Kpukpru odudu 
Edi Okuo! 
Tuk mi, nyuñ kök mi, 
Andinyaña! 

4. Uduak Fo Öböñ! 
Nam uduak Fo! 
Tim mum mi kama 
Ofri ofri! 
Yöhö Spirit Fo 
Tutu ekut 
Christ ikpöñ ikpöñ 
Oduñ k’ami. 

Amen. 
 
      """
    },
    {
      "id": 98,
      "title": "OKUO KE NSINSI ",
      // "audio":"",
      "body": """
      KEY Ab 4/2

{|m :-.m lf :r |L, :t, ld :-|r :-.r 
lm :r |r :d lt, :-} 

1. IDI Okuo, Abasi, 
Tie k’enyöñ kop akam nyin, 
Nam isuk idi Okuo, 
Kemi ye k’ nsi nsi. 

2. Idi Okuo, Abasi, 
Kpeme nyin k’eñwan isöñ, 
Afo ’di usuñ y’ uwem, 
Da nyin sim ke usiere.
 
3. Öfön ndidi Okuo, 
K’ Afo inyene emem! 
Andinyaña ye Ufan, 
O kpeme nyin sim k’ utit. 

4. Idi Okuo, kpeme nyin, 
Mem-mem eröñ Fo emi, 
Nam iböhö ke Afo, 
Ibuana ke mfön Fo. 

5. Andise, idi Okuo, 
Yöhö me unana nyin; 
Fen kpukpru m’idiökñkpö 
nyin, 
Da nyin mi sim ke heven. 

Amen. 

      """
    },
    {
      "id": 99,
      "title": "AMA ÖBÖÑ AKAM? ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{|m :-.mlf.m :r .d |s, :-ld :-|r 
:-.rlf:m|r :-l-} 

1. KINI ökpöñd’ ufök mfin, 
Ama ’böñ akam? 
K’ enyiñ Christ Andinyaña 
nyin, 
Ama ’beñe mfön Esie, 
‘Nte otu-eköñ? 

Körös: 
O, akam önö ifure! 
K’ekim önö uñwana; 
Ih! Kini ñkpö ösöñde, 
Kufre, böñ akam! 

2. Kini akwa idomo fo, 
Ama ’böñ akam? 
Oto k’ mkpa y’ima Esie, 
Ama öbö Eti Spirit, 
Man ekpeme fi? 

3. Kini esit ayatde fi, 
Ama ’böñ akam? 
Ufan, emebeñe mfön, 
Ndifen ’nö owo efen 
Ekeduede fi? 

4. Kini ukut osimde fi, 
Ama ’böñ akam? 
Ke ukpöñ fo öfukhöde, 
Ama oyom ibök Gilead, 
K’ usiere usen? 

Amen. 
      """
    },
    {
      "id": 100,
      "title": "AKAM NYIN, O ÖBÖÑ ",
      // "audio":"",
      "body": """
    KEY Bb 4/4

{ls,:-ls, :-ls, :-ls,:-ls, :-lL,:-ls,:-ls,} 

ETE mfön, kop akam nyin 
Kini ikotde Fi, kop, 
O Öböñ 
Döñ ima Fo nö nyin, 
O Öböñ, 
Ete mböm nyin, O kpañ 
utöñ. 

dim & rit. 

Kop akam, akam nyin. 


Amen.   
      """
    },
    {
      "id": 101,
      "title": "AKWA ETE, KOP AKAM NYIN ",
      // "audio":"",
      "body": """
      KEYG 2/2 

{|s, :L, .r|d :t,|d :f |f :-.f |m :m 
|r .L, :t, .d |d :t,|d :-} 


pp AKWA Ete kop akam nyin, 
Diöñ kpukpru ukpöñ 
ebetde Fi. Amen. 
      """
    },
    {
      "id": 102,
      "title": "KOP AKAM NYIN, O ÖBÖÑ  ",
      // "audio":"",
      "body": """
      KEY D 4/4

{|m :-.m lm :m |r:-l-: |f :-.f 
lf:f |m :-l-} 


pp KOP akam! Öböñ, 
Kop akam! Öböñ; 
Kpañ utöñ Fo nö nyin; 
Nyuñ nö nyin emem. 

Amen.
      """
    },
    {
      "id": 103,
      "title": "DIÖÑ ME ENÖ ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s,|m :m lm : f .m |r : d .r lm :s, 
|L, :t, ld :r |t, :L, ls,} 

DIÖÑ m’enö emi inöde 
Diöñ m’ utom nyin idinamde 
Edi nyin ndibuot idem, 
S’ isukde Öböñ eyenam. 


Amen. 
      """
    },
    {
      "id": 104,
      "title": "JESUS, MUM MI UBÖK ",
      // "audio":"",
      "body": """
      KEYF 9/8

{| s :L :s lm :-:-ld :-:-| r :m :r ld 
:-:-|s, :-:-} 

1. JESUS mum mi, da mi usuñ 
Be k’ ukwañ usuñ uwem, 
Di nsi ‘nsi ebiet iduñ, 
K’ ndutime ye eñwan; 
Jesus, Jesus, eti Jesus, 
Mada ukut mi ‘nsök Fi, 
K’ akpan, nyedi k’ idara 
Ke mbukpöñ ebede. 

2. Jesus, mum esit mi kama 
Ke odudu ufak Fo, 
Yet ndek idiök ñkpö fep 
Ye kpukpru ndudue mi, 
Jesus, Jesus ekesetde, 
Da ukpöñ mi dök k’enyöñ, 
Nim enye idiöñö emem, 
Kpeme enye k’ ima Fo. 

3. Jesus Afo ke ododu 
Mösöp ndikpöñ usuñ, 
Manyama nö idiök ñkpö, 
Da mi k’ eti usuñ Fo; 
Jesus, Jesus, eti Jesus, 
Eyekop eseme mi, 
Nam ndi Okuo k’nsinsi, 
Itiat y’ ebiet uböhö. 

Amen.
      """
    },
    {
      "id": 105,
      "title": "AKAM",
      // "audio":"",
      "body": """
      KEY Eb 3/4 
{| m :-.r :d |f :-:f | f :-.m :r |s :-:-} 

1. IDEDEP ifet k’ isöñ 
Man idiyom iso Fo 
Du ye nyin mbök Öböñ 
Nö eridemere Fo. 

2. Ntanta öfiöñ k’enyöñ 
Eböbuöt uñwana mö 
K’ uñwana Fo miduhe 
Nyin iyeyo ke ekim. 

3. Utin edinen ido 
Bin ekim ye eyikhe; 
Yak uñwana Fo oduñ 
Ye nyin ke nsi nsi. 

Amen. 
      """
    },
    {
      "id": 106,
      "title": "KOP NYUÑ DIÖÑ ",
      // "audio": "",
      "body": """
      KEY Db 3/4

{| m :f :r |m :-:d'| d' :r' :t |d' :-:|
d':t :L | s :d' :m |r :-:fe |s :-:-} 

1. KOP akam mi, O nyuñ diöñ, 
K’nyarare m’idiök mi, 
Yak ñkop suñ suñ uyo, 
“Afo, edi eyen mi.” 

Körös: 
Kop akam mi, O Ete! 
Möböhö k’ ekperede; 
Nam mbiet Christ Andifak, 
K’ mböm Fo, kop akam mi. 


2. Kop akam mi; O Ete! 
Suk esit mi, kan ndik, 
Bin kpukpru eyikhe fep, 
Ye edidekhe spirit.
 
3. Kop nyuñ nam ndi Okuo; 
Nam mfiök k’edi okim; 
Mfiök möböhö idiök 
Nam mbiet Fi kpukpr’ 
usen. 

Amen. 
      """
    },
    {
      "id": 107,
      "title": "AMI ÑWANANDISAÑA KE MKPAFAKHAUSUÑ ",
      // "audio": "",
      "body": """
      KEY Db 6/8 

{:m |m :-:m |m :r :d |f :-:m |r :-} 

1. MODUK k’mkpafakha usuñ, 
Man nduñ mkpere Jesus; 
Ke idomo, mkpe ubök 
Nyom mfön Esie (Esie). 

Körös: 
O utibe (utibe) mfön 
O utibe (utibe) mfön 
K’ ofri unana mokut 
Mfön Fo ekem mi 
(kpasuk mi). 

2. Uyo Esie omokot mi, 
K’ eriyak idem nö Enye, 
Uböñ Esie omofuk mi 
Uböñ mfön Esie (Esie). 

3. Nyom Öböñ k’ edöñ 
k’ akam, 
Mbere ke mfön Esie, 
K’ möñ eyet ami ñkut 
Uböñ iso Esie (Esie). 

Amen. 
      """
    },
    {
      "id": 108,
      "title": "BIAT INI KE AKAM ",
      "audio": "",
      "body": """
      
KEY G 3/4

{:s, |m .,re :m :-.s, |L, .,f :m :-|m 
.,r :s, :r |d :-} 

1. K’ OYOMDE ‘nditim 
’kpono Christ, 
Biat ini k’ akam, 
Man ‘ñkpö eköñ fo ayama, 
Biat ini k’ akam. 

Körös: 
Odudu akam omokpon, 
Önö nsinsi inyene, 
Uñwam y’ata inemesit, 
Biat ini k’ akam. 

2. K’oyomd’ uduak Esie 
‘ndinam, 
Biat ini k’ akam; 
Ke oyomde ‘ndikop uyo, 
Biat ini k’ akam. 

3. Ke odudu ‘ndidi Christian, 
Biat ini k’ akam; 
Di kpere ebekpo mfön, 
Biat ini k’ akam. 

4. Öböñ eyeyöh’ unana, 
Biat ini k’ akam; 
Edidiöñ oto ke enyöñ, 
Biat ini k’ akam. 

Amen. 
      """
    },
    {
      "id": 109,
      "title": "KE ATA IMA ",
      // "audio": "",
      "body": """
      KEY C 4/4

{|s .fe :s .fe ls :d'|d' :-lt :-|r' .d' 
:t .L ls :f|m :-l-: } 

1. YAK ata ima Fo, Öböñ, 
Öyöhö ke esit nyin 
Yak nyin isuk ikpere Fi, 
Nam usuñ nyin ayama. 

Körös: 
Di kpere nyin… Öböñ 
kpere... 
Sin ima Fo k’ esit nyin 
(ke esit nyin) 
Öböñ nö nyin… ke utom Fo, 
Odudu, oto (nö odudu) 
k’ enyöñ, 
Andinyaña ke enyöñ 
(ke enyöñ). 

2. Sio esit mfiakedem fep, 
Nam ima edemere, 
Nte ikañ ek’asakde, 
Man ikop inemesit. 

3. Spirit nyin ke oyoyom Fi, 
Emi edi udöñ nyin: 
Ndidi Okuo k’ nsinsi, 
Ndidu uwem nö Fi. 

Amen. 
      """
    },
    {
      "id": 110,
      "title": "JESUS ODU MI ",
      // "audio": "",
      "body": """
      
KEY G 6/4

{:s,| m :re :m ls, :d :r| d :t , :L lt,:-} 

1. K’IBA m’ ita ebohode, 
K’ eti enyiñ Jesus, 
Enye omodu k’uföt mö, 
Ndidemer’ ukpöñ. 

Körös: 
Jesus Öböñ, p omodu mi! 
pp Suñ suñ imokop uyo 
k’utöñ nyin, 
mf Kpono Enye, nyuñ tuak 
ibuot, 
Jesus Öböñ odu mi, 
(odu mi). 

2. M’uñwöñö Esie emesu, 
Önö me andinim, 
Kpukpr’ ukpöñ ekop 
uyukhö, 
K’ ndibö Christ k’ Öböñ. 

3. Ke iba edianade kiet, 
Eyenam enö mö, 
Christ eyenö nyin 
edidiöñ, 
Ye odudu Ete. 

Amen. 

      """
    },
    {
      "id": 111,
      "title": "EKPERE IKPANESIT ABASI ",
      // "audio": "",
      "body": """
     KEY Db 4/4

{:m |m :-.re lm :m |f :-.m |f :-lr 
:r .r ls :f|m :-l-:} 

1. EBIET ifure omodu, 
K’ ikpanesit Öbön; 
Emi idiökñkpö miduhe, 
K’ ikpanesit Öbön. 

Körös: 
O Jesus Andifak nyin, 
Otode Abasi, 
Mum nyin emi ibetde, 
K’ ikpanesit Öböñ. 

2. Ebiet ndöñesit odu, 
K’ ikpanesit Öböñ; 
Ebiet ikutde Andifak, 
K’ ikpanesit Öböñ. 

3. Ebiet uböhö omodu, 
K’ ikpanesit Öböñ; 
Ebiet idara ye emem, 
K’ ikpanesit Öböñ. 

Amen.   
      """
    },
    {
      "id": 112,
      "title": "YÖHÖ UWEM MI, O ÖBÖÑ MMI",
      "audio": "",
      "body": """
     KEY Eb 4/4

{:s|s :d |r:L |s :f lm:s lm :s |L 
:d' lt: -: -} 

1. YÖHÖ uwem mi, O Öböñ 
Ofri ofri y’ikwö; 
Man ami ñkpökwörö Fi: 
Uwem Fo y’ usuñ Fo. 

2. Idighe ke uyo ikpöñ, 
Me ke esit nde; 
Edi man ofri ukpöñ mi, 
Öyöhö ye eköm. 

3. Ndiköm ke ñkpri ñkpö, 
K’ufök ye ke añwa; 
Ke utom ye k’ido uwem, 
Ke se ekpededi. 

4. Yöhö mi itoro k’ idem, 
Nam uwem mi etiñ 
Abaña Fi ye ima Fo, 
’Kposuk mbuenede. 

5. Ke ntre Öböñ, eyebö 
Ukpono ke ami; 
Ndien nyetöñö k’ isöñ 
Kpa obufa ikwö. 

6. Ndien kini ekededi, 
Ami ‘nyekpono Fi; 
Ndien ke isañ uwem mi, 
Nyebuana y’ Afo. 

Amen.   
      """
    },
    {
      "id": 113,
      "title": "ANDINYAÑA, ETI ANDINYAÑA,  ",
      // "audio": "",
      "body": """
 
KEY Ab 4/4

{|d : t, .L ,|s, : d .m ls :-.f 
|m :-lr :L, lf :m .r |d :-|t, :-} 

1. ETI Andinyaña, 
Kop ke ikwöde, 
Imen esit y’uyo, 
Ikwö Öböñ nyin, 
Nyin inö Fi kpukpru, 
Se ikpedide, 
Obuk, spirit y’ ukpöñ, 
Imayak kpukpru. 

2. Kpere, mbök kpere, 
Nyin itiene Fi, 
K’ ökpösöñ uteñe, 
Inukhö k’ edöñ, 
Ke ntak ufak nyin, 
Afo akakpa, 
Man ikpetiene Fi, 
Ödökde k’ enyöñ. 

3. Uñwana ayama, 
Oto ke heven, 
Ke mbuñesit nyin 
Önö erifen; 
K’ uwem abiañade, 
Uñwana ke nyin, 
Ayarade idiök 
Ke ererimbot. 

4.Ka iso, ka iso 
Be k’usuñ oro 
Mendima ebede, 
Esim ke enyöñ; 
Ke ikpöñde kpukpru, 
Yak ika iso, 
Ke nyin miseh’ edem 
Iyebö utip. 

5. Da mö dök ke enyöñ, 
Ukpöñ efakde 
Efre ñkpö isöñ 
Esim ke iduñ 
Ke ebiet idara, 
Iköt Abasi 
Ebuana ye m’enjel 
Nditor’ Öböñ. 

Amen. 
   
      """
    },
    {
      "id": 114,
      "title": "O CHRIST, ÖBÖÑ NYIN ",
      "audio": "",
      "body": """
   KEY Eb 4/4

{|m : -lr :d|f :-|m: -lr :m |d:r lt, 
: -l -: -} 

1. O CHRIST, Öböñ nyin, 
omodu y’Okuo, 
Ibere Fi, Ufan, enyin mikwe. 


2. Nam mö ediade isek ubök Fo, 
Ebere ke ima ye k’ enö Fo. 

3. Nam kpukpru esit edi iduñ Fo, 
Ye iñwañ oñwumde me mfri Fo. 

4. Ñwam nyin ndinam nti uduak Fo, 
Nam mbuötidem nyin ebere Fi. 

5. Ñwaña esit nyin nditim ñkut 
M’idiöñö Fo ekande nyin ekuk. 

6. Nam idiöñ’ emi odu 
k’uwem nyin, 
Man kpukpr’ efiök, k’ 
omodu ye nyin mi. 

7. Ntre Öböñ eyedu k’nsinsi, 
Otueköñ nyin y’Andinö utip. 

Amen.    
      """
    },
    {
      "id": 115,
      "title": "O ÖBÖÑ, TIE KE ENYÖÑ YERE NYIN ",
      // "audio": "",
      "body": """
      
KEY Eb 4/4

{|s:-lm :r |d :-lt, :d ld :m lr :d |d 
:-l-:-|d : -lm :s |d' :-l-:L |s:s ls 
:s |s :-} 

1. O Öböñ, tie ke enyöñ yere 
nyin, 
‘Nte mö k’eset nyin idikwe 
unen 
Iböhöke Afo odu ye nyin, 
Di ndien man ikpokut 
uñwana. 


2. Afo Christ anam inyañ 
odobo, 
K’ oyobio ye mbufut 
ösöñde, 
Ubök Fo ösöñ, nyin idi 
mem-mem, 
Nö nyin uñwam Fo, nyuñ 
ti Galilee. 

3. Nditö y’ iban nyin enyene 
Fi, 
Kabaña mö ifuñ isöñ 
y’ inyañ, 
K’ usenubök nyin ika ke 
idök, 
Ke okoneyo iduök iyire. 

4. Iköm Fi k’ eyo, mbara 
y’ edimÖnöde ke ökpösöñ ubök Fo, 
Afo önö kpukpru ñkpö uwem, 
Unam y’iyak, inuen y’mfri 
iñwañ. 

5. Afo Uyo Uwem, etiñ ete, 
Owo atade Mi idikpaha, 
Ke mböm, kop ntuaña iköt 
Fo, 
Nö nyin udia emi k’usen 
k’usen. 

6. Tö k’ esit nyin mkpasip 
ima Fo, 
Man idök uyukhö ye idara, 
Ke utom nyin k’ isöñ 
okurede, 
Nam ibuana k’ idök Fo ko 
k’ enyöñ. 

Amen. 
      """
    },
    {
      "id": 116,
      "title": "EDISANA ODUDU ",
      // "audio": "",
      "body": """
     
KEY G 4/4 

{:s, |d:t, ld :r |m .s :-l – :f|m :lr 
:-|d:-l-} 

1. EDISANA odudu, 
K’ iyom mfin, 
Ye uyöhö edidiön 
O mbök, nö nyin. 

Körös: 
Ndisana k’ iyip; 
Nim nyin k’ idak iyip, 
Ke idim-möñ Cal-va-ry, 
Nam isana ikan snow, 
Nö nyin Spirit Fo, 
Oto k’ mfön Fo, 
Öböñ nam, Öböñ nam 
Nyin mi isana 

2 Nte nti ‘ñkpö utom
Yak nyin idi, 
Inam efiök enyiñ Fo, 
Inö Fi uböñ. 

3. Sio nyin ke uwem idiök 
Kini emi, 
K’ uwem nyin asanade, 
Owut uböñ Fo.
 
4. Öböñ nam nyin mi iyom 
Ndibiet Fi, 
K’ idemerede k’ uböñ, 
Iduk k’mbiet Fo. 

Amen  
      """
    },
    {
      "id": 117,
      "title": "KPERE MI",
      "audio": "",
      "body": """
    KEY Bb 4/4

{:m, .,f, |s, :m lf :m |r :L, l -:d .,L, 
|t, :-l-:L, .,m, |s, :-l-} 

1. K’ÑWANADE ye idomo, 
Kpere mi, kpere mi, 
K’odudu erinyaña Fo, 
Kpere mi mbök, Öböñ. 

Körös: 
S: Kpere mi O Andinyaña! 
ATB: Kpere mi, kpere mi, 
S: Kpere mi k’utin y’edim 
ATB: Kpukpr’ ini, kpukpr’ ini, 
S: Di kpere mi ye mfön Fo 
ATB: Di kpere, di kpere, 
All: Ukpeme Fo ke nyom 
(k’nyom) 

2. K’ mfukhö ye afaneköñ, 
Kpere mi, kpere mi, 
Yöhö mi k’ idara y’emem, 
Kpere mi mbök, Öböñ. 

3. Ke ñkpöñde me ufan mi, 
Kpere mi, kpere mi, 
Nam uñwana Fo ayama, 
Kpere mi mbök, Öböñ. 

4. K’uwem mi k’isöñ ebede, 
Kpere mi, kpere mi, 
Tutu ñkut Fi ke uböñ, 
Kpere mi mbök, Öböñ.
 
Amen. 
  
      """
    },
    {
      "id": 118,
      "title": "NDIKPA NNÖ OBUKIDEM ",
      // "audio": "",
      "body": """
     
KEY Bb 9/8

{lm, :m, :f,|s, :-:-ld :-:-ld :t,:L, |s, 
:-:-l -:-: lr, :r, :m,|f, :-:-lL, :-:-lL, 
:s, :f, |m, :-:-l -:-} 

1. ÖBÖÑ nam ‘mkpa ’nö 
m’idiök udöñ, 
Demere mi k’ikañ 
Pentecost; 
Nam ñkpöñ idiök 
y’ obukidem 
Nyöhö k’ ima, ndu k’Afo. 

Körös: 
Yöhö mi k’ edisana ima, 
Nam m’uyo edop ke esit mi, 
Tutu ñkop s’Afo etiñde, 
Nyuñ ndu uwem ’nö Fi 
ikpöñ. 

2. Öböñ kuyak nyom ‘ñkpö 
efen, 
M’ekikere Fo edi okim; 
Ami mama nti utom Fo, 
Koro k’Afo menyene 
emem. 

3. Ami ndu ke obukidem, 
Sine mi nsukhör’idem Fo; 
Sio mi k’idiök nyuñ nam 
nsana, 
Tutu ekut mbiet Fo k’ami. 

4. M’inyene mi, monim 
k’ukot Fo, 
Mayak idem mi kpukpru 
’nö Fi; 
Afo ikpöñ, suk da mi usuñ, 
Da esit mi nam ebekpo Fo. 

Amen. 
 
      """
    },
    {
      "id": 119,
      "title": "MENERE MI, NAM MKPERE",
      // "audio": "",
      "body": """
     
KEY G 4/4

{:s, .,s,|d :d l-:d .,r |m :m l -:m .,f 
|s :-.s lf :m |r :-l-} 

1. MENERE mi, nam mkpere, 
’Kpere Fi, eti Ufan; 
Ima Afo ’yararede,
Öfön akan mö eken. 

Körös: 
Menere mi, nyuñ nam mkpere, 
Sio mi fep ke m’idomo, 
Nam uñwöñö Fo añwaña mi, 
Andifak k’ekere mi, 
Sio mi k’idiök ñkpö 
y’mfukhö, 
Dip mi k’ ikpanesit Fo, 
Menere mi, nam mkpere, 
Tutu nset y’ndimek. 

2. Menere mi, k’ enyöñ 
mbak 
M’idomo editap mi, 
Yak ñkop eti uyukhö, 
K’utom Fo k’usen 
k’usen. 

3. Nam mkpere ‘mbak 
idomo 
Edikan mi ke eñwan; 
Mböhö ke ukpeme Fo,
Ñkwö mfön Fo, Öböñ. 

Amen.  
      """
    },
    {
      "id": 120,
      "title": "ETI UBÖPÑKPÖ AKAM ",
      // "audio": "",
      "body": """
      KEY Eb 3/4

Duet (Sop & Ten) (with expression) 

{.m :m .m |s:-.f :f.d |m :-:m |m 
:-.r :s, .r |d: -.} 

1. UBÖPÑKPÖ odu öböpde 
Mi adian ke enyöñ, 
M’uruk esie edi akam 
Ye ima Abasi. 

Körös: 
O uböpñkpö akam 
Öyöhö unana 
Yak öböp mi adian y’ Afo, 
Man ñkan k’oyobio. 


2. Ke oyobio osimde mi, 
Ekim onyuñ ofuk, 
Akam ke öböp mi adian 
Y’ Enye, odudu mi. 

3. Ke ini uyama enyöñ 
Akande mi okuk, 
Ntor’ Enye k’ibör’ akam 
Ye ke mfön Esie. 

Amen. 

      """
    },
    {
      "id": 121,
      "title": "AMI MMAMA NDIDEP IFET ",
      // "audio": "",
      "body": """
     KEY Ab 3/4
{:s, ld :-:L,|s, :-:d .r |m :-:r |d ::
m |s :-:m .r |d :-:m |r :-} 

1. AMI ’mama ‘ndidep ifet, 
K’ediwak utom mi; 
Nda ini mbubreyo 
Nsukhöre k’ akam. 

2. ’Mama nditie k’ ndobo 
Ntua m’idiökñkpö mi; 
Mbeñe m’uñwöñö Esie, 
Öböñ ikpöñ okop. 

3. ’Mama ‘nditi mböm Öböñ, 
Nyom mfön k’ iso, 
Ntop mbiomo ’nö Enye, 
Emi mkponode. 

4. ’Mama ‘ndise k’mbuötidem 
Eti obio enyöñ; 
Edemere idorenyin 
Ke ini ukut mi. 

5. Ndien k’ uwem okurede, 
Yak mbukpöñ esie 
Öyöhö y’ eti ifure, 
Tutu k’ nsi nsi.
 
Amen. 
 
      """
    },
    {
      "id": 122,
      "title": "YÖHÖ UNANA MI, ÖBÖÑ ",
      // "audio": "",
      "body": """
    KEY Bb 4/4

{:s, .s, |s, .m, :m, .m, lm, :s, .L, 
ls, .r,: -l -:-} 

1. NTE ñwan k’ obube möñ, 
ami ‘ñkoyom, 
Me ikpikpu ñkpö uwem;
Ndien ñkop Öböñ etiñde“
Kot möñ k’obub’ emi 
midisatke” 

Körös: 
Yöh’ unana, nse Fi Öböñ, 
Di bit nsat itöñ ukpöñ mi, 
Uyo-heven, bök mi tutu 
nyukhö, 
Yöh’ unana nyuñ nam mi 
nyukhö. 

2. Ediwak k’ ererimbot ke 
eyeyom 
Inemesit ñkpö uwem, 
Edi ikemke y’ ñkpö uto, 
Emi ñkutde ke Christ, 
Öböñ mi. 

3. Eyen-ete se uwem önöde fi 
M’inamke okop uyukhö,
Öböñ eyedi ‘ndinyaña fi, 
Ke ekperede enye ke 
akam.
 Amen. 
  
      """
    },
    {
      "id": 123,
      "title": "ÖBÖÑ, IMEDI K’ISO FO",
      // "audio": "",
      "body": """
      
KEY F 3/2

{:sl f :m :L l d :t , :d lf:m :r lm ::
m lr : -:fels :-:s, ld :t, :L, ls, :-} 

1. ÖBÖÑ, imedi k’ iso Fo, 
Ndibuk erinyaña Fo, 
Kabaña mfön iböde, 
Emi enöde ke Jesus, 
O! Öböñ imebeñe Fi, 
Di, yöhö kpukpr’ unana 
nyin. 

2. Öböñ imebeñe Fi mi, 
Nam edi ini Pentecost, 
Man m’ukpöñ unana ebö 
Erifen, emem, y’ odudu, 
Kök m’inan, tat me-nan 
enyin 
Nyuñ nam me ukpöñ 
eböhö. 

3. Ömöfiök m’ukpöñ edöñö, 
Oto ke ufik andidiök, 
Ekpa mba, enyuñ ekpöt, 
Afo eyenö uböhö, 
O tiñ, “monyime, kop idem,” 
Nyaña nyuñ yet kpukpru 
nyin mi. 

4. Kemi, nö iköt Fo uko, 
Man etiñ eti ikö Fo, 
“K’anyande ubök ndikök” 
Nam m’idiöñö, m’utibe 
‘ñkpö 
Ke otu nyin mfin emi, 
O! Ete kpono Eyen Fo. 

5. Kpa nte ikö Fo ’dide, 
Nyin iköt Fo ke ibebet, 
Kuse me idiök ido nyin, 
Ye unana mbuötidem; 
Eti Spirit kpan m’ubiöñö, 
Ke esit ye ke uwem nyin. 

Amen. 
      """
    },
    {
      "id": 124,
      "title": "NDIKÖRI KE IMA JESUS ",
      "audio": "",
      "body": """
    KEY G 4/4

{|s, :m, ld :s, |m .,m :m .,r ld :L, 
|s, :d lt, :d |r :-l-:} 

1. NAM mi ñköri ke ima 
Jesus 
Ke usen k’usen; 
Man nsim uyöhö ifiök Öböñ 
Ye mfön Esie. 

Körös: 
S: Mebe-ñe ‘ndiköri, 
ATB: Mebeñe ‘ndiköri, ’beñe 
‘ndiköri 
S: Ke i-fiök kpukpr’ usen 
ATB: Ke i-fiök kpukpr’ usen 
ifiök kpukpr’ usen 
S: Nsim uyöhö Christ 
ATB: Nsim uyöhö Christ, ’sim 
uyöhö Christ 
All: K’edisana Ikö Fo. 

2. Nam ñköri, Edisana Spirit, 
Da mi ka iso, 
Tut’ uwem mi odibe ke 
Jesus 
Ye uduak Esie. 

3. Nam ñköri, okposuk 
k’idomo, 
Nam nsöñö ‘nda 
K’edisana ima Öböñ Jesus, 
Man ñwum mfri. 

4. Nam ñköri kpukpr’ usen 
ke Jesus, 
‘Nsim k’utit eköñ, 
Ekut mi andikan, k’ mbiet 
Esie, 
Mfönde mma.

 Amen.   
      """
    },
    {
      "id": 125,
      "title": "NÖ MI MBUÖTIDEM EMI EKEMEDE ",
      // "audio": "",
      "body": """
   KEY Bb 2/2

{:d | t, .L, :s, .f , | m, .,f, :s, .d |d :t, 
|d :-|m :r .d | t, .L, :s, .d |t, :L, |s, : 
-} 

1. NÖ mi mbuötidem emi 
Emend’ ikpö obot efep 
Ye ima ndiböñ akam 
K’erifiak mböp ufök Fo 
Yak ima Fo akara mi 
Ye ofri ukpöñ mi ñko. 

2. Ami moyom ata udöñ, 
Moyom nsin ifik ñko, 
Ndidabar’ ukpöñ k’ ikañ 
Nyuñ nduri mö mfep ke 
hell, 
Etiene Öböñ, Andifen 
M’idiök mö ke iyip Jesus. 

3. Ami ‘nyefak eti ini, 
Nyesuk nnam kpa ntre 
Ke ndibiat me ini mi 
’Nö mö mifiökke Öböñ mi; 
Ñwut ima mi k’ibuot mö, 
Ata ima, kpa ima Fo. 

4. Kpukpru me enö Fo, Öböñ, 
Mayak mö k’eti ubök Fo, 
Yak mi ñkwörö ikö Fo, 
Nam uwem mi otoro Fi, 
Kpukpru ini mi ndisuan 
Etop Ufan m’idiök owo. 

5. Demere esit mi nyuñ nam 
Öyöhö y’akwa ima Fo, 
Man ami ’nyene ukeme 
Ndima mö kpa ‘nte Afo, 
Nyuñ nda mö ’di k’ñkañ Fo, 
M’eröñ Christ akakpade ’nö. 

Amen.    
      """
    },
    {
      "id": 126,
      "title": "TI MI",
      "audio": "",
      "body": """
      KEY F  3/4

{:m |m .r :r:f |f .m :m :s |s :-.m 
:d .m |r :-} 

1. MBÖM! Andinyaña 
’kakpa, 
Öduök iyip Esie? 
Enye ’kosuk ibuot Esie 
Önö owo nt’ ami? 

Körös: 
Andinyaña, nam mi ndi 
Okuo k’nsi nsi, 
K’ odude ke ebekpo Fo, 
Mbök Öböñ, ti mi. 

2. Me oto ke idiökñkpö mi 
Enye atua k’ eto? 
Akwa mböm anam mfön 
Y’ima ewak ekan. 

3. Utin odip iso Esie, 
Ofuk m’uböñ Esie, 
Ke Christ, Andibot, 
akpade 
K’ibuot anamidiök. 

4. Mkpakam ’dip iso but mi, 
K’ ñkutde cross Esie, 
Akak inua mi ndibuk, 
Anam mi nseme. 

5. Mfukh’ esit mi iñwamke, 
‘Ndisio isön ima; 
Öböñ ‘ndiyak idem ’nö Fi, 
Edi se idotde. 

Amen. 
      """
    },
    {
      "id": 127,
      "title": "ETI UKPÖKHÖRE",
      // "audio": "",
      "body": """
      KEY E 3/4 

{:d .,r |m :-:m |s :-:L .,s |s :-:m 
|r :-:r.,m lf:-:s .,r |m :-:r |d: -} 

1. AKAM edi ukpökhöre 
usuñ 
‘Ndiberede usenubök, 
Sese incense esie ödök 
k’enyöñ, 
Nte edinem utebe. 

2. Baba idara y’esit mfukhö 
Ke okoneyo edide, 
Ikwö usiere önö idara, 
Önö uñwana ke ekim. 

3. Da ukpökhöre, k’afo 
eyekut, 
Nte ekim ebed’ efep, 
Eriböñ akam, önö uböhö, 
Y’erikan k’usen 
’memidem. 

4. Ke mbubreyo, ke ini akam, 
Ka iso, k’mkpe ubök fo 
Edi odudu önö m’ekpa 
‘mba, 
Y’eti erikök ke ubiak. 

5. Me ekim uwem eyesöp ebe 
Eyekwökhöre möñ-eyet 
K’ ebered’ usuñ nti harp 
ekwö 
Utin ayama k’nsinsi. 

Amen. 

      """
    },
    {
      "id": 128,
      "title": "KOP NYUÑ YERE AKAM",
      // "audio": "",
      "body": """
      KEY Eb 3/4
       
{:d .r |m :m :m .f |s:s :f .m |r :-.r 
:s .f|m :-} 

1. MEKPE ubök, Andinyaña, 
Man ami mkpebiet Fi, 
Mekpe ubök, man Spirit Fo, 
Nt’ ibiom odoro mi. 

Körös: 
Afo ’möfiök memidem mi, 
Öfiök me mbiomo mi, 
K’ ñkotde nti uñwöñö, 
Kop! O nyuñ yere akam. 

2. Mekpe ubök, Andinyaña, 
Nö eti mbuötidem, 
Man ñkut eti uböñ Fo, 
Ke ata ini ekim. 

3. Mekpe ubök ‘ndisukidem, 
Ke odudu mfön Fo, 
Ndisine suñ-suñ ido, 
Man n-nyime uduak Fo. 

4. Mekpe ubök, Andinyaña, 
Kpukpru akam mi edi 
Ndiyak kpukpru idem mi, 
Man ami mkpebiet Fi. 

Amen. 

      """
    },
    {
      "id": 129,
      "title": "AKAM MI ",
      // "audio": "",
      "body": """
    KEY Eb 12/8

{lm : -:-lm :L :slfe :-:-ls :-:-|d 
:-:-ld :t, :d lm :-:-lr :-:-} 

1. TIM nam mi nsana, 
Nam nsin ifik 
Nö ime ke ukut 
Nam ‘mfukhö k’idiök 
Mbuötidem k’ Öböñ, 
Y’ ukpeme Esie. 
Idara ke utom 
Iwuk ke akam.
 
2. Nö mi esit eköm, 
Mbere k’Öböñ, 
Mbure ke uböñ, 
Ye idorenyin, 
Mfukhö k’ukut Christ, 
Ye k’ubiak Esie, 
Nö mfön k’idomo, 
Eköm k’uböhö. 

3. Nö mi eti esit, 
Y’mfön ndikan; 
Nam mböhö idiök, 
Man nyom iduñ; 
Nam ndot ke uböñ, 
Ye ke utom Fo; 
Nam nsana eti, 
Mbiet Fi Öböñ. 

Amen.   
      """
    },
    {
      "id": 130,
      "title": "UKPÖÑ MI KA ",
      // "audio": "",
      "body": """
      
KEY G 3/4

{:s,|d :-:r |m.,r :d :m|s .,L :s 
:f |m :-} 

1. UKPÖÑ mi ka k’ itie 
mböm, 
Jesus okop akam, 
Duö do suñ ke ukot Esie, 
Owo itakke do. 

2. Uñwöñö Fo k’ ami nda, 
Nsaña ‘mkpere Fi, 
Afo okot mekpa mba, 
Ntre k’ndi Öböñ. 

3. Möduö y’ mbiomo idiök 
mi, 
Satan añwan’ eti; 
Eköñ k’añwa, ndik k’esit, 
Nyom emem k’ Afo. 

4. Otueköñ y’ uböhö mi, 
K’ndibede k’Afo, 
Nyetiñ k’ iso asua mi, 
K’Afo ama akpa. 

5. O, utibe ima ‘ndikpa, 
Ndibiom cross ye but, 
Man m’idiök owo ‘nte ami, 
Ekpekot enyiñ Fo. 

Amen. 
      """
    },
    {
      "id": 131,
      "title": "YAK EMEM ODU ",
      // "audio": "",
      "body": """
      
KEY C 6/8

{|s :L :sls :d' :m' |r' :-:-lL:-:d' 
|t :L :s lf :-:s |m :-:-l-:-} 

1. ÖBÖÑ oyobio ke ösöñ, 
Mbufut k’ödök k’ enyöñ, 
Ekim ke ofuk ikpa enyöñ, 
Uböhö iduhedu. 
“Ukereke nyin imatak?” 
Nsinam edede 
Kini mbufut ösöñde eti, 
Me emi edi udi?

Körös: 
Ofum y’mbufut ekop uyo Mi, 
p Du …k’emem. 
pp (du k’emem) 
Me iyaresit mbufut möñ, 
Me demon, me owo, me 
s’ekpededi, 
cres Baba mö ifukke ubom emi 
Öböñ enyöñ ye inyañ odude, 
Mö kpukpru eyekop uyo Mi, 
p Du k’emem! pp Du k’emem! 
Mö kpukpru eyekop uyo Mi, 
pp Du ke emem! 

2. Öböñ, möfukhö ke Spirit, 
Medi ye ukut mfin, 
Mfukhö esit mi omokpon, 
Demere di nyaña mi, 
M’udim ukut idiök ñkpö, 
Ke efuk ukpöñ mi, 
Ami matak, mmatak, 
Öböñ mi, 
O! wara di nyaña mi. 

3. Öböñ, ndik oro ebe, 
Kpukpru mö ekop uyo, 
Esit onyuñ öbö ifure, 
Idara ke esit mi, 
Bet, O Eti Andinyaña, 
O kukpöñ mi baba 
Nyesim obio iduñ k’idara 
Nyuñ nduök odudu do. 

Amen. 
      """
    },
    {
      "id": 132,
      "title": "ETI ANDIFAK ",
      // "audio": "",
      "body": """
      KEY D 9/8

{s :fe :s |m :-:-ls :-:-ld' :t :L |s 
:-:-lm :-:-lf:m:f |r :-:-lf :-:lL 
:s:f |m :-:-} 

1. ETI Andifak öyöhö y’ mböm, 
Mfön Fo okpon, akwa ima; 
K’ memidem, nyom Fi añwam mi, 
Öböñ ami ke mkpere Fi. 

Körös: 
Eti Andifak ye Andinyaña, 
Idim ifiök ye Ösöñ usen, 
Idorenyin ke ofri emana 
Jesus Andifak ‘nyetoro Fi. 

2. Eti Andifak, Ebiet Uböhö, 
Ke ukpeme Fo ndu k’emem; 
Nyekpono Fi, mbere k’Afo, 
Ami ke ndi mkpere Fi. 

3. Eti Andifak, öyöhö y’ mböm, 
Ke nsi nsi di duñ y’ ami; 
Afo Andikpeme ye 
Andifak, 
Da mi k’ idem Fo, mkpere Fi. 

Amen. 
      """
    },
    {
      "id": 133,
      "title": "MÖBUÖTIDEM MMI YE AFO ",
      // "audio": "",
      "body": """
      KEY Eb 4/4

{|d :-lm :s |s :-.f lm :-|r :-lr :f |f 
:-.m lr :-} 

1. MÖBUÖTIDEM y’Afo, 
Uwa ke Calvary, 
Andinyaña; 
Kop akam mi mbök, 
Men m’idiökñkpö mi fep; 
O, yak ndi Okuo, 
Kpukpru usen. 


2. Yak akwa mfön Fo, 
Önö mi odudu, 
Fiop udöñ mi; 
Afo ’kakpa ’nö mi, 
Yak ima mi y’Afo 
Ofiop, öfön ama -
Nte Okuo. 

3. K’ usuñ mi okimde, 
Ukut akan okuk, 
Da mi usuñ; 
Nö uñwana k’ ekim, 
Kwökhöre möñ-eyet; 
Kuyak mi ñkpöñ Fi 
K’ nsi nsi. 

4. K’ uwem okurede, 
Kini mfut mkpa 
Akand’ okuk; 
Andifak mi, k’ima, 
Sio ndik y’ eyikhe; 
O da mi sim enyöñ, 
Ukpöñ Fo kiet. 

Amen. 
      """
    },
    {
      "id": 134,
      "title": "ITIAT NSINSI ",
      "audio": "",
      "body": """
 KEY D 4/4 

(1ST tune) 

{|d :d lr :m|f :-.f lm :-|d:dlr :m 
|r :r ld :-} 

KEY Bb 3/4

(2ND tune) 

{:s, .,L,|s, :m, :d .,L,|s,:-:d .,r |m 
:-.r :d.t, |d:-} 

1. I-TI-AT nsi nsi, 
Nam mi ndibe k’ Afo, 
Yak iyip ye möñ oro, 
Ewöröde k’ñkañ Fo, 
Osio ukpöñ mi k’ idiök, 
Ye ke odudu esie. 

2. Utom ’namde ikemke 
Ye s’ibet etemede; 
Ufiop-esit mi k’ utom, 
Ye möñ-eyet ediwak, 
Oro iyetke idiök; 
Afo ikpöñ anyaña. 

3. Ndaha ufak ndi, 
Edi cross Fo k’ nyire, 
Ndi iferi, fuk mi; 
Ami nyom mfön Fo; 
Medekhe, metiene Fi; 
Yet mi Christ mbak 
mkpa. 

4. Ke uwem ndude mi, 
Ke mkpa ebetde mi, 
Ke nsimde ke enyöñ; 
Nyuñ ñkutde Fi k’ uböñ, 
I-ti-at nsi nsi. 
Nam mi ndibe k’ Afo. 

Amen.      
      """
    },
    {
      "id": 135,
      "title": "EDI ETI INI AKAM ",
      "audio": "",
      "body": """
      KEY Eb 3/4

{:d.r |m .,re:m :f |s :-:s .s |d' :t 
:L |s :-} 

1. EDI et’ini akam, 
K’esit obuñöde, 
Iduk itiene Jesus 
Andifak y’ Ufan; 
K’ idide k’ mbuötidem, 
Ibö ukpem’ Esie, 
O! Utibe erikök! 
Enem ndidu do! 

Körös: 
Et’ini akam! 
Et’ini akam! 
O! Utibe erikök! 
Enem ndidu do! 

2. Edi et’ini akam, 
K’Öböñ ekperede, 
Ye ata esit mböm 
Okop önö mö; 
K’ oyomde mbiomo nyin 
Inim k’ ukot Esie, 
O! Utibe erikök! 
Enem ndidu do! 

3. Edi et’ini akam, 
Ke mö edomode, 
Etiened’Andinyaña 
Ebuk ukut mö; 
Enye ke esit mböm 
Emen ukut efep; 
O! Utibe erikök! 
Enem ndidu do! 

4. Ke eti ini akam, 
Ke ibuötde idem 
Edidiöñ ibeñede 
Nyin iyenyene, 
Ke ata idaresit 
Ukut nyin eyebe; 
O! Utibe erikök! 
Enem ndidu do! 

Amen. 
      """
    },
    {
      "id": 136,
      "title": "O AFO ANDIKOP AKAM! ",
      // "audio": "",
      "body": """

KEY D 4/4

{:d|m :m ls :s|d' :-l-:d'|t :L ls :fe 
|s :-l -} 

1. O ANDIKOP akam, 
Tim kop eseme nyin; 
Nyuñ yak nyin ibuana, 
K’ eti eridiöñ Fo; 
Nyin ibeñe uñwöñö Fo, 
Nö nyin Eti Spirit, Öböñ.
 
2. M’ete nyin k’ekopde, 
Ntuaña nditö; 
Ke ewutde ima, 
Enö se eyomde; 
Afo ’yewut ima akan, 
O kop akam nditö Fo. 

3. Ete nyin ke heven; 
Nyin mi nditö Fo; 
O yak kpa Spirit Fo 
Osukhöre edi; 
Man nyin ikop odudu Fo, 
Idi kiet, ikwö enyiñ Fo. 

Amen. 

      """
    },
    {
      "id": 137,
      "title": "ETI INI AKAM! ",
      // "audio": "",
      "body": """
      
KEY D 6/8

{:d |m :-:f ls :-:s |L :-:tld' :-:L 
|s :-:m lm :r :d |r :-:m lr :-} 

1. ETI ini! Ini akam! 
Osio mi ke ererimbot, 
Anam ‘ndi k’ ebekpo Ete, 
Man öfiök ekikere mi, 
Kini ukut ye mfukhö, 
Ukpöñ mi okut uböhö, 
\$: Nyuñ mböhö andidomo, 
Oto k’eti ini akam. DS 


2. Eti ini! Ini akam! 
Mba fo emen ebeñe 
Önö Anam Akpanikö, 
Ndidiöñ ukpöñ ebetde, 
Anam nyom iso Esie, 
Mbuötidem k’ mfön Esie, 
\$: Nyak mbiomo nö Enye, 
Mbet Enye kini akam. DS 

3. Eti ini! Ini akam! 
Mbuana k’ ndöñesit fo, 
Tutu k’enyöñ obot Pisgah,
Ñkut iduñ mfe ñka; 
Nyekpöñ ikpökhidem mi, 
Man mkpöbö utip mi do, 
\$: ’Nyuñ ’fiori, k’ mbede 
k’ofim, 
Tie suñ, tie suñ, ini akam! 

DS. Amen. 
      """
    },
    {
      "id": 138,
      "title": "EWE UFAN EBIET JESUS!",
      // "audio": "",
      "body": """
      KEY F 4/4

{|s :-.s lL .s :m .d|d :-lL, : |s, :-.d 
lm .d :s.m |r :-l -:} 

1. EWE ufan ebiet Jesus, 
Obiomde m’idiökñkpö nyin! 
Se akwa mfön, ndimen 
Kpukpru ’nö Öböñ k’akam, 
O, imöduök ata emem, 
Ibiom ikpikpu ubiak, 
Koro mimenke kpukpru ‘ñkpö, 
Inö Öböñ ke akam! 

2. Imokut idomo y’ ukut? 
Afaneköñ emedu? 
Eyak nyin ikukpa mba; 
Tiene Öböñ ke akam, 
Nte ufan efen odu, 
Abuanade k’ ukut nyin? 
Jesus öfiök memidem nyin, 
Tiene Öböñ ke akam! 

3. Amakpa mba k’ mbiomo, 
Öyöhö y’ ekikere? 
Eti Jesus, uböhö nyin 
Tiene Öböñ ke akam; 
Nte m’ufan emesin fi? 
Tiene Öböñ ke akam, 
K’ mba Esie eyefuk fi 
Eyekut ifure do. 

Amen. 
      """
    },
    {
      "id": 139,
      "title": "UÑWÖÑÖ ERIDU",
      // "audio": "",
      "body": """
      KEY A 4/4 

{|s, :s, ld :d |r :r lm :-|d :d lf 
:m .r |d :m lr :-} 

1. JESUS ibö uñwöñö, 
K’ibohode k’enyiñ Fo; 
Afo ’modu k’ otu nyin, 
Yarare idem Fo mi. 

2. Öböñ, yet nyuñ diöñ nyin mi, 
Nö Spirit ye emem Fo; 
Di nyuñ duñ ke esit nyin, 
Nö uñwana ye uwem. 

3. Nam iyöhö ke Afo, 
Man iduk ko ke uböñ; 
Nam idot ke iso Fo, 
‘Ndibuana y’ nti owo 

Amen. 
      """
    },
    {
      "id": 140,
      "title": "ÖBÖÑ, IMEDI KE ISO FO ",
      // "audio": "",
      "body": """
      KEY A 4/4

{|s, :s, ld :d |r :r lm :-|d :d lf 
:m .r |d :m lr :-} 

1. ÖBÖÑ se nyin imedi, 
Iduö mi ke ukot Fo; 
O kusin eseme nyin, 
Nt’ iyom Fi k’ ikpikpu? 

2. Ukpöñ nyin ebere Fi, 
Di ke mböm Fo kemi; 
Yöhö nyin ye mfön Fo, 
Nam ikwö itoro Fo. 

3. K’usuñ Afo emekde, 
Nyin ida mi iyom Fi; 
Öböñ, nyin idinyöñke 
Tutu Afo ödiöñ nyin. 

4. Döñ utom Fo ke ikö, 
Nö idara ye emem; 
Yak Spirit Fo önö nyin 
Öyöhö erinyaña.
 
5. Döñ m’atua eyet esit, 
Yak ini idar’ edi; 
Menere mbon iduö, 
Esöñö k’ mbuötidem. 

6. Nö ukeme iyom Fi, 
Akwa Abasi ima; 
Kök udöñö, fak ifn, 
Man idara ke Afo.
 
Amen. 
      """
    },
    {
      "id": 141,
      "title": "KUBE MI!",
      // "audio": "",
      "body": """
      KEY Ab 4/4

{|m : -.r ld .,t,:d .,L, |s, :-ld :-|r 
:-.r ld :r|m :-:-} 

1. O KUBE mi, Andinyaña, 
Kop eseme mi; 
Omokop önö ediwak, 
Kunyuñ ube mi. 

Körös: 
Andinyaña, kop eseme mi, 
Omokop önö ediwak, 
Kunyuñ ube mi. 

2. Yak mi, ke ebekpo mböm 
Ñkut uböhö; 
Medi ke mbuñö esit, 
Nam mbuötidem. 

3. Möbuötidem k’ ukeme Fo, 
Nyom iso Fo; 
Kök unan k’esit ye spirit, 
Nyaña mi k’mfön. 

4. Afo Andidöñ mi esit, 
Andinö uwem, 
’Nyeneke efen ke isöñ 
Ye ko ke enyöñ. 

Amen. 

      """
    },
    {
      "id": 142,
      "title": "DIÖÑ MI KEMI ",
      // "audio": "",
      "body": """
    KEY F 6/8

{|m :-:dlf :-:m |r :-:dlr :-:-|m 
:-:fls :-:m |f :-:m lr:-:-} 

1. ETE k’enyöñ di diöñ mi, 
Ke cross Christ, matuak 
ibuot; 
Men idiök y’ ukut mi fep, 
Kop nyuñ nyaña mi kemi. 

Körös: 
Di diöñ mi , di diöñ mi, 
Ete k’ enyöñ, di diöñ mi. 

2. Ke ini emi Öböñ, 
Nö mfön y’ odudu Fo; 
Ke ndude k’ ikö Fo, 
Di diöñ mi kemi, Öböñ. 

3. Kemi ke ntak Jesus, 
Buñ kpukpru ñkpököbi; 
Ke mkpede Fi ubök, 
Yet, kök mi mbak mkpa. 

4. Ñköfiökke Eyen Fo 
Jesus Christ, kini oko; 
Kemi! Ke ebiet emi, 
Ete mböm, nö mfön. 

Amen.   
      """
    },
    {
      "id": 143,
      "title": "AMI MONIM KE AKPANIKÖ!",
      // "audio": "",
      "body": """
      KEY G 3/2 

{:d |t, .r :r :r |d.m :m :m |r .m:f 
:L |s :-} 

1. ETE, mañyan ubök ’nö Fi, 
Mfiökk’ uñwam efen; 
K’Afo ökpöñde mi, Öböñ 
Ami ‘ndika mmöñ? 

Körös: 
Ami monim k’ akpanikö, 
Jesus ’kakpa ’nö mi, 
Oto k’eti iyip Esie, 
Nyeböhö idiök. 


2. Eyen Fo ököyö eti, 
Ndinö mi uwem; 
Enye ’kobiom akwa ubiak, 
Man osio mi k’mkpa! 

3. Jesus ami möbuötidem, 
Mokut odudu Fo; 
Eyenö mi se ’nanade, 
K’eti ini emi. 

4. Anditöñö mbuötidem, 
Enyin mi ese Fi; 
O yak mbö enö oro, 
Man ukpöñ mi ’kukpa.
 
Amen. 
      """
    },
    {
      "id": 144,
      "title": "NDIANA FI  ",
      // "audio": "",
      "body": """
      KEY G 3/4 

{:s, .,d |m :-.d :t, .,r |d :s, :d .,m 
|s :-.m :d .,m |r :-} 

1. AFO ‘nsinsi udeme mi, 
Amakan ufan y’ uwem; 
Ke kpukpru usuñ isañ mi,
Öböñ, yak ‘nsaña y’Afo. 

Körös 
‘Ndiana Fi, ‘ndiana Fi, 
‘Ndiana Fi, ‘ndiana Fi, 
Ke kpukpru usuñ isañ mi,
Öböñ, yak ‘nsaña y’Afo. 

2. Idighe inem ye uböñ 
Ererimbot k’ mbeñe; 
K’ idara ‘nyenam utom mi, 
Edi nam ‘nsaña y’ Afo. 

Körös: 
‘Ndiana Fi, ‘ndiana Fi, 
‘Ndiana Fi, ‘ndiana Fi, 
K’ idara ‘nyenam utom mi, 
Edi nam ‘nsaña y’ Afo. 

3. Da mi usuñ k’ itikhere, 
Ye ke oyobio uwem; 
Ke usuñ nsinsi uwem, 
Öböñ nam nduk y’ Afo. 

Körös: 
‘Ndiana Fi, ‘ndiana Fi, 
‘Ndiana Fi, ‘ndiana Fi, 
Ke usuñ nsinsi uwem, 
Öböñ nam nduk y’ Afo. 

Amen. 
      """
    },
    {
      "id": 145,
      "title": "MOYOM FI KPUKPRU INI ",
      // "audio": "",
      "body": """
      KEY Ab 3/4

{:d |m :-.r :d .t,|d :-:d |d :-.r 
:d .L, |s, :-} 

1. MOYOM Fi O Öböñ, 
Kpukpru ini; 
Uyo otode Fi, 
Önö emem. 

Körös: 
Moyom Fi, O moyom Fi! 
Ke ofri uwem mi, 
Di, diöñ mi Andinyaña, 
Metiene Fi. 

2. Moyom Fi O Öböñ, 
Di kpere mi; 
Idomo ikanke, 
K’Afo ’dude. 

3. Moyom Fi O Öböñ, 
K’eti y’ idiök; 
Di tiene mi nyuñ duñ 
Man ‘ndu uwem. 

4. Moyom Fi O Öböñ, 
Kpep uduak Fo; 
Man me uñwöñö Fo 
Ökpöyöhö. 

5. Moyom Fi O Öböñ, 
Edisana; 
Nam mi ndi Okuo 
Andinyaña. 

Amen.
      """
    },
    {
      "id": 146,
      "title": "ÖBÖÑ, KE MKPERE FI ",
      // "audio": "",
      "body": """
      KEY G 6/4

{|m :-:-lr :-:d|d :-:L, lL, :-:|
s, :-:-ld :-:m |r :-:-} 

1. K’ MKPERE Fi, Öböñ, 
K’ mkpere Fi; 
K’ukut ekededi 
Osimde mi, 
Ikwö mi eyedi 
Öböñ, k’ mkpere Fi! 
Öböñ, k’ mkpere Fi! 
K’ mkpere Fi! 

2. Ndi asañ’ isañ 
Eyo okut, 
K’idap, m’itiat edi 
Udoribuot, 
K’ndap kpukpru ini, 
Öböñ, k’ mkpere Fi! 
Öböñ, k’ mkpere Fi! 
K’ mkpere Fi! 

3. Yak me usuñ edu 
Esim heven; 
Kpukpru se önöde 
Edi k’ mböm; 
Me enjel ekot mi, 
Öböñ, k’ mkpere Fi! 
Öböñ, k’ mkpere Fi! 
K’ mkpere Fi! 

4. K’eyo esierede, 
‘Nyetoro Fi, 
Ñkereke aba 
Mfukhö mi; 
K’ukut ekededi, 
Öböñ, k’ mkpere Fi! 
Öböñ, k’ mkpere Fi! 
K’ mkpere Fi! 

5. K’ndökde ke enyöñ 
K’idaresit, 
Ami ñkwe aba 
Utin y’ öfiöñ; 
Ikwö mi eyedi, 
Öböñ, k’ mkpere Fi! 
Öböñ, k’ mkpere Fi! 
K’ mkpere Fi! 

Amen. 

      """
    },
    {
      "id": 147,
      "title": "IMÖKÖM FI KE EMEM FO ",
      // "audio": "",
      "body": """
      KEY G 3/4

{:s, |m :-:r |d :-:t, |t, :L, :d |s, ::
s | s :f :m | m :r :d | d :t ,} 

1. ÖBÖÑ, imököm Fi k’emem 
Ötuñöde nt’ udem, 
Ayamad’ usuñ mö emi 
Ebuötd’idem y’ Afo. 

2. Ete, nyin ibeñeke Fi 
Emem obukidem, 
Iyom emem Fo k’ esit 
nyin, 
K’ idiök ekededi. 

3. Emem anamd’ ibuötidem 
Ke se enyin mikwe, 
Isukke uyo k’ idomo, 
Eberede k’Afo. 

4. Ata emem ötuñöde, 
Öfiöröde k’ukpöñ 
K’ mben esie m’iköñ edu 
Y’uñwana Abasi.
 
5. Ete, ñö nyin emem emi 
K’ ñkpö ekededi, 
Tutu ntunö ’be efep, 
Ndien ibine Fi. 

Amen.
      """
    },
    {
      "id": 148,
      "title": "“CHRISTIAN, O! KUKPA MBA” ",
      // "audio": "",
      "body": """
     
KEY A 4/4 

{|d :s, lm :r |d :L, ls, :-|L, :d lf:m 
|r :d ls :-} 

1. CHRISTIAN, O! kukpa 
mba, 
Kuyom nduök odudu; 
Odu k’otu me asua: 
“Böñ akam.” 

2. M’ odudu ekan ekuk, 
K’ eyeyom fi ndimum, 
Kunö mö ifet kpeme: 
“Böñ akam.” 

3. Men ñkpö eköñ Öböñ 
Sine ke ofri ini, 
Idiök owo k’ebet fi; 
“Böñ akam.” 

4. Kop se mendikan k’ eñwan, 
Enöde nte item; 
Kpukpru mö etiñ ete: 
“Böñ akam.” 

5. Kop s’ Öböñ fo etiñde, 
Kpañ utöñ k’uyo Esie; 
Dip ikö Esie k’ esit, 
“Böñ akam.” 

6. Kpeme, koro uwem Fo, 
Ököñö k’item emi; 
Kpe ubök nyuñ yom 
uñwam: 
“Böñ akam.” 
Amen. 
      """
    },
    {
      "id": 149,
      "title": "ÖBÖÑ, SUK ESIT ISERI MI!",
      "audio": "",
      "body": """
      KEY A 2/4

{|d :d |t, :d |L, :d |s,:-|m :d |f :r 
|d :t, |d:-} 

1. ÖBÖÑ, suk iseri mi, 
Nam mma erikpep Fo, 
Man ndu eti uwem, 
Nam mbiet eyenöwöñ, 
Mkpöñ ñkari y’ udu, 
Nnam se inemde Fi. 

2. Se önöde mi mfin, 
Nam mbö nte eyen, 
Se mkpöñ edidide, 
Odu k’ekikere Fo, 
Eyenö se ikemde, 
Ñkere nso ndien? 

3. Nt’ eyen eberede 
K’ ukpeme okpond’ akan, 
K’öfiökde idi mem-mem, 
Efeghe ndik k’isañ, 
Yak ndu ntre y’ Afo, 
Ete ye Andikpeme. 

Amen. 
      """
    },
    {
      "id": 150,
      "title": "CHRIST EKPE KPUKPRU ISÖN ",
      "audio": "",
      "body": """
      KEY Eb 3/4 

{:m .f |s :-.L :s .m |d :-:d |r :-.r 
:d .r |m :-} 

1. ÖBÖÑ mi ödöhö, 
“Odudu fo ekpri, 
Akpamba, böñ akam, 
‘Ndien bö se oyomde.” 

Körös: 
Jesus ekekpe 
Kpukpru isön mi; 
Ye ndo idiökñkpö mi, 
Anam mfia ‘nte snow. 


2. Öböñ, kemi mokut 
Odudu Fo ikpöñ, 
Ökök akpamfia, 
Esit itiat emem. 

3. Ndotke ndibö 
Mfön otode Fi, 
Iyip Eyeneröñ 
Eyenam nsana. 

4. Ke ini mkpa mi, 
Ukpöñ mi eyeset, 
Nyefiori k’ enyöñ, 
“Jesus ekpe kpukpru.” 

5. Ke ebekpo Esie 
Nyesana ofri, 
Utip mi nyenim 
Do ke ukot Jesus. 

Amen. 
      """
    },
    {
      "id": 151,
      "title": "“TOP KPUKPRU EKIKERE FO NÖ ENYE ",
      // "audio": ""
      "body": """
      KEY Ab 6/8

{:s, |s, :-:d ld :-:r |d :-:t, lL,: :
s, |s,:-:m lm :-:f |m :-:-l-:-} 

1. ENEM didie ndibere 
K’ odudu Fo Öböñ, 
Odudu Fo akama mi, 
Ebe m’ini ’domo. 

Körös: 12/8
SA: Top m’eki...kere nö Enye, 
TB: Top m’eki-ke-re, ’kikere 
nö Enye, 

SA: Top m’eki...kere nö Enye, 
TB: Top me e-ki-ke-re nö Enye 

SA: Top m’eki...kere nö Enye, 
TB: Top m’eki-ke-re, ’kikere 
nö Enye, 

All: Koro Enye ekerede fi. 

2. Edi uduak Fo nditop 
Ekikere ’nö Fi; 
Ndiyak ofri mfukhö, 
Ye ntimer’ esit. 

3. Möbuotidem k’ ukpeme Fo, 
Nyuñ nse Fi ikpöñ, 
Mada kpukpru afaneköñ 
Ndi Fi ke iso. 

4. Nsinam mkpöfukhöde 
K’ ndik ini iso? 
Me unana mbuötidem; 
Ndifuk spirit mi? 

Amen. 

      """
    },
    {
      "id": 152,
      "title": "ÖBÖÑ, NAM MBUÖTIDEM NYIN OKPON! ",
      // "audio": ""
      "body": """
      KEY G 4/4 

{|d :d lt, :t,|L, :-.L,|s, :-|m :m lr 
:m |d:d lt, :-} 

1. ÖBÖÑ nö mbuötidem, 
Kpep nyin ndiböñ akam, 
Men kpukpru ubiöñö fep; 
Nö mbuötidem. 

2. Mbuötidem ömöfön, 
Ada nyin esin k’ emem, 
K’ enye kpukpru ‘ñkpö 
efön; 
Nö mbuötidem. 


3. Ndisian ebeñe nyin, 
Ndibö s’ ibeñede, 
Ekem y’ mkpösöñ ñkpö, 
Nö mbuötidem. 

4. Kuyak m’ asua nyin ekan, 
K’ onyim ikañ ösöñde, 
Otu-eköñ nyin akan; 
Nö mbuötidem. 
Amen. 


      """
    },
    {
      "id": 153,
      "title": "SUK EKPRI NNEME YE JESUS ",
      // "audio": ""
      "body": """
      
KEY Bb 4/4

{.s,|d.d:d.d lm:-.m|r.d:d.L, 
ls, :-.} 

1. ÑKOSOP ke idiök, Jesus 
okokut mi, 
Uñwana heven öyöhö ke 
ukpöñ mi; 
Eyet mi ke ima, ewet 
enyiñ mi ko, 
Ekpri ’neme ye Jesus 
anam mböhö. 

Körös: 
(Kemi yak) ineme ekpri ye 
Jesus, 
(Yak nyin) ibuk ukut inö 
Enye, 
(Eye) kop eseme nyin, 
(Eye nyuñ) öbörö ñko, 
(Ke afo) okutde akam 
ödökde, 
(Afo ) öfiök ñkpri ikañ 
’kasak, 
(Eye) kut ekpri ’neme ye 
Jesus ömöfon 
(otim öfön). 

2. Ke ndik odude, idorenyin 
atak, 
Ke eyikhe ofukde uñwana 
usen; 
Idiökñkpö ewörö efuk 
ediy’ enyöñ, 
Ekpri ’neme ye Jesus 
añwaña usuñ. 


3. K’ ndik ye k’eyikhe, möñeyet 
k’enyin mi, 
Jesus Ufan ke ekpeme 
kpukpru ini; 
Ntien’ Enye k’akam, öfiök 
unana mi, 
Ekpri ’neme ye Jesus 
ömöfon eti. 

Amen. 

      """
    },
    {
      "id": 154,
      "title": "IMA SPIRIT",
      // "audio": ""
      "body": """
      KEY F 3/2

{:m .r |f :m :d .r |d :-:s, .d 
|m :s :f .m |r :-} 

1. SPIRIT otode heven, 
Nam nyom ñkpö enyöñ, 
Kpep mi uduak Abasi, 
Yak nnam se oyomde, 

2. Eti Spirit, di k’ima, 
Yama k’ usuñ uwem mi, 
Nyuñ yet ekikere mi, 
Man ’ma Fi ‘nte odotde. 

3. Eti Spirit, uñwana, 
Bin ekim fep k’esit mi, 
Di eti ndöñesit, 
Man ndu ke ima Fo. 

4. Eti Spirit, odudu, 
Nyemama Fi ñkan, 
Di Ufan mibiañake, 
Nyema tutu k’ mkpa. 

Amen. 
      """
    },
    {
      "id": 155,
      "title": " EDISANA SPIRIT, DUK DI!",
      // "audio": ""
      "body": """
    KEY F 6/4
Prayerfully, 

{:s, |m :-.m :m lf :d :r |m :-:-ld 
:-:m |s :-.s :s lf :d :r |m :-:-l-:-} 

1. UKPÖÑ mi k’ atua oyom 
Spirit, 
Ödöñ mi eti ndifiök 
Uyöhö edidiöñ önöde; 
Yöhö mi, möduö k’ukot Fo. 

Körös: 
Duk di, duk di! Eti Spirit, 
Töñö utom edidiöñ Fo, 
Möbuötidem ke uñwöñö Fo, 
‘Nyuñ bö erikan 
k’idiökñkpö. 


2. O Spirit Abasi y’eke 
Christ, 
Abasi, ita ke kiet, duk 
Ke idem, ukpöñ, ye Spirit mi, 
Yöhö mi y’ edisan’ ido. 

3. Nam ikpökhidem mi 
temple Fo, 
Esit mi asan’ akan snow, 
Nö mi spirit ima y’ ifure, 
Yöhö mi, möduö k’ukot Fo. 

4. Ke eyomde uyöhö Spirit, 
Ekpöñ kpukpru idiök ido, 
Yak ofri uwem fo nö Enye, 
Ndien Spirit ’yebe oduk. 

Amen.   
      """
    },
    {
      "id": 156,
      "title": "JESUS, DA KE UFÖT NYIN ",
      // "audio": ""
      "body": """
      KEY F 4/2 

{|m:-.re |m:f |m:-|d:-|r:-.m 
|f :s |f :-|m :-} 

1. JESUS, da k’ uföt nyin, 
Ke odudu Fo, 
Yak utuak ibuot nyin 
Enyene uteñe. 

2. Yak Eti Spirit Fo 
Oduk nyin k’ idem, 
Bin ndik y’ mfukhö 
Ke ukpöñ nyin fep. 

3. Man nyin idemere 
Isaña k’ usuñ, 
Ikpeme usiere 
Nsinsi usen. 

Amen. 
      """
    },
    {
      "id": 157,
      "title": "O ÖBÖÑ, DÖÑ ODUDU",
      // "audio": ""
      "body": """
        KEY F 4/4

{:s, .s, |d :d lr :r |m :s |-:d .r |m 
:d lr :t, |d :-l-} 

1. K’ ODUDU Öböñ edide 
Do ke usen Pentecost, 
K’ usen eribet ebede, 
Mö ebö Eti Spirit. 

Körös: 
(Öböñ) döñ odudu Fo(Öböñ) döñ odudu Fo 
(Öböñ) döñ odudu Fo 
Odoro kpukpru nyin, 

2. Edem’ ikañ odoro mö, 
Mö ekwörö k’ odudu, 
Otu owo ekpañ utöñ, 
Enyuñ etiene Öböñ. 

3. Nyin ibebet Eti Spirit, 
Nyin inyene esit kiet,
Öböñ nam uñwöñö oro 
Otode ke ikö Fo. 

4. Yöhö nyin ye idara Fo, 
Nö nyin eridiöñ Fo mi, 
Yöhö uböñ Fo k’otu nyin, 
Ibeñe k’ mbuötidem. 

Amen.  
      """
    },
    {
      "id": 158,
      "title": "KEMI, MOKOP EDISANA IKAÑ ",
      // "audio": ""
      "body": """
  KEY G 4/4

{|m :m lr :d|m :m lr .d :-|m :d 
lL, :s, |d :-ld :-} 

1. MOKOP edisan’ ikañ, 
K’asasak, ayama, 
Ököri ödök k’ enyöñ, 
Öyöhö k’ ukpöñ mi; 
Möbö nsinsi uwem, 
O, utibe mbuk! 
Ñkakpa, modu uwem, 
Uböñ! Uböñ! Uböñ! 

2. Kemi ami möböhö, 
Etat mi me uruk; 
Jesus anam mböhö, 
Nte mbon heven; 
Edi akwa uböhö, 
O, utibe mbuk! 
Ekeböp mi, möböhö, 
Uböñ! Uböñ! Uböñ! 

3. Yak esuan mbuk emi, 
Ke kpukpru me idut, 
Man osim kpukpru owo, 
Akwa erinyaña, 
Möfiök edi ke mfön, 
O, utibe mbuk! 
Möfiök ke anyaña mi, 
Uböñ! Uböñ! Uböñ! 

4. Uböñ enyene Ete, 
Uböñ enyen’ Eyen! 
Erinyaña emedi, 
M’idiökñkpö nyin efen; 
Eyak me harp Abasi 
Ekwö eti mbuk, 
Mbon isañ efiori: 
Uböñ! Uböñ! Uböñ! 

5. Yak mfiori uböhö 
Otim ödök k’enyöñ; 
Jesus önö uböhö, 
Obuñ mkpököbi; 
Esibe me ebuka, 
O, utibe mbuk! 
Erinyaña ke mfön, 
Uböñ! Uböñ! Uböñ! 

Amen. 
 

      """
    },
    {
      "id": 159,
      "title": "TÖÑÖ NTE IBEREDEM OKODUK KE ESIT MI ",
      // "audio": ""
      "body": """
    KEY Bb 6/8

{:s, .s, |s, :m, :L, ls, :-:d .d |d :t, 
:L, ls, : -:s, .s, |s, :r, :m, lf, :s, :f, 
|m, :-:-l-:-} 

1. KE Spirit edide, 
Edemere ima, 
Ye ikwö eköm ye itoro; 
Ami menyen’ emem 
Ekondo minöhö, 
Y’ukeme nditiene Öböñ. 

Körös: 
Ke Spirit odukde k’esit mi 
(k’esit), 
Idiök ñkpö y’ ekim ewörö 
(’wörö); 
Nti uñwöñö y’uböñ eyama, 
Ke Spirit odukde k’esit mi 
(k’esit). 

2. Ke Spirit edide, 
Odudu omodu 
K’enyiñ Andifak ye 
Edidem; 
Ntiense omodu 
Anyañade k’idiök, 
Önöd’ eti ifiök ke Jesus. 

3. Ke Spirit edide, 
Möbö Ada-usuñ; 
Eyeda mi ke eti isañ; 
Ke odudu Esie, 
Ami ‘nyenam utom, 
Tutu ata uñwana edi. 

Amen. 
  
      """
    },
    {
      "id": 160,
      "title": "UYÖHÖ EDIDIÖÑ ",
      // "audio": ""
      "body": """
      KEY Eb 4/4

{:m .,f |s .,s :s .,s ls .,f :m .,s |d' :l-} 


1. O ESIT mi idifrek’ ini oro, 
Ek’ Edisana Spirit 
okodukde 
K’esit mi ndinam enye 
asana, 
Uböñ Esie öyöhö ke 
ukpöñ mi. 

Körös: 
Ke ami ’nimde me ikö 
uñwöñö, (uñwöñö) 
Ami ’ma mbö uyöhö 
edidiöñ, (edidiöñ) 
Eti Spirit ekedi nte edeme 
ikañ, 
Kini mböde uyöhö edidiöñ. 

2. Ke ami nyakde idem mi 
kpukpru, 
K’mbetde odudu otode 
k’enyöñ, 
Kini nsuk ’nimde uñwöñö 
oro, 
Ami ma mbö uyöhö 
edidiöñ. 


3. Nte nsañade, ’neme ye 
Jesus, 
Enye osuk ekpeme ke 
kpukpr’ usuñ, 
Ami nyak idem ’nö uduak 
Esie, 
O uyöhö edidiöñ edi 
okim. 

Amen. 
      """
    },
    {
      "id": 161,
      "title": "BEREDE MME WINDOW HEVEN",
      // "audio": ""
      "body": """
   KEY Ab 6/4

{|d :d :d |t, :L, :s, ld :-:-lr :-:-lm 
:m :m lr :d :L, lr :-:-} 

1. ÖBÖÑ iyom edidiöñ Fo, 
Nte ököñwöñöde; 
Nyin ikpe ubök k’enyiñ 
Fo, 
Nö nyin utibe mfön. 

Körös: 
Berede me window heven; 
SAT: Iböñ akam k’esit kiet; 
B: Iböñ akam k’esit, k’esit 
kiet 
All: Ke ibetde k’mbuötidem 
Nö edidiöñ Fo Öböñ 
(Öböñ). 

2. Yak ida iduk k’ufök Fo, 
Kpukpru s’ inyenede Fi; 
Uwa uwem, ima y’utom, 
Edi Okuo, Andifak. 

3. Yöhö nyin ke uyöhö Fo, 
K’ata akwa ima Fo; 
Nö nyin odudu Spirit Fo, 
Y’mfön otode k’enyöñ. 

4. Berede me window heven; 
Börö akam nyin k’mböm; 
Tutu ikwö Hallelujah 
K’ibuanade k’uböñ Fo. 

Amen. 
   
      """
    },
    {
      "id": 162,
      "title": " AKAM KABAÑA ODUDU ",
      // "audio": ""
      "body": """
      KEY Bb 4/4

{:m, .f, |s, :fe, ls, :m .m |r :d lL, :|
s, :d lL, :r |r :-l-} 

1. KE ubet enyöñ ke 
Jerusalem 
Mbet ekebet, 
K’ eböñde akam, odudu 
Öböñ 
Etiene mö. 

Körös: 
Öböñ nö mi (odudu) Nö 
(odudu) mi (odudu) 
Öböñ nö mi (odudu) 
Odudu Eti Spirit 
O di k’idem Fo, Eti Spirit, 
Mfin, nte k’usen Pentecost 
Mbök nö mi (odudu) 
odudu Fo. 

2. Öböñ, ami k’mbebet 
k’uyo Fo, 
Moyom odudu, 
Yak ikañ Spirit öyöh’ 
ukpöñ mi, 
Nö odudu. 

3. Odudu ndikan obukidem, 
Eti odudu 
Man esit mi edi edisana 
Nö odudu. 

4. K’ mbebet mi, ndibö 
odudu 
Eke Pentecost 
Monim uñwöñö Fo 
k’ akpanikö 
Nö odudu. 

Amen.
      """
    },
    {
      "id": 163,
      "title": "DÖÑ IKAÑ ORO ",
      // "audio": ""
      "body": """
      KEY F 4/4 

{:s, .,s, |d .,d :d .,r lm :r .,d |s :-l:
s, .,s, |d .,d :d., r lm :r .,d |r :-l-} 

1. KE iyomde ndikan 
idiökñkpö, (idiök) 
Yak eti ikañ anam isana, 
(isana) 
Man esit nyin odot Fi 
ndiduk, (ndiduk) 
Döñ ikañ oro kemi. 

Körös: 
O, iyom ikañ oro, döñ 
kemi... 
Döñ kemi... döñ kemi... 
Men kpukpru idiökñkpö 
fep 
Nyuñ nam mi ndi Okuo, 
Döñ ikañ oro kemi (kemi). 

2. Ekedi k’ubet enyöñ ke 
eset, (k’eset) 
Me mbet ekeyöhö y’idara, 
(y’idara) 
Odudu Esie ’di ukem mfin, 
(kpa mfin) 
Döñ ikañ oro kemi. 

3. Jesus oyom idi mbet Esie, 
(Esie) 
Enye k’okot ndida nyin 
usuñ; (ke usuñ) 
Öböñ, nö nyin unen ke 
utom Fo, (utom Fo) 
Döñ ikañ oro kemi. 

Amen. 
      """
    },
    {
      "id": 164,
      "title": "YÖHÖ MI KEMI ",
      // "audio": ""
      "body": """
      KEY G 6/4

{|m :-:m lr :-:d |s, :-:L, ld :-:r |m 
:-:fls :-:L |s :-:m lr :-:-} 

1. DI, di fuk mi, Eti Spirit, 
Yet esit ye ibuot mi; 
Yöhö mi ye ndodu Fo, 
O di yöhö mi kemi. 

Körös: 
Yöhö mi, yöhö mi, 
Jesus, yöhö mi kemi; 
Yöhö mi ye ndodu Fo, 
O di yöhö mi kemi. 

2. Emekeme, Spirit mfön, 
Ami ‘nyeneke ifiök, 
Edi moyom Fi ke akpan; 
O di yöhö mi kemi. 

3. Ami ‘nyöhö ye ’memidem, 
Möduö k’eti ukot Fo; 
Nsinsi Eti Spirit di, 
Yöhö mi ye odudu. 

4. Diöñ nyuñ nyaña, döñ mi 
esit, 
Yet esit ye ibuot mi; 
Afo edi ndöñesit, 
Omotim öyöhö mi. 

Amen.
      """
    },
    {
      "id": 165,
      "title": "DI, ETI SPIRIT, IBIOM HEVEN ",
      // "audio":"",
      "body": """
   KEY G 4/4

{:d |d : -.r lm :r |d :f lr :r |m :s ls 
:fe |s :-l -} 

1. DI Eti Spirit ‘nte ibiom 
Y’odudu eriset; 
Nam ikañ ima ayama, 
K’esit nyin ebebit. 

2. O Öböñ, iyesuk idu 
Idiök uwem emi? 
K’ima nyin ebitde y’Afo, 
Okuo ye nyin okpon. 

3. Di Eti Spirit ‘nte ibiom 
Y’odudu eriset; 
Di, buk ima Andinyaña 
Man ima nyin ofiop. 

Amen.    
      """
    },
    {
      "id": 166,
      "title": "O NDITIM NSAÑA YE ABASI",
      // "audio": ""
      "body": """
      KEY G 4/2

(moderately slow and dignified) 

{:s,|d:L,ls,:d.r |m:rld:m|s 
:m .r ld :m|r :-l-} 

1. O NDISAÑA y’ Abasi, 
Edi mbiet heven, 
Önö mi uñwana k’usuñ 
Osimd’ Eyeneröñ. 

2. Akpa edidiöñ odu möñ, 
K’ini ‘ñköfiökd’ Öböñ? 
Y’ idara Jesus k’ukpöñ mi 
Y’ ikö Esie ñko? 

3. Emem ñkenyenede do! 
Emenem nditi, 
Kemi mö iduhe aba, 
Ekondo inöhö,
 
4. Edisana Spirit, fiak di, 
Isuñ-utom emem, 
Masua idiök ebinde Fi 
Osio ke esit mi. 

5. Ndem oro ñköfiökde, 
S’enye ekpededi, 
Ñwam mi ‘ndibiat mö 
k’iso Fo, 
Man ‘ñkpono Fi ikpöñ. 

6. Ntem ‘nyesaña ‘mkpere Fi, 
K’ifure ye emem, 
Uñwana ’yeda mi usuñ, 
Osim Eyeneröñ. 

Amen. 
      """
    },
    {
      "id": 167,
      "title": "SPIRIT MBUÖTIDEM SUKHÖRE DI ",
      // "audio": ""
      "body": """
      KEY C 4/2

{:m |f :L ls :f|m :-l -:m'|r' :d’ ld’ 
:t |d' :-l-} 

1. SPIRIT mbuötidem, 
Sian nyin ñkpö Öböñ; 
Nyuñ nam nyin ifiök 
Abasi, 
Ibuana ke iyip. 

2. Iyip Fo akanam 
Ikeme ndikut; 
K’Andikpa ’nö 
menamidiök 
Akakpa önö mi. 

3. Owo idöhöke 
Jesus edi Öböñ, 
K’Afo munamk’ enye 
öfiök 
Oto k’ikö uwem. 

4. Do ke nyin inyene 
Ufön k’ iyip Esie, 
Ndien ifiori k’idara, 
Afo edi Öböñ. 

5. Man ekondo efiök 
Eyeneröñ ufak! 
Spirit mbuötidem 
‘ndiwut 
Uböñ enyiñ Esie. 

6. Nö mfön ndiyom 
Ifiök erinyaña; 
Nam ofri ekondo efiök 
Nyuñ tiñ k’esit kpukpru.
 
7. Nö nyin mbuötidem; 
Man k’owo öböde 
Ntiense ke idemesie, 
Onim k’akpanikö. 

8. Akwa mbuötidem, 
Emend’ obot efep, 
Anamde andikot Jesus, 
Öfön ama k’ima. 

Amen. 

      """
    },
    {
      "id": 168,
      "title": "ÖYÖHÖ MI ",
      // "audio": ""
      "body": """
      KEY G 3/4

{:s, .,s, |d :-.m :d .m |s :-:L .,L |s 
:-.m :d.m |r :-} 

1. KEMI ke kpukpru ebiet, 
Odudu heven edi; 
Öduöhö kpukpru k’ mfön, 
Tor’ Öböñ, öyöhö mi. 

Körös: 
Hallelujah, odudu, 
Öduöhö nte edim; 
Edi ke akwa mfön; 
Tor’ Öböñ, öyöhö mi. 

2. Nö mfön otod’ enyöñ 
Yöhö ndodu Fo mi; 
Tiñ ikö man okposu, 
Nam edim Fo ’duöhö mi.
 
3. Afo önö odudu, 
Uwem mi oto k’Afo 
Nö odudu k’ utom Fo 
Nam edim Fo osim mi. 

Amen. 
      """
    },
    {
      "id": 169,
      "title": "NDODU SPIRIT ",
      // "audio": ""
      "body": """
      KEY F 3/4

{:m | m :d :m | r :t, :r |d :-:d |d :L, 
:d |d :s, :d |t, :-} 

1. ETI Spirit edi, 
Imokop Enye mi! 
Esit nyin ifumke aba, 
Edi omonyime.
 
2. Akwa esit ima, 
Akamba odudu, 
Otode ke heven edi 
K’ eti ini emi. 

3. M’utom ekim ebe, 
Uñwana ayama, 
Ada nyin ke usuñ Öböñ, 
K’ nti ekikere.
 
4. Yak ‘ñkpö uwem emi 
Okubiaña aba, 
Yak ikunam se ibinde 
Edisana Spirit. 

Amen. 

      """
    },
    {
      "id": 170,
      "title": "ETI SPIRIT DI ",
      // "audio": ""
      "body": """
     (Come, gracious Spirit!) 

KEY Bb 3/4

{|s, :d :t,|d :-:r |s, :L, :t,|d :-:-} 

1. ETI Spirit: Ibiom heven, 
Di y’uñwana otod’ enyöñ; 
Ukpeme nyin y’ Ada-usuñ, 
Kpeme ’kikere y’ isañ 
nyin. 

2. Nam ifiök akpanikö Fo 
Añwam nyin ‘ndimek 
usuñ Fo; 
Sin ‘ndik Fo ke kpukpru 
esit 
Man nyin ikukpöñ Abasi. 

3. Tim da nyin usuñ k’ ifure 
Man iböhö idiök y’ afia; 
Da nyin usuñ uwem sim 
Christ, 
‘Mbak idiyo ikpöñ usuñ. 

4. Da nyin k’ edisana usuñ 
Man nyin iduñ ye Abasi; 
Da nyin ka k’ nduök odudu, 
Man iduñ y’ Enye k’ nsinsi. 

Amen.  
      """
    },
    {
      "id": 171,
      "title": "DUÑ YE AMI ",
      // "audio": ""
      "body": """
      KEY A 4/4 

{ld :t, .d |r :dlf :f |m :-lL,:t, |d 
:L, ls, :s, |s, :-} 

1. SPIRIT mfön duñ y’ ami, 
Man nyöhö ye mfön; 
Ke m’ikö ekökde mi 
Nam uwem mi ebiet Fi; 
Nö mi uko ye emem, 
Man mkpetiñ ikö Christ. 

2. Suñ suñ Spirit duñ y’ ami, 
Ndien nyesuk idem; 
Kini akwa idomo 
Böp esit mi nte flow’r; 
Tat enye kini utin; 
Da ima esie k’ Okuo.
 
3. Spirit uko duñ y’ ami; 
Nyenyene odudu 
Ndisöñö ke eñwan, 
K’ ebiet uñwam miduhe; 
Ke akwa idorenyin, 
Ami nyesöñö ‘nda. 

4. Eti Spirit duñ y’ ami, 
Nyedu eti uwem; 
Ndianare y’ idiökñkpö; 
Mmek, n-nam s’ ifönde, 
Ndien se n-nyenede 
Nyenö Fi Andinö. 

Amen. 

      """
    },
    {
      "id": 172,
      "title": "ATA IFURE ",
      // "audio": ""
      "body": """
      
KEY B 3/4 

{:m, .,f, | s, .,d :d :m .,r | d .,L, :d 
:t, .,L, |s,:-.m, :s, .d |r :-} 

1. IDARA nte akpamöñ 
K’ Iberedem edide; 
Oduñ ye nyin k’ nsi nsi, 
K’esit mendibuötidem. 

Körös: 
:\$: Ata ifure, eti ifure 
Möfiök emi k’ukpöñ mi, 
K’ mbufut uwem Enye 
’nö emem 
Mbufut onyuñ odop. 
                  DS.pp 

2. Önö uwem, nsöñidem, 
Oto ke Spirit Öböñ; 
Akan ‘mfukhö ye eyikhe, 
Anam inyene emem. 

3. Nt’ edim otode k’ enyöñ 
Ye utin asiakhade; 
Ntre k’enö Eti Spirit 
Oto ke enyöñ edi. 

4. Sese iñwañ ököride 
Mfri edinen ido; 
Idim uwem ömöfiörö, 
K’ nsat isöñ wilderness. 

5. O utibe erinyaña! 
K’ ikutde iso Esie; 
O utibe ebiet iduñ, 
Ebiet nduök odudu. 

Amen. 
      """
    },
    {
      "id": 173,
      "title": "ODUDU OTODE ABASI ",
      // "audio": ""
      "body": """
     KEY F 4/4
     
{:m .s|L :s lm :r|d :m l -:s .s |s 
:f lr :m |d :-l} 

1. EKEDU ke ubet enyöñ, 
Eboho ke esit kiet; 
Eti Spirit edi nte 
Öböñ ököñwöñöde. 

Körös: 
Öböñ döñ odudu Fo, 
Öböñ döñ odudu Fo, 
Öböñ döñ odudu Fo, 
Odoro kpukpru nyin. 

2. Odudu okoto k’ enyöñ, 
Ke akwa uyom ofim 
Edem’ ikañ odoro mö, 
Nt’ Öböñ eketiñde. 

3. Ih, oruk odudu emi, 
Ekenö me ete nyin; 
Enyene mendibuötidem, 
Eyenyene nyin ñko. 

Amen. 
 
      """
    },
    {
      "id": 174,
      "title": "O SPIRIT MBUÖTIDEM",
      // "audio": ""
      "body": """
      KEY F 6/8

{:d |m :-:m lm:-:r |d :-:d ld ::
m |r :-:r ls :-:f |m :-:-l-:-} 

1. SPIRIT Fo ikpöñ, O Öböñ, 
Osio nyin ke idiök; 
Odudu Esie eyet nyin, 
Anam nyin isana. 

Körös: 
O Spirit mfön y’ ima; 
Di ke otu nyin mi, 
Nam esit nyin mi asana; 
Nö nyin odudu mfin. 

2. Spirit Fo ikpöñ, O Öböñ 
Edemere ima; 
Odudu Esie k’ esit nyin
Önö nyin uñwana. 

3. Spirit Fo Öböñ, önö nyin 
S’ iyomde ke akam; 
Ikö ndöñesit Esie, 
Emen ukut efep. 

4. Spirit Fo Öböñ, önö nyin 
Mfön nyin iyomde; 
Ke ibetde, O Spirit, di 
K’ odudu eriyet; 

Körös: 
Spirit ima sukhöre, 
Di ke otu nyin mi; 
Nte akwa uyom ofim, 
Saña be ke ukpöñ nyin. 

Amen. 
      """
    },
    {
      "id": 175,
      "title": "DI, ETI SPIRIT, DEMERE ESIT NYIN ",
      // "audio": ""
      "body": """
     KEY G 4/4

{:d |d :-.r lm :r |d :f lr :r |m:s ls 
:fe |s :-l-} 

1. ETI Spirit demere nyin, 
Ikop ndodu Fo; 
Andinö prophet odudu, 
Uñwana ye ima. 

2. Ke Afo me Prophet etiñ-
Ikö enyuñ ewet; 
Afo, ukpökhöre, di tat-
Edisana ñwed. 

3. Tat mba Fo nte ibiom, 
Fuk nyin k’ ekim uwem; 
Kini spirit nyin enyekde, 
Yak uñwana odu. 

4. Ndien iyefiök Abasi, 
Oto k’uñwana Fo; 
Ikwö ye ndisan’ owo, 
Akwa ima Öböñ. 

Amen.  
      """
    },
    {
      "id": 176,
      "title": "DI, ETI SPIRIT, DI ",
      // "audio": ""
      "body": """
      KEY Eb 4/4

{:d |r :m lf :s |m :-l -:s|L :d' lf 
:m |r :-l-} 

1. DI, Eti Spirit, di 
Yama k’ uñwana Fo, 
Bin ekim fep ke esit nyin; 
Nyuñ tat nyin mi enyin. 

2. Nö nyin mbuötidem, 
Sio eyikhe y’ ndik, 
Nö uñwana ima k’esit 
Emi midikpaha. 

3. Nam ifiök idiök nyin 
Wut nyin iyip Jesus, 
Yak esit eyikhe okut 
Ndib’ ima Öböñ. 

4. Afo anam esit 
Ye ukpöñ asana; 
Sin uwem Fo ke esit 
nyin, 
Man idi obufa. 

5. Ndien duñ k’esit nyin 
Nam iböhö m’ idiök; 
Iyetoro, inyuñ ima 
Fi, Ete ye Eyen. 

Amen. 

      """
    },
    {
      "id": 177,
      "title": "ETI ANDIFAK NYIN, KE ÖNYÖÑDE",
      // "audio": ""
      "body": """
    KEY Eb 4/4

{:d |d :-. dlr :m |f :-.flm :s |d' 
:m lm :fe |s :-l-} 

1. ETI Andifak ke Enye 
Önyöñde ko k’enyöñ, 
Önö Iberedem ‘ndiduñ 
Ye nyin k’ isöñ. 

2. Enye ekedi ‘nte ibiom 
Eke atatde ‘mba; 
Man önö ima ye emem, 
K’ererimbot. 

3. Edi nte edem’ ikañ, 
Ekpep onyuñ owut; 
Edi k’ odudu ‘nte ofim, 
Owo mikwe. 

4. Enye ’di ndinö mfön, 
Nte eti isen; 
K’okutde nsukhör’ esit, 
Eyeduñ do.
 
5. Uyo ikö Esie suñ-suñ, 
Nte inem ofim, 
Akpan ndik ye ndudue; 
Owut heven. 

6. Nti ido inyenede, 
Ye kpukpru erikan 
Y’nti ekikere ñko; 
Eto k’ Enye.
 
7. Edisana Spirit mfön 
Di, se ’memidem nyin; 
O nam esit nyin iduñ Fo, 
Odot y’Afo. 

Amen.  
      """
    },
    {
      "id": 178,
      "title": "ETI SPIRIT DA NYIN USUÑ",
      // "audio": ""
      "body": """
      KEY F 3/4

{|m :-:f |s :-:m |m : -:r | d: -:|
f : -:m |L :-:s |s: -:fe |s: -:-} 

1. ETI Spirit, da usuñ, 
Isim ebekpo mfön; 
Kini iböñde akam, 
Iyom ndodu Fo mi, 
Eti Spirit, da usuñ, 
Sim Enye ekeköñde! 

2. Edi ini unana, 
Ye usen mfön ñko; 
Bök ukpöñ nyin ke 
manna, 
Mbemiso nyin inyöñ, 
O Spirit, Ibiom heven; 
Da nyin sim usör’ ima! 


3. Ke eti itie-mböm, 
Enö idara y’ emem; 
K’ ibetde k’ ukot Jesus, 
Nam edi usuñ heven, 
Eti Spirit, Ufan nyin, 
Kemi duk ke esit nyin! 

4. Okposuk nyin idiökde, 
Iyip Jesus eyet nyin; 
Ke idim mfön oro 
Yet nyin mi man isana; 
Eti Spirit ‘nte ikañ, 
Föp me udöñ esit nyin. 

Amen
      """
    },
    {
      "id": 179,
      "title": "ETI SPIRIT, ADA USUÑ!",
      // "audio": ""
      "body": """
    KEY G 3/4
    
{|s, :-:s, |d :-:d |m :-.r :d |r ::-|
m :-: m |s :-:d |t, :-.d :r |d:-:-} 

1. ETI Spirit, kpere nyin, 
O, eti Ada-usuñ, 
Da nyin usuñ k’ubök Fo, 
Mbon isañ ke desert; 
Mekpa mba edara, 
K’ekopde uyo oro 
Okotde, “Andiyo, di! 
Nyeda nsim iduñ!” 

2. Ata Ufan, omodu, 
Emekpere ndiñwam; 
Kukpöñ nyin ke idomo, 
Ndiyo k’akwa ekim, 
Ke oyobio ösöñde; 
K’ idorenyin miduhe, 
Döhö suñ “Andiyo, di! 
Nyeda nsim iduñ!” 

3. K’utom nyin okurede, 
Ke ibetde uböhö, 
S’ isukde edi akam, 
Imöfiök enyiñ nyin do, 
Iyebe akpa oro 
K’ ikotde iyip Jesus, 
Döhö suñ “Andiyo, di! 
Nyeda nsim iduñ!” 

Amen 

      """
    },
    {
      "id": 180,
      "title": "DI, ETI SPIRIT KE IMA ",
      // "audio": ""
      "body": """
      KEY G 3/4

{|s:m :d |r :-:t, |d :-:-|d:r :m 
|f : -:m |r :-:-} 

1. SPIRIT di ke ima 
Yak eti uñwana 
Osim nyin mi; 
Afo ’möfön eti, 
Nö m’enö Fo ofri, 
Man nyin idaresit; 
O di kemi! 

2. Di akakan Ufan, 
Ata eti esen, 
K’odudu Fo, 
Nö nduök odudu, 
Y’mfut k’ufot eyo, 
Ye emem k’ mfukhö; 
Döñ nyin esit. 

3. Uñwana emem di, 
Yöhö ke esit nyin; 
Di duñ ye nyin! 
Nyin ifiökke efen, 
Döñ kpa uyama Fo, 
Ebin ekim k’ukpöñ, 
Man idara. 

4. Nam udöñ nyin okpon, 
Akan idiök udöñ, 
Kök m’unan nyin; 
Nam nyin isuk ibuot, 
Man ikubit aba, 
Man ikpöñ abiaña; 
Isim enyöñ. 

5. Di, didiöñ iköt Fo; 
Yak mendikwörö Christ, 
Etor’ Enye; 
Nö nyin utip utom, 
Erikan ke mkpa. 
Nam nyin idara ke 
Ikutd’ Öböñ. 

Amen. 
      """
    },
    {
      "id": 181,
      "title": "ETI SPIRIT UÑWANA",
      // "audio": ""
      "body": """
      KEY Bb 3/4

{|s, :-:L, |s, :d :m |m :-:r |d :-: 
|d :t , :d | d :s :m |r :-: m .r |r :-:s ,} 

1. ETI Spirit uñwana, 
Di yama ke esit mi, 
Nyuñ bin kpukpru ekim 
fep, 
Kabare sin k’uñwana. 

2. Eti Spirit, k’ odudu, 
Yet idiök fep k’esit mi, 
K’anyan ini ebede, 
Idiök ama ’kara mi. 

3. Eti Spirit k’idara, 
Döñ esit mfukhö mi, 
Bin ediwak ukut mi, 
Kök unan ke esit mi. 

4. Edisana Spirit, di 
Duñ ke esit mi emi, 
Biat ebekpo ndem fep, 
Nyuñ kara mi k’idem Fo. 

Amen. 

      """
    },
    {
      "id": 182,
      "title": "SUKHÖRE DI, O EDEME IKAÑ!",
      // "audio": ""
      "body": """
      KEY Ab 3/4

{.m :r .m |d: -.t, :L, .d |s, :-.d 
:t, .d |r : -.r :d .r |m :-.} 

1. SUKHÖRE di, edem’ ikañ; 
Yak ibö odudu Fo mi; 
Yak ima oduk k’esit nyin, 
Nyuñ kpeme nyin ke idomo. 

2. Nyin ibeñe, di ‘nte ofim, 
Yak ndodu Fo odu mi; 
Bin unana mbuötidem, 
Duök nyin ediwak mfön Fo. 

3. Di O Ikañ minimeke, 
Ke Christ nsi nsi Eyen; 
Kwörö baña ima Esie, 
Nam kpukpru esit edi kiet. 

Amen. 
      """
    },
    {
      "id": 183,
      "title": "EDISANA SPIRIT KOP AKAM NYIN",
      // "audio": ""
      "body": """
      KEY F 4/4

{:d |m :-.m lr :d |f :f lm:r|m 
:s ls :fe |s :-l-} 

1. SPIRIT Öböñ, kop akam 
nyin, 
Nyuñ duñ ke esit nyin; 
Sukhöre ke odudu Fo, 
Di, Eti Spirit di! 

2. Di ‘nte uñwana, nam ikut 
Obukpo ido nyin; 
Nyuñ teme nyin usuñ 
uwem, 
Usuñ nti owo. 


3. Di ‘nte ikañ, föp esit nyin, 
Nte ikañ uwa; 
Yak ukpöñ nyin edi uwa 
K’ enyiñ Andifak nyin.

4. Di ‘nte mbara nyuñ diöñ 
nyin 
Ke ini eridiöñ; 
Mö minyeneke edara 
Odudu mfri Fo. 

5. Di ‘nte ibiom, tat mba Fo, 
Mba emem y’ ima; 
Nam iköt Fo k’isöñ edi 
Nte mbon enyöñ. 

6. Di ‘nte ofim ke odudu, 
Nte ke Pentecost; 
Man kpukpru owo 
ekpekut 
Uböñ ke iso Fo. 

Amen. 
      """
    },
    {
      "id": 184,
      "title": "SPIRIT MFÖN, EDISANA SPIRIT",
      // "audio": ""
      "body": """
      KEY D 4/4

{|s:mlL:s|f:f lm:-|d':tld’:s 
|f :m lr :-} 

1. SPIRIT mfön ye ima 
Nö nyin se ekekpepde, 
Nti enö Pentecost, 
Kpa ima heven. 

2. Ima öföfön ido, 
Ikereke ukwañkpö; 
Ömösöñ akan mkpa, 
Nö ima heven. 

3. Prophecy eyekure 
Onyuñ abiara ama; 
Ima idikureke, 
Nö ima heven. 

4. Mbuötidem eyebe, 
Idorenyin eyetre; 
Ima heven ayama, 
Nö ima heven. 

5. Mbuötidem ye ima, 
Idorenyin ododu; 
Andikpon ’kan k’ otu mö 
Edi kpa ima. 

6. Ke idak ukpeme Fo, 
Fuk nyin k’eti mba Fo, 
Emi ’kwöde inö Fi; 
Döñ ima heven.

 Amen. 
      """
    },
    {
      "id": 185,
      "title": "DI KE MBA USENUBÖK",
      // "audio": ""
      "body": """
      KEY F 9/8

{|m:-:-l-:f :m lr :L, :t,|d :-:ls,:-:-
l : :|s: -:-l -:L :s lf :d 
:r |m :-:-l -: -l : : } 

1. DI ke mba usenubök, 
Di, Andifak y’ Edidem, 
Ekwö ke eti usiere, 
Önöde idaresit. 

Körös: 
SA: O, di ke mba usenubök! 
TB: Di, di, di, di, 
SA: O duk k’esit nyin, 
k’ikwöde, 
TB: Di, di, di, di, k’ikwöde 
SA: Di, k’ikwöde, ke usen 
esierede, 
TB: Di, di, di ke usen esierede 
All: O, di Andifak y’Edidem. 

2. Di ke mba usenubök, 
Di k’uböñ ye mfön Fo, 
Di nam kpukpru 
m’uñwöñö Fo, 
Wut uñwana iso Fo. 

3. Di ke mba usenubök, 
Di buat nyin ye idara, 
Menere mö efukhöde, 
Kwökhöre möñ-eyet fep. 

4. Di ke mba usenubök, 
Di, Öböñ k’ebekpo Fo; 
Nte Afo usianke nyin? 
Yarar’ uböñ Fo kemi. 

Amen. 

      """
    },
    {
      "id": 186,
      "title": "DI ETI SPIRIT, SUK ESIT NYIN ",
      // "audio": ""
      "body": """
      KEY Eb 4/4

{|m: -lre :m |d: -lm : -|r :m 
lf :s |m :-} 

1. ETI Spirit suk esit nyin, 
Di, nam ikpere Abasi; 
Biat ikpikpu ekikere, 
Nyuñ da nyin sim k’eti 
’duñ Fo. 

2. Nte ömönö ukpöñ nyin 
Odu uwem ikañ heven? 
Domo edisana ikañ, 
Nyuñ nam ifiop k’ eti 
udöñ! 

3. Nam esit nyin otim öfiök 
Ima Christ ye m’idiök 
owo; 
Ise unan k’ñkañ Esie, 
Ikpon’Abasi Andifak. 

4. Nö ‘mbuötidem 
y’ idorenyin, 
Nam nyin mi ikut uböñ Fo, 
Nyuñ döñ nyin esit ke ukut, 
Nam spirit nyin ebere Fi. 

Amen. 
      """
    },
    {
      "id": 187,
      "title": " NSO IKPAN FI? ",
      // "audio": ""
      "body": """
      KEY F 6/4

{|m :m :m lf :m :r |d :t, :L, ls, :-:|
s, :-:rlr :-:-|d:-:m lm :-:-} 

1. EDIWAK k’edara Jesus 
kemi, 
Me nso, ikpan fi? 
Edori enyin k’iduñ uñwana 
Di kemi. 

Körös: 
Mö k’ekut mböm Esie 
kpukpr’ usen 
Mö k’ekwö, k’edara, k’eka iso 
Edu k’ifure ke ima Esie, 
Di kemi. 

2. Esio ediwak ke itie ukut, 
Me nso, ikpan fi? 
K’ebuana k’idara nti owo, 
Di kemi. 

3. Ediwak mendiyo k’enyöñ edi, 
Me nso, ikpan fi? 
Ebö m’edidiöñ mö 
ekekpöñde, 
Di kemi. 


4. Ediwak k’esimde mben udi, 
Me nso, ikpan fi? 
Etim efiök Jesus 
Andinyaña, 
Di kemi. 


5. Ediwak emeduk usuñ heven 
Me nso, ikpan fi? 
K’mbuötidem emefen enö mö, 
Di kemi. 

Amen. 
      """
    },
    {
      "id": 188,
      "title": "SUAN ETOP",
      // "audio": ""
      "body": """
      KEY F 4/2

{:s, .d |m .,m :m .m lm .r :d .m 
|s .,fe :s .L ls :-} 

1. NAM etop ikot asuana, 
Owo amade edi; 
Suan etop, suan etop, 
Nam eti etop asuana, 
Osim ‘mbon nsatitöñ 
Suan etop, suan etop.
 
Körös: 
Nam etop ikot asuana, 
Suk suan ikö Abasi, 
Tutu ofri usem y’idut 
Ekpekop ebaña Christ, 
Ekpekop (ebaña Christ), 
Ekpekop (ebaña Christ), 
Ekpekop ebaña Christ. 

2. Nam ndöñesit asuana 
Emi Öböñ önöde; 
Suan etop, suan etop, 
Mbon mfukhö ke spirit 
Eyom nditabi ‘nse; 
Suan etop, suan etop. 

3. Suan etop baña edidiöñ 
Osimde fi ke uwem; 
Suan etop, suan etop, 
Afo emekeme ‘ndiñwam 
Mö ekpade ‘mba 
k’ eñwan; 
Suan etop, suan etop. 

4. Suan etop ke ikö uko, 
Ekim eyebe efep; 
Suan etop, suan etop, 
Sese usiere ke edi, 
K’uyama esuk heven; 
Suan etop, suan etop. 

Amen. 
      """
    },
    {
      "id": 189,
      "title": "SPIRIT YE AÑWAN-NDÖ, ETE, DI ",
      // "audio": ""
      "body": """
   KEY Db 4/4

{:d.r |m .m :m .f ls :m |L :-ls : 
|s :-lf : |f :-lm} 

SA: SPIRIT ye añwan-‘ndö ete 

f p pp 
All: Di…. di…. di…. 
SA: Spirit ye añwan-‘ndö ete 

f p pp 

All: Di…. di…. di…. 

\$ S: Eny’ emi ’töñ asatde, di 
ATB: Eny’ emi ’töñ asatde, di 

S: Eny’ emi ’töñ ’satde, di, 
AT: Yak edi 
B: Eny’ emi ’töñ asatde, di 
All: Eny’ emi ’töñ asatde, di 
DS. 

\$ S: Enye ’mi amade, emi 
amade 
ATB: Emi amade, emi amade 

S: Emi amade, emi amade. 
ATB: Emi amade, amade 
All: Yak enye ada 
Möñ-uwem k’mfön. DS. 


SA: Spirit ye añwan ‘ndö ete 

f p pp 

All: Di…. di…. di…. 
SA: Spirit ye añwan ‘ndö ete 

f p pp 

All: Di…. di…. di…. 
Amen. 
   
      """
    },
    {
      "id": 190,
      "title": "O MBUFO EMI ITÖÑ ASATDE.",
      // "audio": ""
      "body": """
      KEY G 4/4 

{|m :m lr .,d :t, ., L, |s, :-ld : |r 
:r ld .,t, :L, .,s, |m :-lf :s } 

1. O, MBUFO mesat-itöñ 
Edi ’yukhö unana; 
Edi, eñwöñ mmöñ uwem 
Ebö odu-uwem uyo. 

Körös: 
Mbufo, mesatitöñ 
Idighe k’ okuk (oh, di) di 
dep! 
Odu uwem uyo y’ möñ 


Bö, ta, ñwöñ, kukpa aba! 

2. O, mbufo mesat-itöñ 
Edi ke ikot Öböñ; 
Ke akwa usörö Esie, 
Edi, enyuñ ebuana. 

3. O, mbufo mesat-itöñ, 
Enye ke okot mfin, 
’Kpöñ idara ekpri ini, 
Etiene Jesus kemi. 

4. O, mbufo mesat-itöñ 
Ekop mfiori Gospel; 
Tien’ Öböñ Enye k’ebebet, 
Yom Enye k’ ekperede. 

Amen 
      """
    },
    {
      "id": 191,
      "title": "DA MÖ DUK ",
      // "audio": ""
      "body": """
      
KEY Ab 4/4

{|s, .s, :s, ls, :m, .s, |d :r lm :m .m 
|f :m .m lr :d |r :-l -} 

1. DA mö duk di, ebiet 
omodu, 
Usörö Edidem ekem; 
O da mö duk, man ufök 
öyöhö, 
Ebök ‘mbio öbiöñ y’unana. 

Körös: 
Eka ke me usuñ ye me efak, 
Eka k’ekim idiökñkpö, 
Kaka iso ye esit ima, 
Nyuñ da me andiyo di. 

2. Da mö duk di, ebiet omodu, 
Esit nyin öbuñö y’ubiak 
Abaña mendisin ikot k’ndek, 
Emi mikopk’ ikot aba. 

3. Da mö duk di, ebiet omodu, 
Uyo oro oto Öböñ; 
O! da mö duk di ke mfön Öböñ, 
K’ ubök ima Andinyaña. 

Amen. 
      """
    },
    {
      "id": 192,
      "title": "DI TIENE JESUS ",
      // "audio": ""
      "body": """
      KEY Eb 3/4

(not too fast) 

{:s.,s |L :s : |: :d' .,t |t :L : | : 
:r .,m |f:-:L |L :-:s |s:m : l :} 

1. TIENE Jesus (di, di) 
Tiene Jesus (di, di) 
K’okotde fi ’tiene Enye 
(di, di) 
Ikot Esie, (enem eti) 
K’öduö suñ-suñ 
(ke utöñ nyin) 
K’ebet ‘ndinyaña fi, eyedi? 

2. Tiene Jesus (di, di) 
Tiene Jesus (di, di) 
Akakpa ndinyaña fi 
(di, di) 
Isuñi fo (öbö kpukpru) 
Ada mkpa (önö uwem) 
K’ebet ‘ndinyaña fi, eyedi? 

3. Tiene Jesus (di, di) 
Tiene Jesus (di, di) 
Kufeghe, Enye ama fi 
(di, di) 
Akan idiök (önö kpukpru) 
Ada owo! (k’ufan Esie) 
K’ebet ‘ndinyaña fi, eyedi? 

4. Tiene Jesus (di, di) 
Tiene Jesus (di, di) 
Buötidem ke ima Esie 
(di, di) 
Eyebö fi, (Eyebö fi) 
’Dat fi esit (’Dat fi esit) 
K’ebet ‘ndinyaña fi, eyedi? 

5. Tiene Jesus (di, di) 
Tiene Jesus (di, di) 
Efen imaha ‘nte Enye 
(di, di) 
Baba efen (baba efen) 
Enye ikpöñ (ada usuñ) 
K’ebet ‘ndinyaña fi, eyedi? 

6. Tiene Jesus (di, di) 
Tiene Jesus (di, di) 
K’ebet ndisio fi k’idiök 
(di, di) 
K’Enye ’kpöñde 
(Afo ’yetak) 
Nso ini? (Anie öfiök) 
K’ebet ‘ndinyaña fi, eyedi? 

Körös: 

O di, ke ini 
Kubighi aba 
O di tiene Jesus 
Eyenyaña fi. Amen. 
      """
    },
    {
      "id": 193,
      "title": "ETIENE MI ",
      // "audio": ""
      "body": """
      KEY C 4/4

{|m .,m :m .,f ls :m |d' .,d' :t .,L ls 
:-|f.,f:L.,s lf:r|t.,L:s.,flm:-} 

1. KOP Andinyaña k’okot 
mö efikde, 
O mekpa mba, ediduök 
odudu, 
Edi, nyebiom mbiomo 
mbufo, 
Kpukpru mbiomo ye 
ntimer’ esit. 

Körös: 
SA: E … tiene Mi, 
TB: Etiene Mi, etiene Mi, 
SA: Di duök odudu, 
TB: Di duök odudu, di duök 
odudu, 
SA: Köñö ökpönö mi, 
TB: Köñö ökpönö mi, köñö 
ökpönö mi, 
SA: Kop, bö eridiöñ, 
TB: Kop, bö eridiöñ, kop, bö 
eridiöñ, 
SA: Ami ndi suñ suñ, 
TB: Ami ndi suñ suñ, Ami 
ndi suñ suñ, 
SA: Buötidem k’Ami, 
TB: Buötidem k’Ami, 
buötidem k’Ami, 
SA: Di, ökpönö emem, 
TB: Di O, di, di ökpönö 
emem, 
SA: ‘Mbiomo efere. 
TB: Di O, di, ‘mbiomo efere. 


2. Nte ubiöñö k’uwem fo mi 
ye ko? 
K’obiomde ndik ye 
ntimeresit? 
Nte idiök ekikere k’esit fo? 
Men mö tiene Jesus, di 
duök odudu. 

3. Ömöduö ke ukut 
idiökñkpö ye but? 
Nte ömöduö oduk ke ikañ 
hell? 
Ke odudu idiökñkpö 
ebiañade? 
Kop nö Ekpemeröñ, “Di 
duök odudu.” 

4. Me isön efek fi y’ekiker’ 
uwem? 
Nte idorenyin fo y’owo 
etak? 
Nte esit fo obiom fi ke 
idiök? 
Tiene Jesus kemi, di duök 
odudu. 

5.Nte m’idomo emesöñ 
ekan fi? 
Nte idem emem fi oto 
k’ukut? 
Christ ’yenam asana ke 
onyimede, 
Oto k’Eti Spirit, di duök 
odudu. 

Amen. 

      """
    },
    {
      "id": 194,
      "title": "EDI AFO! ",
      // "audio": ""
      "body": """
      KEY Db 4/4

{|d.t, :d.r lm :d |m .r :m .fls:-} 

1. ATA eti ikot Edidem 
enyöñ 
Ata eti ikot Spirit önöde, 
Öduöhö mekpa mba nte edim, 
Enyene fi, Andibuötidem. 

Körös: 
Ih afo, ufan, ih afo; 
Bere k’uñwöñö Andinyaña; 
(ufan mi) 
Ih afo, ufan, ih afo; 
Enyene fi Andibuötidem 

2. Erinam emem oto k’iyip 
Esie, 
Eyen Abasi önö erinyaña! 
Kpukpr’ utom okure, efen 
iduhe, 
Edidiöñ oro enyene fi. 

3. Anyaña mebuötidem 
osim utit, 
Mbure nyin edi ke Enye 
ikpöñ; 
Ukpöñ, nim utibe ‘mbuk 
k’akpanikö 
Enyene fi ke öbuötd’idem. 

4. Kuyik uyo Esie, tien’ Enye 
kemi 
Wöñöre kpöñ idiökñkpö 
k’nsi nsi; 
K’uwak mböm Esie, 
eyefen kpukpru, 
Eyeda fi osim ke heven. 

5. Do k’obio uböñ iyetoro 
Enye 
Ye mfiori erikan k’nsi nsi, 
Sia ikot oro edide obufa; 
Kwö Hallelujah! Enyene fi. 

Amen. 
      """
    },
    {
      "id": 195,
      "title": "NTE UKOPKE, ENYE ÖKÖÑDE? ",
      // "audio": ""
      "body": """
   KEY Eb 4/4

{:d .,r |m :m lm .,r :d .,r |m .s :-l:
fe .s |L :L ls:m |r :-l -} 

1. KIET odu adade k’enyin 
usuñ 
Ye möñ-eyet ke enyin, 
Nt’ Enye edibet fi ke ekim 
Oyom önyöñ k’ mfukhö? 

Körös: 
Ukopke (nt’ Enye) ököñde, 
’köñde? 
Ukopke (nt’ Enye) ököñde, 
’köñde? 
K’ayatde Enye esit, ökpöñ fi; 
Ukopk’ Edidem? 
S: Enye k’ököñ, k’ököñ k’esit fo. 
ATB: K’ ököñ, k’ ököñ, k’ ököñ, 
k’ököñ k’esit fo. 

2. K’ ubök Esie, Enye owut 
mböm 
Obiom but idiökñkpö fo, 
Eyeberi usuñ ökpöñ Enye? 
Enye k’okot enyiñ fo. 

3. Yak ikañ oro asak k’esit fo 
Man Enye okukpöñ fi, 
Man ke afo eberede usuñ 
Okudi k’ubiat ini. 

Amen.    
      """
    },
    {
      "id": 196,
      "title": "ENYE KE OKOT",
      // "audio": ""
      "body": """
      KEY C 6/4

{|s :-:L ls :m :-|d' :-:r' ld' .L :-: 
|s :-:L ls:m :-|d :-:m lr :-:-} 

1. MBÖM Abasi omokpon, 
Nte akwa akpa möñ; 
Ima k’ikpe Esie okpon, 
Onyuñ önö uböhö. 

Körös: 
Enye k’okot “Tiene Mi,” 
Metiene Fi, Öböñ mi. 

2. Enye ’möbö anamidiök, 
Mendinen ebö mfön; 
Andinyaña önö mböm, 
Y’erikök k’iyip Esie. 

3. Ima Abasi omokpon, 
Amakan ifiök owo; 
Esit Akwa Abasi nyin, 
Öfön, edi utibe. 

4. Ke ima nyin ökpöfönde, 
Ikpada k’ ikö Esie; 
Do k’uwem nyin 
akpayama 
Oto k’mfön Abasi.

 Amen. 

      """
    },
    {
      "id": 197,
      "title": "OWO EKEDEDI",
      // "audio": ""
      "body": """
      KEY G 4/4

{|s, :d lt, :L,|s, :d lm :-|r .,de :r .,m 
lf:-|m.,r:m.,f ls:-} 

male voices: unison 

1. ANIE ’bö erinyaña? 
All: “Owo ’kemade, owo 
’kemade” 
Anie oduñ k’nsinsi? 
All: Owo ’kemade edi. 

Körös: 
Owo ’kemade edi 
(bö Jesus) 
Owo ’kemade edi 
(bö Jesus) 
Kpukpru eyebö ufak 
k’mfön, 
Owo ’kemade edi (edi). 

2. Öböñ ama nyin kpukpru, 
All: “Owo ’kemade, owo 
’kemade” 
K’ikopde ikot Esie, 
All: Owo ’kemade edi. 

3. Enye k’osuk okokot, 
All: “Owo ’kemade, owo 
’kemade” 
Ke eti uduak Esie, 
All: Owo ’kemade edi. 

Amen. 

      """
    },
    {
      "id": 198,
      "title": "DAMÖ DI ",
      // "audio": ""
      "body": """
     KEY Ab 4/4 

{|s, :s, .,L, ls, :m |m :r lr :-. |s, 
:s, .,L, ls, :r |r :d ld :-.} 

1. MOKOP uyo Ekpemeröñ, 
K’ofiori k’ekim ke desert, 
Okot me eröñ esopde, 
Ekekpöñde m’otu eröñ. 

Körös: 
Da mö di, da mö di, 
Sio mö ke okpuk 
idiökñkpö; 
Da mö di, da mö di, 
Da mendiyo dinö Jesus. 

2. Anie ’diñwam Ekpemeröñ 
Ndiyom m’eröñ esopde? 
Ndida mö nsin k’otu 
Ke ebiet eböhöde tuep.
 
3. Kop mfiori mö ke desert; 
K’enyöñ ikpö obot k’iköt; 
Kop! Öböñ ödöhö ete, 
“Yom m’eröñ k’ebiet 
edude.” 

Amen.  
      """
    },
    {
      "id": 199,
      "title": "JESUS EYENÖ FI EMEM ",
      // "audio": ""
      "body": """
     
KEY G 4/4

{:s, .s, |d:m .r ld :d.m |s :L .s 
lm :-|s :r .m lf : m .r |d:-ls ,} 

1. EYEDI, eyedi ye mbuñ’ 
esit fo, 
Öyöhöde k’idiök? 
Nim enye k’ukot Öböñ ye 
Andinyaña, 
Jesus ’yenö emem. 

Körös: 
Ata emem, eti emem! 
Jesus ’yenö emem 
(O! Emem) 
O, ‘nsinam mudighe 
k’mbuötidem 
Jesus ’yenö emem. 

2. Eyedi, eyedi? Mböm do 
önö fi, 
Andikök fi odu: 
Nte etiede, di, bere k’enyiñ 
Esie 
Jesus ’yenö emem. 


3. Eyedi, eyedi? Iyomke 
okuk fo; 
Jesus amama fi, 
Enye ’dep uwem önö fi 
k’mkpa Esie; 
Jesus ’yenö emem. 


4. Eyedi, eyedi? Enye k’ekpe 
ubök! 
Duk ke ima Esie; 
Idiök fo okpokpon 
y’mfukhö fo ñko, 
Jesus ’yenö emem. 

Amen. 
 
      """
    },
    {
      "id": 200,
      "title": "SPIRIT ETE DI! ",
      // "audio": ""
      "body": """
      KEY Eb 6/8

{:s|s :-:s lm :f :L |s :-:-lm: -:m 
|s:-:s lr :-:f |m :-:-l-:-} 

1. O, AKWA ikot uböñ, 
Ekot fi usörö; 
Ukpöñ kiet kiet ke ekot, 
Ñkpri y’ikpö kpukpru 
Edi, kpukpru mekpamba 
K’mbiomo ye k’ukut, 
Mfin ekot mbufo, 
‘Mbiomo fo Christ ’yebiom. 

Körös: 
Spirit ke okot (k’okot) 
Ñwan ‘ndö k’okot 
(k’okot) 
Yak enye ’kopde okot 
Mesatitöñ edi, 
Owo eke ’made, yak 
enye öñwöñ, 
Mmöñ uwem k’mfön. 

2. Ata edifön ikot! 
O, kop nyuñ bö item! 
Spirit kemi ke okot, 
Nsinam ebetde? 
Ukpöñ fo akpa mba, 
Bö Christ uyo-uwem; 
Nyuñ nyime ikot oro, 
Di kini usörö. 

3. Fiak fiori ikot oro, 
Nyuñ suan etop ikot; 
Owo okusin mböm 
Ye erifen emi. 
Edi Jesus ke okot, 
Kpukpru ‘ñkpö ebiet, di, 
Spirit eyeteme fi, 
Ebö ñwan ‘ndö k’iduñ 

Amen. 

      """
    },
    {
      "id": 201,
      "title": "ITIKHERE EDIDIÖÑ ",
      // "audio":"",
      "body": """
      
KEY G 3/4

{:s, .d|m : -.r :d|r: -.d :L, |s, :d 
:r |d:-:d.m |s:-.f:m|L:s:m 
|r:-:-| : } 

1. MODUK k’itikhere 
edidiöñ enemde, 
Jesus adañ ye ami do; 
Spirit ye iyip Esie anam 
nsana, 
Ima Esie ebebin ndik. 

Koros: 
Di k’itikhere edidiöñ 
enemde, 
Jesus ömönö uyöhö, 
Nim k’akpanikö nyuñ 
yarar’ Enye 
Man efiök erinyañ’ Esie. 

2. Emem k’itikhere edidiöñ 
enemde 
Isöñ ’yenö uwak mfri; 
Nduök odudu do önö 
mbon isañ, 
Idara önö mendifukhö. 

3. Ima do k’itikher’ edidiöñ 
enemde, 
Mö eyetde k’iyip efiök; 
Kini heven edikömde mö 
efakde, 
Christ ösöñö ediomi Esie. 

4. Ikwö do k’itikher’ edidiöñ 
enemde, 
Me enjel ediana k’ikwö, 
K’idaresit ituak ibuot 
k’ukot Esie, 
Ifiori “Eyeneröñ odot.” 

Amen. 
      """
    },
    {
      "id": 202,
      "title": "ENYE AMA EDI KE BETHANY ",
      // "audio":"",
      "body": """
      KEY F 4/4
      
{:s.,f|m :m lm :r .d|f :flf :f.f |m 
:-.m lm.r:d|r:-:-} 

1. IMA omodu, esit adara, 
K’ Öböñ edide Bethany; 
Ikö uwem enyene odudu, 
K’ Öböñ edide Bethany; 
Idara odu y’ akwa usörö 
K’ Öböñ edide Bethany; 
K’ uyo Esie, akpa mkpa eset, 
K’ Öböñ edide Bethany! 

Körös 
Ekedi usen idara ko ke eset, 
K’ Öböñ edide Bethany; 
Berede usuñ man Enye oduk, 
Ima Esie ’di ukem! 
ST: Ima Esie ’di ukem, ima 
Esie ’di ukem! 
AB: Ima Esie edi, edi ukem, 
Ima Esie edi, edi ukem! 
All: Berede usuñ man Enye oduk, 
Ima Esie edi ukem! 

2. Emem odu ye ata ifure, 
K’Öböñ edide Bethany; 
Nti owo ekwö inem ikwö, 
K’Öböñ edide Bethany! 
K’mbuötidem, iduñ nyin ekpere, 
K’ Öböñ edide Bethany; 
Uyama k’ anyanya, inem k’ukut 
K’ Öböñ edide Bethany! 

Amen. 
      """
    },
    {
      "id": 203,
      "title": "ESE ENYÖÑ, MME AKPA MBA ",
      // "audio":"",
      "body": """
      KEY G 6/8

{:m |m :-:m lr :l, :t, |d :-:d ls, : -:s, 
|d : -:d lr :m :f |s : -: -l -: -} 

1. ESE enyöñ, me ’kpa mba, 
Edude ke ekim; 
Enye emi öfiökd’ usuñ, 
Eyenö uñwana; 
Dara usiere emi 
Ekedoride enyin. 

Körös: 
Se Enye! Se Enye! 
Andifak od’ uwem; 
Se Enye! Se Enye! 
Ukut ebe efep. 

2. M’enö ima edad’ edi, 
Öböñ idisinke; 
Ufuöñkpö mö edök k’enyöñ, 
‘Nte uwa k’ebekpo; 
Dara usiere emi 
Önöde inemesit. 

3. Edara! emekan udi, 
Me enjel ke ekwö; 
Akwa erikan ifiökde 
Oto Christ Edidem; 
Heven etiñ ebaña 
Uböñ eti usiere. 

Amen.
      """
    },
    {
      "id": 204,
      "title": "DI, USÖRÖ ODU ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|m:-lr :d|s,:m,ls,:-|L,:-lt, 
:r ld : -ls, :-} 

1. DI, usörö odu; 
Kpañ utöñ fo! 
Enö kpukpru owo, 
Uyo uwem; 
Di “k’ufök wine” Esie, 
Bere k’Enye ikpöñ; 
Esie edi okuo 
Anamidiök. 

2. Di k’ obube mmöñ, 
Akpa uwem, 
Ökök kpukpru ubiak, 
Ndik y’eñwan; 
Ediwak emebö, 
Isink’ owo baba; 
Di ke ididuot ’möñ, 
Anamidiök. 

3. Di k’ ebekpo mfön, 
Di ye uko; 
Andikan k’mbuba 
Eyedañ mi; 
Kpukpru unana fo 
Mfön Esie ekem, 
Jesus etie ubiöñ: 
Di, Christian, di. 

4. Di ke eti isöñ, 
Asañisañ, 
Odu k’esen idut, 
Ke wilderness; 
Ndiye harp edu, 
Anyanya y’idara, 
Önö kpukpru owo; 
Asañisañ. 

5. Jesus, itiene Fi! 
O, da nyin duk, 
Sio spirit nyin k’ufn, 
Yet nyin k’idiök! 
Do k’iduñ uñwana, 
K’afia öföñidem, 
Iyedu k’nsinsi, 
Itoro Fi. 

Amen. 
      """
    },
    {
      "id": 205,
      "title": "KE MKPE UBÖK NNÖ FI ",
      // "audio":"",
      "body": """
     KEY G 4/4

{ls,:-ls,:d|m:-ld:m| m:r lL, 
:t, |d: -ls,} 

1. MENYENE Öböñ k’ekpe 
ubök k’uböñ, 
Eti Andinyaña, efen iduhe, 
Kemi Enye k’ekpekpeme 
mi ke mböm, 
Enye akpakam edi okuo ñko! 

Koros: 
K’mkpe ubök ’nö fi, 
p K’mkpe ubök ’nö fi, 
f K’mkpe ubök ’nö fi, 
pp Ke mkpe ubök. 

2. Ami menyene Ete önöde mi 
Ata eti idorenyin k’nsinsi, 
Eyesöp okot mi isobo ke heven; 
O yak anam fi asaña ye ami! 

3. Ami menyene afia 
öföñidem, 
Ebetde mi ke nsimde ke uböñ, 
O ke ndiböde, eyetim ayama, 
Ufan, nte afo eyebö okuo? 

4. Ami menyene emem ‘nte 
akpa-möñ, 
Emem, m’ufan ererimbot 
mifiökke; 
Andinyaña mi ikpöñ edi 
Andinö, 
O ‘nte afo ömöbö emem emi? 

5. Ke Christ afakde fi, tiñ nö 
mö eken, 
Andinyaña ’mi edi okuo ñko; 
Beñe Andinyaña ada mö 
ke uböñ, 
Eyebör’ akam ‘nte 
’kanamde k’okuo. 

Amen.  
      """
    },
    {
      "id": 206,
      "title": "MFIOROI ETIMBUK ",
      // "audio":"",
      "body": """
      KEY F 4/4

{:s, |d:dld:m lL :s l -:s .s |L :s ld 
:r lm : -l-} 

1. ETI mbuk k’ efiori 
Ke obot ye ke inyañ; 
Eti mbuk erinyaña, 
Enö mi y’ afo ñko, 
“Abasi ama nyin, 
Ökönö Eyen Esie; 
Owo eke öbuötd’ idem, 
Enyene ‘nsinsi uwem. 

Körös: 
K’ efiori… Eti ‘mbuk!… 
Ke obot ye ke inyañ; 
K’efiori… ke mfön… 
Enyene fi ye ami. 

2. Eti mbuk okot nyin, 
Kpukpru owo k’ usörö; 
Kuse ikot oro k’ ndek 
Enye ’di ikot mböm, 
“Ndi uyo uwem, 
Eta mi mbon öbiöñ; 
Idiök fo ekpebiet 
crimson, 
Eyebiet idet eröñ.” 

3. Eti mbuk ötöt nyin, 
K’ ofiori k’ usen k’ usen, 
Abaña ufen ebetde 
Mö ek’ ebiatde ini, 
“Böhö ye uwem fo, 
Kubebet k’una isöñ; 
Kunyuñ use edem baba, 
Mbak edisobo fi.” 

4. Eti mbuk idara, 
Asuana k’ ofri ebiet, 
Enyene eti erifen 
Oto Christ ekewotde. 
“Eti ‘mbuk idara, 
Enyene kpukpru owo; 
Andinyaña nyin amana: 
Christ Edidem ye
Öböñ.” 

Amen. 
      """
    },
    {
      "id": 207,
      "title": "JESUS KE EBEBE!",
      // "audio":"",
      "body": """
      KEY Db 6/8

{:s lm :-:m lr :-:d |m :-:f ls : -:-} 

1. AKPA mba, dibö emem: 
Jesus ke ebebe, 
Di k’ ebiet öböd’ eridiöñ 
Bere k’ ikö Esie. 

Körös: 
SA: K’e...bebe, pp k’e...bebe 
TB: K’ebebe, k’ebebe, 
pp k’ebebe, k’ebebe, 
All: Söp ndisobo ye Enye, 
Jesus ke ebebe kemi! 
SA: K’e...bebe, pp k’e...bebe 
TB: K’ebebe, k’ebebe, 
pp k’ebebe, k’ebebe. 

2. Owo ukut da ‘mbiomo di: 
Jesus ke ebebe! 
Enye k’ima okop akam, 
Önö nti ñkpö.
 
3. Owo öbiöñ, tiñ nö Enye: 
Jesus ke ebebe! 
Eyebök fi k’ uyo uwem, 
Anam fi öyukhö. 

4. Öbuñesit, di yom mfön 
Jesus ke ebebe! 
Se iso emem Esi-e 
Ayama ‘nte utin. 

Amen. 
      """
    },
    {
      "id": 208,
      "title": "EDI, MME ANAMIDIÖK ",
      // "audio":"",
      "body": """
    KEY F 4/4

{lm : m .r ld :d |r :r l m .r :d 
|s : s. f lm :m | r .d :r. m ld :-} 

1. EDI, kpukpru menamidiök, 
Mem-mem k’ ubiak y’ udöñö, 
Jesus odu ndiñwam fi. 
Awak mböm ye ima; 
Enye ’keme, Enye ’keme; 
Omonyime, di kuyik. 

2. Mbon unana edibö 
Uwak mfön Abasi 
Edi y’ esit akpanikö, 
Edibuana ke enö, 
K’ata mfön, k’ata mfön, 
Edep eto Christ Öböñ. 

3. Kuyak esit abiaña fi, 
Kukere ’te udotke, 
Kpukpru se Enye oyomde 
Edi ndimek Enye; 
Ömönö fi, ömönö fi, 
Eti Spirit uñwana. 

4. Edi kpukpru mekpa mba, 
Etakde oto k’iduö 
Ke ebetde ndifön ‘mma 
Udukemeke ‘ndidi 
Idighe ndinen owo, 
Christ okot menamidiök. 

5. Andibot fi öduö k’isöñ 
Ke inwañ, öböñ akam! 
Se Enye k’eto k’ofiori, 
Ke oyomde ndikpa, 
“Omokure, omokure!” 
Nte emi ikemke? 

6. Christ emi ödökde 
k’enyöñ, 
K’ ekpe ubök önö nyin 
Nyime Enye, k’ofri esit 
Kubuötidem ke efen. 
Jesus ikpöñ, Jesus ikpöñ 
Anyaña m’idiök owo. 

Amen.   
      """
    },
    {
      "id": 209,
      "title": "DI, KE MBUÖTIDEM! ",
      // "audio":"",
      "body": """
      KEY G 4/4

{d.,r |m:-.m ls:d|d:t,l-:r.m 
|f:-.m lf:s |m:-l-} 

1. ETOP gospel afiak edi, 
Otode Andinyaña, 
Me eyekop ikot oro? 
Onyuñ etiene Öböñ? 

Körös: 
K’mbuötidem (di), 
k’mbuötidem (di) 
Se Jesus nyuñ du uwem! 
(uwem) 
K’mbuötidem (di), 
k’mbuötidem (di) 
Se Jesus nyuñ du uwem! 

2. Ediwak ini abiatde, 
Omokut mfri idök, 
Eti ini ebe efep, 
Afo ’suk odu k’ idiök.
 
3. Jesus k’ebet fi, mek Enye, 
Kpe biere, kubiat ini, 
Kini Spirit añwanade, 
Kop, nyuñ yom 
Andinyaña. 

4. Kuse ‘nte afo mudotke, 
Kukere ‘nte etiede, 
Oyom fi ndibuötidem 
Man Spirit anam utom. 

5. Yak esit fo nö Abasi, 
Buötidem ke iyip Christ, 
Se Jesus kemi ke heven, 
Bere ke ikö Esie. 

Amen. 
      """
    },
    {
      "id": 210,
      "title": "OWO EKE AMADE!",
      // "audio":"",
      "body": """
  KEY Db 2/4

{ls .,L:s .m ld :d' lL .L :d' .,L ls :|
s.,L:s.mld:mlr.,d:r.m lr:-} 

1. OWO eke okopde, yak ofiori, 
Eti ‘mbuk önö ofri ererimbot, 
Suan mbuk emi k’ ebiet owo ’dude, 
“Owo ’kemade edi.” 

Körös: 
“Owo ’kemade,” “owo ’kemade” 
Nö etop emi ke obot ye k’ usuk, 
Ete ima, okot andiyo k’ ufök, 
“Owo ’kemade edi!” 


2. “Owo ekedide”, O, kubiat ini, 
Usuñ ana iñwañ, di be duk kemi, 
Jesus, Akpanikö, Od’ uwem Usuñ, 
“Owo ’kemade, edi!” 

3. “Owo ’kemade,” uñwöñö ösöñö, 
“Owo ’kemade,” eyesöñö ada, 
“Owo ’kemade,” eyenyene uwem, 
“Owo ’kemade,” edi. 

Amen.     
      """
    },
    {
      "id": 211,
      "title": "JESUS KE OKOKOT ",
      // "audio":"",
      "body": """
      KEY C 6/8

{|s :s :s ls :m :f |s :L :t ld’ :-:-|d' :t 
:L lt :-:-|L :s :fe ls :-:-} 

1. JESUS k’okot fi ete yak edi, 
K’okot kemi, k’okot kemi! 
Nso inam fi oyode ökpöñ 
Uyama ima Esie? 

Körös: 
SA: K’okot kemi! 
TB: K’okot kemi, k’okot kemi! 
SA: K’okot kemi! 
TB: K’okot kemi, k’okot kemi! 
SA: Jesus ke okot! 
TB: Jesus ke osuk okot fi kemi! 
All: Ke osuk okot fi kemi! 

2. Jesus k’okot mö ’mi 
ekpade ‘mba, 
K’okot kemi, k’okot kemi! 
Da mbiomo fo di, eyediöñ fi, 
Enye idibinke fi. 


3. Jesus k’ebet, tiene Enye kemi, 
Enye k’ebet, Enye k’ebet! 
Di duö k’ukot Esie 
y’idiökñkpö fo, 
Di, kubiat ini aba. 

4. Jesus k’okot, O kop uyo Esie, 
Kop nö Enye, kop nö Enye! 
Mebuötidem y’ Enye eyedara, 
O men idem, wara di! 

Amen. 
      """
    },
    {
      "id": 212,
      "title": "ANDIYO ",
      // "audio":"",
      "body": """
      
KEY F 4/4

{|s, :d lf :-.m |r :d lt, .L, :s, |d :r lm 
:s | s. fe :m. fe ls :-} 

1. ANDIYO söñöda nyuñ kop, 
Idi y’mbuk idara, 
Jesus ebeñe usörö, 
Di, Enye ’yenyime fi. 

Körös: 
Kudu aba k’ndifaña, 
Jesus k’okot fi kemi 
Di, ebeñe kpukpru ñkpö, 
Andiyo, ebet nso? 

2. Nte m’idiök fo odobi? 
Yarare mö nö Öböñ 
Enye onyime ‘ndifen fi, 
Beñe bö, ebet nso? 

3. K’eti ubök ima Jesus, 
Emebere ke Enye? 
Yak eyet fi ke möñ oro, 
Wara di, ebet nso? 

4. Se ediye öföñ ndö, 
Odu Enye ke ubök, 
Söp O! Söp ka ke usörö, 
Be duk do, ebet nso? 

Amen. 

      """
    },
    {
      "id": 213,
      "title": "DI KE KPUKPRU ÑKPÖ EBIET",
      // "audio":"",
      "body": """
      KEY F 3/4 

{:s, .,s, |d :d :r |m :m :d .,d |m :m 
:f |s :-} 

1. DI ke kpukpru ‘ñkpö ebiet, 
Ke usörö ima, 
Ikot edi ke mfön, 
Otod’ Öböñ k’ enyöñ, 
Ewet enye ke iyip, 
Otode Calary, 
Utibe iyip oro, 
Emi eyetd’ ukpöñ. 

Körös: 
O, uyöhö ke Jesus! 
Madara ndifiök, 
Idiök nyin ekpeyibe, 
Eyefia ’kan snow. 

2. Di ke kpukpru ‘ñkpö ebiet, 
Udia heven odu, 
Edibö erinyaña, 
Eta uyo uwem, 
Di, okposuk mudotke, 
Okposuk ödiökde, 
Me asatitöñ ye biöñ, 
Öböñ k’ oyoyom mö. 

3. Di ke kpukpru ‘ñkpö ebiet, 
Ata afia öföñ, 
Afiade akan eke 
Me enjel uñwana, 
Uyai otode Jesus, 
Eyedi öföñ fo, 
Kam beñe öföñ emi 
Eyenö fi ñko. 

Amen. 
      """
    },
    {
      "id": 214,
      "title": "JESUS IDIBINKE FI ",
      // "audio":"",
      "body": """
     KEY Bb 4/4

{:s, .,s, |d :-.d lt, :L, |s, :-l-: |m 
:d.,m lr :d.,t, |d :-l-} 

1. M’ IDIÖK fo, mö 
ekpewak, 
Jesus idibinke fi! 
Enye ’di Ufan ima, 
Jesus idibinke fi! 
Abasi k’ ndifak nyin,
Ökönö Eyen Esie, 
Di, se afo ’kpededue, 
Jesus idibinke fi! 

2. Okposuk esind’ Enye, 
Jesus idibinke fi! 
Tien’ Enye, edi Usuñ, 
Jesus idibinke fi! 
Eyeyet fi, ökök fi, 
Oyobio okpofuk fi, 
Enye ’yefak ukpöñ fo, 
Jesus idibinke fi! 

3. Idu ke ini mfön, 
Jesus idibinke fi! 
Duk andiyo k’idak cross, 
Jesus idibinke fi! 
Di, kufiak aba k’idiök, 
Enye k’ekpe fi ubök, 
Di bö nsinsi uwem, 
Jesus idibinke fi! 

Amen.  
      """
    },
    {
      "id": 215,
      "title": "DI, ANDIYO DI ",
      // "audio":"",
      "body": """
      KEY A 6/8 
      
 {:s, |d:-.d:dlr :d :t,|d:-:-ls,:-:d|m 
:-.m :m lm :r :d |r :-:-l-:-} 

1. NSINAM fi akpade öbiöñ? 
K’uwak odude ’nö kpukpru 
K’ ediye ufök iduñ Ete fo, 
K’ ebet ndibö fi k’idara. 

Körös: 
Di, di, andiyo di, 
Uwak odu ke iduñ Ete fo, 
Di, di andiyo di, 
Ete fo eyebö fi ke ima. 

2. Di, andiyo, döhö Ete fo 
“Ami medue heven y’Afo 
Ndotke aba k’ itie eyen Fo. 
Da mi ke owo utom Fo kiet.” 

3. Ete fo k’ ebet ndibö fi, 
Ke ebet fi önyöñ edi. 
Enye öyöhö ye akwa mböm, 
O, Andiyo, me afo ’yedi? 

Amen. 

      """
    },
    {
      "id": 216,
      "title": "IDIÖK EYEN ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:s |s :-lm :m |m :-ld :s.s|L 
:-ls :m |r :-l-} 

1. NYÖÑ di, nyöñ di! 
Afo akpa mba; 
Usuñ fo omokim, 
Önyuñ ödiök eti, 
O idiök eyen! 
Nyöñ di, O nyöñ di! 

Körös: 
Nyöñ (nyöñ di) di! 
(nyöñ di). 
Nyöñ O, nyöñ di (nyöñ di). 

2. Nyöñ di, nyöñ di! 
K’ ikpeme, k’ ibebet 
Ida k’ inua otop 
K’ mfut mbubreyo, 
O idiök eyen! 
Nyöñ di, O nyöñ di! 

3. Nyöñ di, nyöñ di! 
K’ ukut y’ ubiomikpe, 
Ke idiöknkpö ye but, 
Asua ke atap fi, 
O idiök eyen! 
Nyöñ di, O nyöñ di! 

4. Nyöñ di, nyöñ di! 
Udia do ediwak; 
Eyenyuñ ebö fi, 
Afiak okut m’ ufan, 
O idiök eyen! 
Nyöñ di O, nyöñ di!
 
Amen. 

      """
    },
    {
      "id": 217,
      "title": "DA IKPAT KIET SIM JESUS ",
      // "audio":"",
      "body": """
      KEY Ab 6/8
       
{|m :m :m lf :-:m |r :-:-ld:-:L, 
|s, : -:d ld :-:m |r :-:-l-:-:-} 

1. DA ikpat sim Jesus 
Nso, ke ebebet? 
Di, yarare m’idiök fo 
Nö Andinyaña fi. 

Körös: 
Da ikpat kiet, da ikpat kiet, 
Di, k’ ebebet fi, 
Di, yarare m’idiök fo, 
Afo ’yebö edidiöñ, 
O, kusin mböm emi, 
Önöde fi k’mfön. 

2. Da ikpat sim Jesus! 
Bere k’ Enye, d’ uwem, 
K’ ima, Enye k’ ebet fi, 
Man efen m’idiök fo. 

3. Da ikpat sim Jesus, 
Kpöñ idiök sim mfön, 
Esit fo etiñ didie? 
Ini k’ oyom ‘ndibe. 

4. Da ikpat sim Jesus! 
O! Di döhö ntem, 
“Andinyaña, k’ idara 
Mayak idem ’nö Fi.” 

Amen. 
      """
    },
    {
      "id": 218,
      "title": "NYIN IKAKE ZION",
      // "audio":"",
      "body": """
      KEYG 6/8 

{:d |m :-:-ld :-:-|s, :L , :t, ld :-:r 
|m :-:d ls :f :m |r :-:-l-:-} 

1. EDI, iköt Öböñ, 
Ekwö ye esit kiet, 
Ebuana k’ikwö idara, 
Ebuana k’ikwö idara, 
Ekanar’ ebekpo, 
Ekanar’ ebekpo. 

Körös: 
Nyin ika (ko) ke Zion, 
Ediye, ediye Zion, 
Nyin ika k’ enyöñ ke 
Zion, (Zion) 
Ediye obioAbasi. 

2. Mö emi ’mifiöke 
Öböñ nyin ekukwö, 
Edi ndit’ Öböñ enyöñ, 
Edi ndit’ Öböñ enyöñ 
Enyene ndiyarare 
Idara mö. 

3. Obot Zion oñwum 
Uwak inem ñkpö, 
Ke misimke añwa heven, 
Ke misimke añwa heven, 
Iduk ke m’efak gold, 
Iduk ke m’efak gold. 

4. Mödo yak nyin ikwö, 
Yak ikutua aba, 
Nyin isaña k’isöñ Öböñ, 
Nyin isaña k’isöñ Öböñ, 
Ika ko ke obio, 
Ika k’obio k’enyöñ. 

Amen. 

      """
    },
    {
      "id": 219,
      "title": "NDISAÑAKE UÑWANA ",
      // "audio":"",
      "body": """
    KEYBb 4/4

{|s, .,fe, :s, .,L, ls, :s, |m, .,s, :d .,r 
lm :-|L,.,se, :L,.,t, ld :m |r .,d :t, .,L, 
ls,:-} 

1. SAÑA ke uñwana öfönde eti, 
K’ eti usiere me ke okoneyo, 
Saña ke usen k’usen kaka iso 
Tiene Jesus, kpukpr’usuñ. 

Körös: 
Tiene, (tiene) iyetiene Jesus. 
Tiene (tiene) ke kpukpru usen. 
Ika, (ika) iso k’uyo Esie, 
Iyetiene Jesus kpukpr’ usuñ. 

2. Ke ata uñwana ye k’ ata ekim, 
Ke eti ini ye ke nda eyo, 
Andinyaña k’okot, kop 
uyo Esie, 
Tiene Jesus kpukpr’ usuñ. 

3. Ke ata uwemeyo me ke ekim, 
K’ oyobio osöñde me 
’sukhörede, 
Bere ke mböm Esie sim ke utit, 
Tiene Jesus kpukpr’ usuñ. 

Amen.   
      """
    },
    {
      "id": 220,
      "title": "DI TIENE ANDINYAÑA ",
      // "audio":"",
      "body": """
      KEY Bb 4/4
(Earnestly) 

{|s, :L, .,s, lm, :s, |d: r.,d lL, : |
t, :t, .,d lr :m .m |d :t, .,L, ls, : -} 

1. DI tien’ Öböñ nyin, kubet aba, 
Ke ikö Esie, owut nyin usuñ; 
Sese k’otu nyin Öböñ k’ ada! 
K’ okot fi ete “Di.” 

Körös: 
Ke akwa idara ko k’ enyöñ, 
Iyenyene edisan’ ukpöñ; 
Iyedu y’ Afo Andinyaña 
K’nsi nsi iduñ. 

2.“Nditö edi!” kop nö Enye, 
Nam kpukpru esit edara eti; 
Eyak ida Enye k’udeme, 
Di, O kubiat ini. 

3. Etim efiök, Enye ’du ye nyin, 
Ekop enyuñ enim mbet Esie; 
Kop nte Enye ödöhöde, 
“Nditö eyedi?” 

Amen.
      """
    },
    {
      "id": 221,
      "title": "DA ABAÑ FO EDIWAK DI ",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:d .,r |m .,m :m .,m lm .,r :d .,m 
|s.,fe :s.,Lls} 

1. AFO omoyom uyöhö 
edidiöñ otod’ Öböñ 
K’esit y’ uwem fo mfin? 
Bö ‘ndien uñwöñö Ete fo, 
nt’ Enye ödöhöde, 
Ke eti usuñ eset. 

Körös: 
Eyeyöhö esit fo (mfin) 
öduöhö, 
Nt’ Öböñ etemede, da 
abañ ediwak di, 
Eyeyöhö esit fo (mfin) 
öduöhö 
Y’ odudu Eti Spirit. 

2. Da ndek ikpökhidem di 
man eyet k’ iyip Jesus, 
Edi mbon unana, 
Ke eriyak ikpökhidem, 
ebet k’ebekpo Öböñ, 
Tutu Spirit Christ edi. 

3. Nte aran ke ekpeme, 
‘mfön Esie ikureke, 
Ima ikpukhökere 
Nte ekemde k’uñwöñö, 
eti Spirit y’odudu, 
Eyeyöhö kpukpr’ esit. 

Amen. 
      """
    },
    {
      "id": 222,
      "title": "DUK KE UDIM ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|d .,d :d.,d ld :d |m :-ld : |m.,m 
:m.,mls :m .d |r :-l -} 

1. KE ñkpri ye ikpö obot, 
Kop etop ikot gospel; 
Kop edinem uyo esie, 
Emi etiñd’ enö nyin. 

Körös: 
S: Duk ke udim mboneköñ 
ATB: Duk ke udim, Duk ke 
udim 

S: Duk ke udim mboneköñ 
ATB: Duk ke udim, duk ke udim 

S: Söñö da k’ ikot eköñ, 
söñö, söñö 
AT: Söñö, da ke ikot söñö 
da, söñö, söñö 
B: Söñö da ke ikot söñö, söñö 

All: Söñö, mboneköñ Christ. 

2. Men ñkpö eköñ fo böbö, 
Menere banner k’ enyöñ; 
K’ adade ye akpanikö, 
M’ enjel k’ enyöñ k’ese fi. 

3. Fiak fiori obukpoñ oro! 
Nam ekop etop eköñ 
Okposuk k’ mkpa, 
iyeakan 
Ke idade ye Jesus!” 

Amen. 
      """
    },
    {
      "id": 223,
      "title": "MEN BIBLE FO",
      // "audio":"",
      "body": """
      KEY Ab 6/4

{|s, :s, :s, ld :-:L, |s, :-:-ld :-:-|r 
:r :r lr :t, :s, |m :-:-|-:-:} 

1. SAÑA ye Bible k’ubök, 
Yarar’ edidiöñ esie; 
Eyediöñ fi kpukpru ini, 
Da enye ka kpukpr’ ebiet. 

Körös: 
Da enye ka kpukpr’ ebiet 
(ebiet) 
Da enye ka kpukpr’ ebiet 
(ebiet); 
Etimbuk Öböñ, 
Otode k’enyöñ; 
Da enye ka kpukpru ebiet 
(ebiet) 


2. Saña y’ ikö erifen, 
Enenem k’ usen k’ usen; 
Odu mö emi eyomde, 
Da enye ka kpukpr’ ebiet. 

3. Saña y’utibe mbuk, 
Tiñ nö esit mfukhö, 
Ikö erinyaña emi, 
Da enye ka kpukpr’ ebiet. 

4. Saña y’ikö uñwöñö, 
Nam menamidiök efiök 
Usuñ erinyañ’ Abasi -
Da enye ka kpukpr’ ebiet. 

Amen. 

      """
    },
    {
      "id": 224,
      "title": "AMI MMADA KE IKÖ ABASI ",
      // "audio":"",
      "body": """
      KEY F 4/2

{:m .f |s .m :r .d lL, :t, |d :-l-:t, .L, 
|s,.d :d.r lm:m|r:-l-} 

1. AMI ’mada k’ ikö Abasi 
Eke eyo oko 
Ñwed m’ete nyin ’kemade 
Öfönde akan gold. 

Körös: 
Ami ’mada (’mada) ke ikö Öböñ, 
Isöñ ökpökpukhöre, 
Idibehe (’behe), idibeh’ ifep; 
Ami ’mada k’ ikö Abasi. 

2. Ami ’mada k’ ikö Abasi, 
Emi asanade; 
Uñwana nyin k’ ofri 
m’eyo, 
Osuk ayayama. 

3. Ami ’mada k’ ikö Abasi, 
Öyöhö ye uwem;
Spirit Öböñ oduñ k’ ikö 
Ye ke m’udim Esie. 

4. Ami ’mada k’ ikö Abasi, 
’Mada k’ eti isöñ, 
K’ oyobio ösöñde eti, 
Nyeda k’ nsinsi. 

5. Ami ’mada k’ ikö Abasi, 
Ke ini mkpa mi 
Mbuana k’ ndöñesit 
Christ; 
K’ isañ mfut mkpa. 

Amen. 

      """
    },
    {
      "id": 225,
      "title": "TIÑ SUK IKÖ ",
      // "audio":"",
      "body": """
      
KEY G 4/4 

{|m :m .,m lf :m |r :-lL, :-|t, :t, .,L, 
ls, :f |m :-l-:} 

1. TIÑ ikö baña Jesus, 
Akpade önö fi: 
Buk enye kpukpru ini, 
Mbuk idaresit. 

Körös: 
S: Tiñ… suk ikö… 
ATB: Tiñ suk ikö, ikö baña 
Jesus: 
All: Suk nam akpanikö 
S: Tiñ... suk ikö... 
ATB: Tiñ suk ikö, ikö baña 
Jesus: 
All: Tiñ s’ anamde önö fi. 


2. Tiñ ikö baña Jesus, 
Önöde fi uwem, 
Odudu y’ idöñesit, 
Kpukpru mö ke mfön. 

3. Tiñ ikö baña Jesus, 
Kubebet mö eken, 
Suan mbuk ke idara, 
Mbak ubiat ini. 

4. Tiñ ikö baña Jesus, 
Nsinam eyikde? 
Ima Esie eyediöñ, 
Mö ’yema ndikop. 

5. Tiñ ikö baña Jesus, 
Ima Esie y’ owo, 
Owo ukut eyekop, 
Onyuñ öbuötidem. 

Amen. 

      """
    },
    {
      "id": 226,
      "title": "YAMA KE EBIET EKE AFO ODUDE ",
      // "audio":"",
      "body": """
      KEY Eb 4/2

{:m .f |s .s :fe .s ld'.d' :s.m |s :fe 
lf :f .s |t: -.L ls .L :s .f |m:-l-} 

1. KUBET ete tutu afo anam 
m’ ikpö ‘ñkpö, 
Kubet, nam uñwana fo ’yama; 
Ke mutom fo, nam akpanikö 
nö Öböñ fo, 
Yama ke ebiet odude. 

Körös: 
SAT: Yama ke ebiet odude, 
B: Yama nö Jesus, k’ebiet 
afo odude, 
All: Yama ke ebiet odude, 
Andikpöñ Jesus eyekut 
uñwana fo ko. 
Yama ke ebiet odude, 

2. Afaneköñ odu ko emi 
akpañwamde, 
Kuyak udöñ fo öbiöñö fi, 
Kwö ikwö, nam esit 
mfukhö kiet adara, 
Yama ke ebiet odude. 


3. Öböñ öñwöñö ‘ndida usuñ 
k’ikö Esie, 
Kudip idiök, ubiat utom fo, 
K’uyama iso fo wut nte 
öfiökd’ Öböñ 
Yama ke ebiet odude. 

Amen. 
      """
    },
    {
      "id": 227,
      "title": "TIÑ NÖ MI, ÖBÖÑ ",
      // "audio":"",
      "body": """
      
KEY F 3/2 

{m:m :r |d : -:L |s : -:flm: -: |
m :f :m |r: -: d |t, :-: d lr :-:-}
 
1. TIÑ nö mi, Öböñ man ntiñ, 
Nö mö eken ke uyo Fo. 
Nte ’koyomde mi, nam ‘nyom, 
Mmö oro esopd’ usuñ. 

2. Da mi usuñ man ñkpada, 
Mö eyode ke usuñ Fo, 
Bök mi, Öböñ, man 
ñkpöbök 
Mbon öbiöñ k’ uyo enyöñ. 

3. O söñö mi idem man ke-
Ndade ke odudu Fo, 
Ñkpanyan ubök ima ‘nnö, 
Mö eken misöñke k’ eñwan. 

4. Kpep mi Öböñ, man ñkpekpep 
Me ‘ñkpö Afo ekpepde mi, 
Nyuñ da ikö mi, nam oduk, 
K’öwöñesit uwak owo. 

5. Nö mi emem Fo, O Öböñ 
Man ‘ntiñ ikö ke odudu 
Otode Fi, k’eti ini, 
’Nö mö edude k’unana. 

6. O yöhö mi, k’ uyöhö Fo, 
Tutu esit mi öyöhö, 
Ami ntiñ k’ ufiop, ikö 
Ima Fo ye itoro Fo. 

7. O döñ mi, Öböñ, döñ kpa mi, 
Ke ebiet y’ ini amade, 
Tutu ndikut iso Fo, 
Nyuñ mbuana ke uböñ Fo. 

Amen. 

      """
    },
    {
      "id": 228,
      "title": "ANDINYAÑA TEME MI KPUKPRU USEN ",
      // "audio":"",
      "body": """
      KEY Eb 4/2

{|s:s .f lm :f |m : rld : -|L :s lf:r 
|m :f lr : -} 

1. ÖBÖÑ kpep mi kpukpr’ 
usen, 
Akwa utom ima Fo; 
Ndima Öböñ eti, 
Emi akamade mi. 

2. Nt’ eyen ima Ete, 
Nyesaña k’ uyo Fo, 
’Nam utom ntiene Fi, 
Emi akamade mi. 

3. Kpep ntiene ikpat Fo, 
Nsöñ’ idem k’ mfön Fo, 
Ñkpep ima nto Fi, 
Emi akamade mi. 

4. Ima enyene utom, 
Adara k’ nsukibuot; 
‘Nyesuk ndara k’Enye 
Emi akamade mi. 

5. Ntre ami madara, 
Ndiwut isön ima; 
Nyuñ kwö tutu ndikut 
Enye akamade mi. 

Amen. 
      """
    },
    {
      "id": 229,
      "title": "ÖBÖÑ, TIÑ ",
      // "audio":"",
      "body": """
      KEY F 3/4

{| s :m :d |r :-:r | r :f :t, | d :m :s | L :s 
:m |r :-:m lf :m :r |m :-:-} 

1. ÖBÖÑ, tiñ, owo Fo ’yekop, 
K’mbet ikö mfön Fo, 
Nyom edinem uyo Fo; 
Öböñ yak ñkop kemi, 
Ami ke mkpañ utöñ; 
Etiñ nso önö mi? 
O Öböñ, kam tiñ nö mi. 

2. Esit ke otimere mi, 
K’ uyo akande Okuo; 
Me uyo efen k’ eñwana 
Ndisio Okuo mfep; 
Ikö Fo ñkebetde, 
Öböñ tiñ, kpukpru ’yedop, 
O Öböñ, kam tiñ nö mi. 

3. Öböñ tiñ ami nyikke, 
Ami ke nsem’ eti; 
Midighe Fi – Andinyaña, 
Uwem edi ikpikpu, 
Nyom eti uñwana, 
Ata ima ye ifiök, 
O Öböñ, kam tiñ nö mi. 

Amen. 
      """
    },
    {
      "id": 230,
      "title": "ÖBÖÑ DIÖÑ PASTOR NYIN ",
      // "audio":"",
      "body": """
      KEY Db 4/4

{:s |d' :-.m ls: -.m | s .f :m .r ld :.
d |m :s ld' :m |s :-l-} 

1. ÖBÖÑ diöñ Pastor nam 
enye, 
Öyöhö y’ ifiök Fo! 
Uñwana y’ idar’ ikö Fo, 
Oduñ k’ esit esie, 
O, yak edemere m’ ukpöñ; 
K’ ima y’ idara Fo, 
Eti idorenyin y’ mböm, 
Öböñ, edi Okuo! 

2. Öböñ diöñ Pastor nyin, 
k’ esit, 
Yarare ikö Fo; 
Eti Andinyaña, mbök 
Kop ofri ebeñe! 
K’ oyobio akande okuk, 
D’ idorenyin esie; 
Ada m’eröñ ekpere Fi, 
K’ usuñ Fo kpukpr’ usen. 

3. Öböñ diöñ Pastor nyin 
nyuñ nö 
Enye uñwana Fo, 
Kpeme enye ke ima Fo, 
Nö enye ukeme; 
Nam ofri ekiker’ esie 
Edi Okuo ikpöñ, 
Uwem y’ idorenyin esie 
Önö Fi itoro. 

Amen. 
      """
    },
    {
      "id": 231,
      "title": "SUÑ SUÑ IKÖ",
      // "audio":"",
      "body": """
      KEY C 3/4 

{:s|m :-:f |s : -:d' |m : -:L |s ::
m |f: -: f |s : -:f |m :-: -|-:} 

1. p KE ikö otukde esit, 
Nte ‘mbara k’ iköñ 
Emen ekim y’ ukut efep 
f Önö ndöñesit 
mf Ebiet inem uyo enjel 
Oto k’ enyöñ edi 

f Önö idorenyin y’ emem 
Uwak mböm y’ ata ima 
Ebiet inem uyo enjel 

p Oto k’ enyöñ edi 
ff Önö idorenyin y’ emem, 
pp Mböm y’ ata ima. 

2.p Edemere m’öduö esit, 
Önö idorenyin 
Owut mekpa mba usuñ 
f Osimd’ iduñ emem 
mf K’eti ikö ’dukde k’ esit 
Ebiet inem ikwö 

f Önö inem k’usuñ uwem 
Ökwökhöre mmöñ-eyet 
K’eti ikö ’dukde k’esit 

p Ebiet inem ikwö; 
ff Önö inem k’usuñ uwem 
pp Etre mmöñ-eyet. 

Amen. 

      """
    },
    {
      "id": 232,
      "title": "USEN UKPEP-ÑKPÖ NYIN ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{.,s :L .,s lm :-l-.,s :L .,s |d':-l-.,m 
:s .,d' |t :-:-.,r’ :f .,L |s :-l-} 

1. UKPEPÑKPÖ nyin 
öfön didie, 
Ndikpebe Öböñ Jesus 
Ikot ikö, udim esie 
Öyöhöde y’ idorenyin. 

Körös: 
Ini ukpepñkpö nyin, 
Önö inemesit, 
Ke ufök emem Fo 
Imama ndidi, 
Nyin iyekere fi, 
Akam nyin eyedi, 
Yak Abasi ödiöñ 
(yak ödiöñ) ukpepñkpö 
nyin. 

2. Ukpepñkpö nyin, kpukpru 
ekwö, 
Inem ikwö ’nö Edidem, 
Man nditö ekut usuñ 
Ata emem k’ nsi nsi. 

3. Itie ukpep, ebiet iñwañ 
Etöde me nti mfri 
Man eköri enö Öböñ, 
Iso Esie ayamade. 

4. Ukpepñkpö nyin, ini esie 
Asaña ye me edidiöñ, 
Ikpep uwem mi ke afo, 
Inyuñ inö Öböñ eköm. 

Amen. 

      """
    },
    {
      "id": 233,
      "title": "KA UTOM KE IÑWAÑ ",
      // "audio":"",
      "body": """
      KEY Ab 6/8 

{:s, |s, :d :r lm :f :m lr :-:-lL, :-:d 
lt, :L, :s, ls, :t, :f |m : -:-} 

1. DI, ka utom ke iñwañ idök, 
Öböñ k’ okot fi ete di 
Kemi ini ukpeñe ekem, 
Idök esie ’yefön eti. 

Körös: 
Di ka (Ih di ka), 
Di ka (Ih di ka), 
Di ka ye ofut fo (ofut fo) 
mfin, 
Kemi ini ukpeñe ekem, 
Di ka ye ofut fo mfin. 


2. Da inemesit nö ’mekpa 
‘mba, 
Ye ikö nö mendifukhö, 
Inem ikwö ’nö mö etuade, 
Ikwö emem ke idara. 

3. Di ka ke esit akpanikö, 
Nam kpukpru ekut uñwana, 
Öböñ eyenam emem odu, 
K’ekim akande fi okuk. 

Amen. 
      """
    },
    {
      "id": 234,
      "title": "UÑWANA UWEM",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{.,s, :L, .,s|m : -l -.,s, :L, .,s, |r :-l.,
s, :L, .,s, |t, :-l-., f :m .,r |m :-} 

1. ÖBÖÑ ikö Fo enem mi, 
Edi enye ’da mi usuñ, 
Uñwana ke usuñ isañ, 
Anam esit mi adara, 

Körös: 
Uñwan’ uwem, Ada usuñ, 
K’ idara ubök mi 
k’ Okuo, (ke Okuo) 
Ada usuñ, y’ Iberedem, 
Kpeme k’ mkpafakh’ usuñ. 

2. Ami nsaña k’ ikö Fo, 
Ibet Fo akar’ esit mi, 
Akwa udia Uyo Uwem, 
Öbökd’ ukpöñ mi 
kpukpr’usen. 

3. Ndöñesit k’unana mi, 
Afo edi ata Ufan, 
Esañ uwem, mbere Fi, 
Mkpa ididianakere. 

Amen. 

      """
    },
    {
      "id": 235,
      "title": "ÖBÖÑ, IKÖ FO EBIET IÑWAÑ ",
      // "audio":"",
      "body": """
     KEY Ab 4/4 

{:s, |d :d lt, :L, |s, :-.L, ls, :s, |L, :r 
ld :t, |d :-l-||} 

1. ÖBÖÑ, ikö Fo ’biet iñwañ 
Ye ndiye iköñ, 
Owo ekeyomde etet, 
Ndiye etuek do, 
Ikö Fo ebiet ‘ñkpö-uto, 
Emi ösöñd’ urua, 
Onyuñ odibede k’ udem 
Önö me andiyom.
 
2. Ikö Fo ayama eti, 
Nte uñwan’ ikañ, 
Ekpemede owo isañ, 
K’ usuñ isañ esie, 
Ebiet ufök ñkpö-eköñ, 
Emi mbon eköñ, 
Esioñode ñkpö-eköñ 
Ndiñwana eköñ. 

3. Nam mi ’ma nti ikö Fo, 
Nam mi nyom enye, 
Yak eti uñwana esie 
Ayama k’uwem mi 
Yak ñkut ñkpö-eköñ do 
Emi mbuötd’ idem, 
Nyeñwana ye me asua 
Ke eñwan Öböñ nyin. 

Amen.  
      """
    },
    {
      "id": 236,
      "title": "KE IDIM UWEM ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s, .,s, |d :d .,r lm .,r :d .,m |s :L 
ls :m .,r |d :t, .,d lL, :r .m |r : -l-} 

1. EDI Öböñ afak nyin, 
owut nyin usuñ; 
Edi mmöñ uwem k’mfön, 
Enye emi öñwöñde, möñ 
otod’ Enye; 
Itöñ idisatke. 

Körös: 
Ke okpokoro ima madara, 
(mmadara) 
’Dara (mmadara), ’dara 
(mmadara), 
Ami ke ñwöñ ke idim-möñ 
uwem (idim uwem), 
Itöñ idisatke mi (isatke). 

2. Idim möñ uwem emi 
enyene kpukpru, 
Ekpade mba ke usuñ, 
Edidiöñ Esie edu, enö fi 
k’ mfön, 
Oto k’ ikö Öböñ. 


3. Kini ñköñwöñde möñ 
nsinsi uwem, 
Ukpöñ mi ama öyukhö, 
Okposuk ñkekpade ‘mba 
ke idomo; 
’Mokut eti emem. 

Amen. 
      """
    },
    {
      "id": 237,
      "title": "BÖRÖ “IH” ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:d .,r |m :s ls .,m :f .,m |r :L, lL, 
:d .,L, |t, :r lf :L |s :m l-} 

1. K’ UYO Abasi osimde fi 
ete, 
“Nö mi kpukpr’ inyene fo, 
Y’ ñkpö emi afo amade 
akan, 
’Yebörö ikot Esie? 


Körös: 
Börö “Ih”... k’okotde... 
Koro Öböñ ’yedöñ fi utom. 
Börö “Ih”... k’okotde... 
Enye ’yediöñ utom fo 
(’yediöñ) 
Börö “Ih”... k’okotde... 
S’ededi Enye ’tiñde y’ afo, 
Kusin, kuyik, O kunyuñ 
ubup ntak. 
Kam, börö “Ih.” 


2. K’ ekpri uyo, Andibot 
k’etiñ y’ afo, 
M’ afo eyesuk ibuot? 
M’eyebörö, “Ih” ke 
mubupke ntak? 
Edide, “ka” m’edi “bet?” 

3. M’ eyebuötidem y’Enye ke 
kpukpru ‘ñkpö, 
Ebere k’ mfön Esie? 
M’eyebörö, “Ih,” k’ Öböñ 
oyomde fi, 
Y’ ñkpö ndöñesit fo? 


4. K’ odude k’ ekim nte 
Gethsemane 
Afo ’du ke möñ-eyet. 
K’ usuñ okimde fi, uñwana 
’yedi, 
Bere k’ Öböñ, kudikhe. 

Amen. 

      """
    },
    {
      "id": 238,
      "title": "IH! ÖBÖÑ EKEME NDIBERE KE AMI ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:m, .,f, |s, :L, .,t, ld :r .,d |m: -l-:d 
.,d |d :t, .,d lr :d .,L, |s,:-l-} 

1. INI ukpeñe ekem kemi, 
Ami nyenam ke idara. 
Nyeda nti ebek ’nö Edidem 
mi, 
Kor’ Öböñ ebere k’ami. 

Körös: 
Öböñ eyebere k’ ami 
(k’ami), 
Öböñ eyebere k’ ami 


(k’ami), 
‘Nyebuk enyiñ Esie, 
Nyekop ’nö Enye. 
Kor’ Öböñ ebere k’ami. 

2. Mbuk do, ‘ndisuan ke 
kpukpr’ ebiet, 
Kabaña akwa Andifak 
nyin 
Kemi ke okokot, mokop 
k’ eti esit, 
Kor’ Öböñ ebere k’ami. 

3. Me ukpöñ do efiakde 
edem, 
Yak nda mö nnö Fi, Öböñ, 
Nyeyom mö mfin, 
ndibiatke ini. 
Kor’ Öböñ ebere k’ami. 

Amen. 
      """
    },
    {
      "id": 239,
      "title": "KE JESUS ODUKDE KE ESIT FO ",
      // "audio":"",
      "body": """
      KEY F 68 10.8.10.8 – 8.8.10.8 

Male voices: unison 

{s,:d :m ls :fe :s |L :s :m ld :-} 

1. TB: EKIM eyebe, usiere ’yedi, 
All: Ke Jesus ’dukde k’esit fo, 
TB: Ekim y’ mbukpöñ fo 
eyebe ’fep, 
All: Ke Jesus ’dukde k’esit fo. 

Körös: 
Ke Jesus ’dukde k’ esit fo 
(’sit fo), 
Mbiet idiökñkpö eyebe 
(’yebe) 
Usiere ’yedi, ekim fo 
’yebe, 
Ke Jesus ’dukde k’esit fo 
(’sit fo). 

2. M’ ebuka ebuñö, afo ’böhö, 
Ke Jesus ’dukde k’esit fo, 
M’ enyin etim ekut uböñ Esie, 
Ke Jesus ’dukde k’esit fo. 

3. Ata emem eyeduk 
k’ ukpöñ fo, 
Ke Jesus ’dukde k’esit fo, 
’Yetop mbiomo fo önö Enye, 
Ke Jesus ’dukde k’esit fo. 

4. M’ edidiöñ nte mbara ’yedi, 
Ke Jesus ’dukde k’esit fo, 
Usuñ heven ’yeberede ’nö fi, 
Ke Jesus ’dukde k’esit fo. 

Amen. 

      """
    },
    {
      "id": 240,
      "title": "EMEKEME NDINYENE PENTECOST KEMI",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:d .,r |m :r ld :m .,f |s :f lm :s .,s 
|L :s ld :r |m : -l-} 

1. ODUDU Abasi edi ukem 
Kpa nte k’ eyo oko; 
Da k’ uñwöñö ye ke 
uduak Esie, 
Eyenö fi edidiöñ. 


Körös: 
Eyebö odudu kemi (kemi), 
Nim k’ akpanikö ke akam 
(Hallelujah) 
Enye di ukem, etoro Enye! 
Eyebö odudu kemi. 

2. Yak kpukpru ‘ñkpö k’ ikot 
Andinyaña, 
Dara k’ ndidi Esie! 
Bet k’ akam, top mbiomo 
nö EnyeBere ke Öböñ ikpöñ. 

3. Yak ada fi usuñ, k’ ima 
Esie, 
K’ usuñ Enye emekde, 
Kpe ubök, yom uwak mfön 
Esie 
Ada fi usuñ k’ utom. 

Amen. 
      """
    },
    {
      "id": 241,
      "title": "KPUKPRU KABAÑA MI ",
      // "audio":"",
      "body": """
    KEY A 6/8

{|m, :-.s, :dlm : -:r |d : -.t, :L, 
ls, :-:-|m, : -.s, :d lr :-:-|s, :-.t, 
:r ld : -:-} 

1 JESUS Andifak ’koto 
k’enyöñ 
Akpa ’nö fi, akpa ’nö mi, 
Ke mendotke ndude 
k’ idiök, 
Akanam k’ntak mi. 


Körös: 
Edi ata utibe mbuk 
Jesus akakpa ’nö fi y’ami, 
Ökpöñ anyanya y’ obio uböñ 
Akanam k’ ntak mi. 


2. Ke ebiet me enjel ekwöde, 
Ekanare ’fia ebekpo 
Osio mi efep k’ akwa 
ukpe, 
Ada mi k’ Esiemö. 


3. Öböñ, nso k’ndinam ’nö Fi 
K’erikpa ’nö mi ke 
Calv’ry? 
Ami nyebuötidem y’ Afo, 
‘Nyenam emi ’nö Fi. 

Amen. 
  
      """
    },
    {
      "id": 242,
      "title": "KUDI NDIBET, EDI DUÑ YE AMI ",
      // "audio":"",
      "body": """
     KEY Db 6/8

{:s|s :-:d'ld':t :L |s :-:m ls : -:d' 
lt :-: -ls : -:L |s :-:-lm:-} 

1. MAYAK esit mi ’nö Fi Öböñ, 
Duk di…. duk di…, 
Möbuötidem k’ nti ikö Fo, 
Duk di… duk di… 

Körös: 
Di duñ ye ami Öböñ ima, 
Kpukpru nyenö Fi k’ ima, 
Nam esit mi ’di ebiet iduñ Fo, 
Duk di…, duk di... 


2. Ebiet odu k’ esit mi Öböñ, 
Duk di…, duk di…, 
Ndudu Fo edi heven ’mi, 
Duk di… duk di… 

3. Ñkayak ada anyan ini 
Duk di… duk di… 
Mekpe ubök k’ndudue 
emi, 
Duk di … duk di … 

4. Mokop ököñde ke esit mi. 
Duk di… duk di… 
Ndiyakke Fi ebet aba, 
Duk di… duk di… 

Amen. 
 
      """
    },
    {
      "id": 243,
      "title": "YAK KPUKPRU EDÖHÖ “AMEN” ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

10.6.10.7 – 11.11.11.7.11.11.11.7 
{:m .,f |s :L ls:d.,r |m :f lm :-|s :f 
lf : -|L :s ls} 

1. ÖBÖÑ, Edisana Spirit odu 
Ikpe ubök kemi 
Man öyöhö nyin k’ odudu 
Esie, 
Nte kini Pentecost. 


Körös: 
Yak kpukpru k’idara 
edöhö “Amen;” 
Yak kpukpru k’idara 
edöhö “Amen;” 
K’ oyomde odudu 
Pentecost edi, 
Kpukpru edöhö “Amen” 
(“Amen”) 
Yak kpukpru k’idara 
edöhö “Amen” 
Yak kpukpru k’idara 
edöhö “Amen” 
K’ oyomde odudu 
Pentecost edi, 
Kpukpru edöhö, “Amen” 
(“Amen”) 

2. Mesatitöñ edu k’iso Fo mi, 
Esemede, Öböñ, 
Berede usuñ uwak mfön Fo, 
Nö mbara edidiöñ. 


3. Imebet, nö edim esie edi 
Yak öduöhö kemi, 
Yet nyin aran ke utom Fo, 
Öböñ, 
Kini akam y’ itoro. 

Amen. 
      """
    },
    {
      "id": 244,
      "title": "AKANI ÑWED OSUK ADADA ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:m .,r |d :d ld :s, .,s, |L, :d ld :|
d .d :d .rlm :s |s : -lr } 

1. IKÖ Abasi amanam kpukpru 
Efiök mbuk erinyaña, 
Nt’ Eyen Abasi ekedide 
Man owo abuana k’uböñ. 

Körös: 
Akani ‘ñwed, enye ’di 
ukem, 
Ibiañake nyin baba, 
Enyöñ y’ isöñ ’kpebe 
Ke Bible, nyeda 
Enye odu k’nsinsi. 

2. Odudu odu k’ebekpo 
k’enyöñ, 
Eke mikpuhu nyin baba, 
Andikama odudu ekpere, 
Eyebörö kpukpru ini. 

3. M’edem’ ikañ edu nte 
k’ eset. 
Edieke nyin ikpenimde, 
Odudu edi oto ke enyöñ, 
Edieke iyomde enye. 

4. Ikö Öböñ edi ukem 
mfin, 
Uñwöñö Esie ikpuhö, 
Ami monim emi 
k’ akpanikö, 
Abasi k’etiñ kpa kemi. 

Amen. 
      """
    },
    {
      "id": 245,
      "title": "MME UFÖK EDI NDISANA EBIET UKPONO ABASI ",
      // "audio":"",
      "body": """
    KEY Eb 3/4


{|m :re :m |r:-:m |d :-:-|s :s :s 
|f :-:f |m :-:-|r :-:-} 

1. M’ UFÖK edi ebiet 
Owutd’ ima Abasi, 
Iböbö edidiöñ kpukpr’ ini 
Se esit okpoyomde. 

2. Nti ikö ifiök, 
K’ efiori ofri ini; 
Emedöñ nyin mkpösöñ 
utom, 
Iyenam k’ukem’ Esie. 

3. Ke utom inamde 
K’ata ediwak obio, 
Ada nyin aka k’iduñ Esie, 
Emi öfönde ama. 

4. Ikot utom Esie, 
K’ idara me k’ mfukhö, 
K’ osimde nyin, iyesuk 
ibuot, 
Ibuötidem ke Öböñ. 

5. Nyin idisoboke 
Aba ke ufök emi, 
Eti uduak Abasi ye nyin, 
Eyeyarare k’uböñ. 

Amen.   
      """
    },
    {
      "id": 246,
      "title": "ÖBÖÑ, IKÖ FO ODODU ",
      // "audio":"",
      "body": """
      KEY Eb  4/2

(moderately slow) 

{|d :d lm :f |s :-ls :-|L :t ld' :s 
|m :fe ls : -} 

1. IKÖ Fo ododu, 
Ekpeme ikpat nyin: 
Öbuötidem k’ Enye 
Eyenyen’ uñwana. 

2. Ke m’asua edide 
Ikö Fo añwam nyin, 
Ikö ndöñesit, 
Mbuk erinyaña. 

3. K’ oyobio edide 
Ye ekim k’ iso nyin 
Uñwana ayama, 
Ekpeme usuñ nyin.
 
4. Anie ’keme ‘ndibat 
Ñkpö-uto y’ inem -
Ikö Fo önöde 
Mö esukde esit? 

5. Etop mböm önö 
M’ odu uwem uñwam, 
Ikö uwem önö 
Ndöñesit k’ mkpa. 
unison 

6. O nyin ikpöfiökde 
S’ ikö Fo ekpepde, 
Öböñ, ikpama Fi 
Inyuñ ikpere Fi. 

Amen. 
      """
    },
    {
      "id": 247,
      "title": "ÖKPÖSÖÑ ABASI, ESUAN IKÖ FO ",
      // "audio":"",
      "body": """
      KEY F 4/2 

{|d :-ld :r |m :f ls :s |m :-lm :-|L 
:s ls :fe |s :-} 

1. EMESUAN ikö Fo Öböñ, 
Nt’ mkpasip k’ isöñ, 
Yak mbara heven edi, 
Önö nti mfri. 

2. Kuyak m’asua Christ ye 
owo, 
Ebiat ikö emi, 
Nam enyene oruñ k’ esit, 
Oñwum mfri ima. 

3. Kuyak abiañ’ ererimbot, 
Ewot ikö emi, 
Edi yak oñwum ikikie, 
Mfri ima y’ emem. 

4. Kini esuande mkpasip, 
Nö akwa mfön Fo, 
Man mendikop ikö emi 
Ebö erinyaña. 

Amen. 

      """
    },
    {
      "id": 248,
      "title": "UTOM EDIDEM ",
      // "audio":"",
      "body": """
      KEY E 4/2 

{.s, :L, .d |m .,m :m l-.m :r .d 
|f.,f:f l-.} 

1. AMI ndi esen owo mi ke 
isöñ, 
Iduñ mi oyom usuñ, edi 
obio gold, 
Ndi isuñ-utom edem akpa 
oko 
Ndu mi k’utom Öböñ mi. 

Körös: 
Mada etop emi ndi, 
Me enjel emade ‘ndikwö, 
“O! Enam emem” 
Öböñ ödöhö ntre, 
“Enam emem ye Abasi.” 


2. Edi uyo Öböñ ete 
kpukpru owo 
Ekabare ekpöñ me idiök 
usuñ mö, 
Mendikop uyo eyekara 
k’ nsinsi: 
Edi utom ‘nnamde 
n’ Öböñ, 

3. Iduñ mi ayama akan isöñ 
Sharon, 
Nsinsi uwem ye idara 
edu do, 
Öböñ oyom ntiñ, k’owo 
eyeduñ do: 
Edi utom ‘nnamde 
n’ Öböñ. 

Amen. 
      """
    },
    {
      "id": 249,
      "title": "ETI IKÖ ORO",
      // "audio":"",
      "body": """
      KEY F 4/2 

{:s, |s, .,d :d .,r lm .m :-.d |r .,d 
:d.,L, ls,:-|s .,s :s .,s ls :m |r :-l-} 

1. IKÖ, “owo ’kededi” otuk 
mi ke ukpöñ, 
Owo amade edi, 
Ke idim erinyaña, mmöñ 
uwem odu, 
Owo amade edi. 

Körös: 
SA: Owo “ekededi!” 
TB: (Owo ’kededi – owo 
’kededi) 
All: Owo amade e–di 
Andinyaña ke okot, okot 
fi ke mfön 
Owo amade edi. 

2. Ke ‘ñkutde ikö emi, 
k’ ñwed Abasi ’bom; 
Owo amade edi, 
Enyene menamidiök, 
onyuñ enyene mi, 
Owo amade edi. 

3. Eti etop ñkopde, metiñ 
’nö mö efen, 
Owo amade edi, 
Yom eti Andinyaña edi 
okuo mfin, 
Owo amade edi. 


4. Uböñ enyen’Abasi! 
önöd’ Eyen Esie, 
Owo amade edi; 
Mö emi enyimede, 
’yenyañ’ esim utit, 
Owo amade edi. 

Amen. 
      """
    },
    {
      "id": 250,
      "title": "AKANI IDIM ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s, .,s, |d .,d :d .,d ld :d .,t, |L, .,L, 
:L, .,L, lL, :t,.,L, |s, .,s, :s, .,s, ld .,d 
:m .,m |r :-l -} 

1. K’ MBEN möñ ke 
Samaria, eti mbuk okosim, 
Asat-itöñ eyenañwan ko 
k’eset, 
Mö ’ro edude k’ekim, ekut 
eti uñwana, 
Oto k’ idim asiakhade 
ke eset. 

Körös: 
Idim odu asiakhade ke eset 
(ko k’eset) 
M’idut ebö erikök oto 
k’enye, 
Ke me udim emana, me 
profet y’nti owo, 
Ekekop uyom möñ oro ko 
k’eset (ko k’eset). 

2. Owo akpamfia kiet enyene 
ofn añwan 
Emi öködöhöd’ enye ko 
k’eset 
Idim ekpeyerede man 
ökpöbö erikök, 
Ke enye enyenede 
mbuötidem. 

3. Añwan kiet k’otu owo, 
itiñke ikö baba, 
Önukhö otuk öföñ Esie 
k’eset 
Ekekök ukpöñ esie 
nt’ enye ebeñede 
Ke idim akasiakhade ke 
eset. 

4. K’ eunuch okotde ‘ñwed, 
Philip ekekpep enye, 
Akana baptism ke möñ 
ko k’eset, 
Nt’ idiöñö ekutde ye utom 
Öböñ k’esit, 
Emi otode idimmöñ 
ko k’eset. 

Amen. 
      """
    },
    {
      "id": 251,
      "title": "ODUDU NDINYAÑA ",
      // "audio":"",
      "body": """
      KEY C 3/2 

{:m .,f |s :-.s :L .,d' |L :s :d' .,d' |t 
:-.L :f .,L |L :s } 

1. IKWÖ kiet odu k’ esit mi, 
Ukpöñ mi ama ndikwö; 
Önö mi emem y’ idara: 
“Christ ekeme ‘ndinyaña 

Körös: 
SAT: Kaka iso, kaka iso kwö 
nö mi 
B: Ka ka i...so kwö nö mi… 
SAT: Ke ata utibe inem esie; 
B: Ke a-ta... inem esie... 
SA: Suan etop.....be ke inyañ, 
TB: Suan etop be ke inyañ, 
SA: “Christ ekeme ‘ndi-nyaña” 
TB: “Christ ekeme ‘ndinyaña.” 

2. Ikwö ’ro enem mi k’ ukpöñ, 
Jesus anyaña mendiyom, 
Oro edi akpanikö: 
“Christ ekeme ‘ndinyaña.” 

3. Anamidiök nyime Enye, 
Se Jesus, buötidem y’ Enye; 
Nö Enye uwem y’ utom fo: 
“Christ ekeme ‘ndinyaña.” 

Amen. 

      """
    },
    {
      "id": 252,
      "title": "AKANI ETI MBUK ERINYAÑA",
      // "audio":"",
      "body": """
      KEY Bb 4/2

{.s,|d .,d :d .,d ld .,s, :m, .,f, |s, .,s, 
:L, .,L,ls, : -.} 

1. ITIÑ ibaña Enye ke ikade 
ko k’ enyöñ, 
Akani mbuk erinyaña; 
Ikwö ye idaresit ke ata 
uyo ima 
Akani mbuk erinyaña. 

Körös: 
Fi-o-ri (fi-o-ri) fi-o-ri 
(fi-o-ri), 
Fiori k’ofri ererimbot, 
Fi-o-ri (kpukpr’ ebiet), 
fi-o-ri (kpukpr’ ebiet), 
Akani mbuk erinyaña. 

2. Emenere ‘mbio ’memidem, 
eyet k’ iyip Esie, 
Akani mbuk erinyaña; 
Ima Esie anam uñwana 
asiakha k’ ekim, 
Akani mbuk erinyaña. 

3. Iyekwö k’ iso eköñ nt’ 
idiöñö erikan, 
Akani mbuk erinyaña; 
Iyekwö ke ini idomo 
tutu mö ebe, 
Akani mbuk erinyaña. 

4. Me enjel ese k’ utibe, me 
harp mö itiñke, 
Akani mbuk erinyaña; 
Mö efakde, k’uyai, 
eyetoro Öböñ Jesus, 
Akani mbuk erinyaña. 

Amen. 
      """
    },
    {
      "id": 253,
      "title": "JESUS KE EBE MI ",
      // "audio":"",
      "body": """
      KEY F 6/8

{|m :re :m lf:m :r |d :-:-ls, :-:|
d :d :d ld:t, :d |r :-:-l-:-:} 

1. NTE esit omodu mi, 
Oyomd’ erifen mfin? 
Kop eti etop esuande, 
rit. 
Jesus k’ asaña ebe. 

Körös: 
SA: Jesus k’ asaña ebe… 
TB: Jesus k’asaña, k’asaña ebe 
SA: K’ebe… k’ebe… 
TB: K’asaña ebe, k’asaña ebe 
SA: Jesus k’ asaña ebe… 
TB: Jesus k’ asaña ebe, k’ebe 
All: K’ asaña ebe mfin. 

2. Esit odu eke ’yode? 
Di y’ mbiomo fo mfin, 
Enye k’ekpe ubök k’mböm; 
rit. 
Jesus k’ asaña ebe. 

3. Esit odu öbuñöde? 
Atuade oyom emem? 
Di ke ubök Andinyaña; 
rit. 
Ber’ Enye k’ ikpanesit. 

4. Di tiene Jesus Andifak, 
Di k’ eti ima Esie; 
Di k’ ediye inua otop 
rit. 
Adade osim k’ iduñ. 

Amen. 
      """
    },
    {
      "id": 254,
      "title": "BUK MI MBUK",
      // "audio":"",
      "body": """
      KEY Eb 6/8

{.d |m :-.m :m lm :r :d|s :s :L ls ::-|
m :-.m :m lm :r :d |m :-:-lr :-} 

1. K’MFUKHÖ ye afaniköñ edide, 
Buk mi mbuk baña Jesus. 
K’ idiök y’ eyikhe efukde 
ukpöñ mi, 
Buk mi mbuk baña Jesus. 

Körös: 
S: Buk… mi mbuk…, 
ATB: Buk mi mbuk, buk mi mbuk, 
S: Buk… mi mbuk…, 
ATB: Buk mi mbuk, buk mi mbuk, 
All: Buk mi mbuk baña Jesus, 
S: Buk… mi mbuk... 
AT: Buk mi mbuk O tim buk 
mi mbuk 
B: Buk mi utibe mbuk. 

2. K’mkpade ‘mba k’utom, 
nduök odudu, 
Buk mi mbuk baña Jesus, 
Ösöñö mi idem önö 
uñwana, 
Buk mi mbuk baña Jesus. 

3. Ke ndude k’ubiak ye afaneköñ, 
Buk mi mbuk baña Jesus, 
Enye ’yeñwam onyuñ 
önö mi uwem, 
Buk mi mbuk baña Jesus. 

4. K’ uwem ebede, ini iduh’ aba, 
Buk mi mbuk baña Jesus, 
Buk nö mi ke ediye esuk oro, 
Buk mi mbuk baña Jesus! 

Amen. 

      """
    },
    {
      "id": 255,
      "title": "NSINSI UWEM ENYENE FI ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:d .r |m .r :d .r lm :d.d |r .d:t, .L, 
ls,:t,.d|r:r lr.m:f.s|m:-l-} 

1. KOP s’Öböñ öñwöñöde, 
ewetde k’ ikö Esie; 
“Nsinsi uwem enyene fi!” 
Owo mba ye ukut, 
di, nyenö fi emem, 
“Nsinsi uwem enyene fi!” 

Körös: 
Nsinsi uwem ke uñwöñö, 
Andinyaña ke ekpe ubök; 
Eyeda Christ nte okuo 
kemi? 
Nsinsi uwem odu k’ Enye. 

2. Akpa mba ke aka k’iso 
ikpe Abasi, 
“Nsinsi uwem enyene fi!” 
K’ afo onimde Jesus, 
y’ikö Esie k’ esit fo, 
“Nsinsi uwem enyene fi!” 

3. Top mbiomo nö Jesus, 
eyebiom mbiomo fo; 
“Nsinsi uwem enyene fi!” 
Ke mkpafakha usuñ, Enye 
eyekpeme fi, 
`“Nsinsi uwem enyene fi!” 

Amen. 
      """
    },
    {
      "id": 256,
      "title": "MUDUHE KE CHRIST ",
      // "audio":"",
      "body": """
      KEY D 4/4

{|m :-.r ld:r |m :s lL :s |d' :-lL :s 
|s :m lr : -} 

1. KE munyeneke Christ 
Öböñ, 
O! Afo eyebiet 
Ubom minyeneke udeñ, 
Ke uföt akpa inyañ. 

Körös: 
Ke munyenek’Andinyaña 
Uböhö fo iduhe, 
Ntre, Eti Andinyaña 
Andinana Fi akpa. 


2. Ke munyeneke Christ 
Öböñ, 
Usuñ fo eyekim; 
M’ unyenek’ uñwana ke 
Christ, 
Ndöñesit iduhe. 

3. Ke munyeneke Christ 
Öböñ, 
Uböhö iduhe; 
Ufan ye eyeneka mi, 
Oyom uwem me mkpa? 

4. Ke munyeneke Christ 
Öböñ, 
Isañ fo ifönke; 
Ekim y’ oyobio eyedi, 
Bine Christ man öböhö! 

5. Ke munyeneke Christ 
Öböñ, 
Nö Enye esit fo, 
K’usen mböm fo ebede 
Eyekop “Dianare Mi!” 

Amen. 
      """
    },
    {
      "id": 257,
      "title": "ETI UÑWANA",
      // "audio":"",
      "body": """
      KEY Db 4/4

{|d :m ls :d' lL :d' ls :-|s.,s :s.,s ld' 
:d' |t:-l-:} 

1. EYEDARA kpukpr’ ini? 
Yak eti uñwan’ oduk; 
Eyebin ekim efep? 
Yak eti uñwan’ oduk.
 
Körös: :\$: 
Yak eti uñwan’ oduk (oduk), 
Yak eti uñwan’ oduk (oduk); 
Nt’ afo eyekop uko k’ idiök 
usen? 
Yak eti uñwan’ oduk. 
DS. pp 

2. Eyenem esit k’ ukut? 
Yak eti uñwan’ oduk; 
Eyeyöhö y’ itoro, 
Yak eti uñwan’ oduk. 

3. ’Yeñwam esit mfukhö? 
Yak eti uñwan’ oduk; 
’Nö idara y’ odudu? 
Yak eti uñwan’ oduk. 

4. Eyesuan akpanikö? 
Yak eti uñwan’ oduk; 
’Da ekondo ’nö Öböñ? 
Yak eti uñwan’ oduk. 

Amen. 

      """
    },
    {
      "id": 258,
      "title": "EFIORI UKOROWO ",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{ld :-|d :d ls, :L, |s, :-ls, :-|d :r 
lm :r |d :-} 

1. EFIOR’ ukorowo, 
Ke uyo idara, 
Nam ekondo efiök, 
Tutu k’ utit isöñ; 
Isua idara emedi, 
Isua idara emedi, 
Anam idiök fiak nyöñ 
ufök. 

2. Jesus, Akwa Oku, 
Önö usio isop, 
Akpamba nyen’ emem, 
Atua eyet dara; 
Isua idara emedi, 
Isua idara emedi 
Anam idiök fiak nyöñ 
ufök. 

3. Etor’ Eyen Eröñ, 
Andifak ke idiök 
Ufak k’ iyip Esie, 
Suan k’ofri ekondo, 
Isua idara emedi, 
Isua idara emedi, 
Anam idiök fiak nyöñ 
ufök.

 Amen. 
      """
    },
    {
      "id": 259,
      "title": "CHRIST ESET ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{|s, .m :r .d ld .t, :t, |s, .f :m .r 
lr .d :d} 

1. MKPÖSÖÑ mboneköñ 
esio mkpo idara, 
Nö eti mbuk aka, Christ 
eset! 
Akpa önö fi y’ ami, 
omobiom m’ idiökñkpö nyin, 
Od’ uwem, nyin iböhö, 
Christ eset! 

Körös: :\$: 
SA: Kubet tutu eyo aka, 
T: Ku-bet 
B: Kubet, kubet 
All: Tutu ke usöñ 
SA: Dahada nyuñ kwö nö Jesus, 
T: Kwö, kwö 
B: Kwö nö Jesus 
All: Ke kpukpru ebiet, 
Emen uyo idara, 
Osim k’ enyöñ ye k’ isöñ, 
Yak eti ‘mbuk asuana, 
Christ eset! DS. pp 

2. Uyo ‘nditö efere, eke 
‘mkparawa enem. 
Kwö kpukpru k’obot 
y’ inyañ, Christ eset! 
Önö m’idut uñwana, man 
mö ekpekpöñ idiök, 
Edu uwem ke Jesus, Christ 
eset! 

3. Christ eset, eti mbuk! 
Edidem y’ Öböñ mböñ, 
Sin ofut k’ efök, men cross, 
Christ eset! 
Enye ’biat mkpököbi, 
ömöduök öföñ mkpa, 
Akan ‘mkpa önö kpukpru, 
Christ eset! 

Amen. 

      """
    },
    {
      "id": 260,
      "title": "ÖBÖÑ, TIÑ! ",
      // "audio":"",
      "body": """
      KEY G 2/2

{|d:r |m .d :f .m |m :r |d .f :m .r 
|d :t, |d :-} 

1. ÖBÖÑ, tiñ! Owo Fo 
’yekop, 
K’ mbet ikö mfön Fo; 
Moyom uyo Fo enemde, 
Öböñ, yak ñkop kemi! 
Ke mkpañ utöñ, Öböñ, 
Etiñ nso ye ami? 

2. Kot enyiñ mi, Andinyaña! 
Nam mfiök etiñ y’ ami; 
Tiñ man otim añwaña mi, 
Man ñkpösöñö nda 
Ye Andikpeme eröñ, 
Ke mfut akwa itiat. 

3. Öböñ tiñ! ekpedi suñ suñ 
Kuyak n-nyöñ, ñkopke, 
Öböñ, tiñ koro ömöfiök 
Kpukpru udöñ esit mi! 
Ömöfiök unana mi; 
Tiñ! nyuñ diöñ mi ke akpan 

4. Öböñ, tiñ man mbeñ’ idem, 
Ke ñkopde uyo Fo, 
Man ñkposuk ibuot eti 
Nditiene kpukpr’ ikö; 
Öböñ ke ñkpañ utöñ; 
Öböñ, tiñ, O tiñ nö mi! 

Amen. 

      """
    },
    {
      "id": 261,
      "title": "“YAK UÑWANA ODU!” ",
      // "audio":"",
      "body": """
      KEY G 3/4

{|s :m :d |r :-:t, |d :-:-ld:r :m |f 
:-:m lr :-:-} 

1. K’UYO Fo, O Öböñ 
Ekim ebe efep, 
Eköñ odop, 
Kop akam nyin mbök, 
K’ ebiet emi gospel 
Minöhö uñwana, 
Nö uñwana. 

2. Afo ekedide, 
Ke mba erifak, 
Ökök me ’nan, 
Ökök mbuñesit, 
Atat owo enyin, 
K’otu kpukpru owo, 
Nö uñwana. 

3. Spirit ima y’ uwem, 
Akpanikö y’ emem, 
Sukhöre di, 
Saña ke enyöñ möñ, 
Ke akwa mfön Fo, 
K’ ekim ererimbot, 
Nö uñwana. 

4. Ete, Eyen, Spirit, 
Utibe Abasi, 
Okpon k’ ifiök, 
Nte akpa inyañ, 
Akara ke uyai, 
Ke ofri ekondo. 
Nö uñwana. 

Amen. 
      """
    },
    {
      "id": 262,
      "title": "UWEN DO KE ERISE",
      // "audio":"",
      "body": """
      KEY G 3/4

{:d .r |m :m .m lm :f.,m |m .r :d .r 
lm :m .f|s :s .,L ls .m :d.m |r: -l -} 

1. UWEM do k’ ndise Enye 
’mi ’keköñde, 
Uwem odu kemi önö fi, 
Se ‘ndien, anamidiök, 
s’Enye du uwem, 
Se Enye ekeköñde k’ eto. 

Körös: 
Se! Nyuñ! Du uwem, 
Uwem do k’ ndise Enye 
’mi ’keköñde 
Uwem odu kemi önö fi. 

2. Nsinam Enye ’dude 
ndibiom idiök, 
Ke Jesus mibiomke 
m’idiök fo? 
‘Nsinam iyip öwöröd’ 
Enye k’ ñkañ, 
K’Enye mikosioho isön fo? 

3. Idighe utua eyet m’ eriböñ 
akam 
Ed’ iyip osio isop ukpöñ 
Yak nö Enye emi 
ököduökd’ iyip, 
Kpukpru mbiomo 
idiökñkpö fo. 


4. Kuyik, Öböñ amadara eridi fo, 
Ñkpö iduh’ aba ndinam; 
Ini emi Enye ’kedide 
k’ isöñ, 
Amanam kpukpru utom 
ama. 

5. Bö ke idaresit to Jesus 
Öböñ nyin -
Uwem ‘nsi ‘nsi Enye önöde, 
K’ otimde öfiök ke 
udukpah’ aba, 
Christ edinen ido fo odu. 

Amen. 
      """
    },
    {
      "id": 263,
      "title": "IBEREDEM EDI! ",
      // "audio":"",
      "body": """
      KEY C 3/4 

{:s |s :-.L :s .m |s :-:d' |d':-.r' 
:d' .L |d' : -} 

1. O SUAN eti mbuk k’ ebiet 
ekededi, 
Kini ukut y’ ubiak enamd’ 
owo eti; 
Yak kpukpr’ iköt Öböñ 
edian uyo ekwö 
Iberedem edi. 

Körös: 
Iberedem edi, iberedem edi 
Spirit akpanikö, Ete 
’köñwöñöde; 
O suan eti mbuk k’ ebiet 
ekededi, 
Iberedem edi. 

2. Okoneyo ebe, usiere emedi, 
Kpukpru utom ekim ye 
eyet emetre; 
Nte k’enyöñ obot ekutde 
usiere 
Iberedem edi! 

3. Edidem ndidem ke mba 
erikök, 
Önö mbuot eköñ öyöhö 
erifak; 
Eto k’ ñkpököbi, ekwö ke 
erikan 
Iberedem edi! 

4. O utibe Ima, didie ke 
ndinam 
Man mö efen efiök akwa 
mfön Öböñ; 
Nduñ y’Enye k’enyöñ, 
mbiet Enye k’uyai 
Iberedem edi! 

5. Emen uyo ekwö man osim 
ke enyöñ, 
Mbon ima k’ enyöñ edian 
uyo ekwö 
Utib’ ima Öböñ k’nsi nsi 
ikwö, 
Iberedem edi! 

Amen. 
      """
    },
    {
      "id": 264,
      "title": "BIBLE, ÑWED KPUKPRU OWO ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s, |d :d ld .,s, :m, .,f, |s, :-l-:s, 
|L, :L, lr .,d :t, .,d|r :-l-} 

1. BIBLE, ñwed kpukpru owo, 
Yak enye ada nyin usuñ 
Ofri ikpa ñwed esie, 
Eyenö edidiöñ k’ mfön. 

Körös: 
Ikö Öböñ… döñ uñwana… 
Ke ofri isöñ ye inyañ 
(ye ke inyañ) 
Tutu mendiyo ke ekim 
Etiene Fi esim k’ enyöñ. 


2. Ke ebiet enye osimde, 
Ayayama nte utin, 
Onyuñ ebin ekim efep, 
Abiat utom idiök ñkpö. 

3. Owut m’ owo iso Ete, 
Ye ima erifen Esie, 
Ubon Adam ekesopde 
Önö mböm oto k’ enyöñ. 

4. Önö m’ akpa mba emem; 
Ödöñ m’ atua eyet esit; 
Önö mendikpöt ukeme 
Y’ idorenyin nsi nsi. 

Amen. 

      """
    },
    {
      "id": 265,
      "title": "IMÖKÖM FI KE BIBLE ",
      // "audio":"",
      "body": """
      KEY G 3/2

{|m :re :m |f : -:m |r :d :r |m :-:d 
|d :t, :L, |s, :-:d |d :t, :d |r :-:-} 

1. IMÖKÖM Fi k’ ikö Fo, O 
Öböñ! 
Nam nyin mi ikut uyai 
esie; 
Nö mfön nditim ñkpep 
enye, 
Nam esit nyin edi Okuo. 

Körös: 
Imököm Fi ke Bible 
önöde, 
Ömönö erifen ye emem, 
Ñwam nyin Öböñ itien’ 
item esie, 
K’ nsukidem ibö enye. 

2. Imököm Fi k’item 
y’uñwöñö Fo 
Utuenikañ y’ uñwana usuñ, 
Owut nyin idara nsi nsi 
Öyöhöde k’ ebekpo Fo. 

3. Öfön ye mendinim item esie, 
Mö eyeduñ y’Afo k’nsinsi, 
Edu ke mben akpa-möñ uwem, 
Edia mfri eto uwem. 

Amen. 
      """
    },
    {
      "id": 266,
      "title": "MBARA EDIDIÖÑ EYEDU ",
      // "audio":"",
      "body": """
      KEY Bb 6/8

{|s, :s, :s, ls, :L, :t, |d :-:-ls, :-:|
t, :t, :t, lt :d :r |d :-:-} 

1. “EDIM edidiöñ eyedu,” 
Edi uñwöñö ima; 
Ini nsekhe eyedu, 
Emi Öböñ önöde. 

Körös: 
S: Edim edidiöñ; 
ATB: Edim, edim edidiöñ 
Edim edidiöñ k’ iyom, 
Mböm edep öduöhö nyin, 
Ibeñe mbara Fo. 

2. “Edim edidiöñ eyedu,” 
Akwa eridemere; 
K’ obot ye ke itikhere, 
Uyom akamba edim. 

3. “Edim edidiöñ eyedu,” 
Döñ mö nö nyin O Öböñ, 
Nam nyin idemere kemi, 
Di, nyuñ kpono ikö Fo. 

4. “Edim edidiöñ eyedu,” 
Nam enye edep mfin, 
K’ ikpe Fi ubök, Abasi, 
Imokot Jesus kemi! 

Amen. 
      """
    },
    {
      "id": 267,
      "title": "ABASI ODU MI! NDIDIÖÑ NYIN ",
      // "audio":"",
      "body": """
      KEY Ab 3/4

{:s, .s, |L, :-.s, :s, .d |d :t, :t, .d |r 
:-.r :d .r |m :-:-} 

1. ABASI mi! ndidiöñ nyin 
K’ odudu Spirit Esie, 
Se nte enyöñ ebetde 
Ndinö mbar’ esie. 

Körös: 
Yak edi, Öböñ ibeñe, 
Yak edim ukpöñ edi 
Nyin k’ ibebet, nyin 
k’ ibebet 
Demere kpukpru esit. 

2. Abasi mi ke otu nyin 
K’ edisan’ ebiet emi, 
Nyin iyom eridemere, 
Ke akwa mfön Esie. 

3. Abasi mi! kam buötidem 
Yak kpukpru nyin ibeñe, 
Ima Esie k’otu nyin mi, 
Edemere esit nyin. 

4. Öböñ yere akam emi, 
Kpa akam mbuötidem, 
To ke ebekpo mböm Fo, 
Di diöñ kpukpru nyin kemi. 

Amen. 

      """
    },
    {
      "id": 268,
      "title": "DIÖÑ UTOM FO, ÖBÖÑ!",
      // "audio":"",
      "body": """
      KEY G 4/4

{: d .r |m : r .d lL, :s, |d :-l -:d lr :r 
lr :m |r :-l-} 

1. DIÖÑ utom Fo, Öböñ! 
Nyuñ kpere iköt Fo, 
Nyuñ tiñ ikö Fo k’odudu, 
Man nyin ikop kpukpru. 

Körös: 
Diöñ utom Fo, Öböñ! 
(Öböñ) 
Ibeñ’ eti eti (eti), 
Sukhöre di ke mfön Fo 
Di diöñ iköt Fo mi. 

2. Diöñ utom Fo, Öböñ! 
Nam nyin ikpono Fi! 
Man ima Fo k’ esit 
kpukpru 
Ösöñ eti eti. 


3. Diöñ utom Fo, Öböñ! 
Diöñ ikö Fo nö nyin, 
Yak eti erikpep Esie 
Anam ibuötidem. 

4. Diöñ utom Fo, Öböñ! 
Yak Spirit Fo edi, 
Yak uböñ edi Okuomö 
Man ibö edidiöñ. 

Amen. 
      """
    },
    {
      "id": 269,
      "title": "INYENE NDIBUK MBUK ORO ",
      // "audio":"",
      "body": """
      KEY G 4/4

{:m .,f |m :r lL, :t,|L, :s, l-:d .,r |m 
:s lr :s |s :-l-} 

1. ATA eti mbuk gospel 
Etiñ ima ’nö kpukpru! 
Nte Andinyaña k’ mböm; 
Akpa, osio nyin k’ iduö, 
Edi, oyom se isopde, 
Esin k’ otu Esiemö; 
Yak isin ifik ifiori, 
Nyin inyene ndibuk. 

Körös: 
Inyene ndibuk (‘ndibuk) 
Inyene ndibuk 
Jesus ’kakpa ’nö mendisop 
Inyene ndibuk. 

2. O, mbuk idara gospel, 
K’usukhör’ eman’ Esie, 
Ye eköm eke me enjel, 
Ekwöd’ enö ‘mbon ima, 
Ke cross Enye okut ukut, 
‘Nte me prophet ekutde; 
Ke mkpa y’ eriset Esie 
Yak ibuk mbuk oro. 

3. O, utibe mbuk gospel, 
Ikö Esie ’nö uwem; 
Ndöñesit y’ idorenyin 
Oto ke nti ikö, 
Yak ibuk inö m’akpa 
‘mba, 
Man ekut uyai Esie; 
Enye ’da nyin usuñ heven, 
Nyin inyene ndibuk. 

Amen 
      """
    },
    {
      "id": 270,
      "title": "UTIBE IKÖ UWEM ",
      // "audio":"",
      "body": """
      KEY G 6/8 

{|m :-:m lm :f:m |m :-:r lr :-:|
s, :r :r lm : -r |d : -:-ls, : -:-} 

1. KWÖ me ikwö oro nö mi, 
Utib’ ikö uwem! 
Yak mi ñkut uyai esie, 
Utib’ ikö uwem! 
Ikö uwem y’ uyai, 
Kpep ‘mbuötidem y’utom! 

Körös: 
Nti ikö! Utib’ ikö. 
Utib’ ikö uwem! 
Nti ikö! Utib’ ikö! 
Utib’ ikö uwem. 

2. Christ ömönö kpukpru 
owo, 
Utib’ ikö uwem! 
Anamidiök tim kpañ utöñ, 
Utib’ ikö uwem! 
Enö kpukpru k’mfön, 
Owut usuñ heven! 

3. Suan etop gospel k’idara 
Utib’ ikö uwem! 
Önö erifen ye emem! 
Utib’ ikö uwem! 
Jesus Andinyaña, 
Nam nyin mi isana. 

Amen. 
      """
    },
    {
      "id": 271,
      "title": "“KE AKPANIKÖ” ",
      // "audio":"",
      "body": """
      KEY G 4/4

{ld:d.,r ld.t,:L,.s,|d:r lm:-|r:r 
.,m lr.d:t,.d|r:mlf:-} 

1. O, ANDINYAÑA akakpa ’nö mi! 
Osio mi k’ubiomikpe man ‘mböhö 
“Andinim Eyen ke akpanikö” 
Enyen’ uwem ‘nsinsi. 

Körös: 
“Ke akpan, ke akpan, ndöhö ‘mbufo” 
“Ke akpan, ke akpan, obufa mbuk” 
Möfiök “Andibuötidem ye Eyen” 
“Enyen’ uwem ‘nsinsi.” 

2. M’ukwañkpö mi edor’ 
Enye k’ idem 
Kpukpru m’isön mi Enye ekekpe 
Öböñ ödöhö mendibuötidem 
Enyen’ uwem ‘nsinsi. 

3. Ke unana ‘nyebuötidem y’Öböñ 
K’memidem, monim ikö Esie 
Eti mbuk: Nditö-Abasi 
“Enyen’ uwem ‘nsinsi.” 

4. Okposuk mendotkedot, nyikke, 
Anditiene, Enye idibinke 
“Andibuötidem” kop eti mbuk: 
“Enyen’ uwem ‘nsinsi.” 

Amen. 
      """
    },
    {
      "id": 272,
      "title": "ENYENE NDIMANA OBUFA",
      // "audio":"",
      "body": """
      KEY Eb 6/8

{:d |m :m :m lm :f :s |L :s :fels : :
s .s |s :f :m lr :m :f |f :m :re lm :-} 

1. ANDIKARA ’yom Jesus 
k’ okoneyo, 
Obup usuñ erinyaña ye 
uñwana 
Andikpep k’ibörö ödöhö ete, 
“Emana obufa” (’bufa) 

Körös: 
“Emana obufa” (’bufa), 
“Emana obufa” (’bufa), 
K’ akpan ke Ami ndöhö fi nte, 
“Emana obufa” (’bufa). 

2. Mbufo ‘nditö owo ekpañ 
utöñ 
Ekop ikö emi Jesus 
ödöhöde: 
Kuyak ikö emi öwör’ 
ikpikpu: 
“Emana obufa!” (’bufa). 

3. Mbufo emi edidukde 
k’ uböñ, 
Ekwö itoro ye mö emi 
efakde; 
Edieke ’diböde nsinsi 
uwem, 
“Emana öbufa!” (’bufa). 

4. Ödöñ fi ‘ndikut ufan fo ke 
heven 
K’ ebetde fi ke ediye inuaotop, 
Kpañ utöñ k’eti item 
uwem emi 
“Emana obufa!” (’bufa). 

Amen. 
      """
    },
    {
      "id": 273,
      "title": "CHRIST ÖBÖ ME IDIÖK OWO ",
      // "audio":"",
      "body": """
      
KEY D 3/4

{:m .,f |s :-.L :m .,L |s :-:s .,d' 
|t :-.L :s .,f |m :-} 

1. CHRIST öbö m’idiök owo; 
Suan ikö mfön emi 
Nö mö ekpöñde usuñ, 
Ye kpukpru m’akpa mba. 

Körös: 
SA: Kwö enye… fiak kwö enye 
TB: Kwö, fiak kwö enye, 
kwö, fiak kwö enye 
S:Christ öbö… m’ idiök owo, 
ATB: Christ öbö m’idiök owo, 
Christ öbö m’idiök owo 
SA: Nam ekop… etop emi… 
TB: Suan etop emi, suan 
etop emi 
All: Christ öbö m’idiök owo, 

2. Di, eyenö fi emem, 
Buötidem k’ikö Esie, 
Eyebö menamidiök, 
Christ öbö m’idiök owo. 

3. Esit mi ibiomke mi, 
Koro masana k’ibet; 
Andiyet mi ke idiök, 
Öyöhö kpukpru ibet! 

4. Christ öbö m’idiök-owo, 
Öbö mi ye m’idiök ’mi; 
Eyet mi kpukpru ndek, 
Moduk heven ye Enye. 

Amen. 
      """
    },
    {
      "id": 274,
      "title": "“SE NYUÑ DU UWEM!”",
      // "audio":"",
      "body": """
      KEY G 4/4

{:s, .s, |d .d :d.,d |t, :L, .s, |s :-|f 
:r |d .d :d .,d |t, :r |d:-|-} 

1. MENYEN’ etop ‘nto 
Öböñ, alleluia, 
Etop emi enyene fi, 
Emewet k’ ikö Esie, 
alleluia, 
Ewet ete “Se nyuñ du uwem.” 

Körös 
Se d’uwem, eyen ete,(se d’uwem) 
Se Jesus kemi d’uwem; 
Emewet k’ ikö Esie, alleluia, 
Ewet ete, “Se nyuñ du uwem.” 

2. Menyene etop ima, 
alleluia, 
Emi edöñde enö fi, 
Etop otode k’enyöñ, 
alleluia 
Jesus ödöhö, ami monim. 

3. Uwem k’ enim enö fi, 
alleluia 
Ukpöñ fo eyenyen’ uwem 
K’esede Enye ikpöñ, 
alleluia 
Edi Jesus ikpöñ anyaña. 

Amen. 
      """
    },
    {
      "id": 275,
      "title": "IH, KPA MI! ",
      // "audio":"",
      "body": """
      KEY G 6/4

{|m : -:fls :-:d |f :-:m lm :-:r |r 
:-:m lf:-:r |d :-:t, |d :-:-} 

1. ÖBÖÑ, mokop eridiöñ Fo 
Asuande önö kpukpru, 
Anam nsat isöñ emem; 
Nam enye öduöhö mi, 
Ih, kpa mi, ih, kpa mi! 
Nam enye öduöhö mi. 

2. Kube mi, O eti Ete, 
Okposuk ‘nte ndiökde 
Omodot ‘ndibin mi, edi 
Yak mböm Fo ’doro mi 
Ih, kpa mi, ih, kpa mi! 
Yak mböm Fo ’doro mi. 

3. Kube mi, O! Andinyaña, 
Yak mi ’ma nyuñ ‘ndiana Fi: 
Ami nyoyom mfön Fo, 
Ke okotde, O kot mi -
Ih, kpa mi, ih, kpa mi! 
Ke okotde, O kot mi! 

4. Kube mi, O! eti Spirit! 
Anam ‘nnan okut usuñ 
Mokut eti utom Jesus, 
Tiñ nö mi ke odudu, 
Ih, kpa mi, ih, kpa mi! 
Tiñ nö mi ke odudu! 

5. Ima Öböñ edi ukem; 
Iyip Christ ekem kpukpru; 
Mfön Öböñ okpon eti; 
Nam mö edoro kpa mi, 
Ih, kpa mi, ih, kpa mi! 
Nam mö edoro kpa mi! 

6. Kube mi! yom ke nsopde 
Nam nyire Fi Öböñ; 
Ke ’möñ uwem asiakhade, 
Diöñ mö eken, nyuñ diöñ mi -
Ih, kpa mi, ih, kpa mi! 
Diöñ mö eken nyuñ diöñ mi! 

Amen. 
      """
    },
    {
      "id": 276,
      "title": "UWAK IFIÖK KABAÑA JESUS ",
      // "audio":"",
      "body": """
      KEY Ab 6/8 

{|s, :-.s, :s, ls, :-:L, |d :-:d ld :-:|
r:-.r:r lr:-:f|m:-:mlm:-:-} 

1. UWAK ifiök ’baña Jesus, 
Uwak mfön Esie y’ owo, 
Uwak k’ erinyaña Esie, 
Uwak ima, akpa ’nö mi. 

Körös: 
Uwak ’baña Jesus, 
Uwak ’baña Jesus, 
Uwak k’ erinyaña Esie, 
Uwak ima, akpa ’nö mi. 

2. Uwak ukpep ’baña Jesus, 
Y’ edisana uduak Esie, 
Spirit Öböñ Anditeme, 
Owut mi ndibe-ñkpö 
Christ. 

3. Uwak ’baña Jesus k’ ikö, 
Anam mbuana y’ Öböñ mi, 
Ke ñkopde uyo Esie, 
Mada ikö Esie k’okim. 

4. Uwak ke ebekpo Jesus, 
Uwak k’ uböñ edi Esie, 
Ukara Esie eyekpon, 
Enye k’edi, Öböñ Emem. 

Amen. 

      """
    },
    {
      "id": 277,
      "title": "DUÑÖRE MI, O ABASI! ",
      // "audio":"",
      "body": """
      KEY F 3/4 

{:m|m.r :r :f|f.m:m:s|s:-.m 
:d .m |r : -} 

1. DUÑÖRE mi, O Abasi! 
Nam uwem mi öfön, 
Nte enyin Fo esede, 
Nam mfiök usuñ mi. 

2. Duñöre esit mi nyuñ se, 
Afo ikpöñ öfiök, 
Nyuñ yarare s’idibede, 
Wut mi ofri ofri. 

3. Döñ uñwana k’ esit ekim 
M’udöñ eyöhöde, 
Demere esit mi öfiök 
Ndek idiök ñkpö. 

4. Duñöre me ekikere 
Ye udöñ esit mi; 
M’ ebiet ndedekhe ñkpö 
Ekarad’ ukpöñ mi. 

5. Duñöre man uñwana Fo 
Akara ke kpukpru, 
Man ke mfön Fo k’akpatre, 
Mkpöduö k’ iso Fo. 

6. Do nyetim mkpebe Fi 
Sia mfiökde k’ ubak, 
Nt’ ima Abasi ke Christ, 
Akande nditiñ.

 Amen. 
      """
    },
    {
      "id": 278,
      "title": "YAK ISAÑA KE UÑWANA ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:s, |d :m lr :f |m :L ls :d |m :m lf 
:m |r :-l -} 

1. ETI uñwana omodu 
Otode Abasi; 
Ndien ke iso Christ Öböñ 
Ikut ima Ete. 

Körös: 
Yak nyin mi… isaña… 
Isaña k’ uñwana Öböñ; 
Yak nyin mi… isaña… 
Isaña k’ uñwana Öböñ. 

2. Ata uñwana omodu, 
Ke usuñ isañ nyin; 
Emi ayamade eti, 
Tutu ke usiere. 

3. Edisana uñwan’ odu, 
Ke ikutde kemi; 
Eti inua otop Jasper 
Y’ ediye efak gold.
 
4. O Edisana uñwana, 
Enöde ke mfön; 
Yama O uñwana uwem, 
Da nyin sim ke heven. 

Amen. 
      """
    },
    {
      "id": 279,
      "title": " BIOM MME EBEK DI ",
      // "audio":"",
      "body": """
     
KEY C 4/4

{|s .s :s .,L ls :m |d' .d' :d' .,r' ld' :L 
|s .s :s .,L ls :m |m .m :r .de |r :-} 

1. SUAN ke usenubök, 
mkpasip eti-ido, 
Suan ke uwemeyo, ye 
k’ mbubreyo; 
Ke ebetde idök ye ini 
ukpeñe, 
Iyedi k’ idara, ibiom me 
ebek! 

Körös: 
Ibiom me ebek, ibiom me 
ebek, 
Iyedi k’ idara, ibiom me 
ebek; 
Ibiom me ebek, ibiom me 
ebek, 
Iyedi k’ idara, ibiom me 
ebek! 

2. Suan ke ini utin, suan ke 
ini mfut, 
Kufegh’ idiök enyöñ me 
ofim edim; 
K’ akpatre, idök ye utom 
nyin eyetre, 
Iyedi k’ idara, ibiom me 
ebek! 

3. Ka, suan ke möñ-eyet, 
ka, nyuñ tö nö Öböñ, 
Se itakde nyin, anam nyin 
ifukhö; 
K’ eyet nyin etrede, Enye 
’yedara nyin, 
Iyedi k’ idara, ibiom me 
ebek! 

Amen.  
      """
    },
    {
      "id": 280,
      "title": " SUAN MKPASIP FO KE USENUBÖK ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{:m |f :L ls :f|m :-l-:m' 
|r':d'ld' :t |d' : -l-} 

1. SUAN ke usen ubök 
Kutre k’ mbubreyo; 
Kunyene eyikhe y’ ndik, 
Suan ke ofri isöñ. 

2. Afo udufiökke 
Ek’ ediköride; 
Mfön anam odu uwem, 
Edide mi me ko. 

3. Edi mö eyewut 
Uyai ye odudu, 
Ke mö eköride enyuñ 
Esioñode mfri. 

4. Unamke k’ikpikpu; 
Tuep, ufiop ye edim 
Eyenam mkpasip ösöñ 
Önö mbon idök. 

5. K’ uböñ edidide, 
Kpa ke usen Öböñ, 
Me enjel eyesukhöre, 
Ete, idök ekem! 

Amen. 
      """
    },
    {
      "id": 281,
      "title": "MME MKPASIP UÑWÖÑÖ",
      // "audio":"",
      "body": """
      KEY Ab 9/8 

{ls, :-:-|s, :L, :t, ld :-:-lr :-:-|m 
:-:d lL, :-:-lr :-:-|d: -:t, lL, :-:|
t, :-:-|d :--|t, :-:-} 

1. O SUAN ‘mkpasip 
k’utom ima 
K’ ata eti isöñ; 
Se ötöde eyeköri, 
Onyuñ oñwum eti. 

Körös: 12/8
K’ usen k’ usen… ke usuñ fo… 
Suan eti mkpasip (suan eti 
mkpasip) 
Eyetañ mö… k’ obot y’ usuk… 
Esim iduñ k’ utit. 
(esim iduñ k’utit) 


2. Ke ötöde ke möñ-eyet, 
Mfri eyeköri, 
K’ utom ösöñde, itakke, 
Öböñ ’yenö mfri. 

3. Ini idök Öböñ k’edi; 
K’ utom okurede, 
Eyetañ m’ebek fo kpukpru 
Ebon k’idara do.

 Amen. 
      """
    },
    {
      "id": 282,
      "title": "NDIYOM MME ANDISOP ",
      // "audio":"",
      "body": """
      KEY Bb 9/8  

{|s, :fe, :s, |d :-:-ld :-:-lm :r :d |L, 
:-:-lL, :-:-|d :t, :L, |s, :-:-ls, :-:|
d :r :m |r :-:-|-} 

1. YOM me andisop emi eyode 
K’ enyöñ obot k’nditeme mö; 
“Etiene Mi,” edi ikö emi 
Andinyaña etiñde mfin. 

Körös: 
Ka ke m’ebiet… ye k’ikpö 
obot… 
Kot mendiyo… efiak edi… 
(’fiak edi) 
Eduk ke o…tu Andifak 
nyin… 
Jesus emi… ekewotde 
(ekewotde) 

2. Yom me andisop, nam ekut 
Jesus, 
M’ukpöñ ememde, ekopd’ ubiak, 
Da mö di ke usuñ erinyaña, 
Wut mö usuñ nsinsi uwem. 

3. Ntre k’ika iso k’ utom 
mböm, 
Ke itiene Christ k’ usen 
k’ usen, 
Inam mekpa ‘mba ye 
mbon iduö 
Ekut ke Jesus edi usuñ. 

Amen. 
      """
    },
    {
      "id": 283,
      "title": "EBIET ODU ÖNÖ KPUKPRU",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, :d .,r lm :f |m :-lr 
:|s, :t, .,d lr :m |d :-l-: } 

1. NYAÑA ukpöñ etakde, 
Yom me mö eyode; 
Ke ime nam mö eduk, 
Ke mkpafakh’ usuñ; 
Nam mö efiök ebaña, 
Ikot Andinyaña; 
Sian mö, udia emebiet 
Döhö, ebiet odu. 

Körös 
SA: E – biet do, 
TB: Ebiet do, ebiet odu, 
SA: E – biet do 
TB: Ebiet do, ebiet odu, 
All: Sian mö, udia emebiet 
Döhö, ebiet odu. 

2. Sio k’ata itie ukut, 
Sio ke ekim ukpöñ, 
Sin ke ata uñwana, 
K’ öyöhö ifure; 
Nam mö etiene Jesus-
Ti mö ikot oro; 
Sian mö, udia emebiet 
Döhö, ebiet odu. 

3. Ka k’ ata inemesit, 
Ka, ke enyiñ Öböñ; 
Erinyaña ye uwem, 
Tiñ nö ererimbot; 
Ka k’ini uwemeyo-
Ke eyo mikutke; 
Sian mö, udia emebiet 
Döhö, ebiet odu. 

Amen. 
      """
    },
    {
      "id": 284,
      "title": "KE EDEM OBOT OKIMDE ",
      // "audio":"",
      "body": """
      KEY C 4/4

{|s:m |d' :s lm' :-.r'|d' :s lL :L|s 
:d' ls :f |m :-} 

1. K’EDEM obot ekim okpon, 
Ukpöñ mi, wuk enyin se, 
Kpukpru m’uñwöñö emesu, 
Usen mfön emedi; 
O jubilee, O jubilee, 
Yak usiere Fo edi. 

2. Yak mfia y’ mbubit owo 
Ye mbon ekim efiök 
Ete k’erikan Fo oro 
Okoto ke Calvary, 
Yak ekwörö, yak ekwörö 
Eti ‘mbuk ke kpukpr’ ebiet. 

3. M’idut k’ekim ewak eti, 
Öböñ nö mö uñwana, 
K’ usiakha ye k’ usop utin 
Yak usier’ ebin ekim 
Man ufak Fo, man ufak Fo 
Osim kpukpru ke mfön.
 
4. Yak usen oro ekpere 
Ekim edifeghede 
Man ke erikwörö Gospel, 
Esuan eti enyiñ Fo 
K’ofri isöñ, k’ofri isöñ 
K’ akwa obio Immanuel. 

5. Afo eti mbuk, suana, 
Kan, nyuñ kara, kudodop, 
Man nsi nsi uböñ fo, 
Ökpötöt onyuñ awak, 
K’ odudu Fo, k’ odudu Fo, 
Öböñ, k’ ofri ekondo. 

6. Kpukpru ‘ñkpö eke ebotde, 
K’ eti ikwö, etoro 
Ete, Eyen y’ Eti Spirit: 
Akwa Abasi mfön, 
Hallelujah, hallelujah! 
Ekondo etor’ Enye. 

Amen. 

      """
    },
    {
      "id": 285,
      "title": "TIÑ NÖ OFRI EKONDO ",
      // "audio":"",
      "body": """
      KEY Db 4/4

{:s .,L |s :m ls :d' |d' :t l -:t .,d' 
|r' :t lL :t |s :-l-} 

1. TIÑ Jesus k’ofri ekondo, 
Buk enye kpukpru ebiet, 
Tiñ enye nö menamidiök, 
Yak uñwan’ Esie ’yama. 

Körös: 
Tiñ nö o…fri ekondo; 
Buk Enye… kpukpru 
ebiet; 
Tiñ Jesus k’ofri ekondo, 
Tor’ Enye k’nsi nsi. 

2. Nam etop gospel asuana, 
Man uñwana asiakha, 
Osim ofri ebiet k’isöñ 
Ye k’ekim okoneyo. 

3. Iyesuan mbuk idara, 
Ke obot ye ke inyañ; 
Tiñ Jesus nö kpukpru ebiet 
Y’ odudu uñwam Esie. 

4. K’ itide mö efen k’ akam, 
Inö mö ubök uñwam; 
Eyak nyin ikufre utom 
Jesus k’isöñ obio nyin. 

Amen. 

      """
    },
    {
      "id": 286,
      "title": "NDISUAN ETI MKPASIP ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|m, s, s, :s, .,L, ls, :L, .,t, |d .,r 
:d .,L, ls, :d |t, .r .r :r .,m lr :s, .,t, 
|L, :L, |s,:-} 

1. SUAN eti mkpasip k’ ata 
eti usenubök, 
Suan eti mkpasip ke uwemeyo, 
Suan eti mkpasip, nam esit 
nditö eye, 
Suan eti mkpasip, suan mö 
ke ime. 

Körös: 
Suan eti mkpasip (iye) 
suan eti mkpasip, 
Suan aka ediwak, suan 
k’ ima ye ime; 
Buñ kpa uyo uwem, buk 
kpa eti mbuk gospel, 
Suan eti mkpasip, k’ obio 
ima nyin. 

2. Suan eti mkpasip k’ ata 
ini uwemeyo, 
Suan eti mkpasip ke 
mbubreyo; 
Suan eti mkpasip, kuyik, 
kunyuñ unö ntak, 
Yak kpukpru nö Öböñ, 
buötidem y’ Enye. 

3. Suan eti mkpasip ke ata 
erisin ifik, 
Suan eti mkpasip eke 
’bietde gold; 
Suan eti mkpasip, kunyuñ 
ufam ubök baba, 
Beñe Öböñ önö, utin ye 
edim. 

Amen. 

      """
    },
    {
      "id": 287,
      "title": "“DÖÑ UÑWANA!” ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:s, .,s, |d :d ld .,s, :d .,r |m :m lm 
:f .,m |r :-l-:m .,r |d :-l-} 

1. IMOKOP ikot mö ek’ etakde ko, 
Döñ ikö … Abasi… 
M’ukpöñ ndiñwam, 
m’ukpöñ ndinyaña, 
Döñ ikö… Abasi… 

Körös: 
S: Döñ ikö … ikö eti mbuk, 
ATB: O döñ ikö, ikö eti mbuk 
All: Ayama k’ ebiet k’ ebiet, 
S: Döñ ikö… ikö eti mbuk, 
ATB: O döñ ikö, ikö eti mbuk 
All: Ayama k’ nsi nsi. 

2. Imokop ikot Macedonia mfin, 
Döñ ikö… Abasi… 
Ida m’enö nyin inim ke 
idak cross, 
Döñ ikö… Abasi… 

3. Yak mfön Öböñ Jesus osim 
kpukpru, 
Döñ ikö… Abasi… 
Man inyene Spirit Christ 
kpukpru ebiet, 
Döñ ikö… Abasi… 

4. Ikukpa mba k’ utom ima emi, 
Döñ ikö… Abasi… 
K’itañde jewel, iyebö 
anyanya 
Döñ ikö… Abasi… 

Amen. 

      """
    },
    {
      "id": 288,
      "title": "“EKA KE OFRI EKONDO”",
      // "audio":"",
      "body": """
      KEY A 4/4 

{|m :d .,L, ls, :-.m, |s, .L, :t, .d lm 
:r |r :r.,delr:-.r |m.d:d.,L,ls, :-} 

1. K’ANYAN ebiet ediwak 
m’ukpöñ edu, 
Editakde k’ekim k’nsi nsi, 
Anie ’dibuk erinyaña önö mö 
Midinyuñ ibatke s’itakd’ 
enye? 

Körös: 
“Enö mi ofri odudu! 
Enö mi ofri odudu! 
Eka k’ofri ekondo, ekwörö 
gospel, 
Sese ndodu y’ mbufo!” 

2. Se usuñ ererimbot ana 
inwañ 
Mbon-eköñ Christ ebumer’ 
eduk, 
Ediana kiet ke ndikwörö 
gospel 
Man ebuñ kpukpru ökpönö 
idiök. 

3. Öböñ k’ okot, nsinam 
ekpañade? 
Enye ke okot ke enyiñ 
Esie, 
Jesus akakpa ndisio nyin 
k’ mkpa. 
Ka, kwörö uwem ye 
erinyaña. 

4. Öböñ nam m’usen edi, 
eke m’idut 
Ekwöde, “Uböñ enyen’ 
Abasi,” 
Mö efakde edara 
k’ erinyaña, 
Ekwö “Hallelujah” enö 
Öböñ. 

Amen. 
      """
    },
    {
      "id": 289,
      "title": "IMAM OTODE JESUS ",
      // "audio":"",
      "body": """
      KEY E 6/8

{:m |m :-:m lm :-:s |s :-:-lm ::
m|r:-r lf:-:f|m:-:-l-:-} 

1. KE iman ekand’ ekuk, 
Nt’ ökpösöñ uruk, 
Okposuk inem uwem 
Ewakde k’ usuñ mi, 
M’ ikö ufan ekpenem 
Ekan ikwö ‘ndido, 
Ikö kiet y’ imam Jesus, 
Öfön akan kpukpru. 

Körös: 
SA: Ö…fön, ih, ö…fön 
TB: Öfön akan, öfön akan 
SA: Öfön akan mö, 
TB: Öfön, Ih, öfön akan mö 
All: Ikö kiet y’ imam Jesus, 
Öfön akan kpukpru. 

2. Itiñ k’ mboho Christian, 
Idar’ ini iso; 
Itim idori enyin, 
K’eti obio Eden, 
M’ inem y’ nti edidiöñ 
Ekpedu k’ uwem nyin, 
Ikö kiet y’ imam Jesus, 
Öfön akan kpukpru. 

3. Ikö kiet y’ imam Jesus, 
Imenyene uwem, 
Uyai heven ikanke 
Inemesit oro; 
Ke edem akpa oko, 
Me spirit ekpekot, 
Ikö kiet y’ imam Jesus 
Öfön akan kpukpru. 

Amen. 
      """
    },
    {
      "id": 290,
      "title": "ENYE OYOM IDIÖK OWO NTE AMI ",
      // "audio":"",
      "body": """
     KEY D 4/2 

{:d .d |m:m .m lf.m :r|m :d l :
m .f |s :s .s lL .s :fe |s :m l-} 

1. MOKOP utibe mbuk mbaña, 
Eyen Ata Edikoñ ke uböñ, 
Oyomde esit mi, okposuk 
ndiökde, 
Oyom idiök owo nt’ ami. 

Körös: 
Oyom idiök owo nt’ ami, 
O edi utibe ima; 
Christ öduök iyip man 
afak mi 
Oyom idiök owo nt’ ami. 

2. K’ ntimde nse Enye do ke 
cross, 
Kini eköñde Enye ke eto, 
Ke öduökde iyip, möfiök 
Christ ama mi, 
Oyom idiök owo nt’ ami. 

3. Oyom m’anamidiök, 
efukhöde, 
Anyan ubök Esie ndibö mö, 
Ndikpöñke aba Andinyaña 
emi, 
Oyom idiök owo nt’ ami. 


4. Enye oyom ndida mi kemi, 
Y’ akwa ima Esie ndifuk mi, 
Oyom mi kpukpr’ ini 
‘ndidu k’iso Esie, 
Oyom idiök owo nt’ ami. 

Amen.  
      """
    },
    {
      "id": 291,
      "title": "CHRIST ODUÑ KE ESIT MI ",
      // "audio":"",
      "body": """
      KEY G 6/4

{:s, |m :-:r ld :-:d ld :t, :L, ls, ::
s, |L, :-:d lf :-:L |s :-:-l-:-} 

1. AMI ‘ñkoyo ñkpöñ Öböñ 
Ñkekwe uñwana; 
Kemi mokut k’ ikö Öböñ, 
Christ oduñ k’esit mi. 

Körös: 
Christ oduñ k’ami… 
Christ oduñ k’ami… 
O akwa erinyaña, 
Christ oduñ k’ esit mi. 

2. Nte ufiop utin k’ enyöñ, 
Öfönde ye me flow’r, 
Uwem, uñwana, ye ima 
Oto Christ k’esit mi. 

3. Nte iköñ y’mfri eto, 
Edude k’ mkpasip, 
Ntre ke Spirit Abasi 
Odu ke esit mi. 

4. Esit mi öyöhö y’ udöñ, 
Ke ndibiet Enye, 
Menyene utibe ifiök, 
Christ oduñ k’esit mi. 

Amen. 

      """
    },
    {
      "id": 292,
      "title": "O GOSPEL IDARA YE UBÖN ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{:s.,s |s :f lt, :L |s :-lm :m .,m 
|m :r ls,:f|m:-l-} 

1. EDI ikö akpanikö, 
Christ akpa k’ibuot owo, 
Nyin imetiñ ofri ini, 
Iyefiak itiñ enye. 

Körös: 
O eti mbuk gospel! 
Nyin ke isuan (k’isuan) 
kemi, 
Erinyana ke mfön, 
Oto k’ enyiñ Jesus. 

2. Ömönö öyöhö ufak, 
Enye okure utom, 
Anam Ete adaresit, 
Öbö nyin oto k’Eyen. 

3. Ke ubök ye k’ibuot Esie, 
Idiöñö unan odu, 
Andifak y’ Andinyaña 
nyin, 
Odu ke uböñ kemi, 

4. Ti ke Öböñ Jesus emi 
Eyefiak edi k’uböñ 
Ye mö ’mi edepde k’iyip, 
Ndikara k’nsinsi. 

Amen. 
      """
    },
    {
      "id": 293,
      "title": "IMAIDUHE NTE IMA JESUS ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:s,|m :mlm:r.m|f:m|r:d|r 
:r .r |r :d |t, :-|-:-} 

1. IMAiduhe‘nteimaJesus, 
Ibiañake baba 
Tutu Enye obok nyin ötö 
kiet 
Ke ememAbasi. 

Körös: 
Ima Christ, ömöfön 
Edisana ima: 
O! andiyo, tiene ima oro, 
Jesus ke okot fi. 

2. Esit iduhe ‘nte eke Jesus 
Öyöhöde y’ima; 
Ekikere esit nyin iduhe 
Ek’Enye mifiökke. 

3. O! eyak nyin ikop uyo 
Jesus 
Man nyin ikudiyo, 
Tutu iduök odudu ye Enye 
K’eti iduñ k’enyöñ. 

Amen. 

      """
    },
    {
      "id": 294,
      "title": "UTIBE ANDIÑYAÑA",
      // "audio":"",
      "body": """
      
KEY Ab 6/4

{:s, |s, : -.s, :s,|L, :s, :m, |s, :d :r 
lm :-:s, |L, :-.t, :d |r :d :L, |s, :-:l-: 
} 

1. ANDINYAÑA edi Jesus 
Öböñ mi, 
Okop eseme ‘mbuñesit, 
K’ mböde uñwöñö ke ikö 
Esie. 
Anyañ’ idiök owo nt’ ami 
(nt’ ami). 

Körös: 
S: Andinyaña, utibe Öböñ 
ATB: Andinyaña ye ata utibe
Öböñ, 
SB: Öböñ ima edi Enye, 
AT: Öböñ ima edi Jesus 
Andinyaña 
All: Oto k’ esit mböm ye ima 
Esie, 
Anyañ’ idiök owo nt’ ami 
(nt’ ami). 

2. Utibe Andifak, Jesus ufan mi, 
Edi ökpösöñ Andifak; 
Nyebuötidem y’ Enye tutu utit, 
Anyañ’ idiök owo nt’ ami 
(nt’ ami). 

3. Edima Andifak, Jesus 
Edidem, 
Etubom k’ otu me tösn; 
Enye ’di edima, ami nyekwö, 
Anyañ’ idiök owo nt’ ami 
(nt’ ami). 

4. Ndien ke ndidukde ke obio 
gold, 
Ami ‘nyekut iso Esie; 
Nyedu k’idara Esie k’nsinsi, 
Anyañ’ idiök owo nt’ ami 
(nt’ ami). 

Amen. 
      """
    },
    {
      "id": 295,
      "title": "AMI NDIGHE OKIM ",
      // "audio":"",
      "body": """
      KEY Bb 3/4

{.s, :m, .,s, |d :-.r :d .,L, |d :t, 
:L, .,s, |r :-.de :r .,re |m :-. } 

1. NDIGHE okim, Christ 
edep mi, 
Ndi Esie k’nsinsi; 
Ke iyip Esie akafak mi, 
Osio isop anyaña mi. 

Körös: 
Ndigh’ okim… ndigh’ okim… 
Öböñ (Öböñ)… ke 
ebekpo… 
Akafak mi… k’ iyip Esie… 
Kemi ada mi ke Esie 
(Esie). 

2. Ndighe okim, Christ 
anyaña, 
Nyebuötidem k’Enye; 
Nyesuk ibuot k’ ima Esie, 
K’ inemesit kpukpru usen. 

3. Ndi Esie, baba iduhe 
‘Ndisio mi k’ubök Esie, 
Möfiök k’Enye eyekpeme mi 
K’ emem osim k’ obio oro. 

4. Ami ndi Esie ke utom, 
Ndida m’ukpöñ ’nö Christ; 
Ami nyebuk ’nö mendisop 
Ke Christ amakpa ndifak. 

Amen. 
      """
    },
    {
      "id": 296,
      "title": "EMEFAK ",
      // "audio":"",
      "body": """
      KEY Ab 6/8 

{:s, |s, :s, :s,|s, :L, :t, |d :-:-ls,:-:d 
|r :r :r |r :d :r |m :-:-l-:-} 

1. MAMA ndibuk, emefak mi: 
Efak k’iyip Eyeneröñ, 
Efak oto ke mböm Esie, 
Ndi Esiemö k’nsinsi. 

Körös: 
SA: Efak, efak 
TB: Emefak mi, emefak mi 
All: Efak k’iyip Eyeneröñ, 
SA: Efak, efak 
TB: Emefak mi, emefak mi, 
All: Ndi Esie k’nsi nsi. 

2. Madara ke Jesus afak mi, 
Akak inua mi ndibuk, 
Möfiök uñwana iso Esie, 
Ododuñ y’ami kpukpr’ 
ini. 

3. MekereetiAndifakmi, 
Mekere Enye kpukpr’ 
usen; 
Nyekwö, ndidopke uyo, 
Ima Esie ’di ikwö mi. 

4. Nyekut Edidem ke uyai 
Emi‘ndarad’item Esie, 
Enye emekpeme usuñ mi, 
Önö ikwö k’okoneyo. 

Amen. 
      """
    },
    {
      "id": 297,
      "title": "AMI MONIM KPUKPRU ",
      // "audio":"",
      "body": """
   KEY G 4/4

{:s, .,s,|d :d lr :r |m :-.r ld :d .,r |m 
:m ls :s |r :-l-} 

1. AMI monim ke akpanikö, 
Jesus akakpa ’nö nyin, 
Monim, Enye ke cross 
ekedep 
Öyöhö ufak nyin do. 

Körös: 
O! ami… monim…, 
Ih monim… kpukpru…, 
Odudu Esie ke anyaña, 
Ami monim kpukpru. 

2. Monim k’Öböñ enyen’ 
odudu, 
Nte ke eyo oko; 
Döñ akwa odudu Fo, Öböñ, 
Yöhö nyin ye ima Fo. 

3. Monim, erinyaña ke mfön 
Enyene m’öbuötidem, 
Öböñ döñ Pentecost Fo edi, 
Man ibö odudu Fo. 

Amen.    
      """
    },
    {
      "id": 298,
      "title": "KORO ABASI AKAMAMA ERERIMBOT ",
      // "audio":"",
      "body": """
     KEYAb 6/8

{:s, |m :-:m lf :-:m|m :-:-lr : :
m |d :-:d l d :r :m |r: -:-l-:-} 

1. UTIBE eti mbuk, 
Ikwö mbon enyöñ 
Suan etop gospel k’ikö emi 
Añwañade kpukpru. 

Körös: 
Abasi ke ima 
Ökönö edibon Eyen Esie, 
Man owo ekebuötd’ idem 
y’Enye, 
Enye ’mi öbuötd’ idem 
y’ Enye, 
Iditakke, iditakke, 
Enyene ‘nsi ‘nsi uwem 
(nsinsi uwem). 

2. K’esit nyin öbuñöde 
Oto ke but idiök, 
Idara mibiarake odu 
K’ ndibere y’ Enye. 

3. Ima okponde akan 
K’ enyöñ y’ inyañ y’ isöñ, 
Akayarare kini Jesus 
Edide ndikpa. 

4. Ufan, di tiene Jesus, 
Ikö enyene fi, 
Bö mfön ye uñwöñö Esie, 
Kwö nyuñ toro Enye. 

Amen. 
 
      """
    },
    {
      "id": 299,
      "title": "ÑKOYOM USUÑ YE JESUS INI KIET ",
      // "audio":"",
      "body": """
      KEY Ab 6/8

{:s, |s,:-:s, lL, :-:t, |d : -:r lm ::
f |m :-:-lr :-:-|d-:-l-:-} 

1. AMI ‘ñkökpöñ Jesus nduk 
k’ata ekim 
Kemi madara kor’ efakde 
mi k’idiök. 

Körös: 
Efak… efak…, 
Efak mi oto k’ ima (k’ima) 
Efak… efak…, 
Mabuana ke iduñ enyöñ 
(enyöñ) 
Efak… efak… 
Kemi ‘ndi eyen Edidem 
(’didem) 
Idara öyöh’ ukpöñ mi, 
Emefak mi. 

2. Ima Esie öfön y’ami 
k’usen k’usen, 
Manam utom k’ idara ’nö 
Edidem mi. 

3. Enye eyeda mi usuñ k’ikö 
Esie, 
Eyenö mi mfön y’ uböñ 
ebighide. 

Amen. 
      """
    },
    {
      "id": 300,
      "title": "ENYE OKOYOM, TUTU OKUT MI",
      // "audio":"",
      "body": """
      KEY G 6/8 

{|m:m:mlr:d:L,|s,:d:r lm:-:|
m :r :d ls :f :m |r :L, :m lr : -:-} 

1. NTE eröñ oyode ke obot, 
Ntre ke ñkoyo mkpöñ otu, 
Jesus oyom Esiemö osopde, 
Okoyom tutu, okut mi. 

Körös: 
Okoyom tutu okut mi, 
Ke ubök Esie emen mi, 
Akama mi k’ikpanesit, 
Ada mi afiak k’otu. 

2. Ufan,Andinyañakeokotfi, 
Nsinam oyode k’ obot 
idiök? 
Oyom afiak edi k’ima Esie; 
Enye k’oyom man okut fi. 

3. Anamidiök, Öböñ ke oyom fi, 
Christ, Öböñ ima ye 
Ekpemeröñ, 
Eyebö, adara fi ke iduñ, 
Utibe Christ Andinyaña. 

Amen. 
      """
    },
    {
      "id": 301,
      "title": "KE OYOYOM MI ",
      // "audio":"",
      "body": """
      KEY G 6/4

{|s :-.f :m lm :r :d |r :-.d :L,|L, :-:|
s, :-.d :d ld :r :m |m : -.r :d |r :-:-} 

1. JESUS Öböñ mi, k’ obio 
Bethlehem, 
Amana oduk k’ mfukhö ye 
O ’kedi utibe! Etor’ Enye, 
Okoyom mi, kpa mi; 
S: Okoyom mi, kpa mi; 
ATB: Okoyom mi, okoyom mi, 
S: Okoyom mi, kpa mi, 
ATB: Okoyom mi, okoyom mi, 
All: O ’kedi utibe! Etor’ Enye, 
Okoyom mi, kpa mi. 


2. Jesus Öböñ mi, k’eto Calvary, 
Okosio isön mi man mböhö; 
O ’kedi utibe didie k’Enye, 
’Kakpa ’nö mi, kpa mi, 
S: ’Kakpa ’nö mi, kpa mi, 
ATB: ’Kakpa ’nö mi, ’kakpa ’nö mi 
S: ’Kakpa ’nö mi, kpa mi 
ATB: ’Kakpa ’nö mi, ’kakpa ’nö mi 
All: O ’kedi utibe didie k’ Enye, 
’Kakpa ’nö mi, kpa mi. 

3. Jesus Öböñ mi nte ke eset, 
Kini ñkoyode ñkpöñ otu, 
Ököyö ukpöñ mi anyan ini, 
Okokot mi, kpa mi, 
S: Okokot mi, kpa mi, 
ATB: Okokot mi, okokot mi 
S: Okokot mi, kpa mi, 
ATB: Okokot mi, okokot mi 
All: Ököyö ukpöñ mi anyan ini, 
Okokot mi, kpa mi. 

4. Jesus Öböñ eyesukhöre ’di, 
Uñwöñ’ emi enem k’ ofri ini; 
Ami nyekut Enye edide 
Kabaña mi, kpa mi, 
S: Kabaña mi, kpa mi, 
ATB: Kabaña mi, kabaña mi 
S: Kabana mi, kpa mi, 
ATB: Kabaña mi, kabaña mi 
All: Ami nyekut Enye edide 
Kabaña mi, kpa mi. 

Amen. 
      """
    },
    {
      "id": 302,
      "title": "AMI MMAMA ENYE ",
      // "audio":"",
      "body": """
      KEY D 4/4

{|d :m .,f ls :-.s|L .d' :t .Lls :-|d 
:m.,f ls :-.s|L .s :f.m lr:-} 

1. ERERIMBOT öwörö mi k’ esit, 
Kemi oto k’ iyip möböh’ idiök; 
Ke idak cross ami mosuk esit, 
Eti iyip Jesus anam mfia 
‘nte snow. 

Körös: 
mp ’Mam’ Enye, pp ’mam’ Enye 
mf Koro ’kamade mi 
Edep unyaña önö mi ke 
Calvary. 

2. Ke ini kiet ñköbukhö k’idiök 
Ke ini kiet ‘ñkedi ofn idiök; 
Ke ini kiet ‘ñkefegh’ iso Öböñ 
Kemi eyet mi nsana k’ iyip 
Öböñ. 

3. Ñkedi ofn kemi möböhö, 
Ñkedi ‘nnan kemi mokut usuñ; 
Ami ‘ñkakpa kemi modu uwem 
Nyuñ ‘mbuk ufön Abasi mi 
’nö ekondo. 

Amen. 

      """
    },
    {
      "id": 303,
      "title": "NSO KE ENYE AKANAM? ",
      // "audio":"",
      "body": """
      KEY Db 4/4 

{|d' :-ls :L ls :d' lt :L|s :-ls :-|m 
:s lL :r'|d' :-lt :-|d' :-l-:-} 

1. O! KPAÑ utöñ k’ utibe 
mbuk, 
Ikoduñ ye menditak; 
Jesus ’koto ke heven edi, 
Afak nyin k’ nsöñurua. 

Körös: 
SA: Anie osio nyin ke mkpa? 
TB: Eyen Abas’ Ibom ke cross 
Anam nso? (Akpa ’nö fi) 
Odu ke möñ? (k’ akpanikö) 
Ke heven k’ ekpe ubök. 

2. Enjel kiet idaha itie nyin; 
Jesus omokpon akan, 
Eköñ ke cross, esin ke ndek, 
Edi kiet k’ otu ITA! 

3. M’ eyeyak idem fo ’nö 
Öböñ? 
Eyeduö k’ iso Esie? 
Afo ñko eyekut mfön, 
Eyenyaña fi kemi. 

Amen. 
      """
    },
    {
      "id": 304,
      "title": "ÑKPÖ EMI ÖFÖNDE AKAN GOLD",
      // "audio":"",
      "body": """
      KEY F 4/2

{.s|d .d :m .m lr .r :d .m|s .s :L .d' 
ls :-.} 

1. OWO kiet, ikotde k’ñwed, 
Okodude k’ eset, 
Ekenyen’ inyene edi 
Oyom s’ikande gold. 

Körös: 
O ufan, ñkpö kiet odu 
Öfönde ’kan gold, 
Ndifiök, efen m’idiökñkpö fo, 
Öfön akan gold. 

2. Ekedi k’eti usen kiet, 
Enam enye öfiök, 
Ke Jesus möñ ebe k’ usuñ 
Y’ ñkpö akande gold. 

3. Enye öködök eto kiet 
Man enye okpokut, 
Owo emi edinöde 
Ñkpö akande gold. 

4. Andinyaña ekebe do 
Okut enye k’ eto, 
Jesus okot, ödöh’ ete, 
“Nyedañ ye afo.” 

5. Ke enye okopde uyo, 
Öbö me edidiöñ 
Owo mitiñke ke ubak, 
Öfönde akan gold. 

Amen. 

      """
    },
    {
      "id": 305,
      "title": "UFAK ",
      // "audio":"",
      "body": """
     KEY E 9/8 

{|s :-:-|s :-:-l-:m :d ld:r :m |s 
:-:-lf :-: lf:-:-lm :-: -l -:r :d 
lm :d:r |d:-:-l -:-:-} 

1. UFAK! Akwa utibe mbuk 
Eti mbuk ’nö fi y’ ami; 
Jesus ekedep erifen nyin, 
Ekpe kpukpru isön k’eto. 

Körös: 
Anam idiök nim, k’ akpanikö, 
Edi mbuk akpanikö; 
Buötidem y’ Öböñ ekeköñde, 
Enye ’nö fi erinyaña. 

2. Osio ke mkpa esin 
k’ uwem, 
Anam nyin idi nditö; 
Önö m’idiök owo idim möñ, 
Di yere ke iyip Esie. 

3. Idiök idikanke nyin aba, 
Ekpedi ‘nte odomode; 
Christ ke eti ufak Esiemö, 
Eyebiat odudu idiök. 

4. Nyime mfön Abasi kemi, 
Tiene Öböñ Jesus mfin; 
Eyebö anditiene Enye, 
Idinyuñ ibinke baba. 

Amen.  
      """
    },
    {
      "id": 306,
      "title": "UTIBE IMA",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:d |d :m ls :-.L |s .m :-.r ld :-.d |d 
:f lL :-.L |s :-l-} 

1. ABASI amama owo 
Okosopde k’ idiök, 
Önö erinyaña k’ mfön 
Emi ösöñd’ urua. 

Körös: 
O ima, akwa ima! 
Im’ Abasi y’ ami! 
Önö Andinyaña edi, 
Akpa ke Calvary. 


2. K’ mbuötidem möbö Enye 
Ekesetde k’ mkpa; 
Mokut ufak k’ mkpa Esie, 
Ye eriyet k’ iyip. 

3. Ima anam nti owo 
Enyene uyöhö, 
Eti uböhö k’ idiökñkpö, 
K’ebuötd’ idem ke Christ. 

4. Mendibuötidem, edara; 
Eyenö mbufo 
Nditabi mi ke isöñ, 
Inem uböñ heven. 

5. K’ erikan odudu Satan, 
Mö efakde, ekwö 
Enyuñ edara ke utit, 
Ke Christ Edidem nyin. 

Amen. 
      """
    },
    {
      "id": 307,
      "title": "“ENYAÑA MBUFO KE MFÖN”",
      // "audio":"",
      "body": """
      KEY D 4/4

{:s|s:-.slL:t|d':-l-.d'|d':-:d' 
lt :L |s :-l -} 

1. K’ MFÖN ke Abasi 
Akanam ediomi, 
K’Eyen Esie ndinyaña 
Kpukpru m’idiök owo. 

Körös: 
SA: Enyaña ‘mbufo k’mfön 
K’ mbuöt…idem 
TB: K’ mbuöt…idem 

All: Itoho k’ idem mbufo 
Itoho k’ idem mbufo 
S: Itoho . . . 
ATB: Itoho (ke utom inamde) 
ST: Itoho… 

AB: Itoho ke utom inamde 
All: Owo okubure mbure 
Edi-enö Abasi, 
Owo okubure mbure, 
Edi-enö Abasi 
Edi-enö Abasi 
Edi-enö Abasi 
Edi-enö Abasi 
Enö-Abasi. 

2. Mfön emi ekut 
Ke Eyen Abasi 
Ke eköñde Enye k’eto 
Mfön ayarare. 

3. Kpukpru mebuötidem 
Ke Jesus Christ Öböñ, 
Emenyene erinyaña 
Y’ idiöñö nditö. 

Amen. 
      """
    },
    {
      "id": 308,
      "title": "ISÖÑ UFAK ",
      // "audio":"",
      "body": """
      KEY C 3/4

{.s :s .m|d' :-.t :t .L|L :-.L lL .f 
ld' :-.L lL .s|s : -.} 

1. UKPÖÑ mi, di kwö nö 
Öböñ, 
Afakde fi k’ iyip Esie; 
Osiode fi k’ ñkpököbi, 
Ada osim isöñ ufak. 

Körös: 
Isöñ ufak, isöñ emem, 
Isöñ ufak, utibe ‘mfön; 
Yak itoro enyen’ Öböñ, 
Onimde nyin k’ isöñ ufak. 

2. Ñkoyo ñkpöñ Abasi, 
Nnyimeke uduak Esie, 
Kemi ntor’ Enye eti, 
Ami nda k’ isöñ ufak. 

3. Madara ke ini Öböñ 
Okowutde mi Calvary; 
Anam mi mböhö k’ ukpöñ; 
Nyekwö ke isöñ ufak. 

4. Itoho k’nti utom mi, 
Jesus öyöh’ unana mi, 
Edinen ido iduhe, 
Iböhöke k’ isöñ ufak. 

5. Akpa mba dibö emem, 
Bö erifak ye edidiöñ; 
Christ ’kakpa ayara ’nyanya, 
Efen nyin ke isöñ ufak. 

Amen. 
      """
    },
    {
      "id": 309,
      "title": "IMA ERIFAK",
      // "audio":"",
      "body": """
      KEY Ab 4/3

Duet: Sop & Alto 

{.s, :d .r |m :-.s :f .L |s :-.s :L .m 
|s .,f :f :-.s |m :-.} 

1. NTE inuen ek’ efede, 
Ukpöñ mi eyedök k’ enyöñ; 
Ke nsimde obio oro, 
Nyekwö ufak ima Christ. 

Körös: 
Ufak ima, ufak ima, 
Utibe ‘mbuk akan kpukpru; 
Ukpöñ mi ke idaresit 
Eyekwö ufak ima Christ. 

2. Nte iköñ esekhede, 
Ke mbara öduöhöde; 
Ukpöñ mi eyekpöñ ekim, 
Abuana k’ ima nsinsi. 

3. Ufak ima okpon didie! 
Ököduök iyip önö mi; 
Nyekpono enyiñ Esie, 
Ntor’ Enye k’nsi nsi.
 
Amen. 

      """
    },
    {
      "id": 310,
      "title": "O, EDI UTIBE!",
      // "audio":"",
      "body": """

KEY Ab 4/4

{|d :d lL, :s, ld :d lL, :s,|d :d .r 
lm .m :d .d|r :m lr :-} 

1. JESUS Öböñ ekedep mi, 
Okosio isop önö mi ke 
cross; 
K’ima k’ Enye ekemek mi, 
Nso oruk Ufan k’Enye edi! 

Körös: 
O edi utibe, edi ata utibe, 
Mfön Esie omokpon! 
O edi utibe, edi ata utibe: 
Ima Esie ye ami! 

2. Toro Enye, okoyom mi, 
Ke nyode Enye anyaña mi; 
Mfön Esie awak eti, 
Jesus omotim öfön ye ami.
 
3. Enye ’kebet anyan ini, 
Ekebet eti ini usiere 
Kini ndiyakde idem, 
Nyak ’nö odudu ufak Jesus. 

4. Ini oro Enye ’koyom 
Ndiyöhö mi ye ima Esie; 
Okpukhöre mi ke mfön, 
Man ndot ebuana mbon 
enyöñ. 

Amen.
      """
    },
    {
      "id": 311,
      "title": "ANAÑ YE EFURENAÑ ORO ",
      // "audio":"",
      "body": """
     KEY Ab 6/8 

{:s, .s, |d :-.d :d ld :-:d |t, :t, :t, ld ::
d .d|m :-:m .m ld :-:d |r :-:-l-} 

1. ANAÑ ye efurenañ ekena suñ 
K’ifure ke ufök eröñ, 
Edi kiet okoyo ke enyöñ obot, 
Ökpöñ ndiduk ke usuñ gold; 
Asa ak’una isöñ ye ke obot, 
Öwörö k’ubök Ekpeme eröñ, 
Öwörö k’ubök Ekpeme eröñ. 

2. “Öböñ, anañ y’efurenañ Fo emi 
Nte oro ikemke Fi?” 
Edi Ekpemeröñ öbörö ete, 
“Okimmö öwörö ökpöñ Mi, 
Okposuk usuñ oro ödiökd’ eti, 
Nyeka man ñkoyom eröñ Mi, 
Nyeka man ñkoyom eröñ Mi” 

3. Mö Enye akafakde iköfiökke 
Nte ’möñ ökötuñöde 
Y’ökpösöñ ekim, Öböñ ekebede 
Ndiyom eröñ okosopde; 
Okop enye atuade ko ke desert, 
Ödöñö onyuñ ekpere ‘ndikpa, 
Ödöñö onyuñ ekpere ‘ndikpa, 

4. “Öböñ, ntöi iyip emi eto 
möñ, 
Eke ’tiamde k’usuñ ntem?” 
“Ököduökhö ’nö kiet 
okosopd’ usuñ 
Man eda enye esin k’otu” 
“Öböñ, m’unan ke ubök Fo 
eto möñ?” 
“Ekekim Mi k’ okoneyo emi, 
Ekekim Mi k’ okoneyo emi.” 

5. K’enyöñ obot obuma 
akasiakha 
Ösukhöre k’ enyöñ obot 
Ke heven uyo ödöh’ ete, “Dara! 
Mokut eröñ Mi okosopde” 
Me enjel k’ebekpo ebörö ete, 
“Dara! Öböñ okut eröñ Esie, 
Dara! Öböñ okut eröñ Esie.” 

Amen.  
      """
    },
    {
      "id": 312,
      "title": "CHRIST AMAFAK NYIN ",
      // "audio":"",
      "body": """
      
KEY Eb 6/4 

{|s :-.L :s lm :-:s |d' :-.t :L ls :-: 
|s :-.L :s lm :-.r :d |m :-:-lr :-} 

1. “CHRIST amafak nyin,” 
kwö k’ idara! 
Suan etop mfön nö kpukpru; 
Nte afakde k’ iyip Esie, 
Christ oduñ k’otu nyin kemi 

Körös: 
“Christ amafak nyin,” toro Enye, 
Tor’ Enye me enjel k’ uböñ! 
Christ amafak nyin, obiom ukut, 
Fiori ata utibe ‘mbuk. 


2. “Christ amafak nyin” 
imöböhö, 
Imöböhö k’ ufn idiök; 
Nyin iduhe ke ufn aba, 
Ibuötidem y’Andinyaña. 

3. “Christ amafak nyin” 
idi Esie, 
Edep k’ iyip, ekpeme nyin; 
Idikpöñke nyin ke nsinsi, 
Akama nyin k’ ubök Esie. 

4. “Christ amafak nyin” 
Enye ’yedi 
Ndida nyin ndök k’ uböñ; 
Ke idara, ibuana k’ ikwö, 
Iköm Enye k’ isobode. 

Amen. 
      """
    },
    {
      "id": 313,
      "title": "O, UTIBE ANDINYAÑA!",
      // "audio":"",
      "body": """
      KEY D  4/4

{:s|d' :d' ls :s |t :L ls :f .f |m :-lr 
:d |s :-ls } 

1. CHRIST okosio isop idiök, 
Utibe Andinyaña; 
Afak nyin ke eköm-urua, 
Utibe Andinyaña. 

Körös: 
Utibe Andinyaña 
Edi Jesus Öböñ! 
Utibe Andinyaña, 
Jesus Öböñ mi! 

2. Motor’ Enye k’iyip Esie 
Utibe Andinyaña; 
Anam ndu k’ emem y’ Ete, 
Utibe Andinyaña. 

3. Eyet kpukpru me idiök mi, 
Utibe Andinyaña; 
Enye akara k’ esit mi, 
Utibe Andinyaña. 

4. Asaña y’ ami ke usuñ, 
Utibe Andinyaña; 
Anam ibuötidem y’Enye, 
Utibe Andinyaña. 

5. Önö odudu erikan, 
Utibe Andinyaña; 
Ndikan kini idomo, 
Utibe Andinyaña. 

6. Mayak esit mi ’nö Enye, 
Utibe Andinyaña; 
Ererimbot ibuanake, 
Utibe Andinyaña. 

Amen. 
      """
    },
    {
      "id": 314,
      "title": "INI KIET ÖNÖ KPUKPRU",
      // "audio":"",
      "body": """
      KEY Eb 9/8 

{ld:m:L|s:-:-lm:-:-lm:r :d 
|m :-:-lr :-:-lr :de:r |f :-:-lL ::-
lL :s :f|f :-:-lm :-:-} 

1. NYIN imöböhö, O, enem eti, 
Jesus akakpa, önö erifen, 
Nyin ikodu ke isuñ’ ibet 
Mfön afak nyin ini kiet. 

Körös: 
Ini kiet, anamidiök nyime 
Eyen-ete nim k’ akpanikö, 
Yire ke cross, ‘mbiomo ’yefere, 
Christ amafak nyin ini kiet. 

2. Kemi imöböhö ubiomikpe, 
Jesus önö eti erinyaña, 
“Etiene Mi,” kop ikot Esie, 
Di, eyenyaña ini kiet. 

3. “Iköt Abasi” O! ikot uböñ, 
Mfön Esie osio nyin ke iduö, 
Imoduk k’uwem k’ ikot Esie, 
Anyaña kpukpru ini kiet. 

Amen. 
      """
    },
    {
      "id": 315,
      "title": "ERINYAÑA",
      // "audio":"",
      "body": """
      KEY C 4/4

{:s |d' :d' lt :d' |r' :d' lt :L|
s :s lL :t |d’ :-l-} 

1. DI ikwö mbuk idara 
Erinyaña k’ mfön: 
Fiori ke ofri ekondo, 
Ke isua Jubilee. 

Korös: 
Ata Erinyaña! 
Ete önö k’ mfön! 
Ata Erinyaña!
Oto ke Christ Öböñ. 

2. M’ ukpöñ mfukhö, edara,
Me ‘nnan ese Öböñ, 
Mbon ñkpököbi, ekwöÖböñ ’nö uböhö. 

3. Yak ikwö k’ akwa idara, 
Utib’ ima Jesus; 
Emem k’ isöñ k’ otu owo, 
Etoro Abasi!

 Amen 
      """
    },
    {
      "id": 316,
      "title": "SE, NDIEN EYEDU UWEM!",
      // "audio":"",
      "body": """
  KEY Ab 4/4

{|m :m .,r ld :d .,t, |L, :d ls, :-|m 
:m .,f ls :s .,m |d :m lr :-} 

1. ANDINYAÑA k’eto Calvary, 
Akakpa önö fi ye ami; 
Kop nte okotde fi k’ima, 
“Se, nyuñ du uwem.” 

Körös: 
Se, nyuñ du uwem! 
Se, nyuñ du uwem! 
Enye ’kakpa önö fi ke cross 
Se nyuñ du uwem! 

2. Omoyom ndiböhö idiök? 
Omoyom nsi nsi uwem? 
Jesus okosio isop oro, 
Se, nyuñ du uwem! 

3. Se Andifak esetde k’ udi, 
Tiene Enye ke eti ini; 
Uñwan’ Esie ebin mfukhö 
Se, nyuñ du uwem. 

4. Jesus k’ anam mkpe ubök ko, 
Öfiök unana anamidiök; 
Eyekpeme ikpat isañ nyin, 
Se, nyuñ du uwem! 

Amen.     
      """
    },
    {
      "id": 317,
      "title": "UÑWANA KE UKPÖÑ MI ",
      // "audio":"",
      "body": """
      KEY E 4/4 

{.s, |d .,d :d .,r lm .,m :m .,f 
|s .,s :s .,L ls:-.} 

1. AMI ñkoyo k’ ekim tutu 
Jesus okut mi, 
Ndien uñwan’ ima Esie 
ebin ekim efep. 

Körös: 
Uñwana ke ukpöñ mi mfin 
(Ih, mfin) 
Uñwana ke kpukpru usuñ 
(usuñ) mi, 
Ke Christ okutde mi, emen 
m’idiök (m’idiök) mi, 
Uñwana ima Esie ke esit 
mi. 

2. Ntukhube ye mbufut 
ekpekan mi ekuk, 
K’ererimbot okimde, 
uñwan’ odu k’ukpöñ mi. 

3. K’nsañade k’uñwan’ Öböñ, 
inem ebuan’ odu, 
Metien’ Enye k’ ufiop ima, 
mökpöñ ererimbot. 

4. Mebe iñwañ añwañade, 
mebe una-isöñ, 
Ke uñwana ima Esie, 
metet nti mfri. 

5. Nyesöp ndikut Enye 
akpade önö mi, 
Ye uñwana iso Esie 
k’ nsi nsi ini. 

Amen. 
      """
    },
    {
      "id": 318,
      "title": "DO KE CROSS ",
      // "audio":"",
      "body": """
     KEY E 4/4

{:d |m :-.r ld :m |s :-.f lm :s |L :s 
lf :m |r :-l -} 

1. BUT inamke mi y’ Öböñ mi 
Me ke ‘ndida y’Enye, 
Nyekpono ikö Esie, 
Ye uböñ cross Esie. 

Körös: 
Do ke cross! Do ke cross, 
ñkokut uñwana. 
Mbiomo k’ esit mi ebe 
efep (’be efep) 
Do k’mbuötidem ñkokut usuñ, 
Kemi madara kpukpru usen. 

2. Jesus, möfiök enyiñ Esie, 
Möbuötidem k’ Enye, 
Idiyakke but anam mi, 
K’ idorenyin ukpöñ. 

3. Uñwöñ’ Esie ösöñ’ ada, 
Enye eyekpeme 
Se nsinde k’ubök Esie, 
Tutu usen oro. 

4. Enye eye onyime mi 
K’ iso Ete Esie, 
Ke obufa Jerusalem, 
Onim ukpöñ mi do.

 Amen. 
      """
    },
    {
      "id": 319,
      "title": "NDIKUT BUT MBAÑA JESUS!",
      // "audio":"",
      "body": """
     KEY E 3/4

{|m:m:m|s:-:d|r:-:r|m:-:|
s :s :s |f :-:s |m :-:f|r:-:-} 

1. JESUS me eyedi ntem, 
Owo ndikut but y’ Afo? 
Emi enjel etorode 
Uböñ Fo odu k’ nsinsi! 

2. Ñkut but ye Jesus! Ufan, 
Idorenyin uböñ heven? 
Emi eyedi kpa but mi, 
K’ nsuenede enyiñ Esie. 

3. Ih, nyekut but ye Jesus! 
K’idiök miduhe ndiyet 
Nnyeneke eti uwem, 
Man nnyaña ukpöñ ’nö 
Christ? 

4. Mbureke ke ikpikpu, 
Edi ke Christ ekewotde, 
O yak mbure mi edi 
Christ ikopke but ye ami.
 
Amen.  
      """
    },
    {
      "id": 320,
      "title": "JESUS ANYAÑA",
      // "audio":"",
      "body": """
     KEY G 3/4 

{:s, .,s,|d :-.,s, :d .,r |
m :-:s .,s |s :-:m .,d|r :-} 

1. IMOKOP eti mbuk, 
Jesus Christ anyaña! 
Nam ekop mbuk emi, 
Jesus Christ anyaña! 
Suan mbuk k’ ofri isöñ 
Be k’ inyañ y’ itikhere 
Ka iso! k’uyo Öböñ. 
Jesus Christ anyaña!
 
2. Kwö be k’ mbufut mmöñ, 
Jesus Christ anyaña! 
Yak menamidiök ekop 
Jesus Christ anyaña! 
Mbufo m’ isuo ekwö, 
Akpa-inyañ ebörö, 
Ekondo nam idara, 
Jesus Christ anyaña! 

3. Kwö ke utom ye eñwan, 
Jesus Christ anyaña! 
Ke mkpa y’uwem Esie, 
Jesus Christ anyaña! 
K’ idorenyin miduhe, 
K’ esit oyomde mböm, 
Kwö ke erikan udi, 
Jesus Christ anyaña! 

4. Fiori k’ ökpösöñ uyo, 
Jesus Christ anyaña! 
Yak midut edara ‘ñko. 
Jesus Christ anyaña! 
Kwö erinyaña k’ mfön, 
Ke ini afaneköñ, 
Iyekwö ke erikan, 
Jesus Christ anyaña! 

Amen. 
 
      """
    },
    {
      "id": 321,
      "title": "EKEFAK KE MFÖN ESIE",
      // "audio":"",
      "body": """
    KEY Bb 6/8  

{|s, :L, :t,ld :r :m |m :r :L,lr :-:|
r :d: t, lt, :f, :L,|s, :-:-l-:-:} 

1. K’ ÑKUTDE Andinyaña 
mi k’ uyai, 
K’ndised’ iso Esie, 
Idara ’yekak inua ndibuk, 
Afak mi k’mfön Esie (Esie). 

Körös: 
S: E... fak... 
A: Emefak mi ke mfön Esie. 
All: Efak mi k’ (utibe) mfön Esie, 
S: E... fak... 
A: Emefak mi ke mfön Esie. 
All: Onim itie ke heven (önö mi), 
S: E... fak... 
A: Emefak mi ke mfön Esie. 
All: Efak mi k’ (utibe) mfön Esie, 
Uböñ enyene Jesus, efak mi 
Efak mi k’ (utibe) mfön Esie 

2. Ke anyan ñkoyo k’ usuñ 
idiök 
Nyuñ nsin mfön Esie, 
Ami ñköbiöñö uyo Esie, 
Kemi metiene Öböñ (Öböñ). 

3. Madara erinyaña ke mfön, 
Enye ikesinke mi, 
Madara nyekut Andinyaña, 
Ntor’ Enye k’nsinsi (nsinsi).
 
Amen.  
      """
    },
    {
      "id": 322,
      "title": "ISAÑ MEKPA MKPA",
      // "audio":"",
      "body": """
      KEY E 4/4 

{|s :s ls :m .,f |s :L ls :d .,r |m 
:m.,m lr :d |r :-} 

1. TRAMP, tramp, tramp, 
isañ akpamin, 
Ediwak owo esaña, 
(tramp, tramp, tramp) 
K’mböm y’ erinyaña miduhe 
Utit isañ mö edi möñ? 
(tramp, tramp, tramp) 
Ikpö, ñkpri, y’ mkparawa do, 
(tramp, tramp, tramp) 
Esaña ke esuene ebe, 
(tramp, tramp, tramp) 
Mö itimke ikere baba 
Se ididide k’ utit. 

Körös: 
S: Tramp, tramp, tramp, 
tramp, tramp, tramp, 
tramp, tramp, tramp, 
tramp, tramp, 
Otu enyene ndik! 
Christian yom m’ukpöñ 
ekpade ’min 
K’eti ini, sio mö fep k’mkpa. 
AT: Tramp, tramp, tramp, tramp 
Ke eka nte idat, 
Tramp, tramp, tramp, tramp, 
Otu enyene ndik! 
Christian, yom m’ukpöñ 
ekpade ’min. 
K’eti ini, sio mö fep k’mkpa. 

Bass: 
Tramp, tramp, tramp, 
tramp, tramp, tramp, 
tramp, tramp, tramp, 
tramp, tramp, tramp, 
tramp, tramp, tramp, 
tramp, tramp, tramp, 
tramp. tramp, 
Christian, yom m’ukpöñ 
ekpade ’min, 
Tramp, tramp, tramp, 
K’ eti ini, sio mö fep k’mkpa. 

2. Tramp, tramp, tramp, aka 
k’nsobo 
Ötöñöde k’ini uyen, 
(tramp, tramp, tramp) 
Ökpöñ ufök ye item eka, 
Emek ndiyo ke añwa 
(tramp, tramp, tramp) 
Aka iso ke idiök ido 
(tramp, tramp, tramp) 
Ökpöñ item ñwan y’eyen 
esie, (tramp, tramp, tramp) 
Ökpöñ ifiök y’nti ebuana, 
Emek nsobo k’ukpöñ. 

3. Tramp, tramp, tramp, owo 
akpamin, 
Ke asaña aka k’udi 
(tramp, tramp, tramp) 
M’ukpöñ Jesus akpade ‘ndifak 
Esim k’ata idiök utit, 
(tramp, tramp, tramp) 
Öböñ ñwam nyin, imenyen’ utom, 
(tramp, tramp, tramp) 
Utom ndiñwam m’owo k’isöñ, 
(tramp, tramp, tramp) 
Nö odudu k’utom ye akam 
Man inyene erikan. 

Amen. 
      """
    },
    {
      "id": 323,
      "title": "DUK UBOM UWEM",
      // "audio":"",
      "body": """
      KEY G 4/4 

Duet: Sop & Alto 

{|m :-.re lm .s, :L, .f |m :-ld :-|r :-. 
de lr .s, :m .,r |d :-l -: } 

1. OMOSOP ke akpa-uwem? 
K’mbufut emenere? 
Idorenyin do, utakke, 
Eyesim iduñ k’ enyöñ. 

Körös: 
Duk ke uwem, duk ke uwem 
Se Andinyaña k’ anyan 
ubök uñwam 
Kubiat ini, duk ke uwem, 
Töñö isañ ndika heven kemi. 

2. Kubiat ini k’ ñkpö isöñ, 
Obio gold odu k’ enyöñ, 
Mbon ima ke ebebet. 
Idara do önö fi. 

3. M’owo ‘nte afo ekebet, 
Edöhö k’ini odu, 
Mö ikosimke usiere, 
Edi ekeduk k’ mkpa. 

4. Afo ke atak, duk k’uwem, 
Kubiat ini fo aba, 
Ini efen ididuhe, 
Wara yom obio enyöñ. 

Amen. 
      """
    },
    {
      "id": 324,
      "title": "AFO EMESIK ÖKPÖÑ ESUK ",
      // "audio":"",
      "body": """
      KEY Ab 4/2 

{:s, .s,|d .d :d .d |d :s, .d |m .m 
:m.m |m :d .m|r .r :r .r|r .r :m .r |d :l-} 


1. AFO ömökpöñ esuk, ebere 
ke ifiök fo 
Afiak edem, suñ suñ k’afiak 
ko k’edem 
K’ebe ye mbufut ’möñ aka 
ke idiök akpa 
Afo k’afiak, suñ suñ k’afiak 
ko k’edem. 

Körös: 
SAT: Afo ke afiak ko k’edem 
Oduk ke akpa inyañ, 
ke afiak edem 
B: Afo ke afiak edem, 
Afo ke afiak ko k’edem 
Oduk ke akpa inyañ 
Afo k’afiak edem suñ suñ 
All: Ökpöñ ukpeme Ete, 
Oduk k’ekim idiökñkpö, 
K’afiak edem, suñ suñ 
k’afiak 
Ko k’edem (ko k’edem). 

2. Uñwana eti esuk önö fi eti 
ntöt 
Afo k’afiak, suñ suñ k’afiak 
ko k’edem; 
K’ebede esuk emi ubom 
fo ’yeka anyan, 
Afo k’afiak, suñ suñ, 
k’afiak ko k’edem. 

3. Uyo mö ekotde fi k’esuk 
isöñke aba, 
Afo k’afiak, suñ suñ, 
k’afiak ko k’edem; 
O ufan kubet aba, mbak ini 
edibe, 
Ndien afo afiak edem 
k’nsinsi. 

Amen. 
      """
    },
    {
      "id": 325,
      "title": "AKWA USEN KEDI ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s,.s,|d :d ld d.-: .d |m :m lr d 
:L,.s,|d:dld d.-:r.m|r:-l-}
 

1. AKWA usen k’edi, akwausen 
k’edi 
Akwa usen k’edi k’ini-iso, 
K’nti ye m’idiök owo 
edibakharede mö, 
Emebeñ’ idem k’usen oro? 

Körös: 
Nte afo ’mebeñ’ idem? 
Emebeñ’ idem k’usen ikpe? 
Nte afo ’mebeñ’ idem 
Ke usen ikpe? 

2. Eti usen k’edi, eti-usen 
k’edi 
Eti usen k’edi k’ini-iso 
Eyedi eti önö mö eke 
’made Öböñ, 
Emebeñ’ idem k’usen oro? 

3. Usen ‘mfukhö k’edi, 
mfukhö k’edi, 
Usen ‘mfukhö k’edi k’iniiso, 
K’ anamidiök edikopde, 
“Daha, mfiökke fi” 
Emebeñ’ idem k’usen oro? 

Amen. 
      """
    },
    {
      "id": 326,
      "title": "ME ANAMIDIÖK EYO EKA MÖÑ?",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{d :-.r lm :-.r |d :L, lL, :s, |r :-.d 
lt,:d|r :-l-:} 

1. M’ ANAMIDIÖK, eyo nso? 
Emekpöñ usuñ? 
O, ti uwem edi ibio! 
Ebebe k’ usen. 

Körös: 
Mkpa k’edi! K’edi! K’edi! 
Ye usen ikpe 
Anamidiök, wara böhö, 
Yom usuñ uwem. 

2. Satan oyom ndida fi 
Ke ofn esie; 
Jesus akakpa ‘ndifak fi, 
Nam wara böhö 

3. Kpañ utöñ nö ikot oro, 
Okotd’ ete, “Di!” 
Ke esinde erinyaña, 
Eyetak k’ ikañ. 

4. Eyeböhö ‘ndik ‘ndik ikpe 
’Wörö k’nsobo? 
Yom Öböñ nyuñ kabaresit 
Ka ke Calvary. 

Amen. 
      """
    },
    {
      "id": 327,
      "title": "KOP UKO, EYEN ETE",
      // "audio":"",
      "body": """
      KEY D 4/4

{|s:-.m lL :d' lt :L ls :m 
|d :d lr :m |s :L ls :-} 

1. EYEN-ETE, O tim saña, 
’Kposuk usuñ okimde, 
Uñwana odu önö fi; 
Buötidem, nam s’ ifönde! 

2. Okposuk usuñ ödiökde 
Onyuñ oyomde ñko; 
Söñöda kunyuñ ufeghe, 
Buotidem, nam s’ ifönde! 

3. Duök kpukpru nsu ye ‘ñkari 
Ye m’ utom ekim efen; 
K’udori me k’ntak-urua 
Buotidem, nam s’ ifönde! 

4. Kubuötidem ke me ñka 
Ye ke me ada-usuñ; 
Edi k’ikö ye k’erinam, 
Buötidem, nam s’ ifönde! 

5. Kubere ke ido owo, 
M’ ufan ekpebiet enjel; 
Kubere k’ ido y’ erikpep, 
Buötidem, nam s’ ifönde! 

6. Eti nda-usuñ edi 
Emem k’esit ye uko; 
Önö uñwana k’ usuñ nyin, 
Buötidem, nam s’ifönde! 

7. M’ owo ema fi, m’ imaha, 
K’abiaña, me ’nem inua; 
Kpöñ owo, se Abasi fo, 
Buötidem, nam s’ ifönde! 

Amen. 
      """
    },
    {
      "id": 328,
      "title": "USIERE USEN ORO ",
      // "audio":"",
      "body": """
     KEY Eb 4/2 

{:s|m :m lm :s .m |f :f lL .d' :L |s 
:s ls .d ' : s .m |r: -l-} 

1. EKPRI ini Öböñ ke edi, 
Mokop ‘nte etiñde; 
Ntant’ öfiöñ okim, owut 
Ke usiere usen oro emedi. 

Körös 
O, eyedi usier’ usen oro 
O, eyedi usier’ usen oro 
Okoneyo ebe, usiere emedi 
O, eyedi usier’ usen oro. 

2. M’idiöñ’ odu k’ utin ye 
öfiöñ, 
K’ enyöñ y’ inyañ y’ isöñ; 
Efiori enö ekondo, 
Ete eridi Öböñ emekpere. 

3. Edi ini ufök Abasi 
‘Ndikpöñ iseri mö, 
Eböp isin, emen ikañ 
Man ekpeduk k’usiere usen oro 

4. Söp ka ke usuñ ye ke efak 
Y’usuñ añwañade, 
Kot mbuñö y’nnan edi, 
Ebeñ’ idem enö usiere usen.
 
Amen.  
      """
    },
    {
      "id": 329,
      "title": "O BEÑE IDEM! ",
      // "audio":"",
      "body": """
    KEY F 4/2
    
{:s, .,s,|d :d lL, ,s, .-:d.,r |m :-l :
s, .,s,|d :d lL, ,s, :-:d .,m |r :-l-} 

1. KINI ödö ndö edide 
(edide) 
Kini ödö ndö edide 
(edide) 
M’ ikañ fo eyeyama, 
Me öföñ fo eyefia? 
Kini ödö ndö edide? 

Körös 
O beñ’ idem! O beñ’ idem! 
Ke ödö ‘ndö edide 
(’mebeñ’idem) 
O beñ’ idem! O beñ’ idem! 
Ke ödö ‘ndö edide. 

2. Kini ödö ndö edide (edide) 
Kini ödö ndö edide (edide) 
O beñe usen oro 
Nam eyet m’ukwañkpo fo, 
Kini ödö ndö edide. 

3. Kini ödö ndö edide (edide) 
Kini ödö ndö edide (edide) 
M’ esit fo eyedara, 
K’ okopde uyo Jesus? 
Kini ödö ndö edide? 

4. Kini ödö ndö edide (edide) 
Kini ödö ndö edide (edide) 
Nte mfukho k’edem 
Eyed’ idara k’utit, 
Kini ödö ndö edide? 

5. Kini ödö ndö edide (edide) 
Kini ödö ndö edide (edide) 
K’ Öböñ okotde Esie 
Eyeda ke ebekpo? 
Kini ödö ndö edide? 

6. Kini ödö ndö edide (edide) 
Kini ödö ndö edide (edide) 
’Yedu ye mö efakde 
Me ye mö editakde 
Kini ödö ndö edide? 

Amen.   
      """
    },
    {
      "id": 330,
      "title": "TIM FIÖK SE AFO ÖTÖDE ",
      // "audio":"",
      "body": """
      KEY G 4/2

{.s, |s, .m :m .,m |f .m :-.r 
|d .t, :d .,L, |L, .s, :-.} 

(Duet : Sop & Alto) 

1. TIM fiök se ötöde, 
Koro eyeköri, 
Mbara y’ukwö eyedi, 
Enyöñ ebre, ndien utin, 
Anditö eti mkpasip, 
Eyedök eti mkpöñ 
Anditö eti mkpasip, 
’Yedök k’ idara mkpöñ. 

Körös: 
SA: Tim fiök se ötöde, 
TB: Se ötöde 
SA: Koro eyeköri, 
TB: Eyeköri 
All: Anditö eti mkpasip, 
’Yedök k’ idara mkpöñ. 

2. Tim fiök se ötöde, 
Koro eyeköri, 
Ufiökke ebiet öduöde, 
K’mfut, k’utin, eyeköri, 
Anditö eti mkpasip 
Eyedök eti mkpöñ, 
Anditö eti mkpasip, 
’Yedök k’idara mkpöñ. 

3. Tim fiök se ötöde, 
Idiök eyeköri, 
Ke asuande, ukereke, 
Eyedök mö k’uyo Öböñ, 
Anditö idiök mkpasip, 
Eyedök idiök mkpöñ, 
Anditö idiök mkpasip, 
Eyedök ke möñ-eyet.
 
4. Yak itö etido, 
Ikpöñ idiök ido; 
Idök eyedi y’idara 
Nyin iyedara k’idökde, 
Anditö eti mkpasip, 
Eyedök eti mkpöñ, 
Anditö eti mkpasip, 
’Yedök k’ idara mkpöñ. 

Amen. 
      """
    },
    {
      "id": 331,
      "title": "NTAK MIDIGHE KEMI?",
      // "audio":"",
      "body": """
     KEY Eb 3/4

{.s :m .f |s :-.m :m .,r |
d:-.d :f .m |f .L :s :m |r :-} 

1. O KUYAK ikö ökpöñ fi, 
Kunime uñwana esie; 
Anamidiök k’usöñ esit, 
Eyeböhö, nso k’ebet?. 

Körös: 
Nsinam mi…dighe kemi? 
Eyeböhö, nso k’ebet? 
Nsinam mi…dighe kemi? 
Eyeböhö, nso k’ebet? 

2. Ndusuk ukwe usiere 
Kabaña idorenyin fo 
Idahemi! nyene ibuot 
Eyeböhö, nso k’ebet? 

3. Ererimbot inyeneke 
Baba inemesit ‘ndinö: 
O! du uwem Christian kemi 
Eyeböhö, nso k’ebet? 

4. Öböñ isink’ owo baba, 
Emi etienede Enye; 
Utom mfön ömötöñö! 
Eyeböhö, nso k’ebet? 

Amen.  
      """
    },
    {
      "id": 332,
      "title": "EBIET OSUK ODODU ",
      // "audio":"",
      "body": """
      KEY F 4/2

{|s:fe.,s|m: .d|m.,m:r.d|r:-|f 
:s .,r |f :m |r .,s :fe .L |s :-} 

1. EBIET odu 
K’ufök Eyeneröñ, 
Öyöhö y’uböñ, 
K’ekot fi edi. 

Körös: 
Ebiet odu 
O duk, be duk kemi! 

2. Usen k’ebe, 
Utin k’ösukhöre; 
Mbukpöñ k’öniöñ, 
Uñwana k’osop. 

3. Ufök ndö 
K’öyöhö y’usörö; 
Be duk! Be duk! nyuñ 
Di owo isen: 

4. Emeyöhö 
K’usörö jubilee 
Ebiet k’ododu, 
Daha ka kemi.
 
5. Ebiet k’odu! 
Usuñ k’ana iñwañ-
Usuñ ima; 
Ini ke ododu: 

6. Be duk! Be duk! 
Usörö ’di okuo: 
Cup ‘nsinsi ima 
Edi ke mfön. 

7. Kpukpru ‘ñkpö do, 
K’idara, di be duk! 
M’enjel k’ekot fi 
Nyuñ di bö enö. 

8. Ke efiori, 
Ekot fi ke ima 
Andibiat ini 
Di, duk k’usörö. 

9. Ekim ’yedi, 
K’eberide usuñ; 
Afo eyekop, 
Ebiet iduhe! 

Körös: 
“Baba ebiet!” 
Mböm, möñ eyet fo. 

Amen. 
      """
    },
    {
      "id": 333,
      "title": "MÖÑ KE EDIDU KE NSINSI?",
      // "audio":"",
      "body": """
      KEY F 4/4

{|m :r.dlf :-.m |m :-.d lm :-|s 
:f .m lr :-.r |m :f. m lr :-} 

1. MÖÑ k’edidu k’nsi nsi? 
Emi edi mbume nyin, 
Nso idi ibörö fo? 
Möñ k’edidu k’nsi nsi? 

Körös: 
K’nsi nsi! K’nsi nsi! 
Möñ k’edidu k’nsi nsi? 

2. Ediwak emek Christ mfin 
Ekabare ekpöñ idiök, 
Heven edi udeme mö 
Möñ k’edidu k’nsi nsi? 

3. Ekpöñ mkpafakha usuñ 
Efiak eka ke nsobo; 
Utit mö edidi nso? 
Möñ k’edidu k’nsi nsi? 

4. Kabaresit kini emi 
Da k’mfön y’odudu Öböñ; 
Ndien ibörö fo ’yedi 
Möböhö ke nsi nsi! 

Körös: 
K’nsi nsi! K’nsi nsi! 
Möböhö ke nsi nsi. Amen.
      """
    },
    {
      "id": 334,
      "title": "UBÖK EKE EWETDE KE IBIBENE ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{:m .,f |s :s, .,s, ls, ,s, .-:d .r |m .,r 
:m.f ls} 

1. KE usörö Belshazzar, 
Ye tösn mböñ esie, 
Mö ekeñwöñ ke me ‘ñkpö 
gold, 
Nte Bible ’kewetde; 
Ekeñwöñ k’ okoneyo, 
Ke akwa ufök mböñ, 
Akwa ndik okofuk mö, 
K’ubök ke ibibene. 

Körös: 
S: Ubök Öböñ k’ibibene 
ATB: Ubök Öböñ k’ewet 
k’ibibene! 
S: Ubök Öböñ k’ ibibene 
ATB: Ubök Öböñ k’ewet 
k’ibibene! 
All: Me ’yenyene ubiomikpe, 
M’ikpe eyetebe fi 
S:  K’ubök ewetde k’ibibene? 
ATB: K’ubök oro ’wetde 
ke ibibene. 

2. Se uko Daniel, ofn 
‘Nte adade ke otu 
Asua önö idiök öböñ 
K’ idiök erinam esie 
K’ okotde ñwed oro 
Nsobo okosim mö 
Koro uböñ omokure 
‘Nte ’wetde k’ ibibene. 

3. Se uko y’mbuötidem 
K’ndinam eti utom, 
Emi Spirit ’nöde Daniel, 
K’ odudu esie odu; 
K’ ufök esie ke Judea 
Ke itie ufn esie 
Öfiök ubökñwed Abasi, 
Ewetde k’ ibibene! 

4. K’ ewewet edinam nyin 
Ubök k’ ewewet kemi; 
Anamidiök, tiene Jesus -
Suk ibuot k’ mbet Esie: 
Usen kiet ke ekpere -
Eyedi önö kpukpru, 
Ubiomikpe m’idiök owo 
Eyewet k’ ibibene! 

Amen. 
      """
    },
    {
      "id": 335,
      "title": "UWEM OWO EDI IBIO ",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:d .,r |m .,m :m .,m lm :d .,m 
|s .,s :s .,s |s} 

1. UWEM owo ed’ ibio 
‘Nt’ iköñ eyemerede, 
Nte eböpde ebek: 
Di k’ ini! 
M’usen ke esöp ebe! 
Usen unyöñ k’ ekpere, 
Ndien utit eyedi: 
Di k’ ini. 

Körös: 
Di k’ini … di k’ini… 
K’ini Jesus okotde fi, 
Di k’ini! (di k’ini)! 
K’ abiatde ini k’ idiök, 
Usuñ iduhe aba 
Möñ-eyet ed’ ikpikpu 
Di k’ ini! 

2. Iköñ emeyemere 
Uyen ye uyai ebe; 
Uwem ibighike mi 
Di k’ ini! 
Di ke Spirit okotde, 
Anamidiök kubighi 

3. Ini k’ ösösöp ebe, 
Mkpa ye ikpe k’edi, 
Feghe ditiene Jesus, 
Di k’ ini! 
O! bat s’iditakde fi, 
‘Mbemiso utit edi, 
Ukpöñ fo atak ke hell; 
Di k’ ini! 

4. Anamidiök kpañ utöñ, 
Mek Öböñ k’ udeme fo, 
‘Ndien heven eyedara, 
Di k’ ini! 
Kpöñ ekim duk k’ uñwana, 
Di man Jesus eyet fi, 
Töñ’ isañ heven kemi: 
Di k’ ini! 

Amen. 
      """
    },
    {
      "id": 336,
      "title": "IDÖK KE EBEBE",
      // "audio":"",
      "body": """
      KEY G 2/4

{.s, |m :r .d |L, :s, .s, |d :t, .d |m .r 
:-.s,|m:r .d|f:m.dlr:d.t,|d} 

1. KOP anamidiök Öböñ 
k’ ekpe fi ubök, 
K’ item emi asañade ye mböm; 
Kpañ utöñ nö uyo Esie 
mbak ikpe: 
“Idök ke ebebe, ukpeñe 
’yetre.” 

Körös: 
“Idök ke ebebe, ukpeñe 
’yetre” 
pp “Idök ke ebebe, ukpeñe 
’yetre” 


2. Adaña didie k’ewut idiök 
itie fo 
Adaña didie k’edinö fi item; 
Wara di k’ Enye ebetde 
ndibö fi! 
“Idök ke ebebe, ukpeñe 
’yetre.” 

3. Ke afo esinde, Enye 
eyekpöñ fi: 
Akwa ukut ye ndik eyesim fi! 
O! anamidiök, wara di, 
eyebö fi! 
“Idök ke ebebe, ukpeñe 
’yetre.” 

4. Öböñ eyekot fi ikpe k’iso 
Esie; 
Suk ibuöt nö Enye, saña ye 
Enye; 
Nö Enye esit fo, kpono 
Enye kemi; 
“Idök fo k’ebede, ukpeñe 
’yetre.” 

Amen. 
      """
    },
    {
      "id": 337,
      "title": "O! EMEBEÑE IDEM?",
      // "audio":"",
      "body": """
      KEY Bb 6/8

{:s, |s, :L,:s, lm, :s, :d |m :-:r ld ::
d |d :t, :L, |d :-:L, |s :-:-} 

1. JESUS okpokot fi mfin, 
ufan 
Man ada k’ ikpe Esie 
Onyuñ öfiök ke uwem fo 
eyetre 
M’eyedara k’ ikot oro? 

Körös: 
SA: O, e …mebeñ’ idem 
TB: O, emebeñ’ idem, beñ’ 
idem 
All: Jesus okpokot fi mfin 
(mfin) 
SA: O, e … mebeñ’ idem 
TB: O emebeñ’ idem, beñ’ 
idem 
All: Beñ’ idem, kop ikot Esie 
(Esie). 

2. Jesus okpokot fi mfin emi, 
Ibörö ekpedi ‘nso? 
Eyedara ndikop uyo Esie? 
Enem esit ‘ndikut Enye? 

3. O emebeñ’ idem ’diyak 
uwem 
Ke Jesus ’dide mfin? 
Ömöfiök anyanya ke ebet 
fi do? 
Midibiarake k’nsinsi? 

4. Beñ’ idem, koro ufiökke 
ini, 
Ikot edisimde fi, 
Ke ini owo midikwe fi aba, 
Ndien afo oduk k’ikpe. 

Amen. 
      """
    },
    {
      "id": 338,
      "title": "CHRISTIAN, O! TIM SAÑA ",
      // "audio":"",
      "body": """
     KEY G  3/4

{|s, :d :m |m :-.r :d |r :d :t, |d :-:|
s, :d :m |s :-.f :m |m :r :d |r :-:-} 

1. CHRISTIAN tim saña, ndik 
k’ekpere! 
Saña k’nyekidem y’ mfaridem; 
Afia ke añwa, idomo k’ ufök, 
Oyom nditap fi nsin k’idiök. 
Christian O! tim saña: 
Christian O! tim saña: 
Christian O! tim saña: 
Ndik k’ edi. 

2. Christian saña k’idara 
k’oyobio, 
Okposuk enyöñ ödiökde eti; 
Mbufut eyesöp ebe efep, 
Andinyaña ’yenö fi ifure, 
Christian saña dara: 
Christian saña dara: 
Christian saña dara: 
Be k’oyobio. 

3. Christian tim böñ akam, 
mbak iduö K’efrede 
ndikot Andinyaña; 
Eyebe ke kpukpru me idomo – 
K’ esinede akam k’ñkpö eköñ, 
Christian tim böñ akam: 
Christian tim böñ akam: 
Christian tim böñ akam: 
Mbak iduö. 

4. Christian dori enyin 
koro ukut 
Y’ubiak eyetre k’okutde Öböñ; 
Ebierikpe eyedöhö ete, 
“Di be duk ke idara Öböñ fo.” 
Christian dori enyin: 
Christian dori enyin: 
Christian dori enyin: 
Nyuñ du k’emem. 

Amen.  
      """
    },
    {
      "id": 339,
      "title": "FIORI KE ÖKPÖSÖÑ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|m:-.r d|d:d.,t,|L,:dls,:-|s
:d.,rlm:m.,m|m:r lr:-} 

1. ANDIKPEME fiori k’ökpösöñ 
Koro usen Öböñ ke edi 
Anie ’diböhö iyaresit? 
Anie ’diduk k’nduök odudu? 

Körös: 
Andikpeme fiori ke ökpösöñ 
Öböñ eyedi k’ akwa odudu 
M’odudu ekim k’ekutde Enye 
Kpukpru mö eyeduöñö. 

2. Nam mfiori! Fo aka iso 
Ebe nte ofim ke isöñ 
“Ka k’ Itiat, ebiet udibe 
Ka k’ Itiat, dibe k’aba 
Esie.” 

3. Nam mfiori fo ödök 
k’ obot 
Kot me andisop usuñ kemi 
Döhö mö eda k’akpanikö 
Nam mö eduk k’uböhö mfön. 

4. Fiori ke utöñ ‘nditö öwöñ 
Fiori k’ utöñ ñkani owo, 
Efiori kini uwemeyo! 
Efiori tutu ekim ebe! 

Amen. 
      """
    },
    {
      "id": 340,
      "title": "NTE AFO EYEDA JESUS MFIN? ",
      // "audio":"",
      "body": """
      KEY Ab 4/2

{:s,|m :m lm .f :-.m |r :L, lr :d |t, 
:t,lt, .d:-.r |m :-l-} 

1. M’EYEDA Jesus k’ukpeme fo? 
Ima ’yeyama k’ usuñ; 
Afo ’yeduñ k’ ifure Esie, 
M’eyebö Jesus mfin? 

Körös: 
M’eyebö Jesus mfin? 
M’eyebö Jesus mfin? 
Erifen y’emem önö kpukpru; 
Meyebö Jesus mfin? 

2. Ekeköñ Öböñ ke ntak fo, 
Nyime nö ima Esie; 
Usuñ mböm anana iñwañ, 
M’eyebö Jesus mfin? 

3. Oyom ‘ndiduk k’esit idiök fo; 
M’eyebin Enye efep? 
Berede esit fo man oduk 
M’eyebö Jesus mfin? 

4. Möbö Jesus Öböñ y’Edidem, 
Madara ikö Esie, 
Efen m’idiök mi, ‘nyetor’ 
Enye, 
Ih möbö Jesus mfin! 

Körös: 
Möbö Christ Öböñ mfin! 
Möbö Christ Öböñ mfin! 
Erifen y’emem önö kpukpru; 
Möbö Christ Öböñ mfin! 

Amen. 
      """
    },
    {
      "id": 341,
      "title": "DARA, ERINYAÑA EDI KE MFÖN",
      // "audio":"",
      "body": """
     KEY Ab 6/8 

{:s, |d :-.d :d ld :-:m |r :-:L, lL, ::
d |t, :-:t, lt, :L, :t, |d :-:-l-:-} 

1. MBUFO edemere y’ ikwö, 
Eduök kpukpru mfukhö, 
Yak uyo idara ebighi, 
M’anamidiök emefiak. 

Körös: 
Kwö erinyaña k’mfön,
Önö m’anamidiök, 
Öböñ ke ebet ndibö fi, 
O me ’yedi. 

2. Me usuñ heven eberede, 
O mbon enyöñ, ekwö; 
Kini mebuñesit ye 
mem-mem 
Etiened’ Öböñ Jesus. 

3. Baba owo kiet ikemeke 
Ndinö ekond’ ufak, 
Jesus k’odudu Esie ikpöñ, 
Okosobo usua nyin. 

4. Anamidiök, önö fi uwem; 
Nte afo unimke? 
Eridahado k’ebet k’mfön, 
Nyime, man odu uwem. 

Amen. 
 
      """
    },
    {
      "id": 342,
      "title": "KAM KOP UYO ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{:m .,f |s .,L :s .,f lm :d .,d |r .,d 
:L, .,d ls, :d .,r |m .,m :m .,m lm 
:d |r: -l-} 

1. NTE Abasi eketiñde ke 
usen edem 
Ntre Öböñ k’okot nyin mfin; 
Ufan se Enye etiñde edi 
akpanikö; 
Ñkpö kiet odu ‘ndinam, 
kop uyo. 

Körös: 
Kop uyo… kop uyo... 
SA: Enye ’di usuñ 
TB: Enye ’di usuñ, (ata usuñ) 
All: Ke etop osimde fi ñkpö 
kiet odu ‘ndinam 
Kop uyo... (Öböñ k’etiñ) 
kop uyo (kop uyo). 

2. K’odude k’ubök Öböñ, 
nam s’Enye etemede, 
Usuñ gospel efen iduhe; 
Kufep etop enöde, kuyom 
ndibup ntak, 
K’ Öböñ etiñde ’nö fi, kop 
uyo. 

3. K’ oyomde eti iduñ, ke 
obio edem enyöñ, 
K’uwem fo k’isöñ okurede; 
K’afo mufiökke usuñ, Christ 
ke okot, “Tiene Mi,” 
K’mbuötidem y’utom suk 
kop uyo. 

Amen. 
      """
    },
    {
      "id": 343,
      "title": "NYIME NÖ JESUS",
      // "audio":"",
      "body": """
      KEY Db 4/4 

{:s|s :-.m lf .m :r .d |L : -l -:L 
|s:-.L ls :m |r: -l – } 

1. KE ibede k’usuñ uwem, 
Inyuñ ikad’ iso, 
Suñ suñ uyo ososim nyin, 
“Yak esit fo nö Mi.” 

Körös: 
Nyime nö Jesus, 
nyime nö Jesus, 
Kubiat ini aba, 
Nyime nö Jesus, 
nyime nö Jesus, 
Nyime mfin emi. 

2. Anie edimek ndida 
Ke edinen usuñ? 
Ima ye emem odu do, 
Utit edi ’dara. 

3. Omokop ediwak ikot, 
Enye okotde “Di,” 
Fiak, okposuk oyomd’ usuñ, 
Kabare nyöñ “ufök.” 

4. Abiañ’ odu k’uñwöñ’ isöñ, 
Utit edi mkpa, 
Ata uwem, Öböñ önö, 
Ebighi k’nsinsi. 

Amen. 
      """
    },
    {
      "id": 344,
      "title": "ANIE ADA KE USUÑ MI ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{|m:m .,m lm :r .d |d :-lL, :|s, 
:d .,m ls :m |r : -l -} 

1. ANIE ada k’usuñ mi, 
Etienede mi suñ 
Oyomde ‘ndiduk k’esit? 
Edi uyo Anie? 

Körös: 
Inem uyo k’ofiori, 
“Bered’ usuñ nö Mi! 
Ke okopde ikot Mi, 
Nyeduñ ye afo.” 

2. Enye ’du k’añwa ikpöñ 
Ami k’esit ufök, 
K’nsuk mbiatde ini, 
M’ Enye idibehe? 

3. Ke ata ini ekim, 
Enye afiak ököñ, 
Jesus, ukpaha mba 
K’osuk ebebet mi? 

4. ‘Nyesöp ndiberede, 
Esit mi ’nö Öböñ, 
Okposuk ötuñöde, 
Enye ’yeduñ y’ami.

 Amen. 
      """
    },
    {
      "id": 345,
      "title": "UKPÖÑ OWO, NSINAM ESUANADE? ",
      // "audio":"",
      "body": """
      
KEY G 4/2

{|m : -.m lr :d |s :m lm :r |f :-.f 
lm :L, |t, :d lt, :-} 

1. M’UKPÖÑ ‘nsinam 
esuanade? 
Nt’ otu eröñ k’ndik? 
Ndisime! Eyo nso 
Ekpöñ ima ’kpanikö? 

2. Eti ekpemeröñ odu 
Etiede nte Enye? 
Nte Andinyañ’ oyomde 
Nyin itie k’ukot Esie? 

3. Mböm Abasi omokpon, 
Okpon ‘nte inyañ ibom 
Mfönido k’ikpe Esie 
Amakan uwör’ ufn. 

4. Efen ifiökk’ ukut isöñ, 
Nt’ efiökde ke heven; 
Efen ituah’ isöñ mböm 
Nt’ ubierikpe Öböñ. 

5. Ima Abasi omokpon 
Akan ekiker’ owo; 
Nsinsi Ete enyene 
Utibe esit mböm. 

6. Uwak utom ufak edu 
Ke iyip ekeduökde; 
Idar’ odu önö kpukpru, 
Oto ke mkpa Esie. 

7. Akpa mba, tiene Jesus, 
Di, O di, kunyuñ uyik, 
Di ye ata mbuötidem 
Ke akwa mfön Esie. 

8. Edieke imade Enye, 
Ikponim ikö Esie; 
Uwem nyin mi akpayama, 
Oto k’inem Öböñ nyin. 

Amen. 
      """
    },
    {
      "id": 346,
      "title": "ABASI KE OKOT ANDIYO",
      // "audio":"",
      "body": """
      KEY Bb 12/4 

{|s, :-:-ls, :-:-ls, :m, :f, ls, :L, :t,|d 
:-:s, ld :-:r lm :-:-l -:-:-} 

1. ÖBÖÑ k’okot andiyo 
edi, kubiat ini. 
Kop, Enye ke okot, Enye 
k’okot (k’okot) fi; 
Okposuk ökökpöñde Enye 
k’anyan ini, 
Enye k’osuk okot k’ima 
(ke okot). 

Körös: 
SA: K’okot fi kemi, 
TB: K’okot fi kemi, 
k’okot fi kemi, 
S: O, afo andiyo di: 
ATB: Afo andiyo di, 
afo andiyo di; 
SA: K’okot fi kemi, 
TB: K’okot fi kemi, 
k’okot fi kemi 
S: O, afo andiyo di 
ATB: Afo andiyo di, 
afo andiyo di 

2. K’ima y’ime Ete k’osuk 
ekpekpe ubök 
Kop, Enye ke okot, Enye 
k’okot (k’okot) fi 
O, fiak edem, Spirit ke 
ebeñe ke mböm, 
Enye k’osuk okot k’ima 
(ke okot). 

3. Di udia odu k’ufök 
Ete fo ke uwak, 
Kop, Enye ke okot, Enye 
k’okot (k’okot) fi 
Se! emebri okpokoro, udia 
emebiet. 
Enye k’osuk okot k’ima 
(ke okot). 

Amen. 
      """
    },
    {
      "id": 347,
      "title": "YAK ENYE ODUK",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:d .r |m .m :m .m lm :r .d |s:-l :
L .s |m :-l-:d .m |r :-} 

1. KOP Andinyaña k’usuñ, 
Yak oduk...yak oduk...yak 
oduk... 
Ökököñ kpukpru ini 
Yak oduk...yak oduk...yak 
oduk... 

Körös: 
Andinyaña ada ke usuñ 
(ke usuñ) 
Ekpeme onyuñ ebet fi do 
(ebet do), 
Bered’ esit idiökñkpö, 
Yak Andinyaña oduk; 
Yak oduk … yak oduk. 

2. Ata akpan ufan fo, 
Yak oduk...yak oduk...yak 
oduk 
Kiet edikpemede fi, 
Yak oduk...yak oduk...yak 
oduk 

3. Kuyak atuak k’ikpikpu, 
Yak oduk...yak oduk...yak 
oduk 
Ndusuk ituakk’ aba, 
Yak oduk...yak oduk...yak 
oduk 

4. Kop inem uyo Esie, 
Yak oduk...yak oduk...yak 
oduk 
Nyime, nyuñ dara Enye 
Yak oduk...yak oduk...yak 
oduk. 

Amen. 
      """
    },
    {
      "id": 348,
      "title": "DI TIENE ENYE KEMI",
      // "audio":"",
      "body": """
      KEY D 3/4  

{|m :m :m |s :-.L :s|s :r :f |m :-: 
|L :L :L |s :-.f :m |s:f :m |r :-:-} 

1. JESUS k’ebet fi, O anamidiök, 
Ke okot ke ima, “Di tiene Mi,” 
K’ebet ndinö fi mböm y’emem, 
Di andiyo, nö Enye esit fo. 

Körös: 
Tiene Enye, k’ebet fi kemi, 
Kukpöñ mböm Esie önöde fi, 
Jesus k’ebebet, k’ebebet fi, 
Ke okot ke ima, “Di tiene Mi.” 

2. Kpöñ usuñ enemde obukidem, 
Saña y’Enye k’mkpafakha usuñ, 
Emi öyöhöde ye m’edidiöñ, 
Ada fi osim k’inem obio gold. 

3. Tiene Öböñ, mfön Esie awak, 
Tiene Andinyaña okotde fi, 
Duk k’otu, Enye ’di ata usuñ, 
Nte akpatre ikot – Di kemi. 

Amen. 
      """
    },
    {
      "id": 349,
      "title": "NÖ MI ESIT FO",
      // "audio":"",
      "body": """
      KEY F 3/8 

{|s, :d :r |m :-:m .m |f :d :r |m ::-|
s :r :m |f:-.m :f|L :s :f|m :-:-} 

1. “NÖ Mi esit fo,” Öböñ ödöhö, 
Oyom ima akan m’enö efen, 
K’etiñ suñ k’ebiet afo odude, 
“Bere ye Ami, nö Mi esit fo.” 

Körös: 
“Nö Mi esit, nö esit fo,” 
Kop suñ suñ uyo k’ebiet odude, 
Eyesio fi k’ekim ererimbot, 
Etiñ ke ima, “Nö mi esit fo.” 

2. “Nö Mi esit fo,” Andinyañ’ etiñ, 
Ke okot ke mböm kpukpru ini, 
“Fiak edem ke ibak, y’idiökñkpö fo, 
Ñkakpa ’nö fi, nö Mi esit fo.” 

3. “Nö Mi esit fo” Spirit ödöhö, 
“Kpöñ kpukpru se enyenede nö Mi, 
Nyenö fi mfön awak akan, 
Yak kpukpru kemi, nö Mi esit fo.” 

Amen. 
      """
    },
    {
      "id": 350,
      "title": "YAK ÖBÖÑ ODUK! ",
      // "audio":"",
      "body": """
    KEY G 4/4

{:d .r |m :m lm :r .d|r :L, lL, :L, .d 
|t, :t, .d lr :m .f|m:-l-} 

1. ÑKOKOP uyo k’ekim esit mi, 
Ndemere k’idap idiökñkpö, 
Edi Jesus, Enye ama ököñ; 
Mödöhö Öböñ be duk kemi. 

Körös: 
S: Bere-de, be-re-de nö 
A: Bere-de, bere, berede nö 
T: Berede, bere, be-re-de nö 
B: Bere, bere, bere, berede nö 
All: Öböñ man oduk (man oduk) 
Esit fo ’yeyama k’uñwana heven, 
K’ Öböñ ebede oduk. 

2. Ndien Enye ’nam usörö ima, 
Ami ñko ndia ye Enye; 
K’idara, mekere nte öfön 
Y’ami akan mö oro k’enyöñ. 

3. K’eñwan ye me asua 
akpanikö, 
Enye edi Otu-eköñ mi; 
Edemere ukpöñ ye uyen mi, 
Önö erikan k’ibör’ akam. 

4. Nyedia usörö k’iso Esie; 
K’ima Enye önöde k’mfön; 
Enye ödöhö k’uñwöñö Esie 
K’ nyebuana k’usörö k’uböñ. 

Amen. 
  
      """
    },
    {
      "id": 351,
      "title": "YYAK JESUS ODUK KE ESIT FO ",
      // "audio":"",
      "body": """
      KEY Ab 6/4 

{|s, :-.s, :s, |s, :m, :s, |d :r :m |s, 
:-:d |t, :-.t, :t, |t, :d :r|d :-:-ls, 
:-:-} 

1. K’ AKPADE mbak’mbiomo idiök, 
Yak Jesus oduk k’esit fo; 
K’oyomde ‘ndidu obufa uwem, 
Yak Jesus oduk k’esit fo. 

Körös: 
Kemi, kpöñ eyikhe fo, 
O, kusin aba Enye 
Kemi, berede usuñ, 
Yak Jesus oduk k’esit fo. 


2. K’edisana ido ödöñde fi, 
Yak Jesus oduk k’esit fo, 
Idimmöñ eyetde fi omodu, 
Yak Jesus oduk k’esit fo. 

3. Ke oyobio akande fi okuk, 
Yak Jesus oduk k’esit fo, 
K’ererimbot minöhö uyukhö, 
Yak Jesus oduk k’esit fo. 

4. Ke nti ufan fo ebiañade, 
Yak Jesus oduk k’esit fo. 
Se oruk ufan Enye edide, 
Yak Jesus oduk k’esit fo. 

5. Me ’yebuana k’ikwö nti owo? 
Yak Jesus oduk k’esit fo, 
Me ’yeduk k’ebiet nduök odudu? 
Yak Jesus oduk k’esit fo. 

Kemi, mökpöñ eyikhe 
Kemi, n-sinke aba. 
Kemi, mebered’ usuñ, 
Jesus oduk ke esit mi. 

Amen. 
      """
    },
    {
      "id": 352,
      "title": "KE EBET, KE ÖKÖÑ ",
      // "audio":"",
      "body": """
      KEY F 3/4  

{|m :-:m|r :-:d|f :m: |r:L: 
|d :-:d |r :-:r |m:-:-} 

1. EDI anie ebet, k’ebet, 
Ke enyin usuñ? 
Edi anie ököñ, k’ököñ? 
K’ubet esit fo? 
Yak Enye oduk edi, 
Edi ye emem, 
Andinyaña ököñ, k’ököñ, 
Öböñ y’ Edidem. 

Körös: 
Yak oduk, yak oduk! 
K’ebet k’enyin usuñ 
Yak oduk ’bak edinyöñ 
Idifiakk’ aba! 

2. Ukopke etiñde, k’etiñ, 
Di O tiene Mi, 
K’ntak fo ñkakpa, ’kakpa, 
Eköñ mi k’ eto. 
Di, se ñkañ y’ ubök Mi. 
Se mi, du uwem, 
M’idiök fo ekpewak, ewak, 
Erifen mönö. 

3. Uyo Esie okot, k’okot 
Suñ k’inem uyo, 
Nyime Enye ösöp oduk 
Man okukpöñ fi! 
Ekpe ubök k’ikpikpu? 
Omoyom önyöñ? 
Koro me ebeñe Esie. 
Idukk’ esit fo? 

4. Ama ’kem eyebet, ebet, 
Ke inua otop, 
Ndien eyebeñe, ’beñe, 
Ke ubiat ini! 
Kemi bö esen heven, 
M’idiök fo ’yefen, 
K’ Enye suk ebetde, ’betde. 
Yak Enye oduk! 

Amen.
      """
    },
    {
      "id": 353,
      "title": "DI, ANAMIDIÖK, DI ",
      // "audio":"",
      "body": """
      KEY F 6/4

{|m:-:-ld :r :m |f :-:L, lm :-:r 
|d :-:-|r :d :r lm :-:-|-:-} 

1. KE JESUS ’kotde fi di, 
anamidiök! 
K’iyomde fi k’akam! Di, 
anamidiök! 
Nyime Enye kemi! 
Di, anamidiök! 
Fiök Enye ke emi! Di, 
anamidiök! 

2. Mbiomo fo okpon? Di, 
anamidiök! 
Jesus eyeñwam fi! Di, 
anamidiök! 
Jesus ibiañake! Di, 
anamidiök! 
Jesus eyebö fi! Di, 
anamidiök! 

3. Enye k’ebeñe fi! Di, 
anamidiök! 
Dibö edidiöñ fo! Di, 
anamidiök! 
Ke Jesus okotde, di, 
anamidiök! 
Iyoyom fi k’akam! Di, 
anamidiök! 

Amen. 
      """
    },
    {
      "id": 354,
      "title": "ÖBÖÑ KE OKOKOT! ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{s :d .r lm :-.m |m .r :flm :-|r :r .r 
ld :r |r :L, ld .t , :L .s ,} 

1. ÖBÖÑ k’okot! Me ñkopke? 
Ke nyeyire inem uwem? 
M’usen uwem k’ebebe, 
Ndien ukpöñ mi k’ edede? 
Körös: 


S: K’o-kot, kop nö Enye 
ATB: Öböñ k’okot, kop 
(nö Enye), 

S: K’o-kot kop nö Enye 
ATB: Öböñ k’okot, kop 
(nö Enye) 

All: Öböñ k’okot, kop 
(nö Enye k’okot, k’okot) 
S: K’o-kot, kop nö Enye, 

ATB: Öböñ k’okot, kop 
(nö Enye) 

S: K’o-kot kop nö Enye 
ATB: Öböñ k’okot, kop 
(nö Enye) 
All: Öböñ k’okot, kop nö 
Enye, k’okot fi. 

2. Öböñ k’okot! Me nyesin? 
Nte nyesin uyo Esie 
Y’ukpeme Esie, k’ndek? 
Enye k’okot, ‘ndibiat ini? 

3. Öböñ k’okot onyuñ atuak 
Me nyesöñ esit ye Enye? 
Enye k’osuk ebet mi; 
’Yeyat Spirit Esie esit? 

4. Öböñ k’okot, ‘ndikpañk’ 
utöñ? 
Me nyesuk ndu ke ufn? 
K’mbetde, isinke mi: 
K’okot: esit mi, demere! 

5. Öböñ k’okot, mbetk’ aba; 
Mayak esit mi, mbiatk’ ini 
Mökpöñ idiök ’rerimbot 
Uyo Abasi osim mi . 

Amen. 
      """
    },
    {
      "id": 355,
      "title": "ÖBÖÑ KE OKOT",
      // "audio":"",
      "body": """
      KEY F 2/2

{:s |s .m :m .d |r:-|s :L .fe |s :s 
|s .m :m .s |L :-|r :m .r |d } 

1. MFIN, Öböñ k’okot 
Me andiyo; 
Nsinam eyode, 
Mbon ekim? 

2. Mfin, Öböñ k’okot; 
O kpañ utöñ! 
K’ufök Abasi Ibom, 
Kop nö Jesus. 

3. Mfin, Öböñ k’ okot; 
Feghe böhö; 
Usen ikpe y’mkpa 
Emekpere. 

4. Spirit k’okot mfin, 
Kop nö Enye, 
Kuyat Enye esit 
Kini mböm. 

Amen. 

      """
    },
    {
      "id": 356,
      "title": "NSO INAM AFO EBETDE? ",
      // "audio":"",
      "body": """
    KEY A 6/8  

{|s, :s, :s, lL, :-:s, |s, :d :-l -:-:d 
|r :r:rld:d:r|m:-:-l-:-} 

1. NSO k’ebebet, ufan? 
O, atak k’eribiat ini? 
Andinyaña k’ ebet ’dinö fi 
Ebiet y’ ndisana owo. 

Körös: 
Nso inam 
Mutieneke Enye? 
Nso inam 
Mutieneke Enye? 

2. Ekere nso, ufan 
Ke osuk abiatde ini? 
Edi Jesus ikpöñ anyaña; 
Usuñ Esie ikpöñ odu. 

3. Afo ukopke, ufan, 
Spirit Esie enyikde fi? 
O! unyimeke erinyaña, 
Man ökpöñ mbiom’ idiök fo? 

4. Nso k’ebebet, ufan? 
Ukpeñe k’ebebe ama; 
Andinyaña k’ oyom ’didiöñ fi: 
Ubiat ini edi mkpa. 

Amen. 
  
      """
    },
    {
      "id": 357,
      "title": "BEREDE USUÑ AÑWAÑA ",
      // "audio":"",
      "body": """
      KEY Db 4/4

{|s: -.L ls :d' |d':-.t lt :-|f :-.m 
lf :L |L :-.s |s :-} 

1. JESUS ököñ, okot fi, 
“Akpa mba tiene Mi,” 
Enye ikpöñ anyaña, 
Berede usuñ! 
(Bere, berede usuñ) 

Körös: 
S: Berede usuñ! 
A: Berede, berede usuñ! 
TB: Bere, berede, berede usuñ! 
S: Berede usuñ! 
A: Berede, berede usuñ! 
TB: Bere, berede, berede usuñ! 
All: Enye ikpöñ anyaña: 
S: Berede usuñ! 
A: Berede, berede usuñ! 
T: Bere, berede, berede usuñ! 
B: Bere, berede usuñ! 

2. Jesus edi! ‘ndiyaña, 
Akakpa ke ibuot fo; 
Enye ama ’kan udi, 
Berede usuñ. 
(Bere, berede usuñ).
 
3. Jesus k’osuk okot fi, 
Nyime ñö Enye kemi; 
Eyenö fi idara 
Berede usuñ 
(Bere, berede usuñ) 

4. Ke ököñ, ini k’ebe 
Erinyaña k’ekpere, 
Se Andinyaña ’yebe, 
Berede usuñ. 
(Bere, berede usuñ)! 

Amen. 

      """
    },
    {
      "id": 358,
      "title": "YAK ANDINYAÑA ODUK! ",
      // "audio":"",
      "body": """
      KEY Db 4/4 

{:m .fls:m'ld':Lls:-l-:|s:-l-:L 
ls :-l-} 

1. ESEN ada ke usuñ; 
Yak oduk (Andinyañ’ oduk) 
Enye ama odu do 
Yak oduk (Andinyañ’ oduk) 
Yak oduk man okukpöñ 
Yak oduk, Enye edi 
Jesus, Eyen Abasi 
Yak oduk (Andinyañ’ oduk) 

2. Bered’ esit nö Enye; 
Yak oduk (Andinyañ’ oduk), 
Ke ebetde, eyekpöñ; 
Yak oduk (Andinyañ’ oduk), 
Yak oduk, Eti Ufan; 
Eyenyaña ukpöñ fo, 
Ekpeme tutu utit; 
Yak oduk (Andinyañ’ oduk).
 
3. Kemi kop uyo Esie! 
Yak oduk! (Andinyañ’ oduk)! 
O! Da Enye ke okuo; 
Yak oduk! (Andinyañ’ oduk), 
Enye ada ke usuñ; 
Eyenö fi idara 
Man afo okpon’ Enye; 
Yak oduk (Andinyañ’ oduk).
 
4. Nyime nö Esen heven, 
Yak oduk! (Andinyañ’ oduk)! 
’Yenam usörö ’nö fi; 
Yak oduk (Andinyañ’ oduk) 
Eyefen m’idiökñkpö fo; 
K’ uwem isöñ etrede, 
’Yemen fi önyöñ heven; 
Yak oduk (Andinyañ’ oduk). 

Amen. 

      """
    },
    {
      "id": 359,
      "title": "KOP, UKPÖÑ MI!",
      // "audio":"",
      "body": """
     KEY Ab 4/4 

{|d :dld:-.t,|L,:t,ld:-|r :rlm 
:s,|L, :rlt,:-} 

1. UKPÖÑ mi kop nö Öböñ, 
Enye ’di Andinyaña, 
Jesus k’ etiñ ye afo, 
Nt’ afo amama mi? 

2. Ñkosio fi ke ufn, 
Ñkökök fi unan fo; 
Ami ‘ñkowut fi usuñ, 
K’ekim, ’nö fi uñwana. 

3. Eka ekeme ‘ndifre 
Edima eyen esie? 
Ih! ekeme ndifre; 
Ami ndifreke fi. 

4. Ima mi ikpukhöke 
Omokoñ akan enyöñ, 
Otuñö akan k’isöñ, 
Öfön, ösöñ akan ‘mkpa. 

5. Afo ’yesöp okut Mi, 
K’ utom ‘mfön okurede; 
Eyedu y’ami k’uböñ; 
“Anamidiök, ’mama Mi?” 

6. Öböñ, ke nseseme, 
Ima mi otim ekpri; 
’Mama Fi, ñkpono Fi; 
Nö ‘mfön mma fi ñkan. 

Amen.  
      """
    },
    {
      "id": 360,
      "title": "SESE MI KE ENYIN USUÑ! ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:s, |s, :-l-.d :t, .d |r .,L, :r |-:d |t, 
:-.d lr .de :r .m |d :-l-} 

1. SESE mi ke enyin usuñ, 
Suñ suñ ke mkpekpe ubök: 
Kop, O! Afo esit idiök, 
Yak Mi nduk, yak Mi nduk! 

Körös 
Sese mi ke enyin usuñ 
Kop, ami k’mkpekpe ubök: 
Börö, esit odobide, 
Yak Mi nduk, yak Mi nduk! 

2. Ñkobiom ñkukim nö fi, 
Ami ñkebet ke ime: 
Börö, esit odobide, 
Yak Mi nduk, yak Mi nduk! 

3. Mkpehe ubök k’ ikpikpu; 
Ti, kpukpru ukut y’ ubiak Mi! 
Ñkakpa man mkpafak fi: 
Yak Mi nduk, yak Mi nduk! 

4. ’Medi y'idar’ otod’ enyöñ 
Erifen, emem ye ima, 
Börö, esit odobide, 
Yak Mi nduk, yak Mi nduk! 

Amen. 

      """
    },
    {
      "id": 361,
      "title": "DI, O! DI ",
      // "audio":"",
      "body": """
     KEY G 3/4

{:m .f |r :-.de :r .m |d:s, :d.d |d 
:-.t, :d .L, |s, :-} 

1. DI, O di! Christ ke okokot, 
Kubiat ini ke idiök; 
Kpök kpukpr’ uruk öböpde fi, 
Töñ’ isañ usuñ heven. 

Körös: 
K’ okot fi, k’ okot fi, 
Kop Andinyaña k’okot (kemi) 
K’okot fi, k’okot fi, 
Kop Andinyaña k’okot. 

2. Di, O di! Christ k’ekpe ubök; 
Okot ke uyo ima! 
M’eyesin mböm önöde? 
M’eyefiak ökpöñ Enye? 

3. Di, O! di, kubebet aba 
Ke eti ini emi, 
O yak uwem fo nö Jesus, 
Tim suk ibuot nö Enye. 

Amen. 
 
      """
    },
    {
      "id": 362,
      "title": "MBÖM EDI KE MFÖN, ONYUÑ OKPON ",
      // "audio":"",
      "body": """
      KEY E 6/8 .7 

{|m :m :m lf :m :m |L :s :d lm :-: 
|m :r :s, lr :-: |r :d :s, ld :-:} 

1. TORO Jesus, mböm Esie okpon: 
Edi k’ mfön, edi k’mfön! 
Anamidiök, mböm do önö fi -
Okpon, edi ke mfön! 
Ke onimde Enye k’akpanikö: 
Mböm Esie, edi k’ mfön! 
Afo ’yenyene nsinsi uwem: 
Mböm edi ke mfön! 

Körös 
Jesus Andinyaña k’oyoyom fi! 
K’ oyoyom fi, k’ oyoyom fi! 
Suñ suñ ye k’ima Enye k’okot fi! 
K’ okot, k’ onyuñ oyom fi. 

2. Nsinam oyode k’ obot idiök? 
Mböm Esie edi k’ mfön! 
Suñ suñ Spirit k’ okot fi ko k’ iduñ: 
Mböm edi ke mfön! 
M’ odu ke ekim? Be duk k’ uñwana: 
Mböm Esie, edi k’ mfön! 
Jesus k’ ebebet ndinyaña fi: 
Mböm edi ke mfön. 

3. Kere mfön, ima y’ime Esie: 
Mböm Esie, edi k’ mfön! 
K’ekpe Ete ubök abaña fi 
Mböm edi ke mfön! 
Kabaresit, nö Enye uwem fo: 
Mböm Esie, edi k’ mfön! 
Kuyat Enye esit, di kpa ntre: 
Mböm edi ke mfön! 

4. Erifen odu önö mendinim: 
Mböm Esie, edi k’ mfön! 
Di kpasuk kemi, nyuñ bö eridiöñ: 
Mböm edi ke mfön! 
Jesus k’ ebebet, kop ikö Esie: 
Mböm Esie, edi k’ mfön! 
Yire k’ enyiñ ye uñwöñö Esie: 
Mböm edi ke mfön! 

Amen. 

      """
    },
    {
      "id": 363,
      "title": "ENYENE FI YE AMI ",
      // "audio":"",
      "body": """
      KEY Ab 6/8

{|m:-.r :d ld :t, :d |r :d :L, lL, :s,: 
|d:d :dlm:-.r :d|r:-:-l-:-} 

1. SUÑ SUÑ ye k’ emem 
Jesus ke okokot, 
Enye k’ okot fi y’ ami; 
Ke ime Jesus k’ebet, ke ekpeme 
K’ekpeme fi ye ami. 


Körös 
“Nyöñ di!” … “Nyöñ di!”... 
M’ekpamba enyöñ edi, 
K’ akpan, suñ suñ Jesus ke 
otim okot, 
O anamidiök “nyöñ di!” 


2. Nyin ibet nso, Jesus 
k’ekpe ubök, 
Enye k’ oyom fi y’ ami, 
Nsinam nyin isinde mböm Esie? 
Önöde fi ye ami. 


3. Ini ye m’usen ke asaña ebe, 
K’ ebe ekpöñ fi y’ ami, 
Ekim ke edi, mkpa ke ekpere, 
K’edi önö fi y’ ami! 

4. O utib’ ima Enye öñwöñöde, 
Öñwöñö ’nö fi y’ ami, 
K’ iduede, enyene mböm 
y’ erifen, 
Efen önö fi y’ ami. 

Amen. 

      """
    },
    {
      "id": 364,
      "title": "NTE EMEYENE EBIET ÖNÖ JESUS? ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{|s :-.L ls .d' :t .,L |L :s l-: |f :-.m 
lf .s :L.,s |s :-lm :} 

Duet: Sop & Alto. 

1. ÖMÖNÖ Jesus esit fo, 
Okobiomde m’idiök fo; 
Ke atuak onyuñ ebeñe, 
Eyeyak Enye oduk? 

Körös: 
Nö Edidem uböñ ebiet! 
Kop uyo Esie kemi; 
Berede usuñ esit fo! 
Man Enye ebe oduk! 

2. Ini ’dara y’utom odu; 
Edi Christ ekewotde -
Ini iduh’ inö Enye 
Akakpade önö fi? 

3. Ini iduh’ inö Jesus 
Okotde kini mfön? 
“Mfin edi eti ini,” 
Mkpöñ ini eyebe. 

4. Nö Jesus esit y’ini fo; 
Ini mböm eyebe; 
K’esit fo onyuñ ösöñde, 
Mkp’ ubök Öböñ etre. 

Amen. 

      """
    },
    {
      "id": 365,
      "title": "KE EKPE UBÖK SUÑ SUÑ",
      // "audio":"",
      "body": """
      KEY G 9/8

{ls, :d :r |m :-:-ld :-:-|r :d :L, |L, 
:-:-ls, :-:-} 

1. FIAK di, andisop, owo 
’memidem 
Ekpemeröñ k’ekpe ubök mfin; 
Ndinyaña, ndinam asana: 
Kemi söp nyime Enye kubighi 

Körös: 
K’okot fi suñ suñ, k’okot fi 
k’ ime, 
Kop! Ekpemeröñ okotde fi, 
K’ okot fi suñ suñ, k’ okot 
fi k’ ime, 
Ke ima ete, “Di tiene Mi”! 

2. Enye k’ebet nsinam atakde? 
Okposuk oyode ökpöñ otu 
Ada iyip Esiemö afak fi, 
Utibe ima, akan nditiñ! 

3. Kop ikö Esie, bö mfön Esie! 
Obiom idiök fo, akpa ke eto, 
Enye okosio isop önö fi 
Man afo ’nyene nsinsi uwem. 

4. Duk k’ akani y’ usuñ akpanikö, 
Be duk ke Jesus, Enye ’di usuñ, 
Eti Ekpemeröñ, k’okot suñ suñ, 
Di ye memidem fo, kuyo aba. 

Amen. 

      """
    },
    {
      "id": 366,
      "title": "FIAK EDEM, O ANDIYO!",
      // "audio":"",
      "body": """
      KEY Bb 4/3

{:s, |m :-:r |d :-:s, |L, :d :L, |s, 
:-:s, | L, :t , :d| r :f :m |r :-} 

1. O! Andiyo fiak nyöñ ufök 
Yom iso Ete fo! 
Esit fo oro ofiopde, 
Oto k’ mfön Esie, O, fiak edem! 

2. O! Andiyo, fiak nyöñ ufök! 
Okop eseme fo; 
Ke spirit fo öfukhöde, 
Enye ikpöñ öfiök, O, fiak edem! 

3. O! Andiyo, fiak nyöñ ufök, 
Öböñ fo ’yenö fi 
Uwem k’öduöd’ Enye k’ukot, 
Enye eyefen fi, O, fiak edem! 

4. O! Andiyo fiak nyöñ ufök, 
Kwökhöre möñ-eyet! 
Ete k’okot, tre eyet fo, 
Okot fi ke ima, O! fiak edem! 

Amen. 
      """
    },
    {
      "id": 367,
      "title": "AMI MMA NNÖ FI UWEM MI ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{ls :-|d :r lm :f |s :-lm :-|L :s lf :s 
|m :-} 

1. ’MA ‘nnö fi uwem Mi; 
’Ma ‘nduök iyip ’nö fi 
Man afo öböhö, 
Öwörö ke mkpa, 
’Ma ‘nnö fi uwem Mi; 
Nso ke önö Mi?” 

2. ’Ma ‘mbiat anyan ini 
K’ukut ye memidem, 
Man afo okpoduk 
K’idara ‘nsi nsi, 
’Ma ‘mbiat anyan ini: 
Abiat ‘nso önö Mi?” 

3. “Obio uñwan’ Ete, 
Uyam’ ebekpo Mi, 
’Ma ‘nyak ndi k’isöñ, 
K’mfukhö ye ukut, 
’Ma ‘nyak kpukpru ’nö fi: 
Ayak ‘nso önö Mi?” 

4. ’Ma ‘ñkut ukut ’nö fi, 
Akak inua ‘ndibuk, 
Ke ökpösöñ ubiak, 
Man nsio fi ke hell: 
’Ma ‘ñkut ukut ’nö fi: 
Obiom ‘nso önö Mi? 

5. ’Ma ‘nto k’enyöñ ndi, 
Y’akwa enö k’ubök, 
Erinyaña k’mfön, 
Erifen ye ima, 
Se enö ’nöde fi 
Nso ke önö Mi? 

6. “Yak uwem fo nö Christ, 
Ye ofri ini fo, 
M’ukut fo eyetre, 
Idara fo ’yekpon, 
Kpat usuñ fo nö Christ: 
Kop nö ikot Esie.” 

Amen. 
      """
    },
    {
      "id": 368,
      "title": "IKOT ÖBÖÑ ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:d|m:-.mlf .m:r .d|L,:-.t,ld 
:L,|s,:-.s,ld:m |r :-l-} 

1. SESE Öböñ nyin k’okot kemi, 
Nti mbon idök, 
Koro idök k’ebebet k’inwañ, 
‘Mbon utom iwakke. 

Körös: 
Ka kanam utom k’ima y’ime,
Ye ke enyiñ Öböñ, 
Suan etop erinyaña k’ mfön 
Nö ofri ekondo. 

2. Ka, ñwam mö eyomde nditak 
K’idiök ye ke ekim, 
Ka kañwam man mö ekpeböhö, 
Buñ ebuka Satan. 


3. Ka, kot m’ubuene ke idara 
Edi k’ usör’ ima, 
Enye kpa ‘nsinsi uyo-uwem 
Eyetim öbö mö. 

4. Nam utom, eti usen k’ebe, 
Uñwana eyetre, 
Akwa usen k’ edi ke iso, 
Utom mididuhe. 

Amen. 
      """
    },
    {
      "id": 369,
      "title": "YAK UÑWANA ODUK ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, .,m :m .,r lr .,d :d .,L, |t, :t, lt, 
:-|s, .,f :f .,m lm .,r :r .,t,|r :d ld :-} 

1. EMESE ’te usua eyekan 
k’eñwan? 
Nte usuñ okim k’iso ye 
k’edem? 
Nam ebiet ayama, berede usuñ, 
Yak eti uñwan’ oduk. 


Körös: 
Yak eti uñwan’ (uñwana) oduk, 
Yak eti uñwan’ (uñwana) oduk, 
Nam ebiet ayama, berede usuñ, 
Yak eti uñwan’ oduk. 

2. Nte mbuötidem fo emem 
k’ Öböñ? 
Nte ibörö akam fo ebighi? 
Nam ebiet ayama, berede usuñ, 
Yak eti uñwan’ oduk. 


3. Nte eyeka, adara ke usuñ? 
Nte ufiökk’ ekim odude kemi? 
Nam ebiet ayama, berede usuñ, 
Yak eti uñwan’ oduk. 

Amen. 
      """
    },
    {
      "id": 370,
      "title": "DEMERE, NDITÖ-ETE, EDEMERE! ",
      // "audio":"",
      "body": """
      KEY C 4/4  

{|s:m.fls.L :s|m':r'.,r'ld':|s 
:m .f ls .L :s |m' :r' .,r' ld} 

1. EKOP e-fi-o-ri “Edemere!” 
Jesus Öböñ k’edi, 
“Edemere!” 
Mbon ekim ede, ‘mbufo 
edu k’uñwana, 
Emenyene uböñ, 
“Edemere!” 

2. Sian mendidemere, ekpem’ 
idem! 
Uyo Öböñ edi, “ekpem’ 
idem!” 
Nte mendibebet ke inua 
otop Öböñ, 
’Kposuk ebighide, 
ekpem’idem! 

3. Ekop ikot Öböñ: “enam 
utom!” 
Ebiet do ’nö kpukpru: 
“enam utom!” 
Iñwañ Öböñ emi oyoyom 
itiñ enyin, 
Eyenyene utip, “enam 
utom!” 


4. Kop nö Ekpemeröñ, “eböñ 
akam!” 
Eyenem Eny’ esit? “eböñ 
akam” 
Kpeme mbak idiök, yomÖböñ k’memidem, 
K’esuk ebetde mi, “eböñ 
akam!” 

Amen. 

      """
    },
    {
      "id": 371,
      "title": "KA KE ETI USIERE UWEM ",
      // "audio":"",
      "body": """
      KEY A 3/4

{:s, |m :-.r :d .t, |t, .L, :s, :d |f :-.m 
:r .d |d :t, } 

1. KA, k’eti usier’ uwem, 
Ka k’usier’ uyen fo; 
Nyuñ dep edisine ‘ñkpö, 
Uyam’ akpanikö: 
Dep ñkpö-uto heven, 
Böp enye k’esit fo 
Kuyak idara isöñ 
Anam enye ökpöñ. 


2. Ka, kini akparawa, 
K’ esit eferede; 
Ke ’memidem midighe, 
Kini eti ibuot: 
Nyam kpukpru, nyuñ dep enye; 
Akan m’inyen’ isöñ: 
Gold y’ñkpö-uto efen, 
Uböñ ye anyanya. 

3. Ka, k’mfukhö midighe, 
Ndiyip uyen fo; 
Kudöhö tutu mkpöñ 
Ka, dep akpanikö, 
Ka, nyuñ yom Andibot fi, 
Bak kpep eti ibuot; 
Ka, dori k’itie uwa, 
Uwa usenubök. 

Amen. 

      """
    },
    {
      "id": 372,
      "title": "IDIÖK FO EKPEYIBE ",
      // "audio":"",
      "body": """
      
KEY Ab 
43 
7.7.7.7.7.5.7.7.7.7 

{:s, .,s,|s, :-:m, f, s,|L, :s, :s, .,d

. . 

|t, .,d :t, :L,|s, :-} 

(Duet: Alto & Tenor) 

1. Duet: IDIÖK fo ekpeyibe, 
Eyesana nte snow, 
Idiök fo ekpeyibe 
Eyesana nte snow, 
All: Mö ekpetie ‘nte iduot, 
’Yedi ’det eröñ, 
Duet: Idiök fo ekpeyibe, 
All: Idiök fo ekpeyibe, 
Eyesana nte snow 
Eyesana nte snow. 

2. Duet: Kop uyo mkpe ubök; 
O, fiak tiene Abasi! 
Kop uyo mkpe ubök; 
O, fiak tiene Abasi! 
All: Enye omokpon mböm 
Y’utibe ima, 
Duet: Kop uyo mkpe ubök, 
All: Kop uyo mkpe ubök: 
O, fiak tiene Abasi! 
O, fiak tiene Abasi! 

3. Duet: Eyefen m’ukwañkpö 
nyin, 
Iditihe mö aba; 
Eyefen m’ukwañkpö nyin, 
Iditihe mö aba; 
All: “Ekabare ese Mi” 
Öböñ ödöhö; 
Duet: Eyefen m’ukwañkpö nyin, 
All: Eyefen m’ukwañkpö nyin, 
Iditihe mö aba, 
Iditihe mö aba. 
Amen. 
      """
    },
    {
      "id": 373,
      "title": "KUSÖÑ ESIT FO KEMI ",
      // "audio":"",
      "body": """
      KEY Ab 4/3 

{:m, .,f, |s, :-.s, :m .,r |d :m,
 :t, .,L, |s, :-:f, |m, :-} 

Duet: Sop & Ten 

1. AKPA MBA, kpöñ idiök fo, 
Kusöñ esit fo, 
Kpöñ ikpikpu inemesit, 
Bered’ esit fo, 

Körös: 
K’ikañ uwem fo asakde, 
Ke Abasi oyomde fi, 
Di, nyuñ duk ke ima Esie, 
Kpöñ ediyo fo. 

2. K’ mkpe ubök Andinyaña, 
Kusöñ esit fo, 
Kemi kop nö ikot mböm, 
Bered’ esit fo. 

3. K’eti ikot Gospel emi, 
Kusöñ esit fo, 
Man ökpöbö erinyaña, 
Bered’ esit fo. 

4. K’ idara midibiarake, 
Kusöñ esit fo, 
Ke emem midikureke, 
Bered’ esit fo. 

Amen. 
      """
    },
    {
      "id": 374,
      "title": "EDI MBUFO NDITÖWÖÑ ",
      // "audio":"",
      "body": """
     KEY G 4/4

{|d :s, lL, :s, |d.t, :d .rlm :|f :f lm 
:d .m |r. d :t, .d lr : } 

Duet: Sop & Alto 

SA: DI nditö ekop uyo mi, 
Nyekpep ‘mbufo uteñ’ Öböñ; 
All: Di nditö ekop uyo mi, 
Nyekpep ‘mbufo uteñ’ Öböñ; 

Körös: 
SA: Kpem’ esit fo k’ idiök, 
Y’ inua fo ke abiaña, 
Kpem’ esit fo k’idiök 
Y’inua fo ke abiaña 

TB: Kpem’ esit, esit fo k’idiök 
Y’inua fo ke abiaña, ke abiaña, 
Kpem’ esit, esit fo k’idiök 
Y’inua fo, ye inua fo ke 
abiaña, ke abiaña. fine. 

Anie ke itöñ uwem ödöñ, 
Ama ini okutde nti ñkpö? 
Anie ke itöñ uwem ödöñ, 
Ama ini okutde nti ñkpö? 

SA: Wöñöre kpöñ idiökñkpö 
nyuñ nam eti 
TB: Wöñöre kpöñ idiök ñkpö 
wöñöre kpöñ idiök nyuñ 
nam eti. 

All: Wöñöre kpöñ idiök nyuñ 
nam eti. DC.  
      """
    },
    {
      "id": 375,
      "title": "AKWA ANDINYAÑA NYIN ",
      // "audio":"",
      "body": """
     
KEY G 3/4

{|d :-:r | d :r :m |f :-:m | r :d :r |s 
:-:f|m :-:m |r :d :r |d :-} 

1. JESUS! Ufan m’idiök owo! 
Jesus! Ama mi k’ukpöñ: 
M’ufan ekpöñ, m’asua eduk, 
Andinyaña añwam mi. 

Körös: 
Hallelujah! Andinyaña! 
Hallelujah! O Ufan!, 
Ama, anyaña, ekpeme 
Eyeñwam osim k’utit. 

2. Jesus! Andinö ukeme! 
Yak mi ‘ndibe ke Afo; 
Ke idomo osimde mi, 
Enye önö erikan. 

3. Jesus! Uñwam kini ukut! 
K’mbufut ofukde mi, 
Kini esit öduöde mi, 
Ödöñ mi esit k’ukpöñ.
 
4. Jesus! Eti Andikpeme! 
Ke mbufut okoñde; 
Kini ekim ofukde mi, 
Andiñwam, okop akam. 

5. Jesus! Kemi monyime Fi! 
Mokut kpukpru ke Afo; 
Erifen mi oto k’Afo, 
Ndi Okuo, Öböñ mi. 

Amen. 
 
      """
    },
    {
      "id": 376,
      "title": "UKWAK-UBOM MI OMUM ",
      // "audio":"",
      "body": """
      KEY C 4/4

{:s.,s |d' :-.s lm :f|s :-l -:s .,s 
|L :-.L|L :L |s :-l-} 

1. K’OYOBIO y’mbufut möñ 
Oyomde ndifuk mi, 
Ami ndu ke emem, 
Okposuk ofumede, 
Ukwak ubom mi odu 
Emi ösöñde ada. 

Körös: 
Ukwak ubom mi omum, 
Afo ‘mbufut menere 
Ke mmem-mem ukpöñ mi, 
Mfön Esie ikpuhö, 
ST: Ukwak mi omum 
AB: Ukwak ubom mi otim omum 
All: Otim omum. 

2. K’ndude k’afaneköñ, 
Akpa möñ akan okuk, 
Idiök enyöñ ofuk mi, 
Mbufut okoñ eti, 
Ami nyesöñö ‘nda, 
Ukwak mi omum Itiat. 

3. Möfiök ukwak mi omum, 
K’nsobode oyobio 
Okposuk ñkwe uruk 
Eke ’mumde ukwak mi; 
Möböhö ke oyobio, 
Tutu mbufut etre. 

4. Nte mbufut inyañ, 
Ukut ’kofuk ukpöñ mi 
Mendidomo ekpetap, 
Ekim ofuk uñwana, 
Edi ke Christ mmokut 
K’ukwak ubom mi omum.
 
Amen. 
      """
    },
    {
      "id": 377,
      "title": "“AMI NDIFREKE FI” ",
      // "audio":"",
      "body": """
      KEY Ab 4/2

{|s, :d.r lm :m |m .f :r .m ld :s, 
|d .r :m :f ls :m |f .m :r .d lr :-} 

1. ETI uñwöñö, “Ami ‘ndifreke fi” 
Baba ‘ñkpö inamke mi mfiak edem, 
Ekim okpofuk mi ke itikhere, 
Uñwan’ odu k’edem enyöñ k’nsinsi. 

Körös: 
SA: Ami ‘ndifreke nyuñ 
’kpöñke fi, 
Nyemum fi ubök, ñkama 
fi k’ubök, 
Ami ‘ndifreke nyuñ 
’kpöñke fi, 
Ami, Andifak fi, nyekpeme fi. 
TB: Ami ‘ndifreke fi, ndinyuñ 
’kpöñke fi, 
Nyemum fi ubök, ñkama fi 
k’ubök, 
Ami ‘ndifreke fi, ndinyuñ 
’kpöñke fi, 
Ami, Andifak fi, nyekpeme fi. 

2. Didie k’ ñwut esit eköm 
nö Jesus, 
Ke akwa ima ye ukpeme Esie? 
Nyesuan etop erinyaña Esie, 
Man mö ebö Enye y’uñwöñö Esie. 


3. Nim uñwöñ’ oro, “Ami 
‘ndifreke fi” 
Ami monim, ntoro Enye k’ikwö 
M’owo esin k’ndek, 
m’ufan ekpöñ mi, 
Jesus k’ekpere, önö idaresit. 

4. K’ndude ke ediye inua otop, 
Kpukpr’ ukut y’mfukhö 
eyebe efep, 
Edinem didie ndikop etiñde: 
“Afo owo akpanikö, duk k’iduñ.” 

Amen. 
      """
    },
    {
      "id": 378,
      "title": "SÖÑÖ MUM OTUEKÖÑ ",
      // "audio":"",
      "body": """
      KEY D 2/4

{|s.,L :s .m |d'.,r' :d'.L |s .,L :s .m 
|r : |s .,L :s .m |d' .,r' :d' .L |t .,d’ 
:t .L |s :-} 

1. O, M’UFAN! Ese idiöñö, 
Ofumde k’enyöñ! 
Uñwam nyin ekpere kemi, 
Erikan k’edi! 

Körös: 
“Esöñö, Ami ke ndi,” 
Jesus ödöhö, 
Nam ibörö osim heven, 
“K’Öböñ, iyenam.” 

2. Sese m’udim ekim k’edi, 
Satan ke iso: 
Mkpösöñ owo k’eduöñö; 
Uko iduhe! 

3. Se banner uböñ ofumde, 
Kop ukor’ owo! 
K’ enyiñ Öböñ, nyin iyekan 
Kpukpru me asua! 

4. Eköñ ke ösösöñ eti, 
Andiñwam k’edi, 
Etubom eköñ nyin k’iso, 
M’ufan edara! 

Amen.
      """
    },
    {
      "id": 379,
      "title": "NYENE MBUÖTIDEM YE ABASI",
      // "audio":"",
      "body": """
      
KEY C 4/4 

{|s:m.fls:L .t|d':t .LlL .s:-|s 
:f .m lr :m .f |L :s .,f lm :-} 

1. BUÖTIDEM y’Abasi 
k’odude ikpöñ, 
Enye öfiök kpukpru me 
usuñ fo, 
Ikpöñke nditö Esiemö baba, 
Buötidem fo ye Abasi. 

Körös: 
Buötidem, Öböñ k’ebekpo; 
Buötidem, Enye ’kpeme 
Esiemö; 
Idikpuhö, Enye ’yekan, 
Buötidem fo ye Abasi. 

2. Buötidem, k’ebetde ibörö 
akam, 
Mkpeubök fo Enye ifreke; 
Bet Öböñ, buötidem ke ikö 
Esie; 
Bet k’ime, eyebörö fi. 

3. Buötidem y’Abasi k’ubiak 
y’mfukhö, 
Ekere abaña mfukhö fo; 
Top m’ekikere y’mbiomo 
nö Enye, 
Nyuñ kpöñ mö do, O! 
kpöñ mö do. 

4. Buötidem y’ Öböñ k’ñkpö 
etakde fi, 
Enye eyeyöhö unana fo 
Ke uböñ isöñ emi abiarade, 
Enye akara k’ebekpo. 

Amen.
      """
    },
    {
      "id": 380,
      "title": "AMI NYEBUÖT IDEM YE AFO ",
      // "audio":"",
      "body": """
      
KEY A 4/4

{:s, .,f, |m, :s, ld :m |r :L, l -:d .,d 
|t, :dlr :m |d :-l-} 

1. ANDINYAÑA, ‘nyebuötidem, 
Ke ebiet ekededi; 
Ke m’usen idiök edide, 
K’usuñ isañ okimde, 
K’ini me akpan ufan mi 
Ebiañade mi k’isöñ, 
Modori enyin ke Afo, 
Afo ömöfön eti. 

Körös: 
pp ‘Nyebuötidem, ‘nyebuötidem, 
ff ‘Nyebuötidem, kpukpr’ usen, 
pp ‘Nyebuötidem, ‘nyebuötidem, 
ff ‘Nyebuötidem kpukpr’ usuñ. 

2. Andinyaña, ‘nyebuötidem, 
Afo ’di odudu mi, 
M’idomo ye idiök itöñ, 
Ami nyekan kpukpru, 
Kini ndude k’unana, 
Kuyak ami ndiyo, 
Mum mi O! Andinyaña mi, 
Mbak ndisop usuñ. 

3. Andinyaña, ‘nyebuötidem, 
Afo ömönö emem, 
Afo ömödöñ mi esit. 
Afo ikpöñ ke nyom, 
Nam mi mkpere ñkañ Fo, 
K’ebiet ekekimde Fi, 
Do iyip Fo eyeyet mi, 
Anam mböhö idiök.

 Amen. 
      """
    },
    {
      "id": 381,
      "title": "JESUS AYARARE KE AMI ",
      // "audio":"",
      "body": """
      KEY Ab 6/4 

{|s, :fe, :s, lL, :-:f |m :-:-l-:-:|
s, :fe,:s, lt, :-:r |d :-:-l-:-:-} 

1. CHRIST Eti Uñwana, 
Ayama k’esit mi, 
Ebin ekim efep, 
Önö uñwan’ Esie. 

Körös: 
Mfön Esie anam (anam), 
Ererimbot ekut (ekut), 
Ima emi ayararede 
Jesus ke uwem mi. 

2. Öböñ se esit mi, 
Ima y’odudu mi, 
Nam nsana ofri, 
Yöhö mi Spirit Fo. 

3. Uwem idigh’ okim, 
Mayak ofri ’nö Fi, 
Nö mi uyama Fo, 
Man ñkut Fi iso. 

4. Menyen’ ata emem, 
Jesus akara mi, 
Önö mi idara, 
Y’ erikan k’idiökñkpö. 

Amen. 

      """
    },
    {
      "id": 382,
      "title": "ENYE AKANAM ",
      // "audio":"",
      "body": """
     KEY F 4/4

{:d|m.s:m.rld m.-:r.m|f.L,
:d.f|m:s.L|s.:m.f lm.:d.r|d :-l-} 

1. UYO okosim No-ah 
“Nam ubom nö idemfo, 
Nam öniöñ, nam okoñ, 
nam okpon, 
K’edikem usen ye ini, 
Nyedöñ akwa edim, 
Nyom fi ye ofri ufök fo 
k’esit.” 
Enye anam, Ih! Enye ’nam. 
Noah ököfiök k’Abasi 
eyeñwam, 
Ke enyöñ fo okimde, 
Kere baña Noah y’ubom. 
Öböñ eyenam ‘ntre önö fi. 

2. Ke Daniel öböñd’ akam, 
Edidem önö uyo, 
Eduök Daniel k’obube 
m’ekpe 
Daniel odu k’otu ekpe, 
Onyuñ öduö ke edöñ, 
Ekpe Öböñ ubök do 
ndinyaña; 
Öböñ anam, k’akpan anam, 
Daniel öfiök k’Öböñ 
eyekpeme. 
K’odude k’obube-ekpe 
Nte Daniel, böñ akam, 
Öböñ eyenam ‘ntre önö fi. 

3. Profet ’ködöhö Naaman, 
“Sukhöre k’akpa Jordan, 
Nyuñ yere utim ikatiaba,” 
Naaman akanam kpa ntre, 
Edi enye ekeyik, 
Me Öböñ eyesio enye ke 
ukut; 
Öböñ anam, k’akpan 
anam, 
Profet ’köfiök Abasi 
eyenam, 
K’akpamfia -idiökñkpö fo 
Eyeyet fi asana, 
Öböñ eyenam ‘ntre önö fi. 

4. Ke Adam k’ iñwañ Eden, 
Mikopke uyo Öböñ, 
Anam ukut idiök osim 
nyin, 
Ndien k’enye ekerede 
Abaña ini iso 
Me Öböñ ’yesio iköt Esie 
k’iduö, 
Öböñ anam, k’akpan anam, 
Enye ödöñ Eyen Esie utom, 
Ke akwa ukut Esie, 
Anyaña owo inö, 
Enye eyenam ‘ntre önö fi. 

Amen.  
      """
    },
    {
      "id": 383,
      "title": "NSO USEN ERIKAN! ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:d .,r |m .,m :m .,f lm :m .,r |d .,d 
:d .,r ld :d .,L, |s, :d lm .re .m ls .,s 
|r :-:-} 

1. K’UTIT ikutd’ Edidem, 
itoro Enye k’uböñ, 
Nso usen erikan k’edidi! 
K’isimde edem oro, ke 
iduñ nti owo, 
Nso usen erikan k’edidi! 

Körös: 
Nso usen erikan, erikan, 
erikan! 
Nso usen erikan k’edidi! 
K’ idikwöde hosanna, 
k’akwa ufök Edidem, 
Nso usen erikan k’edidi! 

2. Kini idisañade y’nti owo 
k’efak gold, 
Nso usen erikan k’edidi! 
K’ ibuanade k’nsinsi ye 
me enjel ke ikwö, 
Nso usen erikan k’edidi! 

3. Ke ikande m’idomo inyuñ 
ibö anyanya, 
Nso usen erikan k’edidi! 
K’ikade k’iso Öböñ, 
K’nsinsi obio oro, 
Nso usen erikan k’edidi! 

Amen. 
      """
    },
    {
      "id": 384,
      "title": "KE ORUK INI NTEM ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{.m :r .,d ls, :-l-.s, :L, .,d ld :t, l .
s, :t .,L, ls,:-l-.s,:L,.,f |f :m l -} 

1. KINI emi, yom Andinyaña, 
Kini emi, yom ukwak ubom, 
Tim fiök emi, tim fiök emi 
Ukwak-ubom omum Akwa ITIAT! 

Körös: 
Itiat emi edi Jesus Christ; 
Ih Enye edi Itiat emi, 
Tim fiök emi, tim fiök emi 
Ukwak-ubom omum Akwa ITIAT! 

2. Kini emi afo ’yom Bible 
Kini emi O kutie ifu; 
Tim fiök emi, tim fiök emi 
Ukwak-ubom omum Akwa ITIAT! 


3. Kemi, menyene Andinyaña, 
Kemi, menyene ukwakubom; 
Motim mfiök, motim mfiök, 
Ukwak-ubom omum Akwa ITIAT. 

Körös: 
Itiat emi edi Jesus Christ 
Ih Enye edi Itiat emi 
Motim mfiök, motim mfiök, 
Ukwak-ubom omum Akwa ITIAT! 

Amen. 

      """
    },
    {
      "id": 385,
      "title": "ERIKAN KE MFÖN",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{.s,|d .,d :d .,d ld :-.m |s .,s :s .,s ls 
:-.s |L .,L :L ls .,s :s |m.,m :f .,m lr :-} 

1. KOP ikwö erikan k’efiori 
ke ofim 
O! Erikan, erikan, erikan 
k’mfön; 
Yak mö ’mi efakde, emen 
uyo ekwö, 
Öyöhö ikwö erikan. 

Körös: 
SAB: Eti ikwö erikan 
T: Nyin ikwö eti ikwö erikan 
SAB: Christ önö nyin erikan 
T: Koro Christ önö erikan 
SA: (Okposuk) eköñ ösöñde eti 
TB: Okposuk eköñ ösöñd’ eti 
SA: Iyekwö ikwö erikan, 
TB: Iyesuk ikwö ikwö erikan 
SAB: Eti ikwö erikan 
T: Nyin ikwö eti ikwö erikan 
SAB: Christ önö nyin erikan, 
T: Koro Christ önö erikan 
All: (Tutu I-) diökñkpö 
(okure) kpukpru 
SA: (Man kpukpru) ererimbot 
ekop ikwö erikan. 
TB: Kpukpru ererimbot ekop 
ikwö erikan. 

2. Ikanke nyin baba, nyin 
ikakan kpukpru 
O! Erikan, erikan, erikan 
k’mfön, 
Ke Christ imöböhö, ekim 
ebe efep, 
Sia imenyene erikan. 

3. Mö efakde k’enyöñ, 
k’ekwö ikwö ima 
O! Erikan, erikan, erikan 
k’mfön 
Me obot emenere uyo ke ikwö, 
Kpa eti ikwö erikan. 

Amen. 
      """
    },
    {
      "id": 386,
      "title": "ENYE ÖBÖRÖ KPUKPRU AKAM ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{:d |m :m lm :-.m|r :d ld :-.d |r:r 
lr :d .r |m :s ls :-.} 

1. MÖDUÖK ndik ye eyikhe, 
Möfiök Abasi ekpere, 
Mökpöñ mbiomo mi y’Enye, 
Öbörö kpukpru akam, 

Körös: 
Enye öbör’ akam (kpukpr’ akam) 
Ndusuk “Ih ih” ndusuk “Ih” 
Ndusuk “Bet mi” ndusuk “Ka,” 
K’usuñ Esie, y’ini, möfiök, 
Öbörö kpukpr’ akam, 
(kpukpr’ akam). 

2. Mbufut ekan mi ekuk, 
K’ekpeme mi k’ubök Esie, 
Möbuötidem, s’ekpededi, 
Öbörö kpukpru akam. 

3. Yak afaneköñ osim mi 
Öböñ eyenö eridiöñ, 
Ntimeker’ esit baba, 
Öbörö kpukpru akam. 

4. K’uwem y’mkpa ami 
‘nyekwö, 
Akwa Ete k’ekpeme mi; 
Ke idomo, ñkereke, 
Öbörö kpukpru akam. 

Amen. 
      """
    },
    {
      "id": 387,
      "title": "MÖFIÖK ENYE EMI NNIMDE KE AKPANIKÖ",
      // "audio":"",
      "body": """
      KEY C 4/4

{|m .,m :m .,f ls :s |d' .,d' :d' .,t lL 
:-|r .,r :r .,m lf .,s :t .,L |s :-lm :-} 

1. TORO Abasi, ami ñka k’uböñ, 
Ebon mi ke utibe mfön; 
K’oyomde idiöñö, afo eyekut 
Ke ido uwem Christian. 

Körös: 
“Möfiök Enye mbuötd’ idem, 
Enye emekeme ndikpeme, 
Se nsinde Enye k’ubök 
Tutu ke usen oro” 
Toro Öböñ! 

2. Ami ndu k’mfön idighe k’ibet, 
Möböhö oto k’ eti ima; 
Ke ini ndude ke afaneköñ 
Ikö Öböñ ödöhö: 

3. Ke m’usen emi ndude ke ubiak, 
Ke okoneyo öniöñd’ eti; 
Nyebuötidem ye Jesus kpukpr’ ini, 
Nyekwö ikwö emi: 

4. Idigh’ ami ikpöñ mö eken ekut 
Eti ndöñesit k’ ukut mö; 
K’oyomd’ uduak Abasi ye ikö Christ 
Ka ke ñwed Abasi. 

Amen. 

      """
    },
    {
      "id": 388,
      "title": "AMI ÑKA OBIO CANAAN ",
      // "audio":"",
      "body": """
      KEY C 4/4

{|s:s lL :s |m :s l -:d' |t :r' l -:t 
|d' :-l -:|d' :d' lt :L |L :s l-:m |m 
:r |m :fe |s :-|-:} 

1. MFEGHEK’ oyobio, 
kpukpru eyetre, 
Idomo ikanke, mokut ata emem; 
Se ñkpöñde k’edem, nyomke aba, 
Nti ‘ñkpö k’ebet mi k’esuk 
Canaan. 

Körös: 
Yak mö emade eduñ k’Egypt,
ami ‘ñka ke Canaan, 
K’ebiet möñeba y’aran 
ökwök öfiöröde; 
Erikan odu ke me eñwan, 
idara ye emem, 
Ukpöñ mi eyedu do k’akpatre. 

2. Mfegheke ukut koro eyebe, 
Ekpekan mi ekuk, ndibe ke Jesus; 
Afaneköñ uwem ekan mi ekuk, 
Oyobio iduhe k’obio Canaan. 

3. Moyom ndidu ke mfön Abasi, 
Ndibe ke mfut eti usen Canaan; 
Ke ñkpö ererimbot ebiañade, 
Mö idikpanke mi obio Canaan. 

Amen. 

      """
    },
    {
      "id": 389,
      "title": " INYENE MFÖN",
      // "audio":"",
      "body": """
      KEY F 12/8 

{ls, :d :r |m :-:m lm :-:m lm :-:-ls 
:f :m |r :-:-l-:-:-l-:-} 

1. K’INYEN’ isöñ mikemke 
mi k’ntak Öböñ 
Emenö mi inyene ‘mfön, 
ekem y’ami, 
Inyen’ isöñ eyebiara, idara 
isöñ abiaña, 
Menyene ata inyene, 
inyene ‘mfön. 

Körös: 
Inyene ‘mfön… odu k’nsi nsi, 
Inyene ‘mfön… önö uböhö, 
Inyene ‘mfön… idibiarake 
Inyene ‘mfön… inyene ‘mfön. 

2. Uböñ ererimbot emi idigh’ 
okim, 
Uböñ enyöñ edi okim, ekem 
y’ami, 
Mebuana mfön Abasi, 
esaña k’uñwana Esie, 
Enyen’ emem k’mba Esie 
inyene ‘mfön. 

3. Nnyeneke emem k’isöñ, 
oto k’idiök, 
Menyen’ emem mikureke, 
Öböñ önö, 
Ini mi k’ebebe y’inem, 
idomo idikanke mi, 
K’mfön Esie makan 
kpukpru, inyene ‘mfön. 

4. Jesus akakpa önö mi, 
menyen’ emem, 
Okut ukut k’eto mkpa, 
öduök iyip, 
Emefak mi esio k’idiök, 
Jesus ’da uböñ k’esit mi, 
Nyekwö itoro Esie, inyene 
‘mfön. 

5. Ami mökwö k’ofri ebiet, 
ndidopke 
K’ekpri ini ‘nyekut Öböñ 
ekem y’ami, 
Ami nyekara y’Enye 
k’emende m’idiökñkpö efep, 
Satan idibiañak’ aba, 
inyene ‘mfön. 

6. Mbere Christ k’ unana mi, 
ekem y’ami 
K’nsede m’uñwöñö Esie, 
mkpaha ‘mba, 
Enye ’mi esede m’inuen, 
eyekpañ utöñ önö fi, 
Tien’ Enye ke kpukpru 
ñkpö, inyene ‘mfön. 

Amen. 
      """
    },
    {
      "id": 390,
      "title": "KO KE ISO",
      // "audio":"",
      "body": """
      KEY G 4/4

{:d .,r |m .,s :s .,s lL .,s :m .,r |d :l-} 


1. KO K’ISO, m’usen eyama 
ko k’iso… 
Ko k’ iso ukut efere! 
ko k’iso… 
Kwö ikwö idorenyin! 
Suan ndik ye eyikhe! 
Se usiere ke edi! ko k’iso. 

Körös: 
Unison: Ndien ka, ka, ka k’osim 
erikan 
Male voice: Sim erikan, 
Unison: Ka, ka, ka, ka k’ osim 
erikan, 
Male voice: Sim erikan, 
Parts: Ka tutu ikut Öböñ nyin, 
Ko k’iso (ko k’iso) 
ko k’iso 
Unison: Ndien ka, ka, ka k’osim 
erikan 
Male voice: Sim erikan, 
Unison: Ka, ka, ka, ka k’ osim 
erikan, 
Male voice: Sim erikan, 
Parts: Ka tutu ikut Öböñ nyin, 
Ko k’iso (ko k’iso) 
ko k’iso 

2. Ko k’iso Jesus ke okot, ko 
k’iso... 
Mboneköñ eda k’udim, ko 
k’iso... 
M’utom edu ndinam, 
Andikpep ke okot fi, 
Eyenam akpanikö ko k’iso. 

3. Ko k’iso k’ekwö ke uböñ, 
ko k’iso... 
K’ebuk mbuk erinyaña, ko 
k’iso... 
Ko k’iso uñwana do, eti ido 
amakan 
Eti usiere k’edi, ko k’iso. 

Amen. 
      """
    },
    {
      "id": 391,
      "title": "AMI NYIKKE FI ",
      // "audio":"",
      "body": """
      KEY Bb 6/8 

{:s,|s, : -.s, :s, ls, :m, :s, |L, :-:L, 
ls, :-:s, |L, :-.L, :L, ls, :r, :f, |m, ::-
l-:-} 

1. AMI nyikke Fi Öböñ ima, 
Afo ‘möfiök usuñ mi, 
Ñwam mi k’usen k’usen, 
Öböñ ima 
Ndidu uwem n-nö Fi. 

Körös: 
Eti Jesus, nyeyukhö 
kpukpr’ ini, 
Nyebuötidem y’Afo k’nsi 
‘nsi; 
Ami nyikke Fi Öböñ. 

2. Ami nyikke Fi Öböñ ima, 
Okposuk nduöd’ esit, 
‘Nyedu uwem k’usen 
k’usen Öböñ, 
Nyesöñ idem ke Afo. 

3. Ami nyikke Fi Öböñ ima, 
’Kposuk ekim ofukde 
‘Nyedu uwem k’usen 
k’usen Öböñ 
Nö ukeme k’eti uwem. 

4. Ami nyikke Fi Öböñ ima, 
Afo ada mi usuñ, 
Ami möyukhö k’ifiök Fo Öböñ 
Ami nyikke Fi, Öböñ. 

Amen. 
      """
    },
    {
      "id": 392,
      "title": "KE ESIT FO ENENDE YE ÖBÖÑ ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:s, .s, |d .d :d .d lm .m :d .d |r .r 
:t, .t, ld :m .f |s :-l-.m :r .d |r :-l-} 

1. KE m’eñwan uwem fo 
baba ñkpö idikanke fi 
K’esit fo... ’nende y’Öböñ. 
Eyeñwana ye mkpösöñ 
onyuñ akan mö kpukpru 
K’esit fo... ’nende y’Öböñ. 


Körös: 
K’esit fo … ’nende y’ Öböñ, 
K’esit fo … ’nende y’ Öböñ, 
Owo idikanke fi, 
okuo edi erikan, 
K’esit fo … ’nende y’ Öböñ 

2. Mkpösöñ idomo 
idikemeke ndikan fi, 
K’ esit fo.. ’nende y’ Öböñ, 
Ke oyobio uwem, baba 
ñkpö iditakke fi, 
K’esit fo... ’nende y’ Öböñ. 

3. Eti emem, uyukhö, ye 
uñwana do k’usuñ fo, 
K’ esit fo... ’nende y’ Öböñ, 
Eyenyene uko k’ eköñ, ye 
erikan ke eñwan, 
K’ esit fo... ’nende y’ Öböñ. 

Amen. 
      """
    },
    {
      "id": 393,
      "title": "NDIKWÖ IKWÖ NYUÑ BUÖTIDEM ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{:m |s :m lf .m :d .m |r :L, lL, :d 
|t, .s :-l-:f |m .s :-| -} 

1. SUK sese Jesus ke mbuötidem 
S: Ka iso … ke ikwö, 
ATB: Ka iso ke ikwö baña ima Öböñ 
Eyeda nyin usuñ k’ifiök Esie. 
Bere ke Jesus Öböñ. 

Körös: 
Kwö be k’nda-eyo, kwö 
k’usuñ okimde, 
S: Kwö … kwö, 
ATB: Ka iso ke ikwö, ka iso 
ke ikwö 
All: 
Kwö, Enye ’di ima, 
kwö, Enye akara 
S: Kwö … kwö, 
ATB: Suk kwö, nyuñ buötidem 

2. Ikwö fo ke ebebin mfukhö, 
S: Ka iso … ke ikwö, 
ATB: Ka iso ke ikwö baña ima Öböñ 
Kama mbuötidem y’ idorenyin, 
Ke Jesus Andinyaña. 

3. Kufre me edidiöñ ini edem, 
S: Ka iso … ke ikwö, 
ATB: Ka iso ke ikwö baña ima Öböñ 
Ke eti ini me k’idiök ini, 
Bere ke Jesus Öböñ. 

Amen. 
      """
    },
    {
      "id": 394,
      "title": "KAM BUÖTIDEM ",
      // "audio":"",
      "body": """
      KEY Db 3/4

{:s |s : -:fe .s |m : -:m .m |m ::
re .m |s :-:s |L : -:t .L |s :-:m .m 
|m :-:r .d |r :-} 

1. M’ERÖÑ, ’kufeghe, Enye 
’kakpa ke cross, 
Eset ke uböñ k’ufön iköt 
Esie 
Kpukpru odudu ke enyöñ 
ye isöñ, 
Enyene Enye k’ntak m’eröñ 
Esie. 

Körös: 
Kam buötidem, kam buötidem, 
Kpukpru ‘ñkpö ’di memmem, 
kam buötidem, 
Kam buötidem, kam buötidem, 
Kpukpru ‘ñkpö ’di memmem, 
kam buötidem. 

2. M’eröñ ’kufeghe, Enye 
’mebe iso, 
Edi Ekpemeröñ ada fi usuñ; 
Enye eyenam möñ Marah fo enem, 
Enye ’köñwöñ idot ke 
Gethsemane. 

3. M’eröñ ’kufeghe, ke se 
ekpededi, 
Enye ododuk k’eberide usuñ; 
Enye isinke inyuñ ikpöñk’ Esie 
Buötidem y’Enye k’ekim 
ye k’usiere. 

Amen. 
      """
    },
    {
      "id": 395,
      "title": "CHRIST IBIAÑAKE ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, :m lr :d|t, :d lr:-|s, :flm :re 
|m :-| -:} 

1. KE m’ufan ebiañade, 
K’ndik edide; 
Kiet odu amade fi, 
Christ ibiañake (owo) 

Körös: 
Christ ibiañake, Christ 
ibiañake; 
Enyöñ y’isöñ ekpebe, 
Christ idibiañake. 

2. Idiök enyöñ okpofuk, 
Ofim ökpösöñ, 
Kam ti, Enye k’ekpere, 
Christ ibiañake (owo). 

3. Ke ini ekim uwem, 
Ima akara, 
Bere k’odudu Esie, 
Christ ibiañake (owo). 
Amen. 
      """
    },
    {
      "id": 396,
      "title": "USIERE EYEDI ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:s, .d |m :m lm :re .m |f :f lL, :t,.d 
|s, :d .r|m .m :r .d |r :-l-} 

1. KINI edomode ‘mbuötidem 
nyin, 
K’uyama ye uyai nyin okimde, 
Uyo oto “Enye ekeköñde,” 
Ami ‘ndu y’afo, eyen, 
kufeghe! 

Körös: 
SAT: Usier’ edi, 
B: Usier’ eyedi, usier’ eyedi 
SAT: Ekim k’ebe, 
B: Ekim eyebe, ekim eyebe 
All: Ndien iyesine se 
midikpaha, 
Nyin iyetuak ibuot do, 
SAT: Iböhö k’iduñ 
B: K’iduñ kakpatre, k’iduñ 
kakpatre 
SAT: O idara 
B: Usen idara, usen idara 
All: Ke ikutde uböñ 
Andinyaña kpa 
Nte ekutde nyin. 

2. Didie k’isuk uyo k’anyan 
usuñ, 
K’isede cross nyin, Enye 
obiomde 
Ikpökwö edinem ikwö k’esit 
Sia nyin imade, nditor’ 
Enye. 

3. Enye akakpa önö nyin 
kpukpru! 
Nte nyin idibiomke cross 
k’ime? 
Yak imum mbuötidem ikama, 
Man iduk k’uböñ Esie 
k’nsinsi. 

Amen. 
      """
    },
    {
      "id": 397,
      "title": "AMI NDI ALPHA YE OMEGA ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s, |d :d ld :d .,r |d :t l-:s,|r :r lr 
:r .,m |r :d l -:} 

1. MBUÖTIDEM mi ododu 
K’ Enye ’mi afakd’ ukpöñ mi, 
Ökpösöñ Ebiet uböhö 
Ikpukhökere. 

Körös: 
Ami, Alpha ye Omega 
Eritöñö ye Akpatre 
Ami Ndudu, ‘Nyedu, 
k’ nsinsi, 
Ami, Alpha ye Omega, 
Eritöñö ye Akpatre 
Andikpon nkan, Andikpon 
‘ñkan, ödöhö. 

2. Mobuk kemi ke idara 
Enye ’mi oduñde k’ami, 
Ima Esie anam nda 
Ke ikö Esie. 

3. Jehovah Abasi, k’ese 
Ekpeme mi osio k’ndik, 
Akama mi k’mbuötidem 
Tutu mböhö. 

Amen. 
      """
    },
    {
      "id": 398,
      "title": "MKPEMBIERE",
      // "audio":"",
      "body": """
      KEY Ab 4/4  

{:d |m :s lm :-.dlr :d lL, :-.d |s, :d 
lf :m |r :-l -} 

1. EKPEDI ke esit akai, 
Mfegheke ndik; 
Se ekpededi nyenam, 
Usuñ mi añwaña. 

Körös: 
Mekpe mbiere Öböñ 
‘nditiene Fi 
Ke ebiet …. ’kededi …. 
K’ebede k’obot ye ke inyañ, 
Me ke ebiet ekededi, 
Monyime Öböñ nditiene Fi, 
Kpukpr’ ebiet … 

2. K’iköt okponde ifukke, 
Kpa mbuötidem mi, 
Koro ösöñöde k’Enye, 
Nyekwö k’idara. 

3. K’mbuötidem ami ‘nyebe 
Akwa akpa iñyañ, 
Andibe k’inyañ Galilee, 
Eyeñwam k’isañ mi. 

4. K’ebiet y’usuñ ekededi, 
K’mfukhö y’idara, 
Mbuötk’ idem ke ikpikpu 
Nyuñ ‘mbiomke cross 
ikpöñ. 

Amen. 
      """
    },
    {
      "id": 399,
      "title": "AKANI MBUÖTIDEM",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:m .f|s .s :s .L ls .m :m .f |s .m 
:m.r ld} 

1. KE mkpösöñ ini emi, 
Me ñkpö iduö edu, 
Mbuötidem me ete nyin, 
Anyaña mfin emi. 

Körös: 
Ih akani mbuötidem öfön 
(y’ami) 
Enye ’da mi osim ke cross 
Calvary (ke Calvary); 
Emen mi k’mba ima ödök 
aka ko k’enyöñ, 
Ih akani mbuötidem öfön 
(y’ami) 

2. Uwak erikpep emedu, 
Edi yak mö enyime 
Ke idorenyin erifen 
Oto Christ ke Calvary. 

3. Ami nda ke uñwöñö, 
Okodude k’eyo ’ko; 
Mbuötidem n-nyenede 
’Yemen eyikhe efep.
 
Amen. 
      """
    },
    {
      "id": 400,
      "title": "NDIBÖP NDORI KE ITIAT",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{:m, .,f, |s, .,s, :s, .,L, ls, :d .,r |m .,r 
:d ., L, ls, :m, .,f, |s, .,s, :d .,d lm :m 
|r :-l-} 

1. NYIN iböp k’enyöñ itiat 
oyobio inyeñeke, 
Okposuk oyobio ofumde, 
Idori k’akwa itiat, ndien 
iyekan idiök, 
Ibere k’Enye ndiñwam nyin. 

Körös: 
SA: Ke Itiat …. ke Itiat …. 
TB: Nyin iböp k’enyöñ Itiat, 
ke ata Akwa Itiat, 
All: Ömösöñ’ ada tutu osim 
kemi (amada) 
SA: Ke Itiat…ke Itiat, …. 
TB: Nyin iböp k’enyöñ Itiat, 
ke enyöñ Akwa Itiat, 
All: Nyin iböp k’enyöñ Itiat, 
Christ Jesus. 

2. Iduhe itiat efen ’kpenimde 
k’idak isöñ 
Man ösöñ’ ada ke oyobio, 
Christ edi Akwa itiat, nyin 
m’eröñ iyeböhö, 
Kor’ ima Esie eyeñwam nyin. 

3. Yak isin idem k’ikwö, mi 
ke temple Edidem; 
Ke utom Esie eyediöñ nyin; 
K’otu eröñ Abasi esaña 
k’akpanikö 
Utip nyin, emem ye ifure. 

Amen. 
      """
    },
    {
      "id": 401,
      "title": "AKANAM IKPUHÖ ",
      // "audio":"",
      "body": """
      
KEY Bb 4/4

{:m, .f, |s, .s, :s, .s, ls, :d .t, |L, .L, 
:L,.L lL, } 

1. O M’UÑWÖÑÖ Abasi, 
satan k’osuk añwana, 
Baba odudu ekim ikanke mö; 
Eböp mö esöñeda, 
ndiñwana ye idiök, 
M’uñwöñö oro akanam ikpuhö. 

Körös: 
Me uñwöñö Abasi ikpuhö 
(idikpuhö), 
Baba odudu ekim ikanke 
(ikanke); 
Eböp mö esöñeda, 
ndiñwana ye idiök, 
Me uñwöñö Abasi ikpuhö! 

2. Ediwak nti utom ek’ 
enamde ke m’ini 
Edi ‘mkpösöñ isua ebiat 
uyai mö, 
Ikö Abasi kemi, ekem 
y’odudu eset, 
M’uñwöñö oro akanam ikpuhö! 

3. Buötidem k’ ikö oro ’yeda 
fi usuñ uwem, 
Yom mö k’ini odude 
k’afaneköñ; 
Odudu otod’ enyöñ, 
eyesöñö fi idem, 
M’uñwöñö oro akanam ikpuhö! 

Amen. 
      """
    },
    {
      "id": 402,
      "title": "NDIDI UFAN JESUS",
      // "audio":"",
      "body": """
      KEY D 4/4 

{:m.f |s:-.Lls.m:r .d|d':-l:
t.L |s:m lm :d|r :-l-} 

1. UFAN Jesus, enem didie, 
Ami idiök owo, 
Ndinyene Ufan emi 
Adade ’sim k’enyöñ. 

Körös: 
Ufan ye Jesus, 
Eti ebuana, 
O nso inem ebuana, 
Jesus edi Ufan mi. 

2. Ufan, ke efen miduhe 
Ufan, mibiañake, 
Ufan, önöde mi emem 
Ufan akan ufan. 

3. Ufan, ada usuñ k’ekim, 
Ufan, öfiökd’ usuñ, 
Ufan, kini ’memidem mi, 
Ufan, osiod’ isön. 

4. Ufan, kini udöñö mi, 
Ufan, kini mkpa, 
Ufan, ke isañ unyöñ mi 
Ufan ndöñesit. 

5. Ufan, k’uwem okurede, 
Ufan, k’isöñ efen, 
Ufan, ndikutde k’enyöñ 
Ufan, k’nsimd’ iduñ. 

Amen. 

      """
    },
    {
      "id": 403,
      "title": "YAK MBUÖTIDEM YE AFO ",
      // "audio":"",
      "body": """
      KEY D 3/4

{:m.f|s:d':t.L|s :m:f.m|r:-.L 
:s .,f |m :-} 

1. AFO ’möfiök ’memidem mi, 
Onyuñ okut esit mi, 
Ke idomo osimde mi, 
Yak mbuötidem y’ Afo. 

Körös: 
Ami ndifeghek’ ndik, 
Ke usuñ nsañade, 
Ke ñkukim okimde mi, 
Yak mbuötidem y’ Afo. 

2. Mbuötidem k’usen idiök, 
Emende obot efep, 
Öfönde ama ke ukut, 
Oto ke ata ima. 

3. Ke ñkopde ndodu Fo, 
Y’eti ubök mfön Fo, 
Nyesuk ibuot k’uyo Fo, 
Ke mbetde item Fo. 

4. Tutu ‘mbufut uwem ebe, 
Akam mi ’yesuk edi 
Öböñ mum mi ke Spirit Fo, 
Yak mbuötidem y’Afo.
 
Amen. 

      """
    },
    {
      "id": 404,
      "title": "ABASI EMI MBÖÑDE AKAM NNÖ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{.s,|d.d:d.rlm.m :m.r|d,:L 
ls :-. } 

1. ABASI emi akasiakd’ usuñ 
k’inyañ, 
Okosiode iköt Esie k’ufin 
Egypt, 
Ökönöde mö uyo heven 
k’isañ mö, 
Enye ’di Abasi mi. 

Körös: 
SA: Enye ’di ukem 
Enye ’di ukem 
TB: O Akwa Abasi Enye 
’Di ukem mfin 
All: Kini adade mö ebe 
k’inyañ (ke inyañ) 
Nyebere k’Enye oto 
k’ikö Esie 
Anam utibe ñkpö edi 
ukem mfin. 

2. Enye okosio Daniel 
k’obube ömön, 
Ye mkparawa ita ke edem’ 
ikañ, 
Emi utin y’öfiöñ ekopd’ 
uyo Esie 
Enye ’di Abasi mi. 

3. Ke uyo Esie, anam inyañ 
odobo, 
K’ini ukut, önö ata 
idorenyin, 
Ke udi Jesus, akakpat itiat 
efep, 
Enye ’di Abasi mi. 

4. Emi abanade mbiet iñwañ 
idem 
Anamde akpa-möñ asiakha 
ke desert, 
Emi osiode anamidiök ke 
okpuk, 
Enye ’di Abasi mi. 

Amen. 
      """
    },
    {
      "id": 405,
      "title": "MBUFUT, WERE BE ",
      // "audio":"",
      "body": """
    
KEY Ab 4/4

{:s, |d :dld:d .,r lm :d ls, :d |t .t 
:t .d lr :m ld :-:-} 

1. NYEKWÖ koro efakde mi, 
Mada k’ Itiat nsi nsi; 
Möbuötidem ke Christ Andifak, 
Mada k’ Itiat nsi nsi. 

Körös: 
We-re, ‘mbufut möñ 
Ami mösöñö ‘nda k’ Itiat 
(nsinsi) 
We-re ‘mbufut möñ 
Mösöñö ‘nda k’Itiat ‘nsinsi. 

2. Ke oyobio ösöñde eti, 
Mada k’Itiat nsi nsi 
Idinamke ukpöñ mi idiök, 
Mada k’ Itiat nsi nsi. 

3. Mbuötidem mi ösöñ k’Afo 
Mada k’ Itiat nsi nsi 
Odip uwem mi k’ima Esie. 
Mada k’ Itiat nsi nsi. 

Amen. 
  
      """
    },
    {
      "id": 406,
      "title": "ITIAT IDAK ISÖÑ ÖSÖÑ DIDIE",
      // "audio":"",
      "body": """
      KEY A 2/2

{:s,.L, |d :L, .d |s, :d .d |m :d .m |s, 
:s, .L, |d:L,.d |s, :d.d |m :r .r |d } 

1. IKÖT Abasi, didie ke esöñö 
Eda k’mbuötidem k’ikö Abasi! 
Eyom etiñ nso efen y’mbufo, 
Etienede Jesus, ebiet uböhö? 

2. Kufeghe koro ndude ye afo 
Kudighe, Ami ndi Abasi fo, 
Nyeñwam fi nyuñ nsöñö fi idem 
Mum fi ñkama k’edinen ubök Mi 

3. Kini edisañade ke möñ ebe, 
Akpa-mmöñ idinyuñ ifukke fi, 
Nyedu y’ afo k’ukut nyuñ 
ndiöñ fi, 
Eyeföfön y’ afo ke ini ukut. 

4. Kini idomo osimde fi k’ usuñ, 
Nyenö fi mfön nte ekemde, 
Edem’ ikañ idinyuñ itaha fi, 
Eyeda enye eyet fi nte gold. 

5. Iköt Mi eyesim usöñ ke uwem, 
Oto ke ata nsinsi ima Mi, 
Ibuot iwat mö eyedi uyai mö, 
Nyuñ dip mö nte nditö eröñ mi. 

6. Ukpöñ eke eberede ye Jesus, 
Ndiyakke enye ’nö m’usua esie, 
Ekped’ idiök akande enye okuk, 
Ami ndikpöñke, ndikpöñk’ enye. 

Amen. 
      """
    },
    {
      "id": 407,
      "title": "BUÖTIDEM ",
      // "audio":"",
      "body": """
      KEY G 4/4

{:s,|d :d .d lt, :L, .t,|d :-l-:t, .d |r 
:r .r lr :m .fe |s :-l-} 

1. ENYE ödöhö, buötidem, 
Nim m’uñwöñö k’akpanikö, 
Uböñ Esie emekpere, 
Ami monyime ndibö. 

Körös: 
:\$: Emefak mi ’möfiök 
Oto k’ ikö Esie 
Monyuñ ‘mbuötidem. DS 

2. Eyeyöhö unana mi, 
Möfiök k’Enye ’nö mi 
uwem 
Sia uwem otode k’Enye 
M’ididianke me ‘ñkpö eken? 

Körös: 
:\$: Öböñ mayak idem, 
M’ uñwöñö Fo ada, 
Monyuñ ‘mbuötidem. DS 

3. 
Önö mi erifen y’ emem 
Önö eriyet k’ idiökñkpö 
Idim-möñ asiakha ’mokut 
Jesus, nyeyere k’esit. 
Körös: 

:\$: Ih, ami möböhö, 
Iyip Fo eyet mi 
K’mbuötde idem. DS 

4. Tor’ Öböñ ndi Esiemö, 
Kemi ndu k’ idak iyip, 
Emefen, eyet, ekök mi, 
Emenam nsana ofri. 

Körös: 
:\$: Toro Enye, monim, 
Idahemi möbö, 
K’mbuötde idem. DS 

Amen. 
      """
    },
    {
      "id": 408,
      "title": "BABA, NDUHE IKPÖÑ ",
      // "audio":"",
      "body": """
      KEY C 6/8

{|s :-:s lm :s :d' |m' :-:-lm' : -:|
d' :-:d' lr' :d' :L |s:-:-l-:-: } 

1. “KUFEGHE ‘ndu y’afo” 
eti uñwana; 
Ntanta’fiöñ uböñ, ’yama 
k’ usuñ mi! 
K’ata okoneyo, k’ uñwöñö oro 
“Ami ’dikpöñke fi, 
ndikpöñke fi ikpöñ.” 

Körös: 
SA: Nduhe ikpöñ, nduhe ikpöñ 
TB: Nduh’ ikpöñ, nduh’ ikpöñ, 
nduhe ikpöñ 
All: Öñwöñö idikpöñke mi 
Baba nduhe ikpöñ. 
SA: Nduhe ikpöñ, nduhe ikpöñ 
TB: Nduh’ ikpöñ, nduh’ ikpöñ, 
nduhe ikpöñ 
All: Öñwöñö idikpöñke mi 
Baba nduhe ikpöñ. 

2. Nti-iköñ ye Lily eyemerede; 
Utin osop k’isöñ, ayama k’enyöñ! 
Jesus, Iköñ Sharon, öbök Esiemö; 
Jesus, uñwañ’ enyöñ, 
idikpöñke mi ikpöñ. 

3. Ñkwe usuñ iso, unömö edu; 
Andinyañ’ ekpere ete “söñ esit” 
Idara omokpon k’ofri esit mi 
Ñkwö kpukpru ini, 
“Enye idikpöñke mi.” 

Amen. 
      """
    },
    {
      "id": 409,
      "title": "NTAK EFEN IDUHE ",
      // "audio":"",
      "body": """
     KEY Ab 3/4 

{s, |s, .L, :s, :d |t, .L, :L, :L, |f .r :d 
:t, |d:-} 

1. MENYENE nduök odudu 
Idighe k’ ifiök mi; 
Möbuötidem y’Odu Uwem 
Oto k’unan Esie. 

Körös: 
Ami nyomk’ ikö efen, 
Nyomke ‘ntak efen, 
Koro Jesus ama akpa, 
Akakpa önö mi. 

2. Ekem, Jesus anyaña mi, 
Ndik mi emetre; 
Metien’ Enye ye idiök mi, 
Eny’ idibinke mi. 

3. Esit mi ebere k’ ikö, 
Ikö Abasi-Ibom; 
Erinyaña oto k’Eyen 
Ye ke iyip Esie. 

4. Akwa Andikök ukpöñ mi, 
Ekedi ‘ndinyaña; 
Öduök iyip ke ibuot mi, 
Man önö mi uwem. 

Amen.  
      """
    },
    {
      "id": 410,
      "title": "ENYE EDI OKIM, AMI NDI ESIE",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:d.r|m.m:m.flm.r :d.m|s:d’ 
lL :L .,L |s :-l-:m .,m |r :-l-} 

1. ETI Lily itikhere, 
O! eye didie, 
Edi-okim … ‘ndi Esie. 
Uyo Esie y’ami akan ikwö 
me enjel, 
Edi-okim … ‘ndi Esie; 
K’ ebiet me Lily eköride 
ke mben möñ, 
Do Enye ’da mi usuñ, 
k’ubök nasia Esie 
Ima amakan mi okuk, 
ñkopke ndik 
Edi-okim … ‘ndi Esie. 

Körös: 
S: Lily itikher’ edi okim! 
ATB: Eti Lily itikhere, hallelujah 
edi-okim, 
S: Lily itikhere, ‘ndi Esie 
ATB: Eti Lily itikhere ‘ndi Esie, 
All: Uyo Esie y’ami akan 
ikwö me enjel 
Edi-okim … ‘ndi Esie. 

2. Yak ñkwö mbaña mfön ye 
ima Esie, 
Edi-okim … ‘ndi Esie 
K’usiere y’mbubreyo, 
Enye ’nö edidiöñ 
Edi-okim … ‘ndi Esie. 
K’ mbubreyo, uyo ödöhö, 
“Duök odudu! 
De k’ emem,” ndodu y’afo, 
udukwe idiök 
’Yedu tutu k’usiere, 
Andikpeme y’ Ufan,” 
Edi-okim … ‘ndi Esie. 

3. Ada mi ebe itikhere mfut 
mkpa, 
Edi-okim … ‘ndi Esie. 
Mfeghe nso k’etiñde suñsuñ 
önö mi, 
Edi-okim … ‘ndi Esie. 
Ndodu Esie önö uñwana 
ke ekim 
Ebe itikhere onim mi 
k’ enyöñ obot; 
K’ufn mi önö uböhö 
k’ obio uñwana, 
Edi-okim… ‘ndi Esie. 

Amen. 

      """
    },
    {
      "id": 411,
      "title": "EDI HEVEN DO ",
      // "audio":"",
      "body": """
      KEY Ab 3/4

{.s, :d .,r |m :-.s, :L, .d |d :-.d 
:t, .L,|s, :-.m :m .,d |r :-} 

1. TÖÑÖ ‘nte Christ 
’kafakde mi, 
Isöñ emi edi heven; 
K’ mfukhö ye ukut isöñ, 
Ndifiök Christ edi heven. 

Körös: 
Hallelujah, edi heven, 
K’mfiökde ke emefen mi, 
Ekpedi k’obot me k’inyañ, 
Ke Christ odud’ edi heven. 

2. Ami ñköfiökke heven 
Tutu Christ owut mi iso; 
Kemi ukpöñ mi ömöfiök, 
Emi eyedu k’ nsinsi.
 
3. Ebiet eke nyin iduñde 
K’ obot me ke itikhere; 
Ke akwa ufök me ekpri 
Ke Christ odud’ edi heven. 

Amen. 

      """
    },
    {
      "id": 412,
      "title": "ÖFÖN NDIBUÖT IDEM ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{|m :r ld :-.t, |L, :d lL, :s,|d :m ls 
:-.m |r:d lr :-} 

1. ÖFÖÑ ‘ndibere ke Jesus 
Ndida k’ ikö Esie 
Ndibere k’ uñwöñ’ Esie 
Edi “Öböñ ödöhö” 

Körös: 
Jesus, Jesus, möbuötidem 
Motim ‘mfiök Enye eti, 
p Jesus, Jesus, Eti Jesus 
Nö mfön ‘ndibuötidem. 

2. Enem ‘ndibere ke Jesus, 
’Diyere k’ iyip Esie; 
Ndiduk ke mbuötidem, 
Ke idim-möñ erikök. 

3. Öfön ‘ndibere ke Jesus 
Kpöñ idiök y’ obukidem; 
Öböñ Jesus önö uwem 
Idara ye ifure. 

4. Madara ‘ndibere k’Afo 
Jesus, Andifak y’Ufan; 
Möfiök k’Afo odu y’ami 
Eyedu osim utit. 

Amen. 

      """
    },
    {
      "id": 413,
      "title": "AKPA IDO UKPONO ",
      // "audio":"",
      "body": """
      KEY A 2/4 

{:s, .L, ld :d .,d lL, .s, :d .d lr :r .,m 
lr .d } 

1. AKPA ido ukpono -3x 
Ömöfön ye ami. 

Körös: 
Akpa ido ukpono 
Akpa ido ukpono 
Akpa ido ukpono 
Ömöfön ye ami. 

2. Ama ’fön ye m’eka nyin -3x 
Ömöfön ye ami. 

3. Anam ’ma kpukpru owo -3x 
Ömöfön ye ami 

4. Ama ’nyaña m’ete nyin -3x 
Ömöfön ye ami 

5. Ama ’fön ye prophet 
Daniel -3x 
Ömöfön ye ami. 

6. Ama ’fön y’ nditö 
Hebrew -3x 
Ömöfön ye ami. 

7. Ema edomo mö k’ ikañ -3x 
Ömöfön ye ami 

8. Ama ’fön ye Paul ye 
Silas -3x 
Ömöfön ye ami. 

9. Eyefön ke ndikpade -3x 
Ömöfön ye ami 

10. Eyeda nyin osim 
heven-3x 
Ömöfön ye ami. 

Amen. 
      """
    },
    {
      "id": 414,
      "title": "EDI UKEM ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:d .,r |m .,m :m .,L ls .,m :d .,r 
|m .,m :m .,d lr } 

1. AKANAM omokop mbuk 
Nsek Eyen Bethlehem, 
Me enjel ye me öfiökñkpö 
Ekenyuñ ekponode, 
Nt’ ekpepde möfiök ibet 
Ke temple ko ke eset? 
Madara ndibuk ’nö fi, 
Enye ’di ukem mfin. 

Körös: 
SA: Enye ’di… ukem mfin… 
TB: ’Di ukem mfin, Enye ’di 
ukem mfin, 
SA: Enye ’di… ukem mfin... 
TB: ’Di ukem mfin, Enye ’di 
ukem mfin, 
All: Ke oyom me andiyo, 
Ke afak m’ ukpöñ k’usuñ, 
Köm Öböñ, edi ukem mfin. 

2. Akanam omokop mbuk 
Isañ Esie ke inyañ, 
Etienede mbet Esie 
Ke mbufut Galilee? 
Nte akwa mbufut möñ 
Ekopde uyo Esie? 
Madara ndibuk ’nö fi, 
Enye ’di ukem mfin. 

3. Omokop abaña akam 
Jesus ke Gethsemane; 
Ye ata utibe mbuk 
Nte akpade k’ eto? 
Ayar’ anyanya ñkukim; 
Ayak ukpöñ Esiemö? 
Akanam emi önö fi, 
Enye ’di ukem mfin. 

Amen. 
      """
    },
    {
      "id": 415,
      "title": "ATA ITIAT IDAKISÖÑ ",
      // "audio":"",
      "body": """
      KEY G 4/4

{lm :m .,f lm : .r ld :d .r ld :-.L ls, 
:d l d .r :m lr :s l s :f } 

1. ITIAT odu ke me eyo, 
Okoñ k’uböñ osim k’enyöñ; 
Itiat oro akasiakha, 
Mendiduk ekut ifure. 

Körös: 
Ndusuk eböp edori k’utatan, 
Ndusuk k’ etop, k’isöñ ye 
k’inyene, 
Okim edi ke nsinsi Itiat, 
Jesus, “Itiat Nsinsi.” 

2. Jesus edi Itiat oro 
Ke ukut akada uböñ; 
Oyom mi ndiyak kpukpru, 
Nyuñ yire k’ Itiat nsinsi, 

3. Itiat emi edi tower, 
Uñwana heven ayama, 
Añwañ’ usuñ, anam ikut 
Christ y’ iköt Esie k’ifure. 

Amen. 
      """
    },
    {
      "id": 416,
      "title": "MÖSÖÑÖ KEMI",
      // "audio":"",
      "body": """
      KEY Eb 6/8 

{:m .m lm :d:m lr :-:r .r lr :s, :r ld 
:-:d .d ld:f :L ld' :t :L ls :-} 

Duet: Sop & Tenor 

1. K’ANYAN ini mbufut 
’kemen mi oyo, 
Ami ‘nsöñö ke Jesus kemi, 
Ami ñkop inem uyo okotde mi, 
Ami ‘nsöñö ke Jesus kemi. 

Körös: 
S: Kemi!... kemi!... 
ATB: Mösöñö ke Jesus, mösöñö kemi 
Eyikhe mi emebe, eñwan okure, 
Mbiomo idiök mi monim k’ukot Esie 
Ami ‘nsöñö ke Jesus kemi. 

2. Mösöñö ke Itiat, mbufut 
mikanke, 
Ami ‘nsöñö ke Jesus kemi; 
Okposuk mbufut amiade 
mi eti, 
Ami ’nsöñö ke Jesus kemi. 

3. K’ mbuötidem ifure ye 
emem odu, 
Ami ‘nsöñö ke Jesus kemi; 
Menyen’ ata emem ke esit 
mi kemi, 
Ami ‘nsöñö ke Jesus kemi. 

4. Emem mi omokpon 
k’ñkperede esuk, 
Ami ‘nsöñö ke Jesus kemi, 
K’erinim k’ akpanikö ami 
möböhö 
Ami ‘nsöñö ke Jesus kemi. 

Amen. 
      """
    },
    {
      "id": 417,
      "title": "IDI ME ANDIKAN ",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{|d .,d :d .d ld .s,:m, .s, |m:r ld:|
r .,r :r .m lr .t, :s, .d |t,:L, ls, :-} 

1. KEMI ikakan inyuñ ibe oro, 
Erikan nyin oto k’eti iyip 
Christ 
Öböñ amada ye nyin, iyesöñö, 
Ñkpö ibiöñöke odudu Esie. 

Körös: 
S: Idi m’andikan … 
ATB: Idi m’andikan, idi 
m’ andikan 
All: Ke iyip... ke iyip... 
S: Christ önö nyin erikan 
ATB: Christ önö erikan 
All: Ke iyip… ke iyip… 
Eyeneröñ ’kewotde 
Odu uwem, akara, 
Nyin idi me andikan 
Nyin idi me andikan. 

2. K’enyiñ Abasi ‘Israel, 
iyeka iso 
Ndikan idiökñkpö ye ukwañido, 
Itoro kpukpru eyenyene Enye, 
K’erinyaña ye erikan ke iyip. 

3. Eyenö owo emi edikande 
Ndibuana ke manna otod’ enyöñ, 
Eyenö enye idiöñö mendikan: 
Afia edisine ‘ñkpö ye anyanya. 

Amen. 
      """
    },
    {
      "id": 418,
      "title": "SUK KA ISO ",
      // "audio":"",
      "body": """
      KEY Eb 4/2 

{|s :s ls .,f :m .,r |d .,r :d .,r ld 
:m .,m |r .,de :r .,m lf .,L :s .,f |m 
:s :-} 

1. CHRIST oyom mbon uko 
y’akpanikö, 
K’ iso eköñ ufañ odu önö fi; 
Saña be k’ idiök ererimbot emi; 
Kor’ obio heven edide utip nyin. 

Körös: 
SAT: E..ka! mbon eköñ cross, 
B:   Eka iso! Eka, mbon eköñ 
     cross 
SAT: Ekufeghe..., ebuötidem; 
B:   Jesus oyom fi, ’nam 
     akpanikö 
SAT: E..ka! mbon eköñ cross, 
B:   Eka iso! Eka mbon eköñ cross 
All: Bere k’Öböñ, y’ ikö Esie, 
     Kaka sim erikan. 

2. Satan öbiöñö onyuñ odomo nyin 
K’ima Öböñ iyenyene erikan; 
Mbon eköñ uko ke eyo oko, 
K’usuñ emi ’kesim utit isañ mö. 

3. Yak isin ifik k’usuñ isañ emi, 
Ise Jesus, ikpeme, iböñ akam, 
Ke banner iyewet “Christ 
Öböñ kpukpru” 
Ikwö hosanna udim satan öduö.

 Amen. 
      """
    },
    {
      "id": 419,
      "title": "ANDIFAK MI ODU UWEM ",
      // "audio":"",
      "body": """
      KEY Db 2/4 

{:s |s :-.m ld' .d' :t .L |s :-.f lm .m 
:r .m |f:-l-.r :s.f|m :-l-} 

1. MÖFIÖK Andifak mi oduuwem, 
Enye ’yefiak... edi k’isöñ... 
Enye önö nsinsi uwem, 
Mfön odu... k’ ubök Esie... 

Körös: 
Ami möfiök... Jesus odu uwem, 
Enye ’yefiak... edi k’isöñ 
Ami möfiök... Enye ’nö uwem 
Mfön odu... k’ ubök Esie. 

2. Möfiök uñwöñö Esie ada, 
Ikö Esie... idikpaha... 
’Kposuk obukidem akpade 
Nyekut E...nye ke utit... 

3. Möfiök, otim itie önö mi, 
Man ‘ndu k’ ebiet... Enye
’dude... 
Ekiker’ Esie y’ ami edi 
K’Enye e...yeda mi önyöñ. 

Amen. 
      """
    },
    {
      "id": 420,
      "title": "KPUKPRU EYEFÖN ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{|d :s, ld :r lm :slf:m |r :-lL :t,|d 
:-l-:-} 

1. KE ima Fo Andinyaña, 
Eyeföfön; 
Ima Esie ikpukhöke, 
Kpukpru öfön; 
Eti iyip ökökök nyin, 
Mföniso omosim nyin, 
Akanyan ubök ofuk nyin, 
Eyeföfön. 

2. Okposuk ibed’ idomo, 
Eyeföfön; 
Erinyaña nyin öyöhö, 
Kpukpru öfön; 
Nyin idara ke Abasi, 
Ke Christ ke idiñwum mfri, 
Isana ito ke Spirit, 
Eyeföfön. 

3. Nyin ibebet eti usen, 
Eyeföfön; 
K’ mbuötidem ikwö k’ukut, 
Kpukpru öfön; 
Ibere k’ ima Ete nyin, 
Jesus öyöh’ unana nyin, 
Ke mkpa me edi k’ uwem, 
Eyeföfön. 

Amen. 
      """
    },
    {
      "id": 421,
      "title": "KE UKUT EDIDE ",
      // "audio":"",
      "body": """
      KEY A 3/4 

{:s, |d :d :r |m :-:s |d :r :t, |d:-:r 
|m :r :d |t,:-:d |r :d .t, :L, |s,:-:-} 

1. K’ UKUT edide, 
K’ndik odude, 
Ufan ekpekpöñ, 
K’asua ewakde, 
Ñkpö kiet ösöñö, 
Se ekpededi, 
Ewet k’ ikö Esie, 
“Öböñ eyenö” 

2. M’ inuen itöhö, 
Öböñ k’ öbök mö, 
Yak nyin ikpebe 
Mbuötidem mö, 
Se idotde, Öböñ 
Idisinke nyin, 
Sia ewetde ete, 
“Öböñ eyenö.” 

3. Yak ikop uyo, 
Nte Abraham, 
Nyin k’ika iso, 
Ke mbuötidem, 
Sia idide isen, 
Ada usuñ do, 
Buötidem ke kpukpru, 
“Öböñ eyenö.” 

4. Ukem’ idude, 
M’ eti ido nyin, 
Edi k’ifiökde, 
Enyiñ Andifak, 
Do k’uko nyin odu 
Y’ebiet uböhö, 
Ke akwa odudu, 
“Öböñ eyenö.” 

Amen. 
      """
    },
    {
      "id": 422,
      "title": "ÖBÖÑ EYENÖ ",
      // "audio":"",
      "body": """
      KEY F 4/3  

{:s, |d :d :r |m :m :r |m :m :f |s ::
s |L :L :L |L :s :m |s :s :s |s :f } 

1. K’ USUÑ ekededi Öböñ 
eyenö 
Idighe k’ usuñ mi, idighe 
k’ usuñ fo, 
Edi k’usuñ Esie, “Öböñ 
eyenö.” 

Körös: 
Yak ibere k’ Öböñ, 
Enye eyenö 
Yak ibere k’ Öböñ, 
Enye eyenö 

2. K’ini ekededi, “Öböñ eyenö, 
Idighe k’ini mi, idighe k’ini 
fo, 
Edi k’ini Esie “Öböñ eyenö.” 

3. Kutimere esit, “Öböñ eyenö,” 
Emi ’di idiöñö, kpukpru 
ikö Esie 
Idikpuhökere, “Öböñ eyenö.” 

4. Saña y’ uko, inyañ 
eyebakhare 
Usuñ eyeyama; k’mfiori 
erikan, 
Iyebuana k’ikwö, “Öböñ eyenö” 

Amen. 
      """
    },
    {
      "id": 423,
      "title": "JESUS YE AMI ",
      // "audio":"",
      "body": """
      KEY D 3/4

{|m :d:m |s:m :s |d' :t :d' |s :-:|
L :f :L |s :m :s |s :f :m |r :-:-} 

1. JESUS edi kpukpru ‘ñkpö 
önö mi; 
Enye ’di utibe Andinyaña! 
Enye ekpeme, afak k’ oyobio, 
Akwa Andifak Jesus y’ami! 

Körös: 
Jesus y’ami, Jesus y’ami 
Kpukpru ini y’ebiet, Jesus 
y’ami. 

2. Jesus k’udöñö ye nsöñidem, 
Jesus k’unana, k’emem 
y’inyene, 
K’eyo m’oyobio ye ‘ñkpö 
’kededi, 
Edi uböhö, Jesus y’ami. 

3. Enye edi ebiet uböhö mi 
Mfut, odudu ye ukeme mi, 
Edi Andikpeme mi k’nsinsi 
Eti Andifak, Jesus y’ami. 

4. Enye ’di Prophet, Oku 
y’Edidem; 
Enye ’di Uyo y’Idimmöñ Uwem 
Enye ’di Utin-edinenido 
‘Nduk Erinyaña, Jesus y’ami. 

5. Jesus k’ mfukhö, idara 
m’ubiak: 
Inyene mi ke eti me idiök; 
Ata Ufan mi ke kpukpru ebiet, 
K’uwem me k’mkpa, Jesus y’ami. 

Amen. 
      """
    },
    {
      "id": 424,
      "title": "CHRIST ESET! ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{|s:-ls :L |L :s ls:-|s:-lf :L |L :ls 
:-} 

1. ENYE ana k’ udi 
Jesus Öböñ mi! 
Ebet usen oro 
Jesus Öböñ! 

Körös: (kwö söp) 
Eset öwörö k’ udi 
(Enye ’set) 
Akan kpukpru me asua 
Esie (Enye ’set) 
Enye eset Andikan akwa 
ekim 
Ndikara y’ iköt Esie 
k’ nsinsi 
Eny’ eset!... Eny’ eset!... 
Hallelujah! Christ eset. 

2. K’ikpikpu k’ekpeme 
Jesus Öböñ mi! 
Enim itiat k’udi 
Jesus Öböñ! 

3. Mkpa imumk’ Enye 
Jesus Öböñ mi! 
Enye akan mkpa 
Jesus Öböñ! 

Amen. 
      """
    },
    {
      "id": 425,
      "title": "ETIÑ EBAÑA UBÖÑ FO ",
      // "audio":"",
      "body": """
      KEY F 4/4

{|d :-.r lm :r |f:m lr .t, :d|L :s lf 
:m |r :m .d ls :-} 

1. ETIÑ ebaña uböñ Fo 
Zion, obio Abasi! 
Enye, anam akpanikö 
Otim itie önö fi, 
Odori k’ Itiat nsinsi, 
Nso abiat emem Fo? 
Erinyaña akan okuk, 
Mö ifegheke m’asua. 

2. Sese me akpa möñ uwem, 
Etode k’ ima ‘nsinsi, 
Önö kpukpru nditö Fo, 
Unana iduhe do; 
Ke möñ oro öfiöröde 
Ebit nsat itöñ mö, 
Mfön Öböñ nyin önöde, 
Eyedu k’ nsi nsi. 

3. K’ ebiet emi Enye ’dude, 
Ntukhube y’ikañ do! 
Nte uböñ ye ufukñkpö 
Ndiwut Öböñ odu; 
Andinö mö manna k’usen, 
Okopde eseme mö, 
Menere ikwö hosanna, 
Osim k’ebekpo Esie.

 Amen. 
      """
    },
    {
      "id": 426,
      "title": "BERE KE ENYE IKPÖÑ ",
      // "audio":"",
      "body": """
      KEY G 4/4 
4 8.6.8.6 -8.5.8.5 

{:s, |s, :-.L, ls, :d |m :-.m lr :d |s 
:s lm :d |r :-l-} 

1. EDI m’akpa mba k’ idiök; 
Öböñ atua mböm; 
’Yenö fi nduök odudu, 
K’onimd’ ikö Esie.
 
Körös: 
Bere k’Enye! Bere k’Enye! 
Ke Enye ikpöñ; 
Eyeñwam fi! Eyeñwam fi! 
’Yeñwam fi kemi! 

2. Jesus ama öduök iyip, 
Man önö eridiöñ; 
Be duk k’iyip ufak Esie, 
Eyet afia ‘nte snow. 

3. Jesus usuñ y’ akpanikö, 
Ada osim emem; 
Kam nim Enye k’akpanikö, 
Eyetim ödiöñ fi. 

4. Dibuana ye iköt Esie, 
Tiene duk ke uböñ, 
Ndiduñ ko k’ iduñ enyöñ, 
K’nsinsi idara. 

Amen. 
      """
    },
    {
      "id": 427,
      "title": "O ÖBÖÑ UÑWAM NYIN KE ESET",
      // "audio":"",
      "body": """
      KEY C 4/4 

{:s|m :L ls :d' |d' :t ld' :s |d' :s lL 
:fe |s :-l-} 

1. O ÖBÖÑ uñwam nyin 
k’eset, 
Idorenyin iso, 
Ebiet udibe k’oyobio, 
Y’ nsi nsi iduñ. 

2. K’ idak mfut ebekpo Fo, 
Iköt Fo eboho; 
Ubök Fo ikpöñ emekem, 
Onyuñ ekpeme nyin. 

3. Mbemiso m’obot eda 
Ye isöñ k’ itie mö, 
Afo Abasi ododu 
K’ nsi nsi ukem. 

4. Tösn isua ke enyin Fo 
Etie ‘nte usen kiet, 
Ebiet ekim okoneyo, 
‘Mbemiso usiere. 

5. Ini k’ ebe nte akpa, 
Emen m’owo efep; 
Efefre mö nte ndap, 
Ekpaña k’ usiere. 

6. O Öböñ uñwam nyin 
k’ eset, 
Idorenyin iso, 
Kpeme nyin ke uwem emi, 
Y’ nsi nsi iduñ. 

Amen. 
      """
    },
    {
      "id": 428,
      "title": "ÖSÖÑ NTE ITIAT",
      // "audio":"",
      "body": """
      
KEY Bb 4/4

{|s, :s, .,L, ls, :-.f, lm, .s, :d .r ld :t, 
lf, :f,.,m, lr, :-.m, lf, .L, :s, .,f, lm,:-} 

1. ÖSÖÑÖ ‘nte itiat ke akwa 
inyañ 
Akpan mbufut k’akwa odudu; 
Ösöñ’ ada ke oyobio ye ofim 
Ikereke oyobio y’ mbufut. 

Körös: 
Ösöñö ‘nte itiat, ñkpö 
ikanke 
Yak obuma asiakha ökpösöñ; 
Iyebere ke akwa Andifak nyin, 
Jesus nsinsi ebiet udibe. 

2. Ösöñö ‘nte itiat ke isöñ 
desert 
Idiök enyöñ ’kpofuk k’uwemeyo, 
Ke idara akpamba y’ owo isañ, 
Eyeduök odudu k’ mfut Esie. 

3. Ösöñö ‘nte itiat k’ini 
mbufut, 
Okposuk ukut uwem edide; 
Iyesöñö k’ Enye, Itiat 
nsinsi 
Jesus, Enye ’di kpukpru 
önö nyin. 

4. Ösöñö k’ini ‘ñkpö isöñ 
ebede, 
Ösöñö k’ini mbufut Jordan; 
Iyesöñö ida k’ uñwöñö Esie, 
Jesus, ebiet uböhö akpamba. 

Amen. 
      """
    },
    {
      "id": 429,
      "title": "JEHOVAH EDI ANDIBÖK MI ",
      // "audio":"",
      "body": """
     KEY Bb 3/4

{:s, |s, :-:d | d :t , :d | f :m :r | r :m 
:s, |s,:-:s, | s,:m :d | d :t , } 

1. JEHOVAH ’di Andibök mi, 
Anam ‘nsukhöre ’na; 
K’awawa ‘mbiet; ’da mi aka, 
Ke möñ ‘nduök odudu. 

2. Enye ’demere ukpöñ mi, 
Anam mi nsaña 
Ke usuñ edinen ido, 
Kabañ’ enyiñ Esie. 

3. K’nsañade k’mfut mkpa 
Mfegheke idiök; 
Koro Afo ’dude y’ami, 
Ndidöñ mi esit. 

4. Emebri okpokoro mi 
K’iso me asua mi; 
Eyet mi aran ke ibuot, 
Cup mi öyöh’ öduöi. 

5. Mfön y’ima ikpöñ k’uwem 
Eyebine kpa mi; 
K’nsinsi ufök Jehovah, 
Eyedi iduñ mi. 

Amen.  
      """
    },
    {
      "id": 430,
      "title": "AFO KE EKERE MI, ÖBÖÑ!",
      // "audio":"",
      "body": """
      KEY G 3/4 

{:s, |s, .m :m :d .r |d .t, :t, :s, 
|s, .f :f :r .m |r .d :d : } 

1. KE m’idomo esimde mi 
K’uföt kpukpru afaneköñ 
Ñkpö kiet enem mi eti -
Afo k’ekere mi. 

Körös: 
Öböñ k’ekere (’kere) mi! 
Öböñ k’ekere (’kere) mi! 
Nso ndik edinam mi 
Sia ’fo ’kerede mi. 

2. M’ekikere uwem emi, 
Eyöhö ukpöñ y’esit mi; 
Mö enam mi nti nte -
Afo k’ekere mi. 

3. M’ekim edi m’ ekim enyöñ, 
K’ uwem enemde me ’diökde, 
Möyukhö ndifiök nte -
Afo k’ekere mi. 

Amen. 
      """
    },
    {
      "id": 431,
      "title": "EBIET EKEDEDI YE JESUS",
      // "audio":"",
      "body": """
      KEY D 6/8 

{|s :-:s lL :-:L ls :-:m ld :-:r lm ::-
lf :-:-ls :-:-l -:-:-} 

1. EBIET ekededi ye Jesus, 
‘nyeka 
Ebiet ek’ Enye adade mi usuñ, 
K’ebede Enye idara iduhe, 
K’ ndude ye Jesus, ndik iduhe. 

Körös: 
K’ ebiet ekededi, ndik 
iduhe, 
Ebiet ekededi ye Jesus, 
‘nyeka. 

2. Ebiet ’kededi y’Öböñ, 
nduh’ ikpöñ 
M’ufan ekpebiaña, Enye ’di okim! 
Ubök Esie ’da ebe m’idiök usuñ, 
K’ ndude ye Jesus, edi idara. 

3. Ke Öböñ odude mekeme ‘ndide 
K’ökpösöñ ekim akande mi okuk, 
Möfiök k’ndemerede ‘ndiyoh’ aba 
Ebiet ’kededi ye Jesus, ed’ iduñ. 

Amen. 
      """
    },
    {
      "id": 432,
      "title": "BUÖTIDEM NYUÑ KOP UYO",
      // "audio":"",
      "body": """
      KEY F 3/4

{:d .r |m :m :r |d :-:d .m |s :s :f |m::
m .m |f :L :f |m :s :m |r :-} 

1. K’ ISAÑADE y’ Öböñ, 
k’ uñwan’ ikö Esie 
Uböñ Esie ’yekpon k’usuñ nyin 
K’ inamd’ uduak Esie, 
Enye ’yedu ye nyin, 
Ye möbuötidem ekopd’ uyo. 

Körös: 
Suk buötidem, 
Kor’ usuñ iduhe 
Ndidara ke Jesus 
Akan ‘ndibuötidem. 


2. Ntukhube y’ ekim, idökke 
ke enyöñ, 
Uyama iso Esie ’bin mö; 
Eyikhe ye ndik, möñ-eyet 
me ubiak 
Iduhe ke nyin ibuötd’ idem. 

3. Idighe mbiomo, m’ ukut 
ibuanade 
Edi Enye ’yediöñ utom nyin 
Idighe mfukhö, idigh’ afaneköñ 
Edi ediöñ nyin k’ ibuötd’ idem. 

4. Edi akan ‘ndifiök inem 
ima Esie, 
Tutu iyak kpukpru ke uwa 
Koro mfön Esie y’ idara 
önöde 
Enyenede mendibuötidem. 

5. Do k’inem ebuana, iyetie 
ye Enye 
Iyenyuñ isaña ye Enye 
Ikop uyo Esie, ika se ödöñde 
Kufeghe, buötidem, kop uyo. 

Amen. 
      """
    },
    {
      "id": 433,
      "title": "AKAKAN KEMI, EYEKAKAN ",
      // "audio":"",
      "body": """
      KEY Bb 9/8 

{d, :m, :s, |d :-:-ls, :-:-lm, :s, :d 
|m :-:-ld :-:-ld :r :m |r :-:-ld ::-
lt,:-:-|d:-:-} 

1. AKAKAN kemi, eyekakan, 
Öböñ k’ odudu Esie 
Ada udim eköñ öwörö 
Oduk ke uföt eköñ; 
Mö k’eka y’ akwa odudu, 
Esine ñkpö eköñ, 
Efiori enyiñ Öböñ mö, 
Kop mö k’etiñ k’idara: 

Körös: 
“Owo uko ikanke k’ eköñ, 
Me ösöp ukot k’ itök; 
Edi menam akpanikö 
Ebö erikan k’ mfön.” 

2. Akakan kemi, eyekakan 
Anie ’di Öböñ emi? 
Mbon-eköñ Esie eto möñ 
Ekwöde uböñ Esie? 
Edi Öböñ y’ Andifak nyin, 
Edidem y’Andinyaña; 
Mö edi ntanta öfiöñ, 
Eyama k’ uböñ Esie. 

3. Akakan kemi, eyekakan, 
Christ, Andikara kpukpru; 
M’ebekpo y’ uböñ ye 
anyanya 
Ye uyai mö eyetak, 
Edi mboneköñ Öböñ 
K’eyöde esim utit, 
Eyekut emem k’ nsinsi 
K’eñwan mö okurede. 

Amen. 
      """
    },
    {
      "id": 434,
      "title": "MBUÖTIDEM EDI ERIKAN",
      // "audio":"",
      "body": """
      KEY F 6/8

{:s|s :-:dld :-:r |d :-:t, lt, :-:f 
|f :-:r ls :-:f |m :-:-l -:-} 

1. EDU ke obot uñwana, 
Christian edemere; 
Ñwana tutu ekim ebe 
Usiere eyedi, 
Eñwana ye m’asua k’ iso; 
Esöñ idem eti, 
Mbuötidem ’di erikan, 
Akand’ ererimbot. 

Körös: 
I...kan k’ mbuötidem, 
I...kan k’ mbuötidem, 
O, utibe erikan! 
Akand’ ererimbot. 

2. Ukpeme nyin odu k’ima 
Ye ikö Abasi; 
M’ebemiso ekedara 
K’usuñ isañade 
K’ mbuötidem nte idio; 
Ekan kpukpru ebiet 
Mbuötidem akande ‘mkpa, 
Edi otu eköñ. 

3. Kpukpru ebiet ikut m’usua 
Edide ke udim, 
Kuyak inyene ’memidem, 
Ika k’ añwa eköñ 
Iyara ‘ndun erinyaña; 
Iböb’ akpanikö, 
Ekondo eyenyuñ enyek 
K’ mfiori erikan. 

4. Enye ’mi akande asua 
’Yebö afia öföñ 
Eyefiök k’ iso me enjel 
Enyiñ esie k’enyöñ 
K’ ikade iso k’ uñwana; 
Iyeyöhö y’ ima 
Iyekan kpukpr’ udim ekim 
Oto k’ enyiñ Jesus. 

Amen. 
      """
    },
    {
      "id": 435,
      "title": "MBONEKÖÑ ÖBÖÑ ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s, |d:t, ld :r |m :-l-:f |m :r ld 
:t, |d:-l-} 

1. IDI mboneköñ 
Efakde ke iyip; 
Enyiñ nyin do k’ ñwed eköñ 
Ndiñwana ’nö Christ, 
K’ ukut kpukpru ini; 
Ikwö ke idara, 
Esit nyin ösöñ ke Enye 
Mboneköñ Öböñ. 

Körös: 
Mboneköñ (akwa) Öböñ 
Ikwö itor’ Esie (Esie) 
Isuk ibuot inö Enye, 
Akwa Öböñ uböñ. 

2. Idi mboneköñ, 
Idar’ enyiñ Esie, 
Emi ekeköñde ke cross, 
Christ Öböñ, Edidem, 
S’itakde öföfön; 
Iyeyö kpukpr’ ubiak, 
Ikpon’ enyiñ Jesus Öböñ, 
Nte mboneköñ. 

3. Idi mboneköñ, 
Eyekut nyin k’ Enye 
K’ ikutde ukut ye Enye 
Ibuana k’ esuene, 
Imen banna, k’ enyöñ 
Ini ekem kemi, 
Usen anyanya ekpere 
Önö mboneköñ. 

Amen. 
      """
    },
    {
      "id": 436,
      "title": "DAHA KE ENYÖÑ, UÑWAÑA FO EMEDI",
      // "audio":"",
      "body": """
     KEY Bb 3/4

{:s, |m :-.r :d |d :-.t, :L, |s, :m, 
:L, |L, .s, :-:s,.s, |m, :-.f, :s, |L, 
:-.t, :d |m :r:-. L, |t, :-:} 

Duet: Sop & Alto 

1. NÖ Abasi eköm emi ekemede 
Ndinyaña mö emi eyomde Enye; 
Uñwana Esie ’yama önö öyöh’ ufak, 
Utib’ ima Esie ebin ndik efep. 

Körös: 6/8 
Daha … k’ enyöñ… 
uñwana fo emedi, 
Daha…. k’ enyöñ… 
uñwana fo emedi, 
ST: Uñwan’ ima ’da fi usuñ 
AB: Uñwana akpanikö ’yeda 
fi osim iduñ, 
All: O! Daha k’enyöñ uñwan’ 
emedi 

2. Idorenyin emedi k’ufök 
akpamin 
Emi ekebighide k’ekim ye ukut, 
Kemi ömöbuñ öwörö ke ñkpököbi; 
Idara afiak öyöhö k’ esit esie. 

3. Kemi kpöñ min di dibö 
eridiöñ Öböñ, 
K’odudu Esie emenyene erikan; 
M’andiyom Enye, 
k’eyarade idiökñkpö mö, 
Eyenyene odudu eñwana y’idiök 

Amen.  
      """
    },
    {
      "id": 437,
      "title": "SIO MKPO EKÖÑ",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{|s, :s, lm, .,f, :s, |L, :f lm .,r :d |r :m 
lr .,t, :s,|L, :L, .t, ls, :-} 

1. SIO mkpo eköñ, se! usua 
k’edi, 
Menere Banna nö Öböñ, 
Sine ‘ñkpo eköñ, esöñö eda, 
Bere ke eti ikö Esie! 

Körös: 
f Mbon eköñ! Emenere banna, 
Ebeñ’ idem suan etop emi! 
Eka iso! efiori hosanna! 
Christ edi ebe-iso eköñ! 

2. Söñöda k’eköñ, saña ka iso, 
Sia nyin ifiökde iyekan, 
Otueköñ ye banna k’eyama, 
K’eñwan akpanikö, iyekan! 

3. Afo O! Öböñ, kop ke ikotde; 
Ñwam nyin kpukpru ke mfön Fo; 
K’eköñ etrede, ke idikande, 
Nö nyin anyanya ke iso Fo! 

Amen. 
      """
    },
    {
      "id": 438,
      "title": "“MÖ EKE EBETDE ÖBÖÑ” ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:s, |d :-.d ld .t, :L, .t,|d :-ls, :d 
|m :-.m lf :m |r :-l-} 

1. MBON-IDÖK k' iñwañ iwakke 
Mö emekpa mba, 
Edi, ebet Öböñ ke Enye, 
Eyenö odudu. 

Körös: 
SA: Koro “mö ebetde Öböñ” 
TB: Koro “mö emi ebetde 
Öböñ” 
SA: Eyekop idem, 
TB: Eyekop, eyekop idem, 
SA: Mö eyedök k’ mba, 
TB: Mö eyedök (eyedök) 
k’mba 
All: Eyedök... k’mba nte ibiom 
Eyefe...ñe ikpaha ‘mba 
SA: Esaña ikpötke, 
TB:Esaña ndien ikpötke 
All: Eyefe...ñe ikpaha ‘mba 
SA: Esaña ikpötke 
TB: Esaña ndien ikpötke 
All: Eyefe...ñe ikpaha ‘mba 
Mö idikpötke 

2. Mmemidem ye erikpa ‘mba, 
Anam isuk uyo, 
K’iberede ye Andinyaña, 
Nsinam ikpötde? 

3. Edara! Enye ’dodu ye nyin, 
Tutu osim utit, 
S’ enyöñ! Söñ esit, nyuñ ka iso, 
Mfön Esie ekem! 

Amen. 
      """
    },
    {
      "id": 439,
      "title": "KA ISO! ",
      // "audio":"",
      "body": """
      KEY Db 2/2  

{|s: L .s ls : L .s |s :d' ls :-|
s:f lf:lL :sls:-} 

1. BUÖTIDEM y’Abasi fo, 
Ka iso! Ka iso! 
Da ke uñwöñö Esie, 
S: Ka iso! 
AB: Ka iso, ka iso }
T: Ka, suk ka iso, 
Kukañ enyiñ Öböñ fo; 
K’ ntak but ye esuene, 
Suan etop Esie kemi, 
S: Ka iso 
A: Ka iso, iso 
T: Ka iso, suk ka iso 
B: Ka suk ka iso 

2. Enye ödöñ fi utom? 
Ka iso ka iso! 
Nam utom Öböñ kemi, 
S: Ka iso 
AB: Ka iso, ka iso }
T: Ka, suk ka iso 
Buötidem nyuñ nam k’ ima; 
Bere ke ubök Esie, 
Söñö da tutu utit, 
S: Ka iso 
A: Ka iso, iso 
T: Ka iso, suk ka iso 
B: Ka suk ka iso 

3. Enye önö mkpasip? 
Ka iso, ka iso, 
Tö, afo ’yefiak ödök, 
S: Ka iso 
AB: Ka iso, ka iso }
T: Ka, suk ka iso 
Ka k’inua otop Öböñ; 
Tie kpeme nyuñ bet Enye, 
Eyebörö akam fo, 
S: Ka iso 
A: Ka iso, iso 
T: Ka iso, suk ka iso 
B: Ka suk ka iso 

4. Ömödöh’ utit k’edi, 
Ka iso, ka iso 
Nam utom Esie k’ ndik, 
S: Ka iso 
AB: Ka iso, ka iso 
T: Ka, suk ka iso 
Christ udeme y’ odudu; 
Uyo uwem ke usuñ, 
Adade osim k’ uböñ, 
S: Ka iso 
A: Ka iso, iso 
T: Ka iso, suk ka iso 
B: Ka suk ka iso 

5. Ke ekpri ini emi, 
Ka iso, ka iso 
Diöñö Enye k’ usuñ fo, 
S: Ka iso 
AB: Ka iso, ka iso 
T: Ka, suk ka iso 
Yak ekut fi ke Enye; 
Uduak Esie enem fi, 
Ndien k’ uwem y’ ifure, 
S: Ka iso 
A: Ka iso, iso 
T: Ka iso, suk ka iso 
B: Ka suk ka iso. 

Amen. 
      """
    },
    {
      "id": 440,
      "title": "IKWÖ ERIDEMERE ",
      // "audio":"",
      "body": """
      KEY C 4/4
       
{.s |d' :-.s ld' :-.s |d' .,m :f ., s lL .,s 
:m .,d |s :-.L |t :-.d' |r' .,de' :r' .,m' 
lr' :-.} 

1. EDEMERE! Andikpep k’okot nyin kemi; 
Edah’ eda! Bere k’ikö Esie 
Eka iso! Ekwörö isua uböhö 
Nyuñ men ikö, nti ikö Christ Öböñ nyin. 

Körös: 
Ka (ka) ka, ekwö ikwö! 
Ka (ka) ka nta-nta usiere 
k’ayama! 
SA: Ka (ka) ka ke iso nyin 
TB: Ka (ka) ka k’iso nyin 
Ökpösöñ Andinyaña ’da 
usuñ (’da usuñ) 
Uböñ, uböñ nsi-nsi udim k’ekwö, 
Kwö “Hosanna” isaña k’uko ibe, 
Nti mbon eköñ mi, 
Nyin ifiök Jesus ikpöñ, 
Ikwö hallelujah k’ikade iso. 

2. Menamidiök ke isöñ eyom uñwana, 
Enye edi, ebe k’mbufut möñ, 
O, wara suan etop akpanikö k’isöñ, 
Ekufre mbon unana ke obio nyin. 

3. O ufök Abasi nö ubök uñwam fo, 
Yom mendisop k’obot ekim ye tuep, 
Nyan ubök ima fo nyaña me mö emi, 
Da mö sin ke idak mfut Andinyaña. 

4. Tim se, tim se! Usen 
uñwöñö k’ekpere, 
Emi edidarade Jesus Christ, 
K’ emem ye ifure edifukde kpukpru, 
Enyuñ ekwö hallelujah k’ ofri isöñ. 

Amen. 
      """
    },
    {
      "id": 441,
      "title": "KUYIK",
      // "audio":"",
      "body": """
      KEY A 4/4 

{:s, |d: .s, ld :r|m :-l-:m |f :-.m 
lr :d |r :-l-} 

1. KUYIK! Öböñ edi 
Utip y’ otu eköñ, 
Enye akan k’ eköñ, 
Edi odudu fo! 

Körös: 
Kuyik! Uyo Öböñ 
Etiñd’ ikö ’nö fi; 
Daha da ke enyöñ 
Nyuñ dara Christ Öböñ! 

2. Kuyik! Öböñ okop 
Kpukpru eseme fo; 
Nti ikö Esie 
Eyediöñ ukpöñ fo. 

3. Kuyik! Kufeghe ‘ndik! 
Öböñ odu y’ afo 
Enye eyeñwam fi 
Ösöñö fi idem. 

4. Kuyik! Iköt Öböñ; 
Andinyaña k’ edi 
Man ada fi k’uböñ 
Önyöñ k’iduñ Esie! 

Amen. 
      """
    },
    {
      "id": 442,
      "title": "CHRIST YE AMI!",
      // "audio":"",
      "body": """
      KEY D 4/4  

{|d':t.,L ls:L |d :r lm :-|s:s lL :|
t :t ld' :-} 

1. N-NYEN’ anie k’enyöñ, Öböñ? 
Christ ikpöñ! Christ ikpöñ! 
K’ofri uwem ami ‘nyekwö, 
Christ y’ami! Christ y’ami! 
Enye akakpa önö mi, 
Akafak mi k’iyip Esie, 
Man nyen’ emem y’Abasi, 
Christ y’ami! Christ y’ami! 

2. Nsink’ enyin k’inyen’ owo, 
Christ y’ami! Christ y’ami! 
Ami nyomke ‘ñkpö isöñ, 
Christ y’ami! Christ y’ami! 
Inemesit iduhe mi, 
Kpukpru mö edi ikpikpu, 
Idara mi edi ‘nsinsi, 
Christ y’ami! Christ y’ami! 

3. K’ndude kini unana 
Christ y’ami! Christ y’ami! 
“Ömöfiök,” nsukke uyo, 
Christ y’ami! Christ y’ami! 
“Ke vine y’eto fig miñwumke, 
Me utom olive ekpetak” 
Me ufene mi ekpekpa 
Christ y’ami! Christ y’ami! 

4. K’ndude ke idiök isöñ, 
Christ y’ami! Christ y’ami! 
M’idiökñkpö ekan mi ekuk, 
Christ y’ami! Christ y’ami! 
K’eñwan uwem ösöñd’ eti, 
Kini m’asua ekperede, 
K’odudu Esie nyekan, 
Christ y’ami! Christ y’ami! 

5. Ke uwem mi okurede, 
Christ y’ami! Christ y’ami! 
K’ubök Esie mokut emem, 
Christ y’ami! Christ y’ami! 
K’akwa ubiak omumde mi, 
Ke baba uñwam miduhe, 
Nyekwö mbe ke mkpa, 
Christ y’ami! Christ y’ami! 

Amen. 
      """
    },
    {
      "id": 443,
      "title": "ENYE EKEME NDINYAÑA FI",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s, .,s, |d :d ld :d .,r |d :t, lt, :t, .,d 
|t,:L, lL,:L, .,t |L, : s, |s,} 

1. ATA eti mbuk ke me eyo, 
Ata eti ‘mbuk k’edeme owo; 
Ata eti ‘mbuk, ekondo k’ekwö, 
Abasi ekeme ‘ndinyaña fi. 

Körös: 
SA: Enye ekeme ‘ndinyaña fi, 
TB: Enye ekeme, Enye ’keme }
‘ndinyaña fi 
SA: Enye ekeme ‘ndinyaña fi, 
TB: Enye ekeme, Enye ’keme }
‘ndinyaña fi 
All: Ke idiökñkpö, bö emem 
k’ Enye, 
Abasi ekeme ‘ndinyaña fi. 

2. Ata eti mbuk k’ererimbot, 
Ata eti mbuk, ayañ’ ifiök; 
Ata eti ‘mbuk, suan etop Esie, 
Abasi ekeme ‘ndinyaña fi, 

3. Ata eti mbuk, fiak suan etop, 
Nö esit ndudue y’ akpa mba; 
Wuk enyin s’Öböñ, Enye ’yekök fi, 
Abasi ekeme ‘ndinyaña fi. 

Amen. 
      """
    },
    {
      "id": 444,
      "title": "MÖFIÖK ENYE EMI NNIMDE KE AKPANIKÖ ",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:d |m :-.m lf .m :r .d | L:sls :m ls 
:-.s lL.s :f.m |r:-l-} 

1. KE nso, k’Öböñ önö mi 
Uwak mfön Esie, 
Okposuk ami mendotke, 
Ada mi k’Esiemö. 

Körös: 
Möfiök Enye emi ‘mbuötd’ idem, 
’Nim k’akpanikö k’ Enye ’mekeme, 
‘Ndikpeme se nyakde ’nö 
Tutu ke usen oro. 

2. Mfiökke ‘nte önöde mi 
Erinyaña k’mfön; 
Me nte önöde emem 
K’nimd’ ikö Esie. 

3. Mfiökk’ usuñ nte Spirit, 
Osiod’ owo k’ idiök, 
Ayararede Christ k’ikö 
Anam ebuötidem. 

4. Mfiökke eti me idiök, 
Enimde enö mi; 
M’usuñ mba m’eti usen, 
Ndien ñkut Enye. 

5. Mfiökke usen me ini, 
Öböñ edidide, 
Me k’ndede idap mkpa, 
Me ‘ndisobo k’ofim. 

Amen. 
      """
    },
    {
      "id": 445,
      "title": "ATA ETI IFIÖK",
      // "audio":"",
      "body": """
      KEY D 9/8 

{lm :r :d |s :-:-ls :-:-|f :s :L |s::-
l-:-:-ls :m :s |d' :-:-lt:-:t lL 
:s :fe |s :-:-l-:-:-} 

1. MOTIM ‘mfiök Jesus, edi okim 
O nso inem k’uböñ Abasi! 
Mabuana k’erinyaña Öböñ 
Ebon mi ke Christ, eyet k’iyip. 

Körös: 
Mbuk y’ikwö mi edi emi 
Nditor’ Öböñ kpukpru usen, 
Mbuk y’ikwö mi edi emi 
Nditor’ Öböñ kpukpru usen. 

2. Edifön emem ye idara 
Ami mokut inemesit kemi; 
Me enjel esukhöre edi 
Y’etop mböm, öyöhö y’ima. 

3. Edifön emem, kpukpru enem, 
Ke Öböñ, madara ödiöñde mi, 
Mebet, mekpeme nyuñ se enyöñ 
Ndu k’ima ye mfön Esie. 

Amen. 
      """
    },
    {
      "id": 446,
      "title": "NDIDA KE ME UÑWÖÑÖ ABASI ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|s, .,s, :s, .,L, ls, .,f, :m, .,f, |s, :d ld 
:-|L, .,L, :L, .,t, ld .,d :t, .,L, |L, :s, 
ls, :-} 

1. MADA ke me uñwöñö 
Christ Öböñ mi, 
Yak ekwö itor’ Esie k’nsi nsi, 
“Uböñ k’ata enyöñ” ami nyekwö. 
Mada ke m’uñwöñö Abasi. 

Körös: 
S: Mada, mada, 
ATB: Mada ke me uñwöñö, 
mada ke me uñwöñö 
All: Mada ke me uñwöñö 
Andinyaña mi, 
S: Mada, mada, 
ATB: Mada ke me uñwöñö, 
mada ke me uñwöñö 
All: Mada ke me uñwöñö 
Abasi. 

2. Mada ke m’uñwöñö 
midibiarake, 
Kini ndik ye eyikhe edide, 
Nyekan oto k’eti ikö Öböñ 
Mada ke m’uñwöñö Abasi. 

3. K’ndida ke m’uñwöñö, 
kemi mokut 
Eti eriyet otode ke iyip, 
Mada ke uwör’ ufn Christ 
önöde, 
Mada ke m’uñwöñö Abasi. 

4. Mada ke me uñwöñö Christ 
Öböñ mi 
Ima Esie ömöböp mi 
k’nsinsi, 
Mada ikö Abasi ‘ñkan 
m’idomo, 
Mada ke m’uñwöñö Abasi. 

5. Mada ke me uñwöñö, 
ndiduöhö, 
Nyetim ’kpañ utöñ ’nö ikot 
Spirit. 
Nyebere kpukpru 
k’Andinyaña mi, 
Mada ke m’uñwöñö Abasi. 

Amen. 
      """
    },
    {
      "id": 447,
      "title": "MÖFIÖK ANDIFAK MI ODU UWEM ",
      // "audio":"",
      "body": """
      KEY Eb 6/4 

{:d |m :-:s ld' :-:d' lt :-:tlL :-:L 
ls :-:ml s:f :r l f:-:-lm :-} 

1. MÖFIÖK Andifak mi odu, 
K’ekpe ubök ’nö mi, 
K’ ima Esie Enye önö, 
Uñwöñö uböhö. 

2. Enye ’menere ibuot mi, 
Önö erinyaña; 
Enye anam mi mböhö, 
Enye k’ ösöp edi. 

3. Enye oyom mi nsana, 
Nso idibiöñö? 
Enye ’yenam mfön Esie, 
Öyöhö ke ami. 

4. Jesus mbere k’ ikö Fo, 
Monim k’ akpanikö; 
Eyedi, ada mi, Öböñ 
Nte udeme Fo.

 Amen. 
      """
    },
    {
      "id": 448,
      "title": "ÖFÖFÖN ",
      // "audio":"",
      "body": """
      KEY Db 4/4

{:s ls :-lf :m lm :-lr :m lf :L ls :f lm 
:-l-:sld':-lt:LlL:-ls:fels :-l-} 

1. K’EMEM nte akpa osimd’ usuñ mi, 
K’mfukh’ ösöñde ‘nt’ oyobio; 
Ke s’ekpededi ami möfiök nte, 
“Öföfön – öföfön y’ukpöñ mi.” 

Körös: 
Öföfön … y’ukpöñ mi. 
Öföfön – öföfön y’ukpöñ mi. 

2. Satan akpañwana, idom’ ekpedi, 
Yak mbuötidem mi edi: 
Ke Christ ömöfiök usukhör’ itie mi, 
Öduök iyip Esie önö mi. 

3. Enem didie koro me idiökñkpö mi 
Kpukpru, Enye emen efep; 
Emeköñ k’eto ami ‘mbiomke aba 
Tor’ Öböñ, tor’ Öböñ, ukpöñ mi, 


4. Kemi ami nyedu uwem ke Christ! 
K’ nsañade k’mfut mkpa, 
‘Ndifegheke ‘ndik k’Afo ekperede, 
Ndidöñ mi esit ke ukpöñ. 

5. Öböñ eridi Fo ke nyin ibebet, 
‘Ndika heven ke nyin iyom; 
Ukorowo me enjel, uyo Öböñ 
Edi idorenyin ukpöñ mi. 

Amen. 
      """
    },
    {
      "id": 449,
      "title": "AKWA ITIAT ",
      // "audio":"",
      "body": """
      KEY G 3/4

{:s|d .m :s:m |m .r :r :m |f .f :f:r 
|d .t, :d } 

1. NDOTK’ enyin k’ñkpö efen, 
Akan k’utom y’iyip Jesus, 
Mbuötk’ idem k’enyiñ efen, 
Edi k’enyiñ Jesus Öböñ. 

Körös: 
Mada ke Christ, 
Akwa Itiat, 
Isöñ efen edi utan, 
Isöñ efen edi utan. 

2. K’ekim ofukd’ iso Esie, 
Nyebere k’mfön Esie, 
Ke me mbufut ekoñde, 
Ukwak-ubom mi eyemum. 

3. Uñwöñö ye iyip Esie, 
Eyeñwam mi ke nanenyin, 
Ke nanade ñkpö k’ukpöñ, 
Enye ’yedi udeme mi. 

4. K’edidide y’ukorowo, 
O yak ekut mi ke Enye, 
Ke edinen ido Esie, 
’Nanando k’ebekpo Esie! 

Amen. 

      """
    },
    {
      "id": 450,
      "title": "MBUÖTIDEM MME ETE NYIN ",
      // "audio":"",
      "body": """
      KEY Ab 3/4

{|m :r :d | d :t , :d | r :L , :t,|d :-:|
d :t, :L, |s, :-:d |d :t, :d |r :-} 

1. MBUÖTIDEM me ete nyin, 
K’ uföt ikañ, ofut y’ ukut, 
O esit nyin amadara, 
K’ ikopde me mbuk oro. 

Körös: 
Edisana mbuötidem 
Iyekama tutu k’ mkpa. 

2. Ekeböp m’ete k’ ebuka 
Esit iduöhö mö baba, 
Utit nditö mö öfön 
Ke ekpade kpa nte mö. 

3. Mbuötidem me ete nyin, 
Iyom ‘ndida m’idut ’nö fi, 
Oto ke ikö Abasi, 
Ubon owo eyeböhö.
 
4. Mbuötidem me ete nyin 
Iyema m’ufan ye m’asua 
Inyuñ ikwörö Fi k’ ima 
K’nti ikö y’ido uwem. 

Amen. 
      """
    },
    {
      "id": 451,
      "title": "MÖBUÖTIDEM ",
      // "audio":"",
      "body": """
      KEY F 3/4 

{:s .,L |s :m :m .,f |m :d :t, .d |r 
:-.m :f .s |m :-} 

1. EYIKHE, mayak nö Jesus, 
Mokop uñwöñö Esie; 
Ami ndikwe but baba, 
’Buötidem k’ikö oro. 

Körös: 
Möbuötidem, möbuötidem, 
‘Mbuötidem k’ ikö Esie; 
Möbuötidem, möbuötidem, 
‘Mbuötidem k’ ikö Esie. 

2. M’idiök mi mayak nö Jesus, 
Eyet mi k’ iyip Esie; 
Enye ’yenam mi nsana 
Man nduñ ye Abasi. 

3. Ndik mi mayak nö Jesus! 
Möduök odudu k’ Enye; 
Okposuk usuñ okimde, 
Uñwan’ Esie ayama. 

4. Idara mayak ’nö Jesus! 
Enye edi emem mi; 
Enye, Öböñ enyöñ y’ isöñ 
Eyeyöh’ unana mi.. 

5. Mayak kpukpru nnö Jesus: 
Ikpökidem y’ ukpöñ mi, 
Idorenyin y’ inyene mi, 
Ke nsi nsi ini. 

Amen 
      """
    },
    {
      "id": 452,
      "title": "MFÖN YE IMA IKPÖÑ ",
      // "audio":"",
      "body": """
      KEY Eb 3/4

{:s,.,s, |d :d :d |m :r :d |L, :d :-|-::
d .,d |r :r :r |r :d :r |m :-:-|-:-} 

1. ÑKEDI asañisañ y’ andiyo, 
Ñkoyo ke ekim idiökñkpö; 
Jesus, Ekpemeröñ okut mi, 
Kemi ami möñyöñ ke iduñ. 

Körös: 
Mfön y’ima ikpöñ eyebine mi, 
Kpa ke ofri eyo uwem mi, 
Mfön y’ima ikpöñ eyebine mi, 
Kpa ke ofri eyo uwem mi. 

2. K’mba Enye edemer’ ukpöñ mi, 
Önö odudu k’usen k’usen; 
Ada mi ’ka möñ, ‘nduök odudu, 
Ekpeme mi ke usuñ isañ. 

3. K’ nsañade k’itikhere ekim, 
Öböñ mi eyeka ye ami; 
Eyekama mi k’ubök Esie 
Osim ke ebiet iduñ Esie. 

Körös: 
Mfön y’ima ikpöñ eyebine mi, 
Kpa ke ofri eyo uwem mi, 
Mfön y’ima ikpöñ eyebine mi, 
Kpa ke ofri eyo uwem mi, 
‘Ndien nyeduñ k’nsi nsi 
k’ufök Jehovah; 
‘Ndien eyebri okpokoro enö mi; 
Mfön y’ima ikpöñ eyebine mi, 
Kpa ke ofri eyo uwem mi, 
pp Kpa ke ofri eyo uwem mi. 

Amen. 
      """
    },
    {
      "id": 453,
      "title": "KPA, IDIÖK OWO ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{|s:m .,f ls .d':-.t |L :d'.,Lls:-|f 
:r .,m lf .t :-.L |s:L .,flm :-} 

1. SE nyenede, edi s’ enöde mi, 
Oto ke mfön sia mbuötd’ idem; 
Möduök mbure ye iseri, 
Koro enyaña mi ke mfön. 


Körös: 
Idiök owo enyañade, 
Idiök owo enyañade, 
Edi mbuk mi – etoro Abasi, 
Koro enyaña mi ke mfön. 

2. Ke ini edem ñkodu k’idiök, 
Emi akanam ñkpöñ Abasi, 
Jesus okut mi, madaresit, 
Koro enyaña mi ke mfön. 

3. Eyet iñwamke, ami ndotke, 
K’mböm enyaña mi esio k’mkpa, 
Okoto k’ idiök, mfegh’ Öböñ, 
Kemi enyaña mi ke mfön. 

4. Yak anamidiök obuk se enye 
Öfiökde abaña Andinyaña; 
Fiak buk ke ami nyebuana, 
Koro enyaña mi ke mfön. 

Amen. 
      """
    },
    {
      "id": 454,
      "title": "NDINAM NSO KE NNANADE JESUS? ",
      // "audio":"",
      "body": """
      KEY Eb 6/4  

{:s |s :-.f :m lm :-.r :d |m :-:-|s ::
s .s |L :-.se :L ld' :-.t :L |s :-:-l-:-} 

1. ‘NDINAM ‘nso k’nanade Jesus? 
Mekere ke ediwak ini, 
Möfiök ke esiode Enye efep, 
Uwem öyöhö y’ukut y’ubiak. 

Körös: 
‘Ndinam ‘nso k’nanade Jesus 
Ke m’usen ’nanenyin edide, 
Ke oyobio uwem otukde ukpöñ mi, 
‘Ndinam ‘nso, k’nanad’ Enye? 

2. ‘Ndinam ‘nso k’nanade Jesus, 
Ke ndima ufan ebede, 
Ndien ukpöñ mi oyo ke ekim 
Usier’ esie onyuñ ebighi? 

3. ‘Ndinam ‘nso k’nanade Jesus, 
K’usen ukorowo edide, 
Ke menkonyimeke mbet Esie, 
Nyuñ mfiök’ idar’ utom Esie? 

Amen. 
      """
    },
    {
      "id": 455,
      "title": "EDIDEM UBÖÑ, ÖBÖÑ EMEM ",
      // "audio":"",
      "body": """
      KEY G 2/2

{|m :s ld :r .m lf :m lr :-lm :f lr :ld 
:-} 

1. EDIDEM uböñ y’emem, nyema Fi; 
Ima mi iditreke, motoro Fi, 
Anam se mbeñede, öbörö mi; 
Ömöfiök ukeme mi önö uwem. 

2. Ke ntre k’ukeme mi, nyekwö Fi, 
Kpukpru udöñ k’esit mi, nyenö Fi, 
Okposuk m’idiökñkpö mi efioride, 
Afo ’kop onyuñ önö mi erifen. 

3. K’ofri usen itiaba, ‘nyetoro Fi; 
Ke esit mi nyekwö itoro Fo, 
Ke ekpri ukeme mi, ndikwö Fi, 
Tutu osim k’nsinsi ‘nyetoro Fi. 

Amen. 

      """
    },
    {
      "id": 456,
      "title": "UÑWANA HEVEN ",
      // "audio":"",
      "body": """
      KEY G 9/8  

{|s, :L,:t, ld:-:-ld :-:-lm :r :d lr 
:-:-ls :-} 

1. ‘NDISAÑA k’uñwana k’ofri isañ, 
Ke obot ye ke itikhere; 
Christ ödöhö, “Ami ‘ndikpöñke fi” 
Uñwöñ’ eke mikpukhökere. 

Körös: 
Uñwana heven, uñwana heven, 
Öyöhö ukpöñ mi ye uböñ, 
Hallelujah, ami madara, 
Motoro Enye, Jesus okim. 

2. Mfut akan mi onyuñ ofuk mi, 
Ndidipke Andinyaña mi, 
Enye ’di uñwana, akan ekim. 
Nyesaña y’ Enye k’nsinsi. 

3. K’uñwana oro ami ‘nyedara, 
Ñka iso man nsim iduñ; 
Nyekwö itor’ Esie k’idara, 
Nsaña ke uñwana ima. 

Amen. 
      """
    },
    {
      "id": 457,
      "title": "UTIBE MFÖN ",
      // "audio":"",
      "body": """
      KEY G 3/4

{:s, |d :-:m .d lm :-:r ld :-:L, ls, 
:-:s, ld:-:m .d lm :-:r ls :-:-} 

1. UTIBE ‘mfön! Enem eti, 
Anyañ’ owo ‘nt’ ami, 
Ami ‘ñkosop, emekut mi, 
Ñkedi ’nan, mokut. 

2. Mfön anam mfegh’ idiök, 
Emen eyikh’ efep; 
Mfön eye k’eritöñö 
Isañ mbuötidem. 

3. Ke ndik, ukut ye afia 
Emi ñkokutde, 
Mfön akanyañade mi, 
’Yeda osim k’ iduñ. 

4. K’idude tösn isua duop, 
Inyuñ iyama do; 
Ibat usen iduhe do, 
Nditoro Öböñ. 

Amen. 
      """
    },
    {
      "id": 458,
      "title": "ENYE ÖFÖN ETI ETI YE AMI ",
      // "audio":"",
      "body": """
     KEY G 6/4 

{:s, |m:m :m lf :m :r |r :d :L, ls, ::
s, |t, :t, :t, lt, :L, :t, |d :r :m lr : -} 

1. JESUS Andinyaña mi öfön eti, 
Mökwö itoro Esie k’ ofri usen 
Ami meyire Enye ke memidem 
Koro Enye öfön y’ ami. 

Körös: (Kwö söp) 
Koro Enye öfön y’ami, 
Koro Enye öfön y’ami 
‘Ndifiök Andifak k’isöñ edi heven 
Koro Enye öfön y’ami. 

2. Ada k’usuñ esit mi k’utin y’edim, 
Enye ’bet k’ime ndiduk ke esit, 
Mokop but Enye ‘ndibet k’anyan ini, 
Koro Enye öfön y’ami. 


3. Ami mada ndien k’obot eridiöñ, 
Ntukhube ifukke usuñ baba, 
Emenen iso y’ami, ekim ebe, 
Koro Enye öfön y’ami. 


4. Motoro Enye onimd’ itie ’nö mi, 
Usen kiet k’mbuötidem y’mfön Esie, 
Möfiök ami nyekut Enye k’iso, 
Koro Enye öfön y’ami. 

Amen.  
      """
    },
    {
      "id": 459,
      "title": "UYÖHÖ IMA ESIE",
      // "audio":"",
      "body": """
      
KEY F 3/4

{.m :re .m |f :-.m :re .m|d :-.s 
:fe .s |L : -.s :fe .s |m : -} 

Duet: Sop & Alto: 

1. UYÖHÖ ima Abasi, 
Akwa enö otod’ enyöñ, 
Okosio mi efep k’idiök, 
Onim ke uñwana. 

Körös: 
Uyöh’ ima Esie (Esie) 
Imetabi heven (k’isöñ) 
Enö fi ye ami k’mfön, 
Uyöh’ ima Öböñ. 

2. K’nsede Öböñ mi k’eto, 
Iseri mi kpukpru mayak, 
Ke ntide iso Esie, 
Y’uwak mfön Esie. 

3. Añwam mi ke utom Öböñ, 
Öyöhö uwem mi y’ikwö, 
Anam ndot iduñ enyöñ, 
Uyöh’ ima Öböñ. 

Amen. 
      """
    },
    {
      "id": 460,
      "title": "OBUFA ENYIÑ KE UBÖÑ",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{|s, .s, :s, .s, |L, .s, :-|d :r lm :|
r .r :r .r lr :m .r |d :-ls,: } 

1. AMI anamidiök, ñkedi 
Man mbö Öböñ erifen, 
Enö mi ke mfön, möfiök ke 
Enye ’nam ikö Esie (amanam) 

Körös: 
Ewet obufa enyiñ ko k’uböñ 
O Enye.... edi okim (ih okim), 
Me enjel ye mfia öföñ k’ekwö, 
Anamidiök afiak (amafiak) 
Koro ewet obufa enyiñ k’uböñ, 
O Enye…. edi okim (ih okim), 
Emefen m’idiökñkpö mi, 
menyene heven Ndiyoh’ aba. 

2. Ñkötöñ’ edöñ mi k’idak Cross, 
Mbak iyaresit Öböñ, 
K’ eberede heven, mokut ke 
Emewet enyiñ mi do (emewet). 

3. Ewet ete, “efak ke mfön” 
Idara oduk k’ukpöñ mi, 
Möfiök kemi k’Enye efen mi, 
’Masana k’iyip Esie (masana). 

Amen. 

      """
    },
    {
      "id": 461,
      "title": "MBIOMO MI EMEBE ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s, .s, |m .r :d .r lm :s, .s,|L, .d 
:t, .L, ls :s, .s, |d :s, ld :m |r :-l-} 

1. KE ñkutde Öböñ mi, 
Ke Enye efende mi, 
Mbiomo mi emebe, 
Idiökñkpö mi emebe, 
Emeyet mi nsana, 
Mbiomo mi emebe. 

Körös: 
Emebe, emebe, 
Mbiomo mi emebe (ebe) 
Möbö nduök odudu, 
Ema ediöñ ukpöñ mi, 
Mbiomo mi emebe (ebe). 


2. Esin emem k’esit mi, 
Emi midikureke, 
Mbiomo mi emebe, 
K’Enye ekperede mi, 
Edemere usuñ mi, 
Mbiomo mi emebe. 

3. Ke mberede usuñ 
Man Enye ’duk k’nsinsi, 
Mbiomo mi emebe, 
Mfön Esie awawak, 
Nyebuk ñö ekondo, 
Mbiomo mi emebe. 

Amen. 
      """
    },
    {
      "id": 462,
      "title": "UBÖÑ KE KPUKPRU USUÑ",
      // "audio":"",
      "body": """
   KEY Eb 4/4

{:d .,r |m .,m :m .,f lm :m .,f |s .,s 
:s .,L ls :s .,s |L .d' :-ls :m |r :-l-} 

1. K’ÖBÖÑ mi ekedide, 
Ndiduñ ke esit mi, 
Edi uböñ kpukpr’ usen 
(hallelujah!), 
K’ubiomikpe esit mi , 
Ömönö mi ifure, 
Edi uböñ kpukpr’ usuñ, 

Körös: 
SA: Edi uböñ, edi uböñ 
TB: Edi uböñ kpukpr’ usen 
Edi uböñ kpukpr’ usuñ 
All: K’Öböñ mi ekedide, 
Madara kpukpru ini; 
SA: Edi uböñ, edi uböñ 
TB: Edi uböñ kpukpr’ usen 
Edi uböñ kpukpr’ usuñ 
All: Edi uböñ kpukpr’ usuñ 
(kpukpr’ usuñ) 


2. Enye ’kedi önö mi, 
Omobon mi, tor’ Enye, 
Edi uböñ kpukpr’ usen, 
(hallelujah!) 
Osio mi ke ndudue, 
Mabuana y’Eyen Esie, 
Edi uböñ kpukpr’ usuñ. 

3. K’efukde iso Esie, 
Mebere k’mföñ Esie, 
Edi uböñ kpukpr’ usen; 
(hallelujah!) 
Ukpöñ mi amayama, 
Möfiök edi okimmö, 
Edi uböñ kpukpr’ usuñ. 

Amen.    
      """
    },
    {
      "id": 463,
      "title": "ENYE AKARA ",
      // "audio":"",
      "body": """
      KEY Db 3/4

{:s|s :-.m :s |s :-.r :s|s :d' :t |L 
:-:L |s :-.m :s |s :-:f |m :-:-l-:-} 

1. K’NTIDE utibe ima Abasi 
Ye s’ Enye ’namde ’nö mi, 
K’Eyen Esie Jesus otode k’enyöñ, 
Ndinyaña nyin k’isöñ; 
Ndien k’idara ñkwö Christ Öböñ, 
Öböñ uböñ ekeköñde. 


Körös: 
SA: Enye a…kara! 
Edidem mi eyekara k’nsinsi, 
TB: Edidem mi eyekara 
k’nsinsi,Enye ’kara! 
All: K’iduñ uñwana emi idiök, 
Y’mfukhö m’ekim miduhe. 

2. K’ ñkotde ñwed Andinyaña owo, 
Odude k’obot Judah 
Okokutd’ ukut, akpa onyuñ eset, 
Ukpöñ mi amadara, 
K’inemesit ñkwö Christ Öböñ mi, 
Öböñ uböñ ekeköñde. 

3. K’ ntide erikan ke mkpa Esie 
Ye esuene Calvary, 
Madara ke ibifik önöde mi 
Ntoro enyiñ Esie, 
Ñkwö Jesus Öböñ ke erikan 
Öböñ uböñ ekeköñde. 

Amen. 
      """
    },
    {
      "id": 464,
      "title": "HALLELUJAH, TORO ENYIÑ ESIE! ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{.s, |d .,d :d .r lm .m:-.r |m .,r :m .f 
ls :m .,f |s :-lm :d .,r lm :-lr :-.} 

1. MÖFIÖK ndu ke Jesus, 
anam mi nsana 
Hallelujah, Hallelujah! 
Eyet kpukpru idiök mi 
anam ‘ndi obufa 
Hallelujah, tor’ Enye. 

Körös: 
Nyekwö k’enyöñ obot, 
Ye ke una isöñ, 
O uböñ hallelujah, tor’ Enye! 
Ima Christ ye idiök owo 
idikureke 
O uböñ hallelujah, tor’ Enye! 

2. Ke Christ anyañade mi, 
ñkani ‘ñkpö ebe, 
Hallelujah, Hallelujah! 
Ndoduñ k’iso Esie, ntor’ 
ofri usen, 
Hallelujah, tor’ Enye. 

3. Usuñ enyöñ ayama, ke 
ñkade iso, 
Hallelujah, Hallelujah! 
Uböñ editie didie, 
k’ñkutd’ iso Esie, 
Hallelujah, tor’ Enye! 

Amen. 
      """
    },
    {
      "id": 465,
      "title": "JESUS ÖMÖFÖN YE AMI",
      // "audio":"",
      "body": """
     KEY Eb 4/4

{.d |m :m .m lm :m .f |s :s .s lL .s 
:-.d |m :m .m lm :m .f |s :f.m 
lm .r :-} 

1. MASAÑA ye Jesus Öböñ 
mi kpukpr’ usuñ, 
Koro ima Esie öyöhöd’ esit mi, 
Mowut ekondo mbuötidem mi k’Enye, 
Jesus ömöfön y’ami. 


Körös: 
Jesus ömöfön y’ami, (y’ami) 
Nyedi ufan Esie (Esie), 
Metiene, ada mi usuñ 
k’mfön Esie, 
Jesus ömöfön y’ami. 

2. Enye abuana k’ukut, anam efere, 
Unana mi, k’ima Esie ömöyöhö,
Önö idorenyin y’odudu ekemde, 
Jesus ömöfön y’ami. 

3. Mekpere ñkañ ekeköñde k’ntak nyin, 
M’udöñ ukpöñ mi mayak ’nö Andinyaña, 
Möfiök Enye eyeda mi osim heven, 
Jesus ömöfön y’ami. 

Amen.  
      """
    },
    {
      "id": 466,
      "title": "JESUS EMENERE MI",
      // "audio":"",
      "body": """
      KEY G 3/4 

{:s, |s, .m :m :s, |L, .f :f :L, |s, .d 
:m :d |r } 

1. INI kiet ñkodu k’idiök; 
Christ emenere mi, 
Önö uwem ndifak mi, 
Christ emenere mi. 

Körös: 
Emenere, emenere 
Nyediana Enye; 
Emenere, emenere, 
‘Nyekwö ima Esie. 


2. Ami ñkodu ke ukut, 
Christ emenere mi; 
Okop akam, oyom ukpöñ, 
Christ emenere mi. 

3. Ñkodu k’eyikhe y’ndik , 
Jesus okosio mi; 
Madara k’Enye ’kperede, 
Christ emenere mi. 

Amen. 

      """
    },
    {
      "id": 467,
      "title": "IMA ESIE IBIAÑAKE MI ",
      // "audio":"",
      "body": """
      KEY A 4/4 

{:m, .,f,|s, :d .,r lm :r .,d |r :d .,L, 
ls, :fe, .s, |L, :L, .,L ld :t, .,L, |s, :-} 

1. AMI ñkasaña k’obot idaresit, 
Do ndifreke mfön Esie; 
Nsaña k’itikhere ukut ye eyet, 
Ima Esie ibiañake. 


Körös: 
Ibiañake mi, Ibiañake mi; 
Enye ibiañake mi, 
(ibiañake mi) 
K’ebiet ekededi möfiök emi; 
Enye ibiañake mi 

2. Enye ekpeme ikpat isañ mi ebe 
M’ afia andidomo onimde; 
Nte Andikpeme, Enye ’da mi usuñ, 
Ima Esie ibiañake. 

3. Ke usuñ afakhade, y’udop mbiomo, 
Ikö Esie ete “kudikhe” 
Nyetiene ikpat isañ Christ Öböñ mi, 
Ima Esie ibiañake. 

Amen. 
      """
    },
    {
      "id": 468,
      "title": "MMÖNYÖÑ YE IKWÖ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{|d .,d :s, .,s, lL, :d |m :-l-: |d .,d 
:s, .,s, lL, :d |m :-lr :-} 

1. ERERIMBOT eyeye, 
Ukut ñko k’ebebe, 
Sia ’mende m’idiökñkpö 
mi nim k’idak Cross 
Mönyöñ y’ikwö idara. 

Körös: 
O emem ukpöñ mi okutde, 
Y’idara ibuanade kemi 
(kemi) 
Sia mmende m’idiök mi 
ñka k’idak Cross 
Nyuñ ’nim mö do. 

2. Omodu ke mfukhö? 
Nt’ usiere ebighi? 
Di yak kpukpru mbiomo fo 
k’idak Cross 
Nyuñ nyöñ y’ikwö idara. 

3. Moyom ekondo efiök 
Ebaña Cross Calvary, 
Nte Jesus okobiomde 
m’idiök mi 
Emen cross do önö mi. 

Amen. 

      """
    },
    {
      "id": 469,
      "title": "ENYE ÖNÖ MI URUK UWEM ",
      // "audio":"",
      "body": """
      
KEY Ab 6/8

{:s, .d |m :f :m lr :d :r |m :d :L,ld 
:-:t, .L, ls, :d :d ld :-.r :m |r :-:-l-} 

1. UBOM mi ökötö itiat k’esit 
inyañ, 
Akpa möñ okonyuñ ofuk mi, 
Kini kpukpru eñwan mi okurede 
Christ önö mi uruk-uwem. 

Körös: 
Enye ’nö mi uruk-uwem… 
Enye ’nö mi uruk-uwem (uwem) 
K’eto Calvary, ke edem inyañ, 
Christ önö mi uruk-uwem. 

2. Kini mbufut ye oyobio ösöñde 
Ñkwe baba uñwam ke obot, 
Idorenyin atak, nsobo edi, 
Christ önö mi uruk-uwem. 

3. Nte nyode, ami ke ñkwö ikwö, 
Mböm Esie idikureke, 
Ntiñ mbuk idara ’nö mö eken, 
Christ önö mi uruk-uwem. 

4. M’idiök fo okpokoñ ‘nte 
mbufut mmöñ 
Ndik ökpönö fi memidem, 
Kiet odu ndibörö eseme fo, 
Eyenö fi uruk-uwem. 

Amen. 
      """
    },
    {
      "id": 470,
      "title": "O! SE ENYE ANAMDE ÖNÖ MI!",
      // "audio":"",
      "body": """
      KEY F 4/4 

{|m :s lL .s :m.d|f :L ls :-|m :s 
lL .s:m .d|r :dlr:-} 

1. JESUS ama mi nsins’ ima, 
Ökpöñ uböñ ndinyaña mi, 
Kpukpru idiök mi obiom k’eto, 
Akan ndibuk se ’namde ’nö mi. 

Körös: 
O (se ’namde) se ’namde ’nö mi! 
O (se ’namde) se ’namde ’nö mi! 
K’ntiñde tutu k’nsinsi 
Ndibukke s’Enye ’namde ’nö mi! 

2. Ke nduöde k’idak mbiomo 
Nyuñ mkpade mba ke usuñ 
Jesus okosio mi ke okpuk, 
Anam nsaña k’usuñ Edidem, 

3. Ukut mi okodobi eti, 
Owo ikemeke ndiñwam 
Ke mkpade mba ke ukut 
Enye ekedi ndinyaña mi. 

4. Madara Jesus eti Ufan 
Ufan mi y’Enye ikureke 
O mkpakam ’nam ererimbot, 
Efiök utibe Andinyañ’ emi. 

Amen. 
      """
    },
    {
      "id": 471,
      "title": "OWO EFEN IKEREKE MI NTE JESUS ",
      // "audio":"",
      "body": """
      KEY Db 4/4 

{:d .r |m .m :m .m lm .m :r .m |s :r 
l -:r .m |f .f :f .f lf .f:m .r|m :-l-} 

1. MAMA ndibuk ’nö fi mbaña Jesus, 
Möfiök, Enye ’di ata eti Ufan, 
Nyebuk nte akabared’ uwem mi, 
Anam se ufan efen mikemeke. 

Körös: 
Efen ikereke mi ‘nte Jesus, 
Efen ifönke nte Enye, 
Efen imenke idiök y’ekim mi ifep, 
O Enye k’ekere mi. 

2. Ñkedi idiök ke Jesus okutde mi, 
Ami ñköyöhö ke ukut y’ ubiak, 
Jesus akama mi k’ubök ima Esie, 
Esin mi ke usuñ emi odotde. 


3. K’usen k’usen Enye ösöñö mi idem, 
Anam mi mfiök ikö ima Esie, 
Mfiöke ntak emi anyañade mi, 
Tutu ñkut iso Esie ko k’enyöñ. 

Amen. 
      """
    },
    {
      "id": 472,
      "title": "AMI MÖBÖHÖ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:s, .,s |d :d .,d lm :s |s :-lr :s, .,s, 
|r :r .,r lm :f |m :-l-} 

1. TOR’ Öböñ amanam mböhö, 
Ikpe ibiomke mi aba 
Tor’ Öböñ k’akwa erinyaña, 
Önö uböhö y’idara. 

Körös: 
Ami möböhö idiök, 
Idara y’emem okpon, 
Menyene akwa uböhö. 
Madara ye iköt Öböñ, 
möböhö. 

2. Tor’ Öböñ, m’idiök ye 
m’ukut mi, 
Enye ’kobiom k’eto mkpa, 
Ndifegheke aba ndik. 
Andinyaña k’ekere mi. 

3. Tor’ Öböñ, obuñde m’ebuka, 
Emen mkpököbi efep, 
K’mfön Esie nyekpon’ Enye, 
Ke kpukpru usen uwem mi. 

Amen. 
      """
    },
    {
      "id": 473,
      "title": "ETI UBÖHÖ ",
      // "audio":"",
      "body": """
      KEY Eb 9/8

{|s :L :s |m :-:-ld :-:-lr:d :r |m 
:-:-ls :-:-|s :L :s lm :-:-|d :-:|
m :r :dlr :-} 

1. KINI kiet, idiökñkpö 
ököböp mi, 
Nte ofn ñwana k’ikpikpu, 
Kemi menyene eti uböhö, 
Ke Jesus obuñde m’ebuka. 

Körös: 
Eti uböhö, utib’ uböhö! 
Nduh’ aba ke ufn idiök, 
Jesus edi Eti Andinyaña, 
Mi ye k’nsinsi, edi okim, 

2. Möböhö udöñ ye obukidem, 
Möböhö ufup, usua y’eñwan, 
Möböhö iseri ererimbot, 
Möböhö kpukpru ukut uwem. 

3. Uböhö k’mbubru ye iseri, 
Uböhö ke ima inyene, 
Ke iyaresit ye ifuresit, 
Eti uböhö ye idara. 

4. Uböhö k’ndik ye kpukpru ukut, 
Uböhö k’mbiomo ye ubiak, 
Uböhö ke Christ Eti Andifak 
Emi obuñde m’ebuka mi. 

Amen. 
      """
    },
    {
      "id": 474,
      "title": "ENYE ANAM MI NKWÖ IKWÖ ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{|m .m :re .m lf :m |m :r lL,:-|t, .d 
:de .r ls :f |m :-lf } 

1. IDARA odu ke esit mi, 
Jesus ödöhö suñ suñ; 
“Kuyik, ndu y’afo, bö emem” 
K’ofri oyobio uwem. 

Körös: 
Jesus, Jesus, Jesus, 
O inem enyiñ; 
Öyöhö udöñ mi, 
Anam mi ñkwö ikwö. 

2. Uwem mi ököyöhö y’idiök, 
Usua y’ubiak k’esit mi, 
Jesus oduk k’esit mfukhö, 
Afiak önö idara. 

3. Madara k’ uwak mfön Esie, 
Nduök odudu k’Enye; 
Nse ediye iso Esie, 
Oro anam ñkwöde. 

4. Ndusuk ami nsim udem, 
Nsobo y’ukut k’usuñ 
Ndusuk usuñ ödiök eti, 
Nyetien’ ikpat Esie. 

5. Ibighike eyedida mi, 
Aka ko k’iduñ enyöñ; 
Nyesim ke obio memfiökke, 
Nyekara y’Enye do. 

Amen. 
      """
    },
    {
      "id": 475,
      "title": "ÑKEDI ANAMIDIÖK",
      // "audio":"",
      "body": """
      KEY C 4/4

{:s |m :m .,r lr .d:-.d'|d' :d' .,L ld 
:-.L|s:s.,Lls.m :r.d|r:-l-} 

1. ÑKEDI anamidiök, ñkpöñ Öböñ 
Nyom usuñ ye Cross Calvary 
Edi mfön y’mböm Esie osim mi 
Christ anyaña mi. 


Körös: 
Alleluia! O uböñ enyaña 
mi ke mfön, 
Nyekwö k’ediye esuk 
Enye ’kut mi nyode, osuk 
amama mi 
Christ anyaña mi. 


2. Ini kiet ñkedi ofn ke idiök 
Akwa Andifak anam ‘mböhö; 
Mfön Esie ekem, önö erikan, 
Christ anyaña mi. 

3. Mosobo idomo ye afaniköñ, 
K’ nsede Enye mö ekure 
Kini afaniköñ, ödöñ mi esit 
Christ ekpeme mi. 

4. Ke mkpa ebede, ke mfön Esie, 
Ñkut Edidem k’uyai Esie, 
Nyuñ ’kwö k’ nsede uñwan’ iso Esie. 
Christ anyaña mi. 

Amen. 
      """
    },
    {
      "id": 476,
      "title": "ENYE AKABAREDE UWEM MI",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:m, .f,|s, :s, lL, :fe, |s, :d lm :f |m 
:r lm :r |d :-l-} 

1. IDARA odu k’esit mi 
Mokut Andinyaña, 
Osio ukpöñ mi ke idiök 
Akabar’ uwem mi. 

Körös: 
Akabar’ uwem mi 
Onim k’enyöñ heven, 
Osio ke but, toro Enye, 
Akabar’ uwem mi. 

2. Emen mbiomo mi efep, 
Önö mi ifure, 
Ami nyetiene Enye, 
Ata eti Ufan. 

3. Iyip Esie amafak mi, 
Ima Esie okpon, 
Nyekwö itor’ Öböñ mi, 
Akabar’ uwem mi. 

Amen. 
      """
    },
    {
      "id": 477,
      "title": "UÑWÖÑÖ ABASI",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s,.,s,|d:dld :r|d :s,l-:d .,r 
|m :m lm :d|r :-l-} 

1. ENYE ’kosio iköt Esie, 
K’ata ökpösöñ ubök; 
Ke itie ufn mö, aka 
Canaan, isöñ uñwöñö. 

Körös: 
Enye k’etiñ nyin imonim, 
Edi uñwöñö eset; 
Iditreke ndinö nyin, 
Ñkpö eke öfönde. 

2. Ada mö ebe ke desert, 
Oto k’obubit enyöñ; 
K’ ima Esie ikpöñke mö, 
Okposuk mö eduede. 

3. Öböñ anam uñwöñ’ Esie, 
Ekere iköt Esie; 
K’ikade ke obio Esie, 
Nyin isañake ikpöñ. 

4. Iyenyene ukpem’ Esie 
Ye ima nte k’eset 
Ke ofri usen uwem nyin, 
Eyeda osim utit. 

Amen. 

      """
    },
    {
      "id": 478,
      "title": "MMA NDU KINI OTIBEDE ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s, |d .d :d .d lL, .s, :m, .f,|s, :s, l :
s, .s, |d .d :d .dld .L, :t, .d |r: -} 

1. OMOBUP nte Christ anyañade mi, 
Nte mfiökde nte emeyet mi 
Omobup ‘nte mfiökde k’emefen mi, 
Kpañ utöñ, ami nyetiñ ’nö fi. 

Körös: 
‘Ñkodu do anam möfiök s’ikotibede 
Spirit Esie edemerede esit mi 
Mökwö n’ Öböñ mi mfin, 
eyet idiök mi efep 
‘Ñkodu do anam möfiök s’ikotibede. 

2. Omobup nte Christ akafakde mi 
Y’nte emem mi okponde akan gold; 
Nte anyañade mi osio k’ idiök 
Anam mi mbuana k’obio enyöñ. 

3. Kemi mökpöñ isöñ ke idaresit 
Metiñ ‘nte Jesus oduñde k’esit mi 
Nte nsanade oto k’idimmmöñ. 
Jesus eyet idiökñkpö mi kpukpru. 

Amen. 
      """
    },
    {
      "id": 479,
      "title": "KE JESUS AKARADE KE ESIT MI",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:m, .,f, |s, .,fe, :s, .,L, ls, :d .,r 
|m.,re :m.,f lm :s |s :-.r lm :f |m :-} 

1. IDAR’ odu k’ ukpöñ mi, 
Idara okpon eti, 
Sia Jesus akara; (ke esit mi) 
Enye ’bin kpukpru idiök, 
Önö mi idaresit 
Sia Jesus akara. 

Körös: 
Sia Jesus akara, (ke esit mi) 
Sia Jesus akara, (ke esit mi) 
Ukpöñ mi okut emem, 
Idara okpon eti; 
Sia Jesus akara. 

2. Emem y’idara odu, 
Eyeköri k’ nsinsi; 
Sia Jesus akara, (ke esit mi) 
Edidiöñ k’ebebet mi 
Ye utibe erikan; 
Sia Jesus akara. 

3. Ami nduhe ikpöñ 
Koro ’nyenede Öböñ 
Sia Jesus akara (ke esit mi) 
Anam ukpöñ adara 
K’ñkopde uyo Esie, 
Sia Jesus akara. 

4. Menyene heven k’ ukpöñ 
Ke oyobio ösöñde 
Sia Jesus akara (ke esit mi) 
Nte ñkade iso 
Ndisim eti obio 
Sia Jesus akara. 

Amen. 
      """
    },
    {
      "id": 480,
      "title": "HALLELUJAH!",
      // "audio":"",
      "body": """
      KEY F 4/4

{|d :s, .s, ld :r |m :f ls :-
|L :s .s lf :m|s :f lm :r } 

1. EKEYET nyin k’iyip Öböñ 
Iyöhö k’uyöhö Öböñ 
Isaña ke mbuötidem 
Hallelujah! Hallelujah! 

2. Ibere k’ikpanesit Christ, 
Idara ke emem oro; 
Ikut s’ifönd’ ikan k’Enye 
Hallelujah! Hallelujah! 

3. Ekpeme k’odudu Esie, 
Omum man ikusop usuñ, 
Ito k’uböñ isim k’uböñ 
Hallelujah! Hallelujah! 

4. Anam idu eti uwem, 
Önö emem kini eñwan, 
K’mkpa, Enye önö uwem 
Hallelujah! Hallelujah! 

5. Nso oruk Andinyaña! 
Enam ekondo efiori 
Ke ata ökpösöñ uyo, 
Hallelujah! Hallelujah! 

Amen. 
      """
    },
    {
      "id": 481,
      "title": "ENYE OMOSIM MI ",
      // "audio":"",
      "body": """
      KEY Bb 3/2

{:m, .,f, |s, : -.s, :m .,r |r .d :m, 
:s, .,d |t, :-.L, :s, .,f, |m, :-} 

1. O, UTIBE erinyaña! 
Edi idim-möñ k’mfön 
Öfiöröde kpukpru ini 
Mfön Öböñ osim mi, 

Körös: 
Omosim mi … omosim mi 
Mfön Öböñ osim mi! 
Öfiöröde kpukpru ini 
Mfön Öböñ osim mi. 

2. Mböm Öböñ okpon didie? 
Y’ idiök owo nt’ami 
Utibe idara heven 
Ye akwa ima Esie. 

3. Jesus, matuak ibuot ’nö Fi! 
Ami ‘nyekwö ima Fo 
Nyebuk eti mbuk Fo 
Nyekpono enyiñ Fo. 

Amen. 
      """
    },
    {
      "id": 482,
      "title": " NÖ ENYE UBÖÑ ",
      // "audio":"",
      "body": """
      KEY Eb 4/2

{:d .r |m :m .m | m .r :m .f |s :-lm 
:s .s |L :L ls :m |r :-l -} 

1. EKEDI ke ukot Öböñ mi, 
K’ekeyet m’ukwañkpö mi, 
Do k’ukpöñ mi okokut emem 
K’usen idara oro. 

Körös: 
Yak mbuk utibe mbuk 
Kabaña mfön Esie 
Ke ata utibe ima Esie 
Nyenö Enye uböñ. 

2. Ekedi ke ukot Öböñ mi 
Ñkokut ata emem 
Uñwana ’yama ke spirit mi, 
Öböñ ödiöñ mi k’akpan. 

3. Ekedi ke ukot Öböñ mi 
Ñkada m’idiök mi ‘ndi 
Enye efen kpukpru m’idiök mi 
Önö mi erinyaña. 

Amen. 
      """
    },
    {
      "id": 483,
      "title": "O! NTE ENYE AMADE MI ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:s, |s, :dlm :-.m |r :dlL, :-|s, .d 
:-ld :m |m :r l -} 

1. MENYEN’ Ufan, Eti Ufan 
O amama mi, 
Ima Esie ikureke 
O amama mi. 

Körös: 
O amama mi, O amama mi 
Ñkwe ntak, edi möfiök 
O amama mi. 

2. Ndikemeke nditiñ 
O amama mi! 
Ntak odukde k’esit mi 
O amama mi! 

3. Enye ’kakpa ndifak mi, 
O amama mi! 
‘Nyetor’ Enye kini uwem 
O amama mi! 

4. Enye ’da mi usuñ uwem 
O amama mi! 
Enye ’men kpukpru mbiomo 
O amama mi! 

5. Ebeñe iduñ önö mi 
O amama mi! 
Nyeduñ y’ Enye k’ nsinsi. 
O amama mi! 

Amen. 
      """
    },
    {
      "id": 484,
      "title": "JEHOVAH TSIDKENU",
      // "audio":"",
      "body": """
      KEY F 4/4

{:d |m :-lf :f|m :-.r ld :m |r :-lt, 
:t, |d:-l-} 

1. INI kiet ñkanana mfön y’ Öböñ 
Mfiökk’ afaneköñ ye mbiomo mi, 
Okposuk m’ufan etiñd’ 
ebaña Christ, 
“Jehovah Tsidkenu” 
ñköfiökk’ Enye. 

2. Nte möñeyet eke iban Zion, 
Matua nt’ Enye okokutde ukut, 
Ñköfiökke k’ ntak mi 
k’ eköñ Enye, 
“Jehovah Tsidkenu” 
ñköfiökk’ Enye. 

3. K’ uñwana mfön 
edemerede mi, 
Ndik okofuk mi, nyom ndikpa, 
Usuñ uböhö ikoduh’ inö mi, 
“Jehovah Tsidkenu” 
Andinyaña mi. 

4. Kpukpru ndik mi ebe 
k’enyiñ Esie, 
Nyenek’ ubiomikpe, ndi ye uko 
Ndiñwöñ k’idim-möñ 
uwem ke mfön, 
“Jehovah Tsidkenu” ’di 
kpukpru ’nö mi. 

5. Ke ami nsañade k’mfut 
mkpa, 
Ikö emi eyekpeme ukpöñ mi, 
K’ndik mkpa, Öböñ anam 
mböhö, 
“Jehovah Tsidkenu” edi 
ikwö mi.

Amen. 

      """
    },
    {
      "id": 485,
      "title": "KORO EFAKDE MI ",
      // "audio":"",
      "body": """
      
KEY G 4/4 

{:s, |d :-.r lm .f :s .L |s :f lm :d|m 
:-.m lr :d |s :-l-} 

1. MENYEN’ ikwö ’made 
‘ndikwö, 
Koro efakde mi, 
Abañ’ Andifak y’ Öböñ mi, 
Koro efakde mi. 

Koros: 
Koro… efakde mi, 
(koro efakde mi) 
Koro… efakde mi, 
‘Nyebure k’ enyiñ Esie, 
Koro… efakde mi, 
(koro efakde mi) 
Nyebure ke enyiñ Oböñ. 

2. Menyene Christ, öyukhöde, 
Koro efakde mi, 
Mama ‘ndinam uduak Esie, 
Koro efakde mi. 

3. Ntiense omodu y’ami, 
Koro efakde mi, 
Ebinde ndik y’ eyikhe, 
Koro efakde mi. 

4. Idara akan ndibuk, 
Koro efakde mi, 
Otode ke iyip Esie, 
Koro efakde mi. 

5. Ebeñe iduñ enö mi, 
Koro efakde mi, 
Nyeduñ do k’ nsi nsi, 
Koro efakde mi. 

Amen. 
      """
    },
    {
      "id": 486,
      "title": "MFÖN ESIE EKEM MI",
      // "audio":"",
      "body": """
     KEY Eb 4/4  

{:d.r |m:m.mlm f.-:r|d:-:-}


1. MFÖN Esie ekem y’ami, 
K’ndik ye nyekidem, 
Ñketiene Enye, 
Enye ekeyet mi, 
Anam mi nsana, 
Mfön Esie ekem y’ami, 

Körös: 
Y’ami … y’ami…, 
SA: Mfön Esie ekem y’ami, 
TB: Mföñ Esie ekem, emekem 
ye ami, 
Y’ami … y’ami…, 
Mfön Esie ekem y’ami. 

2. Mfön Esie ekem y’ami, 
K’ ñkpö ekededi, 
Mokop kufeghe ‘ndik, 
Bere k’uñwam Esie, 
Emi anyañade, 
Mfön Esie ekem y’ami 

3. Mfön Esie ekem y’ami, 
Öyöh’ unana mi, 
Ada mi ’ka iduñ, 
Ke mkpa nyekwö, 
Ntie ke ifure, 
Mfön Esie ekem y’ami. 

4. Mfön Esie ekem y’ami, 
Ke nsimde iduñ, 
Ikwö mi eyedi, 
Itoro Edidem, 
Ke uföt nsinsi, 
Mfön Esie ekem y’ami. 

Amen.  
      """
    },
    {
      "id": 487,
      "title": "ÖKPÖNÖ ESIE EMEM",
      // "audio":"",
      "body": """
    KEY Bb 6/8

{:s, |s, :L, :s, lm : -:d |L, :t, :d ls, 
:-:s, |L, :t, :d ls, :-:m, |r, :-l-} 

1. ÖBÖÑ öbök mi ’nanake ñkpö, 
Anam nsukhöre ’na, 
K’awawa ‘mbiet, ada aka 
Möñ n-duök odudu. 

Körös: 
Ökpönö emem, ‘mbiomo efere, 
Ami mokut – ami mokut, 
Ada mi usuñ k’usen k’usen, 
Osim ke möñ uwem. 

2. Ukpöñ k’ofiori “Fiak 
demere mi,” 
Nö odudu ndika 
Ke usuñ edinen ido 
Kabañ’ enyiñ Esie. 

3. Kini nsañade k’mfut mkpa, 
Ndifegheke ndik 
Afo ’du y’ami, esañ Fo 
Eyedöñ mi esit. 

Amen.   
      """
    },
    {
      "id": 488,
      "title": "MMAMA NDIBUK MBUK ORO ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:s, |d :-.s, ls, :d |m :-.r ld :d |d 
:-.L, lr .d :L, |s, :-l-} 

1. MAMA ‘ndibuk ‘mbuk oro, 
Kabaña ‘ñkpö enyöñ; 
Jesus ye uböñ Esie, 
Jesus y’ima Esie, 
Mama ‘ndibuk ‘mbuk oro 
Koro edi ntre, 
Enye omoyukhö mi 
Akan me ‘ñkpö efen. 

Körös: 
Mama ‘ndibuk ‘mbuk oro 
Nyebuk enye k’uböñ; 
Akani mbuk emi, 
Jesus y’ ima Esie. 

2. Mama ‘ndibuk ‘mbuk oro, 
Enye ’di utibe, 
Akan me mbuk efen, 
Edide ikpikpu, 
Mama ‘ndibuk ‘mbuk oro; 
Öfön eti y’ami. 
Oro edi ‘ntak emi 
Mbukde nnö fi. 

3. Mama ‘ndibuk ‘mbuk oro 
Öfön ‘ndifiak mbuk; 
Mbuk enye kpukpr’ ini, 
Enem mi ndibuk, 
Mama ‘ndibuk ‘mbuk oro; 
Ediwak mikopke, 
Etop erinyañ’ emi, 
Ke Ñwed Abasi. 

4. Mama ‘ndibuk ‘mbuk oro 
’Nö mö etimd’ efiök; 
Emi itöñ asatde, 
‘Ndikop ‘nte mö eken, 
K’ndidukde ke uböñ, 
‘Nyekwö ’bufa ikwö, 
Edidi AKANI ‘mbuk, 
Emi ñkamade. 

Amen. 
      """
    },
    {
      "id": 489,
      "title": "ENYE EMEN ME IDIÖK MI EFEP",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{.s, |s, :m lm :-.d |r .d :t, .L, ls, 
:-.s, |s, .f :f .,f lf :-.s, |s, .m :m .,m 
lm :-.} 

1. ÑKETIENE Jesus kini ukut 
Obiom m’idiökñkpö mi 
Obiom m’idiökñkpö mi 
Madara ke utib’ ima Esie, 
Obiom m’idiökñkpö mi. 

Körös: 
Obiom m’idiökñkpö mi, 
Obiom m’idiökñkpö mi, 
Ekpeme mi k’usen k’usen; 
Madara akafakd’ ukpöñ mi, 
Obiom midiökñkpö mi. 

2. Mbiom’ idiök ñkemeke 
‘ndibiom, 
Emen kpukpru efep 
Emen kpukpru efep 
Mayak kpukpru ‘mbiomo 
mi ’nö Enye, 
Obiom m’idiökñkpö mi. 

3. Ubiomikpe iduhe k’esit mi, 
Obiom m’idiökñkpö mi 
Ekpeme mi k’usen, 
Emem Esie awawak önö mi, 
Obiom m’idiökñkpö mi. 

4. Ke etienede Jesus Christ 
mfin, 
Eyebiom m’idiök fo, 
Eyebiom m’idiök fo, 
Eyedara k’mkpafakha usuñ, 
Eyebiom m’idiök fo. 

Amen. 

      """
    },
    {
      "id": 490,
      "title": "ENYE EDI UFAN MI",
      // "audio":"",
      "body": """
      KEY Ab 6/4

{|m :-.r :d lf :-:m |m :-:r ld:-:s, 
|d :-:d lr :-:r |m :-:-l-:-:-} 

1. JESUS edi kpukpru ’nö mi, 
Uwem y’ idara mi, 
Odudu mi k’usen k’usen, 
Odu k’Enye ikpöñ 
K’ mfukhö mi, ntien’ Enye, 
Efen idöñke mi esit, 
K’ mfukhö önö idara, 
pp Ufan mi. 

2. Jesus edi kpukpru ’nö mi, 
Ufan ke idomo, 
Ke eridiöñ, ntien’ Enye,
Önö awak akan, 
Enye önö eyo y’edim 
Anam idök awak eti, 
Nti mfri k’eyo y’edim, 
pp Ufan mi. 

3. Jesus edi kpukpru ’nö mi, 
‘Nyenam akpanikö, 
O, ndikañ Enye didie? 
Ufan akpanikö! 
Enem nditiene Enye, 
Ekpeme mi k’usen k’usen, 
Ntien’ Enye kpukpru ini, 
pp Ufan mi. 

4. Jesus edi kpukpru ’nö mi, 
Nyomk’ ufan efen, 
Möbuötidem y’Enye kemi, 
Nsim ke akpatre, 
Eti uwem y’Ufan oro, 
Uwem emi mikureke, 
Nsinsi uwem y’idara. 
pp Ufan mi. 

Amen. 
      """
    },
    {
      "id": 491,
      "title": "NDI EYEN ÖBÖÑ ",
      // "audio":"",
      "body": """
      KEY Ab 3/4

{:s, .d |m :f :m |d:-:t, .d|r :d :L, 
|d :-:t, .L, |s, :d:m |m :r :L, |r :-} 

Solo or Duet: 

1. NDI eyen Öböñ, eyen ima 
Esie, 
Nyeduñ k’ediye ’biet Esie; 
Enye etiñ abaña idara heven 
Iköt Esie eyebuana do. 

Körös: 
Ndi eyen Öböñ, eyen ima Esie, 
Enye idikpöñke Esiemö; 
Usen kiet eyekot mi ke iduñ 
k’enyöñ, 
Nyeduñ ke ebekpo Esie. 

2. Ndi eyen Öböñ, Enye ’ma 
mi, möfiök 
Ima Esie edi ke mfön; 
Eyedi okimmö k’ebiet ekededi, 
Enye ’di ebiet uböhö mi. 

3. Ndi eyen Öböñ, uñwöñ’ 
Esie edi 
K’utit eyebok nyin ötö kiet 
K’obio Esie k’enyöñ, ke 
ebiet möñ-uwem 
Ke m’idomo uwem ebede. 

Amen. 
      """
    },
    {
      "id": 492,
      "title": "JESUS EDI ÑKPÖ UTO ",
      // "audio":"",
      "body": """
      KEY Db 6/4 

|s :-:-lm :-:r |d :m :-| -:-:s |L 
:-:-lf :-:L |s :-:-l-:-} 

1. EMEM ‘nte akpa öyöh’ 
ukpöñ mi, 
Koro Christ Öböñ ömökök mi, 
Ata emem ’yedi udeme mi, 
Jesus Andifak öfön ye ami. 

Körös: 
SA: Öfön y’ami 
TB: Öfön y’ami, Enye öfön 
y’ami, 
SA: Enye öfön 
TB: Jesus Andifak öfön ye ami 
SA: Jesus eyesuk öfön ye ami. 
TB: Jesus Andifak öfön y’ami 
eyesuk öfön y’ami 
(ye ami). 


2. Idara okpon, esit mi k’ökwö 
Ndök ke mba ñka heven, 
Christ ’menere mi, anam mböhö 
Jesus Andifak öfön ye ami. 

3. O eti Jesus, Afo ömöfön! 
Di duñ nyuñ kara ke esit mi 
Buñ ñkpököbi, nam ‘ñkut iso Fo 
Afo eyesuk öfön ye ami. 

Amen. 
      """
    },
    {
      "id": 493,
      "title": "UÑWÖÑÖ ABASI EDI AKPANIKÖ ",
      // "audio":"",
      "body": """
      KEY Bb 6/4  

{:s, | s, :m :r ld:-:s, | s, :m , :L, ls, ::
d |t, :-:L, lf, :s , :t, | L, :-:-ls , :-} 

1. ABASI amama owo, 
Önö Eyen Esie 
Man andibuötidem y’Enye, 
Enyene ‘nsinsi uwem. 

Körös: 
S: Edi akpanikö 
ATB: Uñwöñö edi akpanikö 
All: Utibe uñwöñö Esie (Esie) 
Koro modomo nyuñ mfiök Enye 
Uñwöñ’ Esie ösöñ’ ada (ada). 

2. Ami ‘ñkoyo, nsop usuñ, 
Ofn idiök y’ndik; 
Tutu eti uñwöñ’ edi 
Nte inem ikwö. 

3. Ikö, “Owo ekededi” 
Öböñ etiñ y’ami, 
Nda k’eti ikö Esie 
Anamde mböhö. 

4. Menyene nsinsi uwem 
Öyöhö k’esit mi, 
Nyetor’ Enye k’nsinsi 
Afakde ukpöñ mi. 

Amen. 
      """
    },
    {
      "id": 494,
      "title": "MÖFIÖK ENYE EDI OKIM ",
      // "audio":"",
      "body": """
      
KEY Bb 3/4

{.s, :m, .f, |s, :-.m :r .d |s, :-.d 
:t, .d |r :-.f :m .r |d :-} 

1. KIET odu akan me ufan 
Ima Esie akan kpukpru; 
Enye edi Christ y’Öböñ mi, 
Ami möfiök edi okim. 

Körös: 
Enye okim… ufan ima, 
Oduñ y’ami… ekpere mi…, 
Uyam’ uböñ… odu y’Enye 
Akakan Enye ’di okim 

2. Edi okim, akpa ’nö mi, 
Enye akafak ukpöñ mi; 
K’ idara ‘nyekpono Enye, 
Toro Öböñ, edi okim. 

3. Edi okim, oduñ k’ami, 
Nnyin ididianakere; 
Nte nkök otode vine 
Madiana Christ, edi okim. 

4. Ke usen kiet ke efak gold, 
Nyekut Enye ke uböñ; 
K’ omumde mi k’ ubök Esie, 
Nyedara, edi okim. 

Amen. 

      """
    },
    {
      "id": 495,
      "title": "ENYE KE AFIAK EDI ",
      // "audio":"",
      "body": """
      KEY F 9/8

{lm :f :fe |s :-:-lm :-:-lr :d :L, |s, 
:-:-ld:-:-ld :r :m |s :-:-lm :-:m 
lm :r :d |r :-:-l-:-:-} 

1. UFAK k’mfön utibe mbuk 
Jesus Andinyaña edi k’isöñ, 
Möböhö, mabuana ke uböñ, 
Nyenyen’ Enye kini iso. 

Körös: 
Ufak k’mfön, utibe mbuk 
Kwö töñö ‘ntak kwö enye, 
Ufak k’mfön, buk uböñ Esie, 
Jesus k’edi, eyefiak edi. 

2. Ufak k’mfön ye uteb’ ikpe, 
Jesus, ekeköñde, eset k’mkpa, 
Ufak k’mfön, utibe utom, 
Ökönö mi nsinsi uwem. 

3. Ufak k’mfön, anam nsana, 
Christ öködökde ke ekpe ubök, 
Ufak k’mfön, kwö hallelujah! 
Nyekut Enye ke ebekpo. 

Amen. 
      """
    },
    {
      "id": 496,
      "title": "UWAK IMA",
      // "audio":"",
      "body": """
      KEY Ab 3/4

{|m :f :de |m :r :-|r :m :t, |r :d:|
d :t, :L,|s,:m :-|r :L, :m |r :-:-} 

Duet: Sop & Alto 

1. JESUS Andifak, akakpa k’eto 
Edep erifen, anam ‘mböhö, 
O, uwak ima yak ñkpono Fi, 
Emi akakpade önö mi. 

Körös: 6/8 
S: Ndi Okuo, Andinyaña 
ATB: Ndi Okuo, ndi Okuo, 
Andinyaña, Andinyaña 
S: O idara ‘ndifiök edi okim, 
ATB: O idara, O idara ‘ndifiök 
edi okim 

2. O Andinyaña, awakde ima, 
Ekpemede mi ‘mbak ndiyo 
O, akwa ima okosiode mi 
Ke ekim esin ke uñwana. 

3. O Ata Ufan, idikpöñke mi, 
Anam nsaña mkper’ Enye, 
Ebiet uböhö, do nyedibe 
Koro amama mi k’ nsinsi. 

Amen. 

      """
    },
    {
      "id": 497,
      "title": "JESUS OMOTIM ANYAÑA ",
      // "audio":"",
      "body": """
      KEY D 4/4

{:d .,r |m .,m :m .,r ld :d .,m |s .,s 
:s .,f lm :f .,m |r .,r :r .,m lf .,s :L .,t 
|d' :-ls } 

1. MOKOP ikot eti ‘mbuk 
önö erifen k’mfön, 
Ami ‘mkpañ utöñ ’nö eti ikot oro; 
’Nim m’idiök mi k’ukot 
Christ nyuñ ntab’ inem ufak, 
Enye önö mi öyöhö erinyaña. 

Körös: 
Jesus a...nyaña mi,... 
Jesus önö mi öyöhö 
erinyaña, 
’Kposuk akakde ‘nditiñ, 
Jesus amanyaña mi, 
Ke mfön ye ke öyöhö 
erinyaña. 

2. Mbiomo idiök ebe, nsaña 
k’mbuötidem, 
Nduhe aba ke idak ubiomikpe, 
Ema eyet mi k’iyip, ukpöñ 
mi ömöyukhö, 
Ke mfön ye ke öyöhö erinyaña. 

3. Ke ndek ye ke okpuk, 
Jesus osio ukot mi, 
Odori ke akwa itiat idak isöñ; 
K’uwem mi me ke mkpa, 
emi edi ikwö mi: 
Jesus önö mi öyöhö erinyaña. 

Amen. 
      """
    },
    {
      "id": 498,
      "title": "EMA EFAK MI ",
      // "audio":"",
      "body": """
      KEY Eb 2/4

{|s:s .L |m .m :-.r |d .d :m .f |s :-. 
|d' :d'.L |t .t :-.L |f .f :L .L |s :-.} 

1. EMA efak mi, toro 
Eyeneröñ, 
Jesus ama mi, anyaña mi, 
möfiök, 
Utib’ ima anam Öböñ mi akpa, 
Nyekpon’ Enye, man nduk ke uböñ. 

Körös: 
Ema efak mi, ih, ema efak mi, 
Etoro Jesus, enem mi 
ndifiök, 
Ema efak mi, ih, ema efak mi, 
O hallelujah! ami ‘mafia 
‘nte snow. 

2. O anamidiök, ñkosop ‘nte afo, 
Jesus okut mi, anyaña mi ofri, 
Enye k’ebet fi nditöñö isañ, 
Tien’ Enye kemi, mek eti udeme. 

3. Ami madara, mokut usuñ uwem. 
Möböhö ukut, idiökñkpö ye eñwan, 
Ami madara k’eti usuñ emi, 
O, hallelujah! madara 
kpukpr’ ini. 

4. Mönyöñ ke iduñ, etor’ 
Eyeneröñ, 
Jesus eyeda mi nte ntiede, 
Nyedu do ye m’ufan ekekpöñde 
K’eti ebuana, nyin idikpah’ aba. 

Amen. 

      """
    },
    {
      "id": 499,
      "title": "MFÖN! EDI INEM UYO",
      // "audio":"",
      "body": """
      
KEY D 3/4

{:s |s :-.fe :L .s |m :-:d lr :-.m 
:f .s |m :-} 

1. MFÖN! Inem uyo! 
Enenem ndikop, 
Ke udim heven ekwöde, 
Eyekop ke isöñ.

Körös:
Enyaña k’mfön 
Motim ‘mfiök emi, 
Jesus ’kakpa ’nö kpukpru, 
Jesus ’kakpa ’nö mi. 

2. K’mfön ewet enyiñ 
Mi ke ñwed uwem, 
K’mfön Eyeneröñ emen 
Me ukut mi efep. 

3. Mfön emekpep mi 
Usuñ obio heven, 
Onyuñ añwam kpukpru ini 
Nditiene Öböñ. 

4. Mfön ekpep ukpöñ 
Mi ndiböñ akam, 
Onyuñ onim mi ke uwem, 
Iyakke ndiyo. 

5. O yak mfön oro 
Önö mi odudu, 
Mayak idem mi ’nö Öböñ 
Ye kpukpru m’usen mi. 

Amen. 
      """
    },
    {
      "id": 500,
      "title": "ESE ORUK IMA!",
      // "audio":"",
      "body": """
      KEY Db 4/4

{:d .m |s :sls :d' |s :-.f lm:d .r |m 
:s .f lm :r |d:-l-} 

1. ESE oruk ima emi, 
Ete ’kamade nyin 
M’ anamidiök man ikere 
Nditö Abasi. 

Körös: 12/8
SA: Ese … oruk ima ’mi 
TB: Ese oruk ima ’mi, ese 
oruk ima ’mi 
All: Oruk akwa ima emi Ete 
amade nyin, 
SA: Man nyin… mi ikpekere 
TB: Man nyin ikere, ikere 
‘nditö Abasi 
All: Ata ‘nditö Abasi. 

2. Imekpere Enye kemi, 
Oto “k’eti iyip” 
Esin nyin k’otu “ndima” 
Iduñ k’esit Ete, 

3. Se nyin ididide k’uböñ 
Iyarake kaña, 
Ke idikutde Öböñ nyin, 
Do, iyebiet Enye. 

4. K’eti idorenyin emi 
Anam nyin isana, 
Nyin iyenyuñ ibiet Enye 
Ke idikutd’ Enye. 

Amen. 

      """
    },
    {
      "id": 501,
      "title": "JESUS AMA, KPA MI",
      // "audio":"",
      "body": """
      KEY G 6/8

{|s, :s, :s,ls, :s, :s,|s, :d :r lm :-:|
r :r :r lr :r :d |m :m :r |d :-:-l-} 

1. MADARA koro Ete nyin 
k’ enyöñ, 
Ayarare ima k’ ñwed Esie, 
M’utibe ñkpö ke Bible edu, 
Akakan edi Jesus ama mi. 

Körös: 
Madara koro Christ ama mi, 
Christ ama mi, Christ ama mi, 
Madara koro Christ ama mi, 
Christ ama mi, kpa mi. 

2. Okposuk ami ñkpöñde Enye, 
Osuk amama mi kpukpru ini, 
Mafiak ndi k’ubök ima Esie, 
K’ ntide nte Jesus ama mi. 

3. O! ekpedi kpa ikwö kiet odu, 
Ke ndikutde uyai Edidem, 
Emi ekped’ ikwö mi k’ nsinsi, 
O! Utibe ‘ñkpö Jesus ama mi. 

4. Jesus ama mi, mmama Enye 
K’ima Enye ’di afak ukpöñ mi 
Ke ima Enye akakpa k’eto, 
O! motim mfiök Jesus ama mi. 

5. Ekpebup mi mkpöbörö nso? 
Uböñ enyene Jesus, motim ‘mfiök, 
Edisana Spirit ye spirit mi, 
Edi ntiense, Jesus ama mi. 

6. K’idorenyin emi, mokut emem, 
Möbö edidiöñ ke mbuötidem, 
Satan ökpöñ mi efeghe eti, 
K’ ntiñde nte Jesus ama mi. 

Amen. 

      """
    },
    {
      "id": 502,
      "title": "IMA EFEN IDUHE NTE IMA JESUS ",
      // "audio":"",
      "body": """
      KEY Eb 6/8

{: m .f |s :-:s ls :fe :s| L :s :f l m .r 
:d :-|m :m :m ls :f :m |r :-:-l-:-} 

1. IMA iduhe ‘nte ima Jesus 
Enye ibiañake 
Eyeda nyin kpukpru osim k’ emem 
Ke obio Abasi. 

Körös: 
Ima Christ ömöfön 
Inyeneke utit 
O yak idem fo nö ima oro 
Christ k’ekpe fi ubök. 

2. Esit efen ibietk’ esit Jesus, 
Öyöhö ye ima 
Enye etie k’enyöñ öfiök kpukpru 
Ntimer’ esit nyin. 

3. O eyak nyin ikop uyo Jesus, 
Yak nyin ikpöñ ‘ndiyo, 
Tutu isim k’ikpanesit Esie, 
K’ eti iduñ k’ enyöñ. 

Amen. 
      """
    },
    {
      "id": 503,
      "title": "O! IMA EMI OKOYOMDE MI ",
      // "audio":"",
      "body": """
      KEY G 6/8 

{:s,|s, :-:d ld :-:r |d :-:-lt :-:d lr ::
de lr :-:m |d :-:-l-:-} 

1. K’ MBÖM Enye ’koyom mi, 
K’ndude ke idiök, 
Odori mi k’ afara, 
Afiak k’otu Esie, 
M’enjel k’iso Esie ekwö, 
Esop enyöñ edian uyo. 

Körös: 
O! ima oyom mi, 
O! iyip edep mi, 
Mfön akanam nduk k’otu 
K’utibe mfön moduk k’otu. 

2. Okokut mi ke mkpa, 
Enye ’yet mi aran, 
Enye ’tiñ suñ önö mi, 
“Afo edi okim” 
Uyo efen inemke mi 
Anam esit mi adara. 

3. Okowut unan k’ ubök, 
Öduök iyip ’nö mi, 
Eda ’nyanya ñkukim 
Eyat Enye k’ ibuot, 
Okokut nso k’ idem mi, 
Anamde obiom ukut mi. 

4. Ndu ke iso Esie, 
K’ uñwan’ iso Esie, 
K’ uteñe y’mkpa idem 
K’ mbatde edidiöñ, 
Nsinsi ini ikemke 
Ndikwö itoro Esie. 

5. Nte m’usen ebebe 
Ndodu ke emem, 
Ke mbebet usiere, 
Uyam’ eti usen 
Ke Enye edikotde nyin 
Ndidu y’Enye ke uböñ.
 
Amen. 
      """
    },
    {
      "id": 504,
      "title": "ABASI MMI, MOKUT ",
      // "audio":"",
      "body": """
      KEY G3/4 

{:s,|d :d :d |d :-:d .r |m :m :m |m 
:-} 

1. ABASI, mokut isöñ edidiöñ 
Ebiet idaresit y’uwem odude.
 
Körös: 
Alleluia! Odot uböñ 
Alleluia! Amen 
Alleluia! Odot uböñ 
Di diöñ nyin kemi. 

2. Oto ke iyip ata Andifak, 
Mokut uböhö, emem ye ifure. 

3. Obiom ke eto ubier’ ikpe mi, 
Owo ubiöñ y’anamidiök eböhö. 

4. Omonyime mi ke Eyeneröñ, 
Abasi ’kasiak usuñ erinyaña. 

5. K’ ndude k’ isöñ k’uföt 
idomo, 
Itie mi ke heven ye Jesus, 
möfiök. 

6. Nyekut k’uduak Esie ’di emi 
Ndinam mi ndu ye Enye k’uböñ. 

7. Eyefiak edi ada mi önyöñ, 
Anam ntie y’Enye k’ebekpo 
Esie. 

Amen. 
      """
    },
    {
      "id": 505,
      "title": "UBÖÑ ENYNE JESUS KE NSI NSI ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, :d ld :-.r | d .t , : L, .t, ld :s, |s, 
:r lr :-.m| r .d :t, .d lr :-} 

1. YAK uböñ enyene Jesus, 
Ata Eyen Abasi, 
K’mfön Esie amafak nyin, 
“Okure,” anam ama. 

Körös: 
Efak nyin k’mfön ke Jesus 
Oto ke iyip Esie, 
Yak idu ke ima Esie, 
Man inyuñ ifiök Öböñ. 

2. O, me usen ñkoyode 
Nyom ‘ndikut uñwana, 
Imebe mö kpukpru k’edem, 
Christ edi odudu nyin. 

3. Ke akwa ukpeme Esie, 
Ke idak mba Esie, 
Idara ke ima Esie, 
Yak nyin itoro Enye. 

Amen. 
      """
    },
    {
      "id": 506,
      "title": "TORO ENYE KPUKPRU INI ",
      // "audio":"",
      "body": """
      KEY C 4/4

{:s|d' :s lm :f|L :-.s ls :s|L :t ld' :r’ 
|d' :-lt,} 

1. MÖKWÖ ikwö kpukpru ini 
Mfukhöke aba 
Koro Jesus edid’ Ufan, 
Nyekpono Enye. 

Körös: 
‘Nyetoro Enye! 
Tor’ ofri ini 
Toro Enye! 
Toro ofri ini. 

2. K’eköñde Öböñ mi k’eto 
K’ntak m’idiökñkpö mi 
Akanam ‘ntua eyet, edi 
Kemi mökwö ikwö 

3. K’idomo ’söñde k’esit mi 
’Yekwö “Jesus okim” 
‘Ndusuk ini k’möñ-eyet 
’Yekwö ofri ini. 

4. Akwa mbuk Eyeneröñ 
Buk enye k’uyo fo 
Man mö eken k’inem ikwö 
Etor’ ofri ini. 

Amen. 
      """
    },
    {
      "id": 507,
      "title": "ALLELUIA, SUAN MBUK ORO ",
      // "audio":"",
      "body": """
      KEY Db 6/8

{|m :-:fls :-:s |s :L :t ld' : -:d'|r' 
:-:d' lt :-:L |s :-:r |m :-:-} 

1. O ABASI edi ima 
Etiñ ke ñwed Esie 
Enyöñ y’isöñ k’idar’ ete: 
“Abasi edi ima.” 

Körös: 
Alleluia, suan ‘mbuk oro 
M’udim enjel ekwöde 
“Abasi edi Uñwana” 
“Abasi edi Ima” 

2. O Abasi edi ima, 
Öködöñ Andinyaña 
Ndiyom mö ’ro esopde 
Man owut ima Ete. 

3. O, buk akwa mböm Esie 
Nö mö edude k’ekim, 
“Abasi edi Uñwana” 
“Abasi edi Ima.” 

Amen. 

      """
    },
    {
      "id": 508,
      "title": "NYIN IKPAHA MBA NDIBUK ",
      // "audio":"",
      "body": """
      KEY Ab 68 9.8.9.8 -9.8.9.8 

{:s,|s, :-.L, :t, ld :r :d |d :-:-lt, ::
L,|s, :-.L, :s, ld :r :m |r :-:-l -:-} 

1. NYIN ikpaha mba ndibuk 
Mbuk Jesus Edidem nyin, 
Emi ’kökpöñde uböñ Esie 
Ada nti enö edi. 

Körös: 
O utib’ enö eke gospel 
Man nyin kpukpru ke iböde 
Ikpenyen’ erinyaña k’mfön 
Möbuötidem eyedara. 

2. Nyin ikpaha mba ndibuk 
Ima Esie ’nö m’ubuene, 
Kemi Enye ke okot ete, 
“Etiene Mi, mekpa mba.” 

3. Nyin ikpaha mba ndibuk 
Mbañ’ eti iduñ k’enyöñ, 
Ebiet idikutde Andifak, 
Iduñ k’uñwan’ ima Esie. 

Amen. 
      """
    },
    {
      "id": 509,
      "title": "AYAÑA IFIÖK",
      // "audio":"",
      "body": """
      KEY C 4/4 

{:s|d' :-.d' lt :L |L .s :fe .s lm :-.s 
|s :r lm :-.f |L .s :fe .s lm :-.} 

1 AKWA ima Fo ayaña ifiök,
Jesus Andifak mi yak ukpöñ mi 
Öfiök ima Fo k’ubom ye uniöñ, 
Edikoñ, utuñö ye nsinsi 
odudu Fo. 

2. Akwa ima Fo akak ndibuk, 
Jesus Andifak, inua mi ’yebuk, 
Önö m’anamidiök k’ ofri ebiet, 
Ima ebinde ndik efep, enye 
obon nyin. 

3. Ima Fo akan itoro owo, 
Jesus Andifak, ‘nyekwö ima Fo 
Emi okponde akan k’esit mi, 
Adade ’namidiök ‘nte ami 
önö Abasi. 

4. Okposuk me ñkemeke ‘ndikwö, 
Uyöhö ima Fo k’isöñ emi; 
Ami ntiene Fi ubök ubök, 
Man Afo ada idim möñ 
uwem öyukhö mi. 

5. Ndi ukpök, ukeme iduhe, 
Nnyeneke se ’nöde Fi Öböñ; 
Ami mafiak ndi ntiene Fi, 
Nte anamidiök k’ mkpe
ubök, Öböñ ima. 

6. Yöhö mi Öböñ Jesus k’ima Fo! 
Da mi ka idim-möñ uwem k’enyöñ; 
Ami nyesim do k’mbuötidem, 
Kuyak mi ñka k’idim möñ 
efen, edi Okuo. 

7. K’ndikutde Jesus iso y’iso, 
Nyenukhö ke ebekpo Esie; 
Kabaña ubom y’uniöñ ima Fo, 
Edikoñ, utuñö y’odudu Fo, 
ami ‘nyekwö. 

Amen. 
      """
    },
    {
      "id": 510,
      "title": "AKAN INUA NDIBUK ",
      // "audio":"",
      "body": """
      
KEY G 4/4

{:s,|d :-.r lm .s, :L, .,f |m :-l-:m 
|s :-.L ls.d:m .,r |r :-l-} 

1. IMA Jesus amade mi, 
Ndikut ukut ke eto, 
Man ukpöñ mi ökpöböhö; 
Akan inua ‘ndibuk! 

Körös: 
Ima akan inua ‘ndibuk 
(akan ‘ndibuk) 
Ima akan inua ‘ndibuk 
(akan ‘ndibuk) 
Ima Jesus amade mi 
Akan inua ‘ndibuk! 

2. Ufen, Enye okobiomde 
Ye ñkukim k’ibuot Esie, 
Man ’nyene ‘nsi nsi uwem, 
Akan inua ‘ndibuk! 

3. Emem nnyenede k’Öböñ, 
Emi ekped’ Ete ubök, 
Unen otod’ iyip Esie, 
Akan inua ‘ndibuk! 

4. Idara otode Enye, 
Emem emi otod’ Enye 
Idorenyin otod’ Enye, 
Akan inua ‘ndibuk! 

Amen. 
      """
    },
    {
      "id": 511,
      "title": "NYETORO ",
      // "audio":"",
      "body": """
      KEY G 3/4

{:m .,t, |r :d :d .,s, |t, :L, :r .,m |f 
:-.L, :t, .,s, |m :-} 

1. KE mfön Fo, Andinyaña, 
Nyesuk ntoro Fi, 
Yak Spirit Fo eteme mi 
Ndisuk ntoro Fi. 

Körös: 
‘Nyetoro … ‘nyetoro…. 
Nyetoro Andinyaña mi; 
‘Nyetoro …. ‘nyetoro … 
Nyesuk ntoro Öböñ mi. 

2. Ke me edidiöñ Fo, Öböñ 
Nyesuk ñkpono Fi; 
Ke ima Fo okpond’ eti, 
Nyesuk ntoro Fi. 

3. K’ mbufut möñ ye oyobio, 
Amafak mi ke kpukpru; 
Mebeñe Fi suk kpeme mi, 
Man nsuk ntoro Fi. 

4. Ke uwem mi okurede, 
Ke nsimde ko k’enyöñ, 
Ebeñe mi osuk edi, 
Ukpöñ mi ‘nditoro Fi. 

Amen. 

      """
    },
    {
      "id": 512,
      "title": "ERIFEN, EMEM YE ODUDU ",
      // "audio":"",
      "body": """
      KEY Bb 6/8  

{:s,|s, :-:fe, ls, :-:L,|s, :-:f, lm, ::
s, |d :-:t, ld :-:r |m :-:-l-:-} 

1. ME iyedara ke Öböñ? 
Ndien bat m’inyene 
Edude ke ikö Esie, 
Ye uwak edidiöñ: 

Körös: 
SA: Erifen... emem, y’uko…. 
TB: Erifen y’emem, emem ye uko 
SA: Eti ido... ye ifure…. 
TB: Eti ido... ye ifure 
SA: Kpukpru emi... Christ önö mi.. 
TB: Kpukpru emi Christ önö mi 
All: Yak imen uyo itoro Enye. 

2. Ke idiökñkpö, mfön odu 
Önöde erifen; 
Ke erifen menyen’ emem 
Oto k’iyip Jesus. 

3. Mfön ndikan idiökñkpö, 
Enye ’nö ediwak; 
Eti Spirit ke esit nyin, 
Anam nyin isana. 

4. Odudu ndikö ukpöñ, 
Edi Spirit añwam; 
Spirit emi Christ önöde 
Oduñ ke esit nyin. 

5. Me edidiöñ nyin iböde 
Oto k’mbuötidem; 
Ke Christ Abasi eyenö 
Nt’ ököñwöñöde. 

Amen. 
      """
    },
    {
      "id": 513,
      "title": "ALLELUIA! OKURE",
      // "audio":"",
      "body": """
      KEY G 3/4  

{:s, .,s,|d :d :d |d :r :m |m :r :d |r ::
s,.,s,|r :r :r |r :m :f |f :m :r |m } 

1. ABASI öñwöñö ndinyaña 
owo 
Eke onimde Jesus ke 
akpanikö. 

Körös: 
:\$: Alleluia! Ami möbuötidem 
k’ Eyen 
Enyaña mi k’iyip Enye ’mi 
eköñde. DS. 

2. Usuñ ökpöyöhö ye me 
ñkpö ndik 
Jesus emekeme ndida mi 
usuñ. 

3. Mendima mi ewak edude 
ke enyöñ, 
Kemi mö edu k’uböñ, 
ikwö mö edi: 

4. Mokut nditö ’wöñ eda 
y’Edidem mö, 
Enye ’nem esit k’ikwö 
erinyaña mö. 

5. Ndidem ye me prophet ke 
otu oro, 
Mö ekwö k’esañade k’efak 
eti gold. 

6. Nyin iyebuana ndikwö 
ikwö oro, 
Ikö ikwö itoro k’nsinsi edi: 

Amen. 
      """
    },
    {
      "id": 514,
      "title": "ENYE AFAK MI ",
      // "audio":"",
      "body": """
      KEY G 6/8 

{:s,|s, :d :r lm :m :m |m :-:-ld ::
s,|s, :t, :r lf :f :f |f:-:-lr:-} 

1. ETI Andifak omokut mi, 
Onyuñ obuñ ñkpököbi mi; 
K’ekikere otimere mi, 
Enye ’nö ukpöñ mi emem, 
Enye ekedep mi ke ima 
Ke ime Enye okoyom mi, 
Ekpep mi usuñ erinyaña, 
Amanam esit mi öfön. 

Körös: 
Afak mi … afak mi, 
Möyukhö k’ima alleluia! 
‘Nyetoro … ‘nyetoro 
Spirit Esie odu y’ami; 
Afak mi … afak mi … 
Möyukhö k’ima alleluia! 
‘Nyetoro … ‘nyetoro … 
Iyip Esie ’yet m’idiök mi. 

2. Okoyom mi k’memfiökk’ Enye, 
Ada mi önö idem Esie; 
Mayak kpukpru, ntiene Enye, 
Man nyukhö y’mfön Esie, 
’Kposuk ndiökde k’iso Esie; 
Ñkekpe ubök k’mbuötidem, 
Kemi mokpon’ Enye k’idara, 
Mfiak ndu k’ima Esie. 

3. Ami ndikpöñk’ Enye baba, 
Mbitke, nyatk’ Enye esit; 
Nyesuk mbuötidem y’Enye, 
Ndu k’uyai iso Esie, 
Ye k’ata uwak ima Esie; 
Ñköri ke ifiök ye mfön, 
Nyebuötidem sia mfiökde, 
Nte Jesus edi okim. 

Amen. 
      """
    },
    {
      "id": 515,
      "title": "MMOKUT UFAN ",
      // "audio":"",
      "body": """
      KEY A 3/4

{:s,|s, .,m :m :f |m .,r :r :d |t, :-.L, 
:s, .,L, |s, :d } 

1. MOKUT Ufan, eti Ufan, 
Ebem iso ama mi; 
Enye omum mi ke ima 
Ada ’nö idem Esie, 
Onyuñ öböpde esit mi; 
K’ima midibiarake, 
Ndi Esie, Enye okim, 
Kemi ye ke nsinsi. 

2. Mokut Ufan, eti Ufan, 
Akpa man akpafak mi; 
Ikönöhö uwem ikpöñ, 
Edi ye idem Esie, 
Baba kiet idighe okim; 
Mö enyene Andinö, 
Esit, uwem, kpukpru ñkpö 
Enyen’ Enye k’nsinsi. 

3. Mokut Ufan, eti Ufan, 
Enö Enye odudu 
Ndikpeme mi k’ isañ mi, 
Nsim heven k’ifure, 
Uböñ nsinsi ’kutde ko; 
Ömösöñö mi idem, 
K’ukpeme, k’utom ye 
eñwan, 
Önö emem k’nsinsi. 

4. Mokut Ufan, eti Ufan, 
Öfön, enyene mböm; 
Önö item, Ada usuñ, 
Ökpösöñ Andinyaña, 
Enye amama mi eti. 
Nso ’didianare mi? 
Uwem, mkpa, m’ererimbot? 
Ndi Esie k’ nsinsi.
 
Amen. 
      """
    },
    {
      "id": 516,
      "title": "NYEKWÖ UTIBE MBUK",
      // "audio":"",
      "body": """
     KEY Eb 4/3

{:m .,f |s :-.s :L .,s |d' :s :s .,s |s 
:-.s :L .,s |s : -} 

1. NYEKWÖ utibe mbuk, 
Christ akakpa önö mi, 
Ökpöñ uböñ Esie k’enyöñ, 
Akpa ke cross Calvary. 

Körös: 
Ih ‘nyekwö… utibe m...buk 
Christ aka…kpa önö mi... 
Nyekwö… y’iköt Fo 
k’u...böñ 
Edude… k’mben inyañ... 

2. Ñkosop, Jesus okut mi, 
Nt’ eröñ okosopde 
Omum mi ke ima Esie, 
Esin mi k’usuñ Esie. 

3. Ma ‘nda unan, Christ ökök mi, 
Ñkakpa mba k’iduö, 
Ndi ’nan, ndik ofuk mi, 
Enye osio mi ke mö. 

4. M’usen ekim etiene mi 
Nsaña ke mfukhö, 
Andinyaña odu y’ami 
Ada mi eti usuñ. 

5. Enye ’yesuk ekpeme mi 
Tutu ukut mi ebe, 
Eyeda mi osim k’ebiet 
Ndikutde mendima. 

Amen.  
      """
    },
    {
      "id": 517,
      "title": "ENYE ANAM INYAÑ ASAT",
      // "audio":"",
      "body": """
      
KEY F 4/4

{:s,|d :d ld :r |m :s ld :r 
|m :-.r ld :t, |d: -l -} 

1. KE m’usen eset, ke Israel 
Edude ke ufn, 
Akwa odudu Abasi 
Anam inyañ asat. 

Körös: 
Anam inyañ asat, 
Anam inyañ asat, 
Ke Christ ekperede, 
Mfegheke m’asua, 
Anam inyañ asat. 

2. M’idiökñkpö efuk ukpöñ mi 
Me idomo edi, 
Öböñ efen, önö emem, 
Anam inyañ asat. 

3. Ndik y’eyikhe efuk mi, 
Nyedu ye Jesus, 
Eyekpeme mi ke ima, 
Anam inyañ asat. 

4. Öböñ Jesus, ke nsimde 
Ke utit isañ mi, 
Iso Fo ada mi usuñ, 
Anam inyañ asat. 

Amen. 

      """
    },
    {
      "id": 518,
      "title": "O ENEM MÖ DIDIE! ",
      // "audio":"",
      "body": """
      KEY A 4/4

{ls, :s,|s,:-lL, :d |r : -lm :d |d :ld 
:L,|s, :-} 

1. ENEM ye mö emi 
Ekopd’ uyo Öböñ 
Enimde inyene mö 
k’ enyöñ 
Akak inua ‘ndibuk 
Ndöñesit y’ emem 
Otode ke akpa ima mö. 

2. Ata ndöñesit 
Nnyenede k’mfön 
Oto ke iyip Eyeneröñ; 
Idara mi okpon 
Ke mbuötde idem 
Menyene heven k’ enyiñ 
Jesus. 

3. Ekedi heven mi 
K’ mfiökde Andifak 
Me enjel inamke ‘ñkpö efen 
Akan ‘ndituak ibuot 
Eka iso ebuk 
Ekpono Ufan m’idiök owo. 

4. Christ edi ikwö mi 
Y’ idara kpukpr’ usen 
Man ñkut erinyaña Esie 
“Enye akama mi” 
Okut ukut y’mkpa 
Man akpafak mi, idiök owo. 

5. O, akwa idara 
Anamde nsana, 
Oto k’iyip emi eduökde, 
Eke Andinyaña, 
Ömödiöñ mi eti 
Ke ata uyöhö Abasi. 

Amen. 
      """
    },
    {
      "id": 519,
      "title": "EYEN, MAMA FI TOTOKO ",
      // "audio":"",
      "body": """
      KEY Eb 9/8 

{lm :-:f |s:-: -l -: -:m lr : -:m 
|r:-:-ld:-:-lm:-:s|L:-:-l 
-: -:slm :-:d |r: -: -l -:-: -} 

1. KE anyan ini ukot mi 
Okoyo k’usuñ idiök 
Esit mi akabiaña mi 
Ererimbot etap mi 
Mfiori, “uñwam iduhe, 
Baba kiet iñwamke mi,” 
Ñkop uyo ödöhöde, 
“Eyen, Ami ’mama fi” 

Körös: 
“Toto ko... toto ko... 
Eyen, Ami ’mama fi” 
O, uyo ’ro enem eti 
“Eyen Ami ’mama fi” 

2. Ke mböm Enye öbö mi, 
Eyet kpukpru m’idiök mi, 
K’iso Esie motor’ Enye, 
K’idara usen oro, 
Ke uföt awawa mbiet, 
Möñ emem öwöröde. 
Ñkokop uyo etiñde, 
“Eyen, Ami ’mama fi.” 

3. Tien’ Enye ye mbiomo fo 
Buötidem, Enye ’yefen 
Ka ke cross Enye ’kakpade 
Se Enye nyuñ du uwem 
Buötidem nyuñ kabaresit, 
Eyefiök ima Esie 
Eyekop ödöhöde fi 
“Eyen Ami ’mama fi” 

Amen. 
      """
    },
    {
      "id": 520,
      "title": "ANDIFAK MI ",
      // "audio":"",
      "body": """
      KEY Ab 9/8  

{| s, :d :r |m :-:-lm :-:-lm :r :d |r 
:-:-lr:-:-ls, :t, :r |f :-:-l-:-:f lf 
:m :r |m :-:-l -:-:-} 

1. NYEKWÖ ’nö Andifak mi 
K’utibe ima Esie, 
Ke cross, ököbö ufen mi 
Osio mi ke isuñi. 

Körös: 
SA: Kwö, O, kwö nö Andifak mi, 
TB: Kwö, O, kwö nö Andifak mi, 
kwö, O, kwö nö Andifak mi 
SA: Edep mi…. k’iyip Esie, 
TB: Edep mi k’iyip Esie, edep 
mi k’iyip Esie, 
SA: Do ke cross...efen m’idiök mi, 
TB: Do ke cross efen m’idiök 
mi, do ke cross efen m’idiök mi 
SA: Isön mi….omosio mö 
TB: Isön mi omosio mö, omosio mö 
AT: Omosio mö. 

2. Nyebuk utibe mbuk, 
Osio mi k’idiök itie 
K’uwak ima y’mböm Esie, 
Ke mfön akafak mi. 

3. Nyetoro Andifak mi, 
Ye odudu erikan, 
Enye önö mi erikan 
Ke mkpa, k’idiök ye hell. 

4. Nyekwö ’nö Andifak mi, 
Ye eti ima Esie, 
Osio k’mkpa önö uwem, 
Man ’du y’Eyen Abasi. 

Amen. 
      """
    },
    {
      "id": 521,
      "title": "YAK IKOP FI OBUKDE ",
      // "audio":"",
      "body": """
      KEY Ab 4/4
      
{:s,|d .d :d .d lm :s, .s,|L, :d ls, :s, 
.s,|d .d :d .d ld .d :t, .,d |r :-l-} 

1. UFAN, omobuk ‘nte Öböñ efende? 
Yak ikop obukde, afiakde obuk, 
Emedi ke cross, k’ ebiet 
Enye ’kpade? 
Yak ikop obukde, afiakde obuk. 
Amasaña ke uñwana Esie? 
Emeyet me idiök fo efep? 
M’Enye edi ikwö y’idaresit fo? 
Yak ikop obukde, afiakde obuk. 

Körös: 
SA: Yak ikop, afiakde obuk 
TB: Yak ikop obukde, afiakde obuk 
SA: Fiak buk, töñö ntak buk 
TB: Yak ikop obukde, afiakde obuk 
All: Buk inem ye eti mbuk 
Eyeda fi osim k’ uböñ, 
Yak ikop obukde, afiakde obuk 

2. Ke usuñ isañ fo Andinyaña do? 
Yak ikop obukde, afiakde obuk, 
Nte Jesus edi andikpeme fi? 
Yak ikop obukde, afiakde obuk, 
’Kanam ukwe utö ufan oro, 
Emi añwamde k’ utom y’ ubiak, 
Yak m’idut ekop s’anamde önö fi 
Yak ikop obukde, afiakde obuk. 

3. Akanam amasuan eti ‘mbuk oro? 
Yak ikop obukde, afiakde obuk, 
Eniñe akan eti mbuk ndap, 
Yak ikop obukde, afiakde obuk, 
M’ öbuñesit ewak k’ ererimbot, 
Eyom, edi ikwe ifure, 
Wut mö Jesus ke ikö fo ye ikwö, 
Yak ikop obukde, afiakde obuk. 

4. M’ eköñ añwanade ye erikan fo 
Yak ikop obukde, afiakde obuk, 
Eyeñwam mö emi etöñöd’ isañ, 
Yak ikop obukde afiakde obuk, 
Nyin iñwana ye m’ udim 
idiökñkpö, 
Iyekara ye Christ Andifak,
Mbon ufak k’ Öböñ, 
ñwana mum ukpöñ, 
Yak ikop obukde, afiakde obuk. 

Amen. 
      """
    },
    {
      "id": 522,
      "title": "ENYE EMEN MME IDIÖK MI EFEP ",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{:m .,f, |s, :s, ls, .,s, :L, .,t, |d :-l:
d .,r |m :m lr:d |r :-l-} 

1. NYETOR’ Öböñ k’esit 
y’ uyo, 
Ke Enye nyedara, 
Nyekwö utib’ ima Esie, 
Ikwö mi eyedi: 

Körös: 
Enye emen m’idiök mi 
efep, (efep) 
Tor’ enyiñ Esie, tor’ enyiñ 
Esie, 
Enye emen m’idiök mi 
efep, (efep) 
Alleluia, tor’ Enye. 

2. K’ntiened’ Enye ye 
m’idiök mi, 
Man önö mi ifure, 
Okop akam, anam mböhö, 
Ikwö mi eyedi: 

3. Nyetoro Enye k’ uwem mi, 
Koro akande mkpa, 
Nyetoro Enye k’ nsinsi, 
Ikwö mi eyedi: 

Amen. 
      """
    },
    {
      "id": 523,
      "title": "JESUS EDI OKIM ",
      // "audio":"",
      "body": """
      KEY Eb 6/8

{|s:-:-lL :-:s |m :-:r ld :-:-|r ::-
ld :-:r |m :-:-|s :-:-} 

1. IDAR’ isöñ okpu, Jesus okim, 
Ami mayak kpukpru Jesus okim, 
Ekim odu k’isöñ, ifure iduhe, 
Jesus ikpöñ ödiöñ, Jesus okim. 

2. Kudomo ukpöñ mi, Jesus okim, 
Nyesuk ndu mi, Jesus okim 
Ñkpö isöñ edude ke ekpri ini, 
Ewörö k’ esit mi, Jesus okim. 

3. M’utom ekim mayak, Jesus okim, 
Nduk ke uñwana, Jesus okim 
S’ ami ñkanamde, öwörö ikpikpu 
Jesus emekem mi, Jesus okim. 

4. Mökpöñ s’ibiarade, Jesus okim 
Möbö uwem ‘nsinsi, Jesus okim 
Mokop ödiöñde mi, moduk k’eti emem 
Mokut Andinyaña, Jesus okim. 

Amen. 

      """
    },
    {
      "id": 524,
      "title": "UWAK UKPEME ESIE ",
      // "audio":"",
      "body": """
      KEY Bb 6/8

{:s,|m :-.r :d ls, :m, :L,|s, :-:-l-::
d |t, :-.t, :t, lt, :d :r |d :-:-l-:-:-} 

1. ENYE önö eyo y’edim 
Öduök mbara ke iköñ 
Enye ’nam desert esekhe 
Mfön Esie ’dep ‘nte edim. 

Körös: 
SA: U..wak m..böm 
Ye u..tibe i…ma! 
U..wak m..böm 
Ye u..tibe i…ma! 
TB: Uwak mböm, uwak mböm 
Utib’ ima, utib’ ima 
Uwak mböm, uwak mböm 
Utib’ ima, utib’ ima 

2. Enye ’nam akpa asiakha, 
Enye anam ‘mbiet ököri, 
Önö m’eröñ eti ofim, 
Isöñ edara ke Enye. 

3. Mfön Esie okpon eti, 
Mböm Esie ikureke, 
O Öböñ nam itoro Fi, 
Ikpono Fi ke utom nyin. 

Amen. 
      """
    },
    {
      "id": 525,
      "title": " TIÑ IKÖ KIET BAÑA JESUS ",
      // "audio":"",
      "body": """
      KEY D 4/4 

{:d |m :-.r ld :d' |d' :-lL :L |s :-.m 
lm :r |r :-l-} 

1. TIÑ ikö baña Jesus, 
Ufan akpanikö; 
Di tiñ nyuñ döñ nyin esit, 
Se ’namde önö fi. 

Körös: 
Tiñ ikö baña Jesus, 
Eyeñwam k’ isañ nyin; 
Ikö kiet baña Jesus, 
O tiñ, kwö, böñ akam. 

2. Tiñ ikö baña Jesus, 
Eyefen m’idiök fo; 
Ke mfon Esie ’yeñwam 
Ndisim iduñ ko. 

3. Tiñ ikö baña Jesus, 
Isöñke ikan fi 
Nditiñ “Mama Öböñ 
Akpade önö mi.” 

4. Tiñ ikö baña Jesus, 
Kubiat aba ini; 
S’esit esinde ‘ndinam 
Önönö mfukhö. 

5. Tiñ ikö baña Jesus, 
K’idem ememde fi, 
Demere k’mbuötidem, 
Yak kpukpru nö Enye. 

Amen. 
      """
    },
    {
      "id": 526,
      "title": "ABASI EDI IMA ",
      // "audio":"",
      "body": """
      KEY Bb 3/4

{|s :-.d :r .m |d :-.m, :s, .d |t, :-.r 
:L, .t,|L, :s, :-} 

Soprano: 

1. O ABASI Ima y’ mböm 
Ayama ke usuñ nyin 
Y’ idara, akan mfukhö 
Edi uñwana y’ ima. 

Alto/Ten/Bass: 
Abasi edi ima 
Mböm Esie ayama, ’yama 
Ke kpukpru ih, ke kpukpru 
Usuñ emi isañade 
Enye önö idara 
Akan mfukhö, ’kan mfukhö 
Abasi edi uñwana 
Abasi edi ima! 

Körös: 
Soprano: 
:\$: Edi uñwana y’ ima 
Edi uñwana y’ ima. DS. 

Alto/Ten/Bass: 
:\$: Abasi edi uñwana 
Abasi edi ima Ih! 
Abasi edi uñwana 
Abasi edi ima! DS. 

Soprano: 
2. Ifet ye ini ededu 
Mkpa y’ emana edi 
Mböm Esie ikureke 
Edi uñwana y’ ima. 

Alto/Ten/Bass: 
Ifet ye ini ededu 
Ifet ye ini ededu 
Mkpa ye emana edi 
Mkpa y’ emana edi; 
Mböm Esie ikureke 
Mböm Esie ikureke 
Abasi edi uñwana 
Abasi edi ima. 

Soprano: 
3. Okposuk ini ödiökde 
Mfön Esie ododu 
Uñwana asiakha k’ ekim 
Edi uñwana y’ ima 

Alto/Ten/Bass: 
Okposuk ini ödiökde 
Okposuk ini ödiökde 
Mfön Esie, mfön Esie 
Ododu, Ih ododu 
Uñwana asiakha k’ ekim 
Uñwana asiakha k’ ekim 
Abasi edi uñwana 
Abasi edi ima. 

Amen. 
      """
    },
    {
      "id": 527,
      "title": "JESUS EDI ETI UFAN",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s, .,d |m :m .,re lm :f |L,:-lr :d .,d 
|t, .,d :t, .,L, ls, :f |m:-} 

Duet: Sop & Alto: 

1. O JESUS edi eti Ufan, 
Ke ukut uwem osimde fi, 
Enye ’yedöñ fi esit 
Önö odudu y’ mfön, 
O Jesus edi eti Ufan. 

Körös: 
Jesus edi eti Ufan 
(kpukpr’ usen) 
Jesus edi eti Ufan 
(kpukpr’ usuñ) 
Eyeñwam ke öduöde 
Eyekop ke okotde, 
O Jesus edi eti Ufan. 


2. Mokut eti ufan ke Jesus 
Önöde emem y’ndöñesit, 
K’mberede ye Enye 
Ndifegheke idiök 
O Jesus edi eti Ufan, 

3. K’ nsañade k’ ekim mfukhö 
K’mbufut Jordan ösöñd’ eti 
Ndifegheke ndik 
Andinyaña k’ ekpere, 
O Jesus edi eti Ufan. 

4. Ke utit ke obio Abasi, 
Nyesobo ye m’ufan mi do, 
Iyekwö k’ mben esuk, 
Itoro k’ nsi nsi 
O Jesus edi eti Ufan. 

Amen. 
      """
    },
    {
      "id": 528,
      "title": "JESUS EMENERE MI",
      // "audio":"",
      "body": """
      KEY Eb 6/8 

{|m :m :m |m :r :d |s :s :s ls :-:|
L :L :L ls :s :m |m :r :d lr :-:-} 

1. KE ata utibe ima Esie, 
Osio mi k’obube esin k’uböñ, 
Spirit mi ömöböhö m’ ebuka, 
Jesus emenere mi! 
(k’enyöñ) 

Körös: 
Christ emenere mi! (k’enyöñ) 
Christ emenere mi! (k’enyöñ) 
Osio k’ ekim esin ke uñwana 
Jesus emenere mi! 
(k’enyöñ) 

2. Osio k’ererimbot esin k’emem, 
K’ eti isöñ mö emi efakde 
Do nyedu ye Enye ke uböñ 
Jesus emenere mi! 
(k’enyöñ) 

3. Mökpöñ obukidem ntien’ Enye, 
Man ‘nduñ k’ima Esie k’nsi nsi, 
’Nyuñ ñkut nsinsi uböñ Esie 
Jesus emenere mi! 
(k’enyöñ) 

Amen. 

      """
    },
    {
      "id": 529,
      "title": "AMI MÖNYÖÑ NDI",
      // "audio":"",
      "body": """
      KEY G 4/4

{|m :-.d lr .d:L, .d |s,:L, ld :r |m 
:-.f ls .m :r .d|t, :d lr:-} 

1. JESUS ami mönyöñ ‘ndi mfin, 
Esit mi emem, ukpöñ mi akpa; 
Mafiak edem k’usuñ idiök kemi, 
Ami mönyöñ ‘ndi. 

Körös: 
Jesus ami mönyöñ ‘ndi mfin, 
Makabare ñkpöñ m’idiök mi; 
Öböñ, ömönö mfön nditiñ 
Ami mönyöñ ‘ndi. 

2. Okposuk usuñ mi oyomde, 
Möfiök Ete k’ ebet mi man ndi; 
Enye atat ubök ndibö mi, 
Ami mönyöñ ‘ndi. 

3. O se idiökñkpö anamde mi! 
Anam ñkut ubiak ye mfukhö; 
Kemi nyom mfön ye mböm Fo, 
Ami mönyöñ ‘ndi. 

4. Ami ‘ñkökpöñ Fi anyan ini, 
Medi y’mbuñesit k’ebekpo Fo; 
Kemi usuñ eberede ’nö mi, 
Ami mönyöñ ‘ndi. 

5. Möbuötidem ke uñwöñö Fo, 
Edinen ido ami ’nyeneke; 
Iböhöke iyip Jesus Öböñ, 
Ami mönyöñ ‘ndi. 

Amen. 
      """
    },
    {
      "id": 530,
      "title": "KE JESUS ODUKDE KE ESIT MI ",
      // "audio":"",
      "body": """
        KEY A 4/4

{:m, .f, |s, :L, .t, ld :d .r |m :m .f lm 
:-.r |d .d :-.L, ld .d :-.d |s, :-l-} 

1. UTIBE ukpukhöre odu k’uwem mi, 
Ke Jesus odukd’ esit mi, 
Menyen’ uñwana ñkoyomde k’ukpöñ mi, 
Ke Jesus odukd’ esit mi. 

Körös: 
S: Ke Jesus odukd’ esit mi 
Ke Jesus odukd’ esit mi 
ATB: Ke Jesus odukde ke esit mi 
Ke Jesus odukde ke esit mi 
All: Idara ke ukpöñ mi nte 
akpa möñ 
Ke Jesus odukd’ esit mi 

2. Ami ndiyoho aba ñkpöñ usuñ 
Ke Jesus odukd’ esit mi 
M’idiök mi ekewakde 
emeyet efep 
Ke Jesus odukd’ esit mi. 

3. Menyene idorenyin ösöñde ada 
Ke Jesus odukd’ esit mi. 
Ekim, eyikhe iduhe ke usuñ mi 
Ke Jesus odukd’ esit mi. 

4. Uñwana odu önö mi k’ mfut mkpa 
Ke Jesus odukd’ esit mi 
Mokut inua ’top obio ’ro 
k’edem oko, 
Ke Jesus odukd’ esit mi. 

5. Ami ‘nyeka ndiduñ ke obio oro 
Ke Jesus odukd’ esit mi. 
Madara eti eti ndika iso 
Ke Jesus odukd’ esit mi. 

Amen. 
      """
    },
    {
      "id": 531,
      "title": "MÖNYÖÑ NDI",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|s, :s, lL, .s, :fe .s, |d :r lm :-|m 
:r lr .de :r .m |d :L, ls, :-} 

1. IDIÖK ökpöyöhö k’esit mi, 
Ke mbuötidem, Öböñ medi 
Afo eyenam mi nsana, 
Ami mönyöñ ‘ndi 

Körös: 
Mönyöñ ‘ndi (ami medi) 
Mönyöñ ‘ndi (ami medi) 
Ndiyoho aba k’usuñ idiök 
Mönyöñ ‘ndi (ami medi) 
Mönyöñ ‘ndi (ami medi) 
O, Öböñ, ami mönyöñ ‘ndi. 

2. Nt’ ete oyomde ‘nyoñ eyen 
Ntre ke oyom mi ke desert, 
Idiök mi anam mi ndekhe 
Ami mönyöñ ‘ndi. 

3. Uyo Fo k’ etiñ suñ ye ami 
Didie k’ndisin eti Ufan 
Afo eyenö mi erifen, 
Ami mönyöñ ‘ndi. 

4. Yak eti iyip Jesus, edi, 
Eyet mi nsana nte snow, 
Ndori enyin k’Afo ikpöñ 
Ami mönyöñ ‘ndi. 

5. Tiñ nö eka mi ke Abasi 
Omokot nyoñ eyen esie, 
“Ete yak anam akpanikö” 
Ami mönyöñ ‘ndi. 

Amen. 

      """
    },
    {
      "id": 532,
      "title": "NTE EBET EÑWEKDE ",
      // "audio":"",
      "body": """
    KEY Ab 3/4

{:s, |m :r :d |d :t, :L, | L,:s , :d | d :t , 
:s, |f :m :r |r :d :t, |d:-:m lm :r} 

NT’ EBET eñwekd’ oyom 
idim-möñ 
Nt’ ebet eñwekd’ oyom 
idim-möñ 
Ntre k’ukpöñ mi, ntre 
k’ukpöñ mi 
Eñwek oyom Fi, O Abasi 
Eñwek oyom Fi, O Abasi 
Ntre k’ukpöñ mi, ntre 
k’ukpöñ mi 
Eñwek oyom Fi, O Abasi 
O ukpöñ mi ’yom Abasi, 
Abasi uwem, Abasi uwem 
K’ ini ewe k’ ndiwut Fi idem? 
K’ ini ewe k’ ndiwut Fi idem? 
Nt’ ebet eñwekd’ oyom 
idim-möñ 
Nt’ ebet eñwekd’ oyom 
idim-möñ 
Ntre k’ukpöñ mi, ntre 
k’ukpöñ mi 
Eñwek oyom Fi, O Abasi 
Eñwek oyom Fi, O Abasi 
Ntre k’ukpöñ mi, ntre 
k’ukpöñ mi 
Eñwek oyom Fi, O Abasi. 

Amen. 
      """
    },
    {
      "id": 533,
      "title": "IMA EKEMENERE MI ",
      // "audio":"",
      "body": """
      KEY Bb 6/8 

{|s, :-:L, ls, :-:m, |s, :-:L, ls, :-:|
s, :L,:t, ld :-:r |t, :-:-l-:-: } 

1. ÑKOBUKHÖ ke idiök, 
Ma ‘ñkpöñ esuk emem, 
Ma ‘mbukhö eti k’ idiök, 
Ñkekwe uböhö; 
Andikan ‘mbufut inyañ, 
Okop eseme mi, 
Christ ekemenere mi, 
Anyaña mi. 

Körös: 
Ima añwam! (kpa mi), ima 
añwam! (kpa mi) 
K’ efen ’miñwamke mi 
Ima añwam! 
Ima añwam! (kpa mi), ima 
añwam! (kpa mi) 
K’ efen ’miñwamke mi 
Ima añwam! 

2. Esit mi ’mönö Enye, 
Nyeyire Enye, 
Nyedu k’ iso Esie 
Nyuñ ntoro Enye 
Ima okponde eti 
Ke ukpöñ mi ökwö, 
Nyenam utom Esie 
K’akpanikö. 

3. M’ ukpöñ etakde, ese 
Jesus Andinyaña, 
Enye ke ima Esie 
’Yesio fi k’idomo, 
Andikan ‘mbufut inyañ 
Ofim esukd’ ibuot 
Edi Andinyaña fi, 
Böhö kemi. 

Amen. 
      """
    },
    {
      "id": 534,
      "title": "AKWA MBÖM ",
      // "audio":"",
      "body": """
      KEY F 4/4

{| m :s :d |r :-:r | r :d :r lm :-:|
m :s :dlr :-:r | r :m :r ld :-:-} 

1. AKWA mböm! me odu 
Ek’ enimde enö mi? 
Me Öböñ eyeyö mi 
Etubom m’anamidök? 

2. Mambiöñö mfön Esie, 
Ñkayat Enye esit, 
Ñkopke ikot Esie, 
Mandue k’ ediwak usuñ. 

3. Nam mi ñkabaresit, 
Nö esit öbuñöde 
Man ñkubiöñö aba, 
Nam ’nyime ‘ndikpöñ 
idiök. 

4. Jesus ada k’ ibuot mi, 
Ye unan k’ ubök Esie; 
Abasi edi ima! 
Möfiök Jesus ama mi. 

Amen. 

      """
    },
    {
      "id": 535,
      "title": "NYEDU UWEM NÖ ENYE",
      // "audio":"",
      "body": """
      KEY F 3/4

{:s,|m .,m :m :-.s,|m .,m :m :-.s, 
|d .m :s :-.d|r .,m :r } 

1. UWEM y’ ima mi mönö Fi, 
Afo Eyeneröñ uwa; 
O ñwam mi ’nam akpanikö 
Andifak y’ Öböñ mi! 

Körös: 
‘Nyedu uwem ’nö Andifak 
Uwem mi eyenem eti 
K’ndud’ uwem mi ’nö Öböñ 
Ye Andinyaña mi! 

2. Monim ke omonyime mi, 
Afo ’kakpa man ’du uwem 
Kemi möbuötidem y’Afo 
Andifak y’ Öböñ mi! 

3. Afo ’kakpa ke Calvary 
Man akpanyaña ukpöñ mi, 
Mayak kpa uwem mi ’nö Fi, 
Andifak y’ Öböñ mi! 

Amen. 
      """
    },
    {
      "id": 536,
      "title": "ÖBÖÑ JESUS, MEDI ",
      // "audio":"",
      "body": """
      KEY Ab 3/4

{:s,|s, :L, :s,|m, :-:s, .s,|d :r :d |L, 
:-:L,|s, :m, :s,|d :s, :d|m :r :d |r :-} 

1. ÖBÖÑ ’mi, ’medi 
Möwörö ke ekim, 
K’usuñ ’memidem 
Afo ’yesuk edi 
Iberedem mi, 
K’ñkpö ekededi; 
K’isañ uwem, di 
Andida mi usuñ 

Körös: 
SA: Je…sus ami ’medi 
TB: Jesus ’medi ami ’medi 
SA: Ya…ma ke ekim mi 
TB: Yama k’ekim, ke ekim mi 
SA: Da… usuñ, kpeme mi, 
TB: Da usuñ kpeme, kpeme mi 
All: Jesus, ami ’medi (’medi) 

2. Mböm y’ ima Fo 
Ömödöñ mi eti, 
Oto ke enyöñ 
Añwaña usuñ mi, 
Uyama usuñ 
Osimde ke esuk, 
Ömönö uñwana, 
Ye idaresit. 

3. Jesus Öböñ mi, 
Nam nsaña y’ Afo 
Usuñ Fo oro, 
Nyesaña ñko, 
O mum mi ubök, 
Teme mi k’ ima Fo, 
Sim k’ eti obio, 
Ediye ebekpo. 

Amen. 

      """
    },
    {
      "id": 537,
      "title": "NYAÑA MI KE CROSS ",
      // "audio":"",
      "body": """
      KEY A 6/8 

{|s, :-:s, ls, :m, :s,|d :-:d ld :-:|
r :-:rlr :-:d |m :-:m lm :-:-} 

1. ANDIFAK kop akam mi, 
Bö mkpe ubök mi; 
Medi ke nnyekidem 
O nyaña mi ke cross! 
Akakpa k’ndudue mi 
Afo ama akpa 
Yak ndibe k’ mböm Fo 
O, nyaña mi ke cross! 

Körös: 
Öböñ Jesus bö mi 
Metre s’ iyatde Fi, 
Eti Andinyaña 
O, nyaña mi ke cross! 

2. ’Kposuk edi ntakde 
Ami ‘nyeböñ akam; 
Afo ’di usuñ uwem 
O nyaña mi ke cross! 
Ufak edi ke mfön, 
Ke mfön, ke mfön 
Tua mi mböm, O Öböñ 
O, nyaña mi ke cross! 

3. Yet mi k’eti iyip Fo 
Ke eti iyip Fo 
Nim mi ke idak iyip 
O nyaña mi ke cross! 
Erifen k’ mbuötidem 
Erifen, erifen; 
Ke mbuötidem, ’medi, 
O, nyaña mi ke cross! 

Amen. 
      """
    },
    {
      "id": 538,
      "title": "KEMI MÖNYÖÑ NDI ",
      // "audio":"",
      "body": """
      KEY F 4/4

{|s, :m .,f lm :r .d |L, :r .,m lf :|
t, :t,.,L, ls, .f:-|m :-l-: } 

1. AMI ñkoyo ñkpöñ Öböñ mi 
Kemi mmönyöñ ‘ndi 
Moyom afiak öfönido y’ ami, 
Kemi mmönyöñ ‘ndi. 

Körös: 
Ih! ami ’medi, 
Öböñ mi ’medi, 
Kemi mmönyöñ ‘ndi 
Ih! ami ’medi, 
Öböñ mi ’medi, 
Kemi mmönyöñ ‘ndi. 

2. Ererimbot öwörö mi k’esit 
Kemi mmönyöñ ‘ndi, 
Monim k’Andinyaña eyebö mi, 
Kemi mmönyöñ ‘ndi. 

3. Andinyaña ömönö mi emem, 
Kemi mmönyöñ ‘ndi 
Ukpöñ mi oyom ‘ndibere k’ Enye, 
Kemi mmönyöñ ‘ndi. 

4. K’ nsukidem mada itie ofn, 
Kemi mmönyöñ ‘ndi 
Moyom ndibö mfön Esiemö, 
Kemi mmönyöñ ‘ndi 

5. Toro Öböñ mokut Andinyaña, 
Kemi mmönyöñ ‘ndi 
K’ebet ‘ndibö anamidiök ‘nt’ ami 
Kemi mmönyöñ ‘ndi. 

Amen. 

      """
    },
    {
      "id": 539,
      "title": "KE CALVARY ",
      // "audio":"",
      "body": """
      KEY C 4/4

{|s :-.sls .,f :m .,f |s :L, ls:-lt :.
tlt .,L :s .,f |m :L ls :-} 

1. MABIAT anyan ini k’iseri, 
‘Ñkereke Öböñ ekeköñde, 
Mfiökke akakpa önö mi 
Ke Calvary. 

Körös: 
Do k’ mböm y’ ima okpon k’ mfön, 
Do k’ erifen awak önö mi 
Ukpöñ mi okokut uböhö 
Ke Calvary. 

2. K’ikö Abasi, möfiök idiök, 
Medikhe k’ ibet ñkabiatde, 
Tutu ukpöñ mi afiak aka 
Ke Calvary. 

3. Kemi mayak kpukpru ’nö Jesus, 
Madara Öböñ mi Edidem, 
Ukpöñ mi efakde eyekwö 
Kpa Calvary. 

4. O ima önöd’ erinyaña, 
O mfön enöd’ owo k’ isöñ, 
O usuñ Abasi onimde 
Ke Calvary. 

Amen. 
      """
    },
    {
      "id": 540,
      "title": "UBET ODU ÖNÖ FI ",
      // "audio":"",
      "body": """
     KEY F 4/4

{:d .m |s .s :s ls :d .m|m .r :d .t, ld 
:d .d |f :s .L ls :m .d |r :-l-} 

1. AFO ökökpöñ ebekpo ye uböñ Fo 
Man edi ke isöñ önö mi, 
Ebiet ikoduhe ke Bethlehem inö 
Edisana emana Fo. 

Körös: 
Öböñ Jesus di duk k’esit mi, 
Ebiet omodu do önö Fi, 
Öböñ Jesus di duk ke esit mi, 
Ebiet omodu do önö Fi. 

2. Heven ekedara ke enjel ekwöde 
Mö ekebuk uku uböñ Fo, 
Afo akamana k’usukhöre itie, 
Ye k’ata nsukhör’ idem. 

3. M’unam ye me inuen 
emenyene iduñ 
Ke idak mfut ye ke eto 
Edi ebiet ’na Fo ekedi ke mbiet 
Ke desert k’ obio Galilee. 

4. O, Öböñ, ekedi y’eti ikö uwem 
Man önö iköt Fo uböhö; 
Edi ke esuene y’anyanya ñkukim, 
Eda Fi eka Calvary. 


Körös: 
Öböñ Jesus di duk k’esit mi, 
Koro cross Fo ikpöñ ke nyom;
Öböñ Jesus di duk ke esit mi, 
Koro cross Fo ikpöñ ke nyom; 

5. Kini heven edarade ke ikwö mö 
Kini eridi Fo ke uböñ; 
Yak uyo Fo ödöhö mi k’iduñ odu 
Do ke ñkañ Fo önö mi. 

Körös: 
Öböñ esit mi eyedara! 
K’ okotde mi ke eridi Fo; 
Öböñ esit mi eyedara Fi 
K’okotde mi ke eridi Fo. 

Amen. 
 
      """
    },
    {
      "id": 541,
      "title": "KPA JESUS EMI",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:m, .f, |s, :s, ls, :s, .s, |L, .d :d ld 
:L,|s,:s, lm :d|r :-:-} 

1. AMI mokop mbuk emana Jesus 
Ke obio Bethlehem, 
Ntant’öfiöñ akada mö usuñ; 
Aka k’ebiet anade. 


Körös: 
Mokop ke Jesus, 
Enye ’di Andinyaña mi 
Mokut ke Bible 
Ke Christ anyaña mi. 


2. Ami mokop mbuk mbaña Jesus 
Ke akpa Galilee, 
Ofim y’inyañ edobo k’ekopde 
Ete “Yak emem odu.” 

3. Mokop mbaña Jesus ke Bethany 
Ada k’mben udi, 
Okot Lazarus, ete “wörö di,” 
K’ akwa odudu Esie. 

4. Mokop mbaña Jesus Andifak mi 
Akpa ke Calvary 
Ebeñe ete, “Dahado nö mö 
Koro mmö mifiökke.” 

5. Mokop ke Jesus akana ke udi 
K’ndobo ye ekim 
Okobuñ ‘ñkpököbi onyuñ eset, 
Akwa Andikan udi. 

Amen. 
      """
    },
    {
      "id": 542,
      "title": "AMI ÑKAKPA KE IDIÖK",
      // "audio":"",
      "body": """
      KEY C 6/8 

{:s|s :-:s lm :-:s|L :-:-ld' :t :L 
|s :-:s |f :-:s |m :-:-l-:-} 

1. AMI ‘ñkakpa k’idiök, 
Idorenyin atak, 
Kemi möböh’ idiök 
Ke Jesus ’keköñde 

 
Körös: 
f Nte Enye akama mi, 
p Önö uwem Esie? 
f Nte Enye akama mi, 
p Önö uwem Esie? 

2. Ima emi okpon 
Akan inua ‘ndibuk; 
O utibe ima, 
Odu ke Andifak, 

3. Esit unan’ eköm 
Emi ökpöñd’ Öböñ 
Akayakde önö 
Öböñ k’uwa ima. 

4. Uwem ‘ndude kemi, 
Christ oduñ k’esit mi; 
Akafak mi osio, 
K’ ibet idiök y’mkpa. 

Amen. 
      """
    },
    {
      "id": 543,
      "title": "DI AKWA ANDINYAÑA, DI",
      // "audio":"",
      "body": """
      KEY C 4/4 

{:s .,f |m :s ld' :-.d' |r' .d' :t .L lL :|
s :t.,d' lt:d'.r |d' :-l -} 

1. O KOP akam nyuñ nö mi mfön Fo, 
f Di, Andinyaña di, 
Ukpöñ mi, ke oyoyom Fi kemi, 
f Di, Andinyaña di. 

Körös: 
Ami ñkoyo ke usuñ idiök 
Ma ‘ñkpöñ ebiet iduñ oro 
O kemi da mi sin ke otu Fo, 
f Di, Andinyaña di, 

2. Ndu k’ekim nnyeneke iduñ 
f Di, Andinyaña di, 
Se mi k’ mböm nö uwem y’ uñwana 
f Di, Andinyaña di, 

3. Nsañ’ ikpöñ ukot akpa mba, 
f Di, Andinyaña di 
Ami nyom uyama iso Fo 
f Di, Andinyaña di, 

4. Usinke edibuñ’ esit k’ ndek 
f Di, Andinyaña di, 
Yere akam nyuñ kop eseme mi, 
f Di, Andinyaña di, 

Amen. 
      """
    },
    {
      "id": 544,
      "title": "ANDIYO ÖNYÖÑ EDI",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:s, |d :d ld .t, :L, .t, |d :d ld :s, |d 
:r .m lf :m |r :-} 

1. OKPOSUK ukut ösöñde 
Asaña ye mböm 
Anam idiök eyen afiak 
Önyöñ etien’ Ete. 

Körös: 
“Ndikpaha biöñ mi” 
Enye atua, ‘ndikpaha biöñ 
K’ esen idut emi, 
K’ ufök ete mi udia do 
Emi awakd’ eti. 

2. Ñkwe udori ke idiök 
Edi biöñ, but y’ ndik, 
K’ufök ete mi udia do 
Ami k’mkpa biöñ mi. 

3. Nyetiñ se ñkanamde, 
Nduö enye k’ iso; 
Ndotke aba k’ eyen fo 
Nyom itie ofn. 

4. K’ete esie okutd’ enye 
Adaresit eti; 
Efeghe akafat enye, 
Eyen nsöñ ibuot. 

5. “O ete, medue, dahado” 
Ete, ’börö “Ekem!” 
“Edara, mokut eyen mi 
Emi okosopde.” 

6. Ntre k’ ima Öböñ edi 
Önö m’anamidiök, 
K’ima Esie adara mö 
Emi ekpöñd’ idiök. 

Amen. 
      """
    },
    {
      "id": 545,
      "title": "DA MI, O ETE MI! ",
      // "audio":"",
      "body": """
      KEY D 3/4

{:s .s |s :m :d' .d' |d' :s :s .s|L :-.L 
:L .L |s :-} 

1. DAMI, O Ete mi, da mi, 
Nyaña mi ’to k’Eyen Fo 
Nt’ oyomde, nam y’ami man 
Uduak Fo osu k’ ami 
Ma ñkpöñ Fi anyan ini 
Nduk k’ usuñ ñkukim 
Öböñ ’medi k’memidem, 
Da mi sin ke otu Fo. 

2. Meti m’isua ñkabiatde, 
Mayarade m’idiök mi; 
O Ete, möduö k’ ukot Fo, 
Da mi sin ke otu Fo, 
Ami mayak idem ’nö Fi, 
Ke ata mbuñesit 
Mönö Fi uwem y’ukpöñ mi, 
Ikemke ye ima Fo. 

3. Andifak owo akakpa, 
Obiom m’idiök nyin k’ eto 
Mbere ke uwa oro, 
Nyuñ ndorenyin k’Afo 
Ete da mi nyuñ fen kpukpru; 
Nim mi k’ ikpanesit Fo, 
Man ñkpodu ke ima Fo. 
Kemi ye k’ nsi nsi. 

Amen. 
      """
    },
    {
      "id": 546,
      "title": "NTE NYEYAK ENYE ODUK? ",
      // "audio":"",
      "body": """
      KEY F 6/8

{|m :-:m lm :r :d |s :-:s |m :-:-|r ::
r ld :-:r |m :-:-l-:-:-} 

1. CHRIST ke ököñ ke esit mi, 
Me ‘nyeyak oduk? 
K’ ime k’ atuak esit ukut mi, 
O! me ‘nyeyak oduk? 
Esit mi ösöñ ke idiök, 
Inemesit iduhe do, 
Christ oyom mi ntiene Enye, 
O! me ‘nyeyak oduk? 

2. Me nyenyime ’nö Enye 
Me ‘nyeyak oduk? 
Nyebö Öböñ ke esit mi, 
O! me ‘nyeyak oduk? 
Enye ’yenö ata ima 
Eyefen esit ökpösöñ, 
Me ‘nyeyak ökpöñ mi 
k’ nsi nsi 
Me nyeyak oduk? 

3. Ih! Nyebered’ esit mi, 
Nyeyak oduk! 
Nyebö Enye k’ inemesit 
Ih! Nyeyak oduk! 
Andinyaña di dañ y’ ami 
Ukut y’ idomo ’yefere, 
Ke ndude y’ Afo, möböhö 
Duk di, Öböñ, duk di. 

Amen. 

      """
    },
    {
      "id": 547,
      "title": "ÖBÖÑ MÖNYÖÑ NDI",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:s,|m :m ld :-.d |L, .d :-.L, ls,:-. 
|d:d lm.m:-|r:-l-} 

1. AMI ñkökpöñ Abasi 
Kemi mönyöñ ‘ndi, 
’Mambiat ini k’ usuñ idiök 
Öböñ mönyöñ ‘ndi. 

Körös: 
Mönyöñ ‘ndi -mönyöñ ‘ndi 
Ndiyoh’ aba 
K’ mfön Fo ‘nyedi Okuo 
Öböñ mönyöñ ‘ndi. 

2. Ñkabiat ediwak isua 
Kemi mönyöñ ‘ndi 
Kemi ’makabaresit mi 
Öböñ mönyöñ ‘ndi. 

3. Makpa ‘mba k’ndiyo 
k’idiök 
Kemi mönyöñ ‘ndi 
‘Nyebere k’ima y’ikö Fo 
Öböñ mönyöñ ‘ndi. 

4. Ukpöñ y’esit mi öfukhö 
Kemi mönyöñ ‘ndi, 
Nö odudu y’ idorenyin, 
Öböñ mönyöñ ‘ndi. 

Amen. 
      """
    },
    {
      "id": 548,
      "title": "NTE NTIEDE ",
      // "audio":"",
      "body": """
      KEY Eb 6/4 
      
{: d .r |m :-:m ls :-.f :m | r :-.m :f lm 
:-:s| s :r :mlf:-:L|L:-:slm:-} 

1. NTE ntiede ke ndi 
Ököduök iyip önö mi 
Afo omokot mi ndi, 
Eyeneröñ, ami medi. 

2. Ndi ubuene ye nnan 
Nö erikök ye inyene, 
Ye kpukpru s’inanade mi, 
Eyeneröñ, ami medi. 

3. Nte ndide nyuñ bö mi, 
Fen nyuñ yet mi nam mböhö 
Koro monim uñwöñö Fo 
Eyeneröñ, ami medi. 

4. Nte ndide, ima Fo 
Omobuñ kpukpru ebuka; 
Kemi ndi Okuo ikpöñ, 
Eyeneröñ, ami medi. 

Amen. 
      """
    },
    {
      "id": 549,
      "title": "AMI KE NDI KE CROSS ",
      // "audio":"",
      "body": """
      KEY G 3/4

{:s, .d lm :-.d :r .,m |d :-:m .f |s 
:-.L :s .,m |r :-} 

1. AMI ke ndi ke cross, 
Mem-mem, ubuene ye ’nan; 
Mabat kpukpru ke mbio, 
Man mbö erinyaña. 

Körös: 
Möbuötidem ye Afo, 
Eyeneröñ Calvary; 
Ami möduö k’ idak cross, 
Öböñ Jesus nyaña mi. 

2. Esit mi ekesin Fi, 
Ñkodu uwem k’ idiök 
Jesus ödöhö ete, 
“Nyeyet m’idiökñkpö fo” 

3. Se! Mayak kpukpru ’nö Fi, 
M’ufan, inyene y’ini, 
Ukpöñ ye ikpökhidem, 
Edi Okuo k’ nsinsi. 

4. Jesus öyöh’ ukpöñ mi, 
Anam mfönma k’ Enye; 
Ama ökök mi kpukpru, 
Motoro Eyeneröñ. 

Körös 
K’mbuötdidem ye Afo 
Eyeneröñ Calvary; 
Ami möduö k’ idak cross, 
Jesus amanyaña mi! 

Amen. 
      """
    },
    {
      "id": 550,
      "title": "NYIN IMÖÑYÖÑ IDI KEMI ",
      // "audio":"",
      "body": """
      
KEY G 4/4 

{:d.r|m m.-:f.,mlm.r:t,.d|r.r
:m .,r ld } 

1. IMÖÑYÖÑ itiene Jesus 
Enye omonyime nyin, 
Nyin ibere k’ ima Esie, 
Idara k’ mböm Esie. 

Körös: 
SA: Imöñyöñ idi, imöñyöñ idi 
TB: Nyin imedi, imedi, nyin 
imedi, imedi 
All: Iwörö k’ekim iduk ke 
uñwana (uñwana), 
SA: Imöñyöñ idi, imöñyöñ idi, 
TB: Nyin imedi, imedi, nyin 
imedi, imedi 
All: Imöñyöñ idi kemi. 

2. Imöñyöñ itiene Jesus 
’Kakpa man idu uwem 
Omonyime ndibö nyin, 
Enye k’ ebet ndifen. 

3. Imöñyöñ itiene Jesus 
Usuñ cross ikpöñ odu, 
Do ke Enye akafak nyin, 
Nyin ikpabiatke ini. 

Amen. 
      """
    },
    {
      "id": 551,
      "title": "O ÖBÖÑ, MMEDI ",
      // "audio":"",
      "body": """
      KEY G 3/2

{:s, |s, .d :m :d |s, .L, :s, :d |t, .d 
:r :r |d.r :m } 

1. JESUS Öböñ kop akam mi, 
Kini nduöde Fi k’ukot, 
Idorenyin mi ye uwem, 
Metiene Fi Öböñ 

Körös: 
Mekpe ubök ‘nditiene Fi, 
Afo ’kakpa ke ibuot mi, 
Mayak idem kpukpru ’nö Fi, 
Metiene Fi Öböñ. 

2. Nnyeneke nti ido, 
Ufak oto ke iyip Fo, 
Mowuk enyin mi nse Fi, 
Metiene Fi Öböñ. 

3. Erinyaña ’to k’enyiñ Fo, 
Mayak ’memidem mi ’nö Fi, 
‘Ndiduök odudu k’idak Fo, 
Metiene Fi Öböñ. 

4. Öböñ da ofri esit mi, 
Nam enye ’di Okuo kemi, 
Man ‘ñkpöfiök akwa ima Fo 
Metiene Fi Öböñ. 

Amen. 
      """
    },
    {
      "id": 552,
      "title": "JESUS AMI MMEDI! ",
      // "audio":"",
      "body": """
      
KEY A 6/4

{|s, :-.fe, :s, lm :-:r|d :-.t, :L, ls, 
:-:-|d :-.t, :d lr :-:-|r :-.d :r lm 
:-:-} 

1. MÖWÖRÖ k’ufn, ukut y’ekim, 
Jesus medi! Jesus medi!, 
Nduk k’uñwana y’idara Fo, 
Jesus metiene Fi, 
Möwörö k’udöñö y’unana, 
Nduk k’nsöñidem y’inyene 
Möwörö k’ idiök ntiene Fi, 
Jesus metiene Fi. 

2. Möwörö ke but y’ntak urua 
Jesus medi! Jesus medi! 
Nduk ke udori ukut Fo, 
Jesus metiene Fi, 
Möwörö k’ukut ererimbot, 
Ke oyobio ye afaneköñ, 
Nduk ke ikwö itoro Fo. 
Jesus metiene Fi. 

3. Möwörö k’ufen ye k’iseri, 
Jesus medi! Jesus medi! 
Ndinam se Afo amade, 
Jesus metiene Fi, 
Möduök idem y’esit ndik mi, 
Nduk k’ima y’idara k’enyöñ, 
Metiene Fi k’ mba ‘nte ibiom, 
Jesus metiene Fi. 

4. Mökpöñ ndik mkpa ye udi 
Jesus medi! Jesus medi! 
Nduk ke uñwana obio Fo, 
Jesus metiene Fi! 
Möwörö k’ obube nsobo, 
Nduk k’ emem iköt ima Fo, 
Ndikut iso Fo k’nsinsi 
Jesus metiene Fi. 

Amen. 
      """
    },
    {
      "id": 553,
      "title": "KPUKPRU ÑKPÖ MAYAK NNÖ JESUS",
      // "audio":"",
      "body": """
      KEY D 4/4

{|m :-.m lf :m |r :-.r lm :r |d:-.d 
lf :m |r :m ld :-} 

Duet: Sop & Tenor 

1. KPUKPRU ‘ñkpö mayak 
’nö Jesus, 
Menem esit ndinö; 
Nyebuötidem ye Enye, 
Nyema nyuñ ’du y’Enye. 

Körös: 
Ami ‘nyak kpukpru,… 
Kpukpru ‘ñkpö isöñ;… 
’Nö Fi Eti Andinyaña 
Ami ‘nyak kpukpru 
(mayak kpukpru) 

2. Kpukpru ‘ñkpö mayak ’nö 
Jesus, 
Matuak ibuot ’nö Enye; 
Mökpöñ inem ererimbot, 
Da mi O Jesus kemi. 

3. Kpukpru ‘ñkpö mayak ’nö 
Jesus, 
Nam ndi Okuo Öböñ; 
Yak Spirit Fo etiñ ete 
Ke ami ndi Okuo. 

4. Kpukpru ‘ñkpö mayak ’nö 
Jesus, 
Mönö ofri idem mi; 
Yöhö mi k’ima y’ odudu, 
Mbök diöñ mi O Öböñ. 

5. Kpukpru ‘ñkpö mayak ’nö 
Jesus, 
Möbö eti Spirit Fo; 
O! idara erinyaña, 
M’otoro enyiñ Esie! 

Amen. 
      """
    },
    {
      "id": 554,
      "title": "O JESUS AMI MÖÑWÖÑÖ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{:d |m :s lL :s .fe |s :-lm :r |d 
:r .m lf :L |r :-l-} 

1. JESUS ami möñwöñö, 
Ndinam utom Fo, 
Di kpere mi k’ nsinsi, 
Öböñ mi ye Ufan, 
Ndifegheke k’ eñwan; 
Ke odude y’ ami, 
Ami ‘ndikpöñke usuñ, 
K’Afo omumde mi. 

2. Nam ñkop emekpere, 
Ndu k’ererimbot; 
Mokut ñkpö idomo, 
M’uyom etapde mi, 
M’asua mi emekpere; 
Emekan mi ekuk, 
Mbök Jesus kpere mi, 
Sio ukpöñ mi k’idiök 

3. Nam ñkop Fi etiñde, 
K’uyo añwañade 
Nam ñkan m’idiök udöñ; 
Kpukpru nsuk-uyo 
Tiñ nyuñ söñö mi idem, 
Nö mi mfaridem, 
O tiñ man ñkpañ utöñ, 
Andikpem’ ukpöñ mi. 

4. O Jesus ömöñwöñö, 
’Nö menditiene Fi; 
Do k’ ebekpo uböñ Fo, 
Owo Fo eyedu! 
Jesus möñwöñö ñko, 
Ndinam utom Fo; 
Nö mi mfön ‘nditiene, 
Öböñ mi ye Ufan. 

5. Wut mi ikpat isañ Fo, 
Nam mi ntiene Fi; 
Idorenyin ‘nditiene, 
Odu k’Afo ikpöñ 
Kot mi, wut mi nyuñ da mi; 
Kama mi sim utit, 
Ndien k’ enyöñ nyuñ bö mi, 
Öböñ mi ye Ufan. 

Amen. 

      """
    },
    {
      "id": 555,
      "title": "ITO KE EKIM IDUK KE UÑWANA ",
      // "audio":"",
      "body": """
      
KEY G 3/4 

{:s, .,d |m :m :m .,m |f :f :f .,f |s:.
r :m .,f |m :-} 

1. NYIN ikabiat ini k’ ekim, 
Ibet ata uñwana; 
Me ‘ñkpö oro ikasuade, 
Onim nyin k’ ata ekim. 

Körös: 
Eti Jesus Andinyaña, 
Akpanikö y’ Ökpösöñ; 
Buñ mkpököbi eböpde, 
Nam nyin idi obufa. 

2. Kemi uñwana emedi, 
Jesus ododu k’esuk; 
Enye k’okot k’ uyo emem, 
“Edi, ekpöñ idiökñkpö” 

3. Nyin idodu ke ’memidem, 
Idiökñkpö, ukut y’ ufen; 
Ndek öyöhö nyin k’esit, 
Nyin idu k’ ekim y’ ndik. 

4. Imabiat kpukpru menö nyin, 
Isöñ ibuot k’ mbet Fo; 
Kemi imöbö mfön Fo, 
Isine öföñ uböñ. 

5. Amanyaña, suk kpeme nyin, 
Da nyin k’ eti usuñ Fo; 
Yak Spirit Fo eteme nyin 
Man ikañ nyin ayama. 

Körös: 
Eti Jesus kpere nyin mi, 
Yöhö nyin ye mfön Fo! 
Ke ikotde Fi, yere nyin, 
Mbök nö nyin emem Fo. 

Amen. 

      """
    },
    {
      "id": 556,
      "title": "O USEN IDARA ",
      // "audio":"",
      "body": """
      KEY G 3/2

{.s, :d .r |m :-.s, :d .r |m :-.m :f .m 
|r :-.d :m .r |d :-.} 

1. K’USEN idara ke ami, 
Ñkemek Fi, Andinyaña 
O yak nsuan etop emi, 
’Nö ekondo k’ idaresit. 

Körös: 
O! usen idara! 
K’Enye ’keyet m’ukwañ ñkpö mi, 
Ekekpep mi ‘ndiböñ akam, 
Y’idaresit kpukpru usen, 
O! usen idara! 
Enye ’keyet m’ukwañ-ñkpö mi. 

2. Kpukpru isön mi okure, 
Kemi ndi eyen Öböñ; 
Enye okot, metien’ Enye, 
Nsuan etop k’idaresit. 

3. Esit itimekere mi 
Koro menyen’ emem kemi; 
Ami ndikpöñke Öböñ, 
Enye eyediöñ mi eti. 

4. Heven okop uñwöñö mi, 
Nyeñwöñö kpukpru ini; 
Tutu usen mkpa edi, 
Ami ‘ndikpöñke Öböñ mi. 

Amen. 
      """
    },
    {
      "id": 557,
      "title": "JESUS EDI KPUKPRU ÖNÖ MI ",
      // "audio":"",
      "body": """
      KEY D 4/4 

{:d'| d' :s :L | L :s :f | m :r :d|s:-:s 
|m :r :d| s :t :r' | d' :t :L |s :-} 

1. JESUS ömödök ke enyöñ, 
Ami ndorenyin k’ Enye; 
Nyetiene usuñ Esie, 
Tutu nsobo ye Enye. 

2. Usuñ me profet ’kedukde, 
Usuñ osiod’ owo k’ufn; 
Edisana usuñ Öböñ, 
‘Nyeka, edi usuñ emem. 

3. Usuñ emi ñkoyomde, 
Ñkatua ke meñkwe enye 
Ukut mi ekedi ntem 
K’ñkemeke ‘ndikpöñ idiök. 

4. K’ñwanade ‘ndikpöñ idiök, 
Mfiak nduk k’uwem idiök; 
Tutu Öböñ mi ödöhö 
“Duk di, Ami ndi usuñ.” 

5. Sese, ’medi, Eyeneröñ 
Mbök, da mi nte ‘ndide; 
Ndi ye me idiökñkpö mi, 
Nyom ima Fo ndibö. 

6. Nyebuk ’nö menamidiök, 
Ami mokut Andinyaña; 
Nyewut iyip ufak Fo, 
Nte, “Sese usuñ Öböñ.” 

Amen. 

      """
    },
    {
      "id": 558,
      "title": "ANAMIDIÖK YE IKWÖ",
      // "audio":"",
      "body": """
      KEY F 3/4 

{:s,|m .m :-:m |m .m :-:m |s :s :s 
|m :-} 

Sop Solo:

1. ANAMIDIÖK ’koyo ke mbubreyo, 
Andidomo enye ke osuk esese, 
Eñwan eti y’idiök odu 
k’esit esie, 
K’ ufök akam enye okop ikwö. 

Körös: 4/6 
pp Jesus Ufan mi k’ ukpöñ 
Yak mi ntiene Fi. 

2. Enye ada okop edinem uyo, 
Enye eti ini akamade Öböñ 
Be di mi, andidomo ’suk 
okot enye 
Edi enye afiak okop ikwö 

Körös: 4/6 
Kini mbufut uwem, 
Y’oyobio esöñd’ eti 

3. Andidiök daha, ñkedi ofn fo 
Kemi metien’ Öböñ 
ñkopde k’ikwö, 
O, Öböñ nte ami idiök owo 
Nyekut uböhö k’nditiene Fi? 

Körös: 4/6 
‘Nyeneke uñwam efen 
Ke miböhöke Afo 


4. Medi O Öböñ, 
Mbök fen m’idiök mi, nyuñ 

Körös: 4/6 
“Bö ukpöñ mi k’ akpatre” 

Amen. 
      """
    },
    {
      "id": 559,
      "title": "ERIYET MI",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|d: d .r lm :m .f |s :L .s lm :-|s 
:f .m lr :-|f :m .r ld :-} 

1. ÖBÖÑ oto k’ iyip Eyeneröñ, 
Emeyet mi, emeyet mi, 
Möbö eriyet ke m’idiökñkpö mi, 
Eriyet Fo, eriyet Fo! 
M’idiökñkpö mi k’edem 
enyene but, 
Koro ami möfiök ndudue mi, 
Mebere k’uñwöñö Fo O Öböñ, 
K’eriyet mi! K’eriyet mi! 

2. Ke kpukpru eyikhe efukde mi, 
Emeyet mi, emeyet mi, 
Ke kpukpru ‘ndik ikpe ebetde mi 
Emeyet mi, emeyet mi, 
Jesus, okposuk ami memfiökke 
Ami monyime ke mbuötidem, 
Ndida k’ ikö ye mfön Fo, man 
Ekpeyet mi, ekpeyet mi. 

3. Ke m’ekikere ye se etiñde, 
Emeyet mi, emeyet mi, 
Ndik k’eritiñ, k’ ikwö ye k’ akam, 
Emeyet mi, emeyet mi, 
Öböñ k’ ima Fo nö mi odudu, 
Man m’owo efiök ete ‘ndi Okuo, 
Ke idomo, ikwö mi eyedi, 
Emeyet mi, emeyet mi. 

Amen. 
      """
    },
    {
      "id": 560,
      "title": "IKWÖ BAPTISM",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:m |m :m lf:m |m :-lr :d |d :L ls 
:f |m :-l-:f |s :d' ld' :t |t : -lL :s 
|f :s lm :d |r : -l-} 

1. K’ MBEN udi Fo, Jesus, 
Nyin ida ke spirit, 
Ke ata idaresit, 
Ndinam uyo Fo 
Idara k’mbuötidem, 
Ke usuñ ima Fo, 
Otode k’ukut mkpa 
Osim uböñ k’ enyöñ. 

2. Öböñ Jesus, imeti 
Ini ‘ndutukhö Fo, 
Oto k’ima Fo ye nyin 
Afo okut ukut, 
Okonyime ndikpa 
Man nyin ikpöböhö, 
Ke ntak nyin ebat Fi 
K’otu mekpa mkpa. 

3. Öböñ Afo emeset, 
Ukut Fo emebe, 
Okokut ukut idiök 
Odu uwem kemi, 
“Ibuot ufök Abasi” 
Akan mkpa ye hell, 
Nyin imebuana y’Afo, 
Andikan ke mkpa. 

4. Nyin ibukhö k’mkpa Fo, 
Idi Okuo k’mkpa, 
Inyuñ iset ye Afo, 
Man iduk ke uböñ, 
Amafak nyin k’iyip Fo, 
Akan satan y’ idiök, 
Idi isen mi k’isöñ, 
Idu uwem k’ Öböñ. 

Amen. 
      """
    },
    {
      "id": 561,
      "title": "KE UDEM INYAÑ",
      // "audio":"",
      "body": """
      KEY Db 6/4  

{:s|s :m :L ls :m :d' |t :-:-l-:-:f 
|f :r :s lf :r :L |s :-:-l-:-} 

1. EMEFEN kpukpru 
m’idiökñkpö mi (emefen), 
Esit mi enyene emem 
(emem), 
Abasi ke mböm Esie (Esie), 
Anyaña k’ odudu Esie. 

Körös: 
“Afo eyebuk m’ukwañkpö 
mö k’udem inyañ” 
Edi uyo Öböñ emekem ye ami, 
Mbufut okpokoñ onyuñ 
amia k’esuk, 
Mö emesop k’udem, 
isimke mi aba, 
Abasi okobuk mö ada 
ukpökhöre 
Ke udem, ke udem inyañ. 

2. Mö baba itimekere 
(emem nyin) 
Akwa emem ke ukpöñ mi 
(ukpöñ mi), 
Oto k’ odudu erifen (emi) 
Abasi önö edidiöñ. 

3. M’ukwañkpö ’mi 
ekebukde (ebukde), 
Mbufut idisioho mö (’sioho) 
Koro Enye amade mi (eti), 
Eyenyuñ ekpem’ ukpöñ mi. 

Amen. 
      """
    },
    {
      "id": 562,
      "title": "MBONEKÖÑ CHRIST EDEMERE ",
      // "audio":"",
      "body": """
      KEY E 4/4

{:s|s : m .f ls :L |s :-l-:s | L .d ' 
:t .L ls :f|m :-:-} 

1. IKÖT Öböñ edi, 
Esine ‘ñkpö eköñ 
Esöñö k’odudu Öböñ 
Önöde ke Eyen. 

2. Esöñ’ eda k’ Öböñ, 
Ke odudu Esie, 
Mendibuötidem ye Jesus 
Eyedi mendikan. 

3. Eda k’uko Esie 
Esine odudu 
Ye ñkpö eköñ ekemde, 
Kpa eke Abasi. 

4. Man ‘ñkpö eköñ öfön, 
Kama ke ukpeme 
Suk saña ye Ada usuñ 
Nyuñ kpeme ke akam. 

5. Jesus ’kakpa ’nö fi 
Ima Esie okpon, 
Nim ke akpaniko, Anie 
Edisio fi k’ Enye? 

6. Ke enamde ema 
K’eñwan okurede, 
Ke edade ye Christ ikpöñ, 
Eyebö anyanya. 

Amen. 

      """
    },
    {
      "id": 563,
      "title": "DI KE IDIM MÖÑ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{|s:m .,f ls :m .,r|d :-ls, :|d :t, 
.,d lr :f.,m |r :-l-: } 

1. DI ye m’idiök fo k’ idim möñ 
Di y’mbiomo ukut fo, 
Buk mö ke esit möñ oro 
Do eyekut uböhö! 

Körös 
Feghe böhö, kubiat ini, 
Kuwot ukpöñ fo k’ndibiat ini 
Jesus k’ebet ndinyaña, 
Mböm k’ebet fi kemi! 

2. Di kpasuk ntre k’idimmöñ 
Jesus ke ebebet fi, 
Idiök fo ekpebiet crimson 
Eyenam afia ‘nte snow! 

3. Edi ikö Andinyaña 
Mö ekabared’ esit 
Enimde ke akpanikö, 
Eyebö ‘nsinsi uwem. 

4. Di, bö erikök k’idimmöñ 
Kpañ utöñ k’uyo emem, 
K’anamidiök önyöñd’ edi 
Yak me enjel edara! 

Amen. 
      """
    },
    {
      "id": 564,
      "title": "O MKPÖSÖÑ IKÖ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:d |r :m lf :s |m :-l -:s |L :d' lf 
:m |r :-:-} 

1. O MKPÖSÖÑ ikö! 
Ebö k’mbuötidem, 
Emi Christ öködöhöde, 
“Emana obufa.” 

2. “Emana obufa” 
Abasi ödöhö, 
Erinam efen iduhe 
Inö menamidiök. 

3. “Emana obufa!” 
Uwem odu ke Christ, 
Owo ikwe k’ebiet efen, 
Christ ikpöñ anyaña. 

4. “Emana obufa” 
Man eduk ke heven 
Mö emi efakde k’iyip 
Enyene ndiduk. 

Amen. 
      """
    },
    {
      "id": 565,
      "title": "CHRIST IDIM MÖÑ ",
      // "audio":"",
      "body": """
      KEY Bb 6/8 

{|s, :-.fe, :s, lm :-.r :d |d :m, :L, ls, 
:-:-|f, :-.m, :f, lt, :-.L, :s, |s, :r, :f, 
lm :-:-} 

1. EMENIM idim eriyet idiök 
Man eyet mebuñ’ esit esana, 
Jesus eti Andisio ke idiök, 
Yet mi ndien nyesana 
‘ñkan snow. 

Körös: 
Sana ’kan snow..., sana 
’kan snow… 
Yet mi, Andifak,... 
Ndien nyesana ‘ñkan snow 
(ñkan snow). 

2. Okposuk ‘ñwanade ndisana 
Kpukpru utom mi edi ikpikpu, 
Jesus, Andisio k’ukut y’isuñi, 
Yet mi ndien nyesana 
‘ñkan snow. 

3. Mebeñe, yet ekiker’ esit mi, 
Nam uñwana Fo ayama ’nö mi, 
Ke kpukpru usen, man nsuk idem, 
Yet mi, ndien nyesana 
‘ñkan snow. 

4. Ndisana ñkan snow ke nyom, 
Christ idimmöñ emi ke mbeñe, 
Jesus, Andinyaña, metiene Fi, 
Yet mi ndien nyesana ‘ñkan 
snow. 

Amen. 
      """
    },
    {
      "id": 566,
      "title": "NDIYAK NNÖ ABASI ",
      // "audio":"",
      "body": """
      
KEY E 6/8

{:s|s :-:s lL :-:L|r :-:-lm :-:m 
|d :-:d lf :-:m |r:-:-l-:-} 

1. ÖBÖÑ mayak idem mi, 
Spirit y’ukpöñ ’nö Fi 
Ke edisana uwa 
Da k’Okuo k’nsinsi.
 
Körös: 
Kpukpru ke itie uwa 
Ke mbebet ikañ 
rit. Ami k’mbet, k’mbet 
Ke mbebet ikañ. 

2. O Jesus Andinyaña 
Mebere k’enyiñ Fo, 
Moyom erinyaña Fo 
Mada k’uñwöñö Fo. 

3. Yak ikañ ösukhöre 
Oduk ke ukpöñ mi 
Ata uwa ’nöde Fi 
Eyet mi nsana. 

4. Ndi Okuo O Jesus, 
Eyetde k’iyip Fo, 
Nim mi idiöñö Spirit 
Ke uwa Abasi. 

Amen. 
      """
    },
    {
      "id": 567,
      "title": "IDARA ODU KE HEVEN",
      // "audio":"",
      "body": """
            KEY G 4/4

{:s, .s, |d:d lm :d.d |r:r lL,:d .d 
|t, :-lf :-lm :-:-} 

1. K’ UKPÖÑ kiet akabarede esit, 
Idara odu, 
K’eyetde esit asana k’iyip, 
Idara k’enyöñ. 

Körös: :\$: 
Ke afia ebekpo, do mö 
k’ekwö, 
K’ekwö, k’ekwö, 
Mbon enyöñ edian uyo 
ekwö, 
K’anamidiök afiakde. DS 

2. Ke anamidiök ökpöñde idiök, 
Idara odu, 
Kini andiyo önyöñde edi, 
Idara k’ enyöñ. 

3. K’efakde ukpöñ esio ke ufn, 
Idara odu, 
K’mfön Öböñ, ’nan okutde usuñ, 
Idara k’ enyöñ. 


4. K’ibede iduk k’inua otop pearl, 
Idara odu, 
K’isobode mendima ebetde, 
Idara k’ enyöñ. 

Amen. 
      """
    },
    {
      "id": 568,
      "title": "IDARA KE HEVEN",
      // "audio":"",
      "body": """

KEY Eb 4/4 

{:m .,f |s :-l-:L .,t |d' :-l-:m .,f 
|s :-l-:f |m :-l-} 

1. IDARA … idara… 
Odu ke heven 
SA:Anamidiök edi, 
Ömökpöñ usuñ idiök 
K’mbuñesit esie 
Mbon heven edara. 

Körös: 
Kpukpru ebuana k’idara 
Enjel edian uyo ekwö, 
Enyuñ edöhö ete, 
“Idara mi ke heven, 
Idara, idara odu mfin.” 

2. Idara … idara… 
Odu ke heven 
SA:Enye öduö k’edöñ, 
Ñkpököbi ebuñö 
K’esit enye okop, 
K’ Öböñ omonyim’ enye. 

3. Idara … idara… 
Odu ke heven 
SA:Ubiak iduhe do, 
K’isimde akpa Jasper, 
Idara odu do, 
Önö andikpöñ idiök. 

4. Idara … idara… 
Odu ke heven 
SA: O fiak tiene Öböñ, 
Di man efen enö fi, 
Esit fo eyefiök, 
Idara obio heven. 

Amen. 

      """
    },
    {
      "id": 569,
      "title": "MENYENE HEVEN MI",
      // "audio":"",
      "body": """
   
KEY Bb 4/4 

{:s, |d :d lL, :m,|s, :s, l -:s,|d :d lL, 
:r |r :-l-} 

1. K’ÑKUTDE Andinyaña 
Öföfön ye ami, 
Ökpukhöre uwem mi, 
Menyene heven mi. 

Körös: 
Menyene heven mi (k’isöñ), 
Menyene heven mi (k’isöñ) 
Ukpöñ mi ke ofiop, 
Ke ima enyiñ Jesus, koro 
Menyene heven mi (k’isöñ), 
Menyene heven mi (k’isöñ) 
Jesus omoduñ k’esit mi, 
Menyene heven mi. 

2. Nnyenek’ ubiomikpe 
Suk idara y’ emem 
Mayak idem mi ofri 
Man mkpakan idiök. 

3. Nsaña k’usuñ Öböñ 
Ñkwe afaneköñ, 
Öböñ öyukh’ ukpöñ mi 
Ke idara heven 

4. S’idude k’ererimbot, 
Idöñke mi aba 
Ami ’nyeneke ndik 
Sia menyene heven. 

Amen.    
      """
    },
    {
      "id": 570,
      "title": "IDARA OMODU",
      // "audio":"",
      "body": """
      KEY C 4/4
      
{:s .,L |m :s ls :s .,d' |L :r' lr' :d' .,d' 
|t :-l-.L :s .,L |s :-l-} 

1. KE anamidiök önyöñde edi, 
Idara… omokpon; 
Etiene Öböñ k’usuñ Abasi, 
Idara …. omokpon. 

Körös: 
Idara k’otu me enjel, 
Mö eyöhö ye (inem) ikwö, 
K’anamidiök ökpöñd’ idiök 
Edi k’iso Edidem. 

2. K’ukpöñ kiet amanade obufa, 
Idara …. omokpon; 
Ke asañade k’ikö Abasi, 
Idara … omokpon. 

3. Ke owo isañ osimde iduñ, 
Idara …. omokpon, 
K’oduñde k’ifure k’edem oko, 
Idara …. omokpon. 

Amen. 
      """
    },
    {
      "id": 571,
      "title": "EBIET ODU ÖNÖ MI",
      // "audio":"",
      "body": """
      KEY Bb 6/4 

{:s, .,f,|m, :s, :d lm :-:r .,d |r :d :L, ld 
:-:L, .,L,|s, :m, :s, ld :r :m |r :-:-l:-} 


1. NTE inuen osopd’ usuñ 
ökpöñ iduñ 
Ñkoyo ñkpöñ Fi, Öböñ mi; 
Uyo ima Fo okot mi, ntiene Fi, 
Möfiök ebiet odu önö mi! 

Körös: 
Ebiet odu, Öböñ önö! 
Ebiet omodu önö mi! 
Nte ibiom moduk k’ima Fo, 
Mokut uböhö ke Afo (k’Afo). 

2. Ami mokut emem, 
menyene uböhö, 
Moduñ ke ikpanesit Öböñ; 
Ami madara ke uñwana iso Fo, 
Idara Fo eyedi okim. 

3. Möbö emem ke Jesus 
mfegheke ‘ndik, 
Okposuk mbufut okoñde; 
Ami ‘nyese eñyöñ, nsinsi usiere 
Ukpöñ mi eyekwö k’idara. 

Amen. 
      """
    },
    {
      "id": 572,
      "title": "DA MI NTE NDIDE",
      // "audio":"",
      "body": """
      KEY E 6/8

{:d |m :-:m lm:-:f |m :-:r ld ::
m |s :-:s ls :-:L |s :-:r lm :-} 

1. JESUS meseme ñkot Fi, 
Ke ’munyañake nyekpa; 
O, da erinyaña Fo di 
Nyuñ da mi ke Okuo! 

Körös: 
O da mi ke Okuo! 
O da mi ke Okuo! 
Afo akakpa önö mi 
Nyuñ da mi ke Okuo! 

2. ’Nyenek’ uñwam, mödiök 
eti, 
Ököduök iyip önö mi, 
Eyenam s’ifönde y’ami, 
Nyuñ da mi ke Okuo! 

3. Nnyeneke mbeñidem, 
Me uñwöñö mabiat kpukpru, 
Da enyiñ Fo nyuñ nyaña mi, 
O da mi ke Okuo! 

4. Sese mi k’ ukot Fo, Öböñ, 
Nam mi nte Afo ’made, 
Töñö utom Fo nyuñ nam ma, 
O da mi ke Okuo! 

Amen. 
      """
    },
    {
      "id": 573,
      "title": "MAYAK KPUKPRU KE ITIE UWA",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:d.r |m:Lls :f|m:-lm.m|s 
:f .m lr :r |d :-:-} 

1. SPIRIT, ukpöñ, y’ idem mi 
Jesus mayak ’nö Fi 
Ke edisana uwa 
Okuomö k’ nsinsi 
Mayak mö k’ itie uwa 
Öböñ ndi Okuo, 
O ñwam mbuötidem mi, 
Nam mi ndi Okuo. 

2. O Jesus Andinyaña, 
Mebere k’ enyiñ Fo, 
Moyom erinyaña Fo 
Mada k’ uñwöñö Fo; 
Mbak ikpökhidem mi 
Nam öwörö k’ufn 
Man edi ñkpö utom 
Ke ubök Fo, Öböñ.
 
3. Mayak idem mi k’ emem, 
Ndidu ’nö Öböñ, 
Kemi Eyen Abasi, 
Nam ekut Fi k’ami, 
Ndi Okuo O Jesus 
Eyetde k’ iyip Fo, 
Emekde ke Spirit Fo 
Ke uwa Abasi. 

Amen.
      """
    },
    {
      "id": 574,
      "title": "SUAN ETOP HEAVEN",
      // "audio":"",
      "body": """
      
KEY Bb 4/4

{|s, .,s, :L, .,s, lm :d |r .,d :L, .,t, ld 
:-|t, .,d :r .,d |m .,r :f .,t, |d :-l-: } 

1. ESUAN etop heven, idara odu 
Ke ukpöñ kiet ökpöñde idiök; 
Sese! Ete esie okut enye ko, 
Adar’ enye k’önyöñde edi. 

Körös: 
Uböñ! Uböñ me enjel k’ekwö 
Uböñ! Uböñ, me harp ke ebre, 
Udim ek’ efakde ‘nte akwa 
inyañ 
K’ekwö ikwö me andiböhö. 

2. Esuan etop heven, idara odu 
Emenam emem ye andiyo 
Ih! Esio enye efep k’usuñ 
idiök 
Enye ’nyuñ amana obufa. 

3. Esuan etop heven, usörö odu, 
M’enjel ekwö, edar’ ökpösöñ 
Buk eti ‘mbuk emi ke 
kpukpru ebiet 
Ukpöñ kiet amana obufa. 

Amen. 
      """
    },
    {
      "id": 575,
      "title": "O UFAN, ÖMÖTÖÑÖ ISAÑ UWEM ",
      // "audio":"",
      "body": """
      KEY Bb 6/4 

{:s, ls, m, :f,|s, :L, :t, |d :-:-ls, ::
s, |L, :t, :d lr :d :L,|s,:-} 

1. O UFAN ömötöñö isañ 
Dahada k’ uko ye iwuk, 
Tim se usuñ emi emekde, 
Tiñ enyin kpeme, nyen’
ifiök 
Ti usuñ iba ke iso fo, 
Mbiba eyom esit fo, 
Kiet ada fi aka k’ nsobo 
Eken aka ke idara. 

Körös: 
Öböñ añwam fi ese banner, 
K’utom Esie kpukpru ebiet, 
Ufan mi k’idomo edide, 
Bö mfön, nyuñ döhö “Baba.” 

2. O kukop unö andidomo, 
Me se mö efen enamde, 
Söñöda ke odudu Öböñ 
Buötidem nam akpanikö, 
Idomo anam fi ösöñö, 
K’añwanade k’enyiñ Öböñ 
Ke idak andida fi usuñ 
Da item ke ikö Esie. 

3. O ufan Andinyaña k’ okot! 
Kpeme mbak ufen idiök 
Kubiöñö uyo Eti Spirit, 
Etiñde suñ suñ k’ esit fo, 
Öböñ okot fi k’ utom Esie, 
Ndikpon’ Enye kpukpr’ usen 
Man abuana ke uböñ Esie, 
Miditreke k’ nsi nsi. 

Amen. 
      """
    },
    {
      "id": 576,
      "title": "UBÖK EKEKÖÑDE ENÖ MI ",
      // "audio":"",
      "body": """
     KEY D 6/4 

{:s|s :m :f ls :L :m |s :-:fe lf ::
f |f :r :m lf :t :L |L :-:fe ls :-:} 

1. UBÖK emi ekeköñde k’ eto, 
Ke ima Enye ekedi k’ isöñ, 
K’okot me ukpöñ eke eyode, 
Owut mö usuñ akade heven. 

Körös: 
SA: Ubök Andinyaña mokut 
T: Ubök Andifak 
y’Andinyaña mokut 
B: Ubök Andinyaña mokut, mokut 
SA: Ubök ekeköñd’ enö mi 
T: Ubök emi ekeköñde enö mi 
B: Ubök emi ekeköñd’ enö mi 
All: Eyeda mi osim iduñ ke ima 
SB: Ubök ekeköñd’ enö mi 
AT: Ubök emi ekeköñde enö mi 

2. Ami mokut kemi ye möñeyet, 
Ubök oro ke ediwak isua 
Ke önö ukpöñ mi idorenyin, 
Erituk Esie önö erikök. 

3. Ubök emi akanamde k’eset 
Utibe ‘ñkpö öfönde akan gold, 
Önö ekömurua ufak k’ idiök 
Ye erinyaña ke enyiñ Jesus. 

4. Adan’ ini Enye otukde mi, 
Anam esit mi enyene emem, 
Ami ndifegheke oyobio, 
Didie ke nditak k’ ubök Esie? 

5. Nyeda k’iso Esie k’ erikan 
Ye Jesus k’ ediye obio Esie, 
Nyekut iso Esie k’ akpatre 
Ñköm ubök ekeköñde ’nö mi. 

Amen.  
      """
    },
    {
      "id": 577,
      "title": "NTE MÖ EKEKÖÑDE ÖBÖÑ MI ",
      // "audio":"",
      "body": """
      KEY F 4/2

{:s, .s,|d :d .r lm .m :r .r |d :-l:
d.r|m:m.fls .s:f.m|r:-l-:} 

1. K’ NSEDE nt’ eköñde 
Öböñ mi (k’eto) 
K’ nsede nt’ eköñde Öböñ mi 
O ndien anam mi nnyekidem 
Nnyek, (anam nnyek) idem, 
K’ nsede nt’ eköñde Öböñ mi. 

2. K’ nsede nt’ emiad’ Enye 
k’iso (k’iso) 
K’ nsede nt’ emiad’ Enye k’iso 
O ndien anam mi nnyekidem 
Nnyek, (anam nnyek) idem 
K’ nsede nt’ emiad’ Enye k’iso. 

3. K’ nsede Enye y’ anyanya 
‘ñkukim (k’ibuot) 
K’ nsede Enye y’ anyanya ‘ñkukim, 
O ndien anam mi nnyekidem, 
Nnyek, (anam nnyek) idem, 
K’ nsede Enye y’ anyanya ‘ñkukim. 

4. K’ nsede nt’ eköñd’ Enye 
k’eto (k’eto), 
K’ nsede nt’ eköñd’ Enye k’eto, 
O ndien anam mi nnyekidem, 
Nnyek, (anam nnyek) idem, 
K’nsede nt’ eköñd’ Enye k’eto. 

5. K’nsede nt’ ekimde ‘ñkañ 
Esie (Esie) 
K’ nsede nt’ ekimde ñkañ Esie 
O ndien anam mi nnyekidem 
Nnyek, (anam nnyek) idem, 
K’ nsede nt’ ekimde ñkañ Esie. 

6. K’nsede nt’ enimd’ Enye 
k’udi (k’udi), 
K’nsede nt’ enimd’ Enye k’udi, 
O ndien anam mi nnyekidem 
Nnyek, (anam nnyek) idem, 
K’nsede nt’ enimd’ Enye k’udi 

7. K’ nsede Enye esetde k’ udi 
(k’udi), 
K’ nsede Enye esetde k’ udi 
O ndien anam mi nnyekidem 
Nnyek, (anam nnyek) idem, 
K’ nsede Enye esetde k’ udi. 

8. Ke nsede eyetde m’idiök mi 
(kpukpru), 
Ke nsede eyetde m’idiök mi, 
O ndien anam mi nnyekidem 
Nnyek, (anam nnyek) idem, 
Ke nsede eyetde m’idiök mi. 

Amen. 

      """
    },
    {
      "id": 578,
      "title": "JESUS, ÖBÖÑ, NDI OKUO ",
      // "audio":"",
      "body": """
      KEY D 3/4

{| s :m :f |s :-:d'| r' :d' :t |d' :-:|
L :d' :L |s:-:m | s :f :m |r:-:-} 

1. JESUS, Öböñ ‘ndi Okuo, 
Edepde ke iyip Fo, 
Ököduökde önö mi, 
O! Eti Eyeneröñ 
Da esit mi ke Okuo, 
Nam ndu ’nö Fi ikpöñ. 

2. Mböñ ekekara mi, 
Kemi nda k’ enyiñ Fo, 
Ndikop uyo ’nö Fi 
Edi akam nyin k’ usen, 
’Nyene anie ke enyöñ 
Baba, ’fen inemke mi. 

3. Jesus Öböñ, ke ‘ñkpono 
Okposuk ndi mem-mem 
Söñö mi ubök y’ esit, 
Man ñkpanam uyo Fo, 
Tat mi enyin man ñkut, 
Me utom ödöñde mi. 

4. Jesus, Öböñ, m’eyeda, 
“Akwa owo isön Fo?” 
Ke amade, ’monyime 
Nam mi ñkop ikot Fo, 
Jesus ñwam mi kpukpr’ ini, 
Man ‘ndaresit k’utom Fo. 

Amen. 
      """
    },
    {
      "id": 579,
      "title": "KWÖ BAÑA EYENERÖÑ ",
      // "audio":"",
      "body": """
      KEY Db 4/4

{|s:L .,t|d' :m lL:s.,f |m :-lf 
:m .d' lt :r' .r' |d' :fe ls :f } 

1. KWÖ Eyeneröñ k’ima Esie 
Osiod’ ererimbot ke ekim 
Ndien me enjel k’esese 
Heven öyöhö y’ itoro. 

Körös: 
SA: Kwö, O kwö y’idara, kwö, 
    O kwö, 
TB: Kwö O kwö, kwö, O kwö, 
    kwö y’idara 
    Kwö (O kwö y’idara) 
SA: Da itoro nö Enye, 
TB: Da itoro nö Enye, da itoro 
    nö Enye, 
SA: Kwö O kwö y’ idara, kwö 
    O kwö (y’ idara)
TB: Kwö, O kwö, kwö, O kwö 
    y’idara, kwö, O kwö 
All: Hallelujah ke kpukpru 
     Ekutde ‘mfön Jesus ekwö. 

2. Kwö Eyeneröñ akakpade, 
Ekebukde Enye ’fiak eset 
Man osio nyin k’idiök 
y’mkpa, 
Enye ama akan udi. 

3. Kwö Eyeneröñ k’ iyip Esie, 
Akafakde me anamidiök, 
Eyet me ukwañkpö efep, 
Emi esit okobiomde. 

4. Kwö Eyeneröñ, Enye ’yeda 
K’obot Zion ke obio uböñ, 
Mö eyetde k’ iyip ekwö 
Jesus, Oku ye Edidem. 

5. Kwö Eyeneröñ kpukpru owo, 
Ebuanade ke uböñ Esie; 
Kwö Eyeneröñ ke enyöñ 
Menditabi ima Esie. 

Amen. 
      """
    },
    {
      "id": 580,
      "title": "KINI ÑKUTDE IYIP ",
      // "audio":"",
      "body": """
      KEY C 4/4

{|s:s.,L ls :m |L:L.,d'ls:-|s :f .,s 
lf :r |L :s.,f lm:-} 

1. CHRIST Andifak nyin 
akpa ke cross 
Önö kpukpru nyin m’idiök owo 
Yet ukpöñ ke iyip Eyeneröñ 
Ami ‘nyebe, ‘nyebe mbufo. 

Körös: 
Kini… ‘ñkutd’ iyip… 
Kini… ‘ñkutd’ iyip… 
Kini… ‘ñkutd’ iyip… 
Nyebe, nyebe mbufo 
(mbufo). 

2. Idiök owo! Jesus anyaña 
Eyenam ke uñwöñö Esie 
Yere k’idimmöñ eyetde idiök 
Ami ‘nyebe, ‘nyebe mbufo. 

3. Ikpe ’yedi, kpukpru eyebö 
Nte utom mö ekedide 
Dibe ke iyip eyetde idiök 
Ami ‘nyebe, ‘nyebe mbufo. 

4. O akwa mböm y’ akwa ima! 
O mfönido y’ akpanikö! 
Du ke emem k’ idak iyip Esie 
Ami ‘nyebe, ‘nyebe mbufo. 

Amen. 
      """
    },
    {
      "id": 581,
      "title": "ENYE ODUÑ KE ENYÖÑ ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s, .,d |m :-.r |d .,t, :d .L, |s, :-ls, 
:m |r .r : -.de lr .m :f.,m |r :-l-} 

Soprano solo: 

1. CHRIST Andifak ökpöñ uböñ heven 
Ndisio m’owo ke but y’ idiök 
Akayara anyanya ñkukim, 
Akada itie mi ke Calvary. 

Körös: 
Oduñ k’ enyöñ, oduñ k’enyöñ 
Amakan idiökñkpö y’ntöi esie, 
Oduñ k’enyöñ, oduñ k’enyöñ 
Usen kiet ’yefiak edi. 

2. Enye ekeset ökpöñ mfukhö, 
’Diduñ k’obio idara y’ima, 
Eyefiak edi k’usen idara 
Man atañ nditö Esie önyöñ,
 
3. Tiene Jesus, akpa mba 
k’idiök 
Enye ömönö ufak k’ idiök, 
Mödo se Jesus nyuñ bö 
eridiöñ, 
Uwem do, idara ye erikan. 

Amen. 
      """
    },
    {
      "id": 582,
      "title": "IYIP JESUS AMAFAK MI ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{.m :m .f |s :-.d' lt .r' :d' .L |s :-l:
m |s :-.mlr .m :f .s |m :-l-} 

1. EMEM Christ omodu ke esit mi, 
Anam ñkut iso Ete, 
Spirit mi öyöhö y’ima Öböñ, 
Iyip Jesus amafak mi. 

Körös: 
Iyip Jesus amafak mi 
(afak mi), 
Ekpe isön man mböhö 
(man mböhö), 
Eyefiök ke kpukpru ebiet 
(ih, ke kpukpru ebiet), 
Iyip Jesus amafak mi. 

2. Ofuk usuñ mi y’uñwana heven, 
Onyuñ anam ñkut usuñ, 
Osio mi k’ufn satan y’idiökñkpö, 
Iyip Jesus amafak mi. 

3. Önö mfön ndikan idomo 
Ndinyuñ ’ñwana ye m’asua, 
Ke esit mi onim ebiet iduñ, 
Odu y’ami ke kpukpr’ ebiet. 

4. Ke uwem mi k’isöñ okurede, 
Nyekut Enye ke enyöñ, 
Itoro Esie nyekwö k’esuk, 
Nyuñ ’buk Jesus amafak mi. 

Amen. 
      """
    },
    {
      "id": 583,
      "title": "ENYE EMESET MFIN",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|d:t, ld .d : |m :r lm .m: |r:-.m lr 
:d .L, |s, :-:} 

ENYE eset! Hallelujah! 
Enye eset mfin! 
Omobuñ ufök ‘ñkpököbi, 
Akwa erikan! 
Me enjel ekedöhö, 
Iduhe mi, di, dise! 
Enye emeset, eset, eset, 
Enye ka ke Galilee! 
Hallelujah! Hallelujah! 

Hallelujah! 
Di, di se! 
Hallelujah! Hallelujah! 
Enye amakan k’uböñ (fine) 
O mkpa y’udi erikan fo, 

erikan fo? 
Enye odu ke möñ? 
O mkpa ye udi erikan fo, 

erikan fo 
Odu ke möñ? Kor’ (DC) 
      """
    },
    {
      "id": 584,
      "title": "AFIA AKAN SNOW",
      // "audio":"",
      "body": """
      
KEY Ab 4/4

{.s, |s, :s, .s, |s, :s, .s,|L, .d :t, .L, 
|s, :-.s,|s, :L, .t, ld :d .r |m :r .d |r 
:-. } 

1. “MERÖÑ ekufeghe” Öböñ ödöhö, 
Ete ömönö ‘mbufo obio uböñ, 
Ekudekhe öföñ ‘mbufo ke idiök, 
M’eröñ mi enyene ‘ndifia 
ñkan snow. 

Körös: :\$: 
SA: ‘Ndi…fia ‘ñkan snow, 
TB: ‘Ndifia ñkan snow, 
Andinyaña ’mi moyom 
SA: ‘Ndi…fia ‘ñkan snow, 
TB: ‘Ndifia ñkan snow, ami 
moyom, 
SA: ‘Ndi…fia ‘ñkan snow, 
TB: ‘Ndifia ñkan snow, 
Andinyaña ’mi moyom, 
SB: ‘Ndi…fia ‘ñkan snow, 
AT: ‘Ndifia ñkan snow, ‘ndifia 
ñkan snow. 
DS. pp 

2. Ndifia ‘ñkan snow ye ‘nte 
eti usen, 
Christ edi idim emi eyetd’ 
idiök, 
Anamidiök, nö Enye mbiomo fo, 
Dibuana ye anañ ye efurenañ. 

3. Eröñ okosopde ke usuñ 
idiök, 
Ekpemeröñ akada enye edi, 
K’ekwö ko k’idara ke 
enyöñ obot, 
M’ufan edi, mokut eröñ 
’kosopde. 

4. Tre eseme, nyuñ kan me 
idomo fo, 
Jesus Andikpeme, y’ebietuböhö, 
Ikpöñke fi eyenete ye ufan, 
Ama fi, anyaña tutu k’nsinsi. 

Amen. 

      """
    },
    {
      "id": 585,
      "title": "ODUDU KE IYIP JESUS ",
      // "audio":"",
      "body": """
      
KEY G 4/4

{:s, |d :d .,r lm :-.r |d :L, ls, :m .,f 
|s :sls:m |r:-l-} 

1. MÖFIÖK, odudu k’ iyip Jesus, 
Eyet m’idiök mi efep; 
Möfiök idara do k’utom Esie, 
Emen ekim mi efep. 

Körös: 
Odudu omodu, utibe odudu, 
Odudu omodu eke eyetde mi, 
Odudu k’ iyip Jesus. 

2. Möfiök odudu k’iyip Jesus, 
Möböhö ubiomikpe; 
K’ntienede Enye ye 
m’idiök mi, 
Iyip Esie eyet mi. 

3. Möfiök, odudu k’iyip Jesus, 
Kpukpru edi mbufa; 
Oto k’ edisana iyip Esie, 
Eyet kpukpru ndek mi. 

Amen. 
      """
    },
    {
      "id": 586,
      "title": "UTIBE MFÖN",
      // "audio":"",
      "body": """
      KEY Bb 6/8

{|s, :m, :f, ls, :d :r |m :-:-ld :-:-|d 
:t, :d lr :d :L,|s, :-:-l-:-:-} 

1. NYEKWÖ Enye k’ nsinsi, 
Ke akwa ima Esie, 
Oto ke ebekpo uböñ, 
Ada mfön ösök nyin. 

Körös: 
SA: Utibe mfön, akpa önö mi, 
TB: Akwa mfön, akwa mfön, 
akpa ’nö mi, akpa ’nö mi 

SA: O utibe uböñ ke 
mbuötidem (’mi mokut); 
T: Utibe uböñ, utibe uböñ, 
kemi mokut, kemi mokut 
B: Utibe uböñ, utibe uböñ, 
ih ami mokut 

SA: Berede usuñ man heven ekut 
TB: Bered’ usuñ, bered’ usuñ 
heven ekut, heven ekut 

SA: Oto k’idim Calv’ry mfön 
osim mi, 
TB: Oto ke idim, idim Calvary, 
mfön osim mi. 

2. O utibe Andinyaña! 
Ata utibe mfön! 
Akpa ke obot Calvary, 
Okut ukut k’ntak mi. 

3. K’idar’ erinyaña k’isöñ 
Ukut odu ‘ndibuana 
Heven k’ ebet ndibö nyin 
Iyenyuñ iyukhö do. 

Amen. 

      """
    },
    {
      "id": 587,
      "title": "CROSS ORO ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, :d .,r lm :-.f |m :r ld :-|s, 
:d .,r lm :-.d |r :m lr :-} 

1. K’ EDISANA cross Calvary, 
Mokut ufak ima Jesus, 
Ayakde uwem k’ntak mi 
Ke eto oro. 

Körös: 
Ke cross, ke cross, do ke 
cross Calvary 
Jesus akpa ndifak mi, 
Idorenyin efen ye uñwam 
iduhe, 
Iböhöke k’iyip Esie. 

2. Ima ayama k’usuñ nyin 
Ke Jesus okobiomde cross, 
Okposuk usuñ ösöñde, 
Nyetien’ Enye. 

3. Ñwam mi ndibiom cross 
k’usen, 
Okposuk usuñ okimde, 
Ke ekim, mokut uñwana, 
K’ ima Calvary. 

Amen. 
      """
    },
    {
      "id": 588,
      "title": "EBIET EMI EKOTDE CALVARY ",
      // "audio":"",
      "body": """
      KEY G 3/4

{:d.,d|d:s, :d .,r |m:-:s.,s|L :s 
:m .,d |r :-} 

1. EYENERÖÑ Abasi 
Edi Afo akakpa, 
Öduök iyip k’ntak mi 
Ko ke obot Calvary.
 
Körös: 
Ebiet ekotde Calvary, 
Ebiet ekotde Calvary, 
Mokut ima afakde 
K’ ebiet oro, Calvary. 

2. Iyip ököfiörö do, 
Akwa idim eridiöñ, 
Öböñ, yet m’idiök mi fep, 
Di, diyet mi ke ukpöñ. 

3. Okobiom akwa ubiak, 
Kpa anyanya ñkukim, 
Di, O di anamidiök, 
Christ akakpa k’ibuot nyin. 

4. O! Edi, Enye ’yebö 
Mendinim k’akpanikö; 
Erinyaña ke mfön 
Odu k’obot Calvary. 

Amen. 
      """
    },
    {
      "id": 589,
      "title": "ÖNÖ MI ",
      // "audio":"",
      "body": """
      KEY Bb 6/8 

{|s, :s, :s, ld :-:r |m :-:-ld:-:|
d :t, :L, ld :-:L,|s, :-:-l-:-:-} 

1. EBERED’ usuñ heven 
Enö ererimbot, 
Kiet ökpöñ uböñ Esie 
’Nö fi y’ ami. 

Körös: 
’Nö fi... ’nö mi, ’nö fi... 
y’ami 
Christ ökpöñ uböñ heven 
’nö fi… y’ami, 
’Nö fi... ’nö mi, ’nö fi... 
y’ami 
Nsinsi uwem k’Enye ’nö 
fi… y’ami. 

2. Ökökpöñ uböñ Esie, 
Edi mi ke isöñ, 
Abuana ke ukut nyin, 
’Nö fi y’ami 

3. Öyö esuene k’ime, 
Ebe ‘mbufut inyañ, 
Akan ke idiök ini, 
’Nö fi y’ami. 

4. Ke Cross okutde ukut, 
Idara nyin okpon, 
K’ifiökde odu uwem, 
’Nö fi y’ ami. 

Amen. 
      """
    },
    {
      "id": 590,
      "title": "AKANI CROSS ORO ",
      // "audio":"",
      "body": """
      KEY Bb 6/8  

{:m, .m, |s, :-.fe, :L, |s, :-:s, .s, 
|L, :-.se, :t, lL, :-:L, .L, |t, :-.L, :s, 
lf,:s,:f,|m, :-:-l-:-} 

1. K’OBOT k’anyan ebiet, 
akani cross odu, 
Idiöñö but ye ndutukhö; 
Ami ’ma cross oro ata 
Öböñ ima 
Akpade önö ererimbot. 

Körös: 
Nyema (ata) akani cross oro, 
Tutu mbö utip erikan, 
Nyeyire ke (ata) akani cross, 
Eyekabar’ edi anyanya. 

2. O! oruk cross oro, mö esede 
k’ ndek 
Emenyene uyai önö mi, 
Koro Eyeneröñ ökpöñd’ itie 
uböñ, 
Obiom cross aka ke 
Calvary. 

3. Akani cross oro öyöhö ye 
iyip, 
Mokut utibe uyai esie, 
Koro ke cross oro, ke Jesus 
akakpa 
Man efen mi, anam nsana. 

4. Kabañ’ akani cross ami 
’yesuk ibuot 
Nyeyö esuene k’ idara 
Usen kiet eyekot mi k’iduñ 
ke enyöñ, 
Ndibuana k’nsinsi uböñ. 

Amen. 
      """
    },
    {
      "id": 591,
      "title": "DA MI KA CALVARY",
      // "audio":"",
      "body": """
      KEY D 4/4  

{|m :m.,rld :d|f :flm :-|m:r .,d 
ls :m|r :-l-} 

1. ÖBÖÑ uwem mokpono Fi 
Uböñ enyene Fi, 
Man ‘ñkufre ukut Fo k’ eto 
Da mi ka Calvary. 

Körös: 
Man ñkufre Gethsemane, 
Ñkufre ndutukhö Fo; 
Ñkufre ima Fo y’ ami, 
Da mi ka Calvary. 

2. Wut mi udi akanade, 
Mfukhö okodu, 
Me enjel ekekpeme Fi 
K’odude ke udi. 

3. Nte Mary akanamde 
Yak nnö Fi enö; 
Kemi wut mi ukpök udi, 
Da mi ka Calvary.
 
4. Öböñ, nam nnyime 
‘ndibiom 
Cross mi k’ usen ’nö Fi, 
Mbuana ke mfukhö Fo 
Okobiomde ’nö mi. 

Amen. 
      """
    },
    {
      "id": 592,
      "title": "JESUS AMA AKA KE CALVARY ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:m, .,f, |s, :fe, .,L, ls, :m |m :-.r ld 
:m, .,L, |s, :L, lt, :r |d :-l-} 

1. JESUS ama aka ke Calvary, 
Aka ö…nö mi, 
Ke but ye esuene, Enye ’kedi, 
(Aka do) ke cross önö mi. 

Körös: 
Jesus ama aka ke Calvary, 
Usuñ öyöhöde y’ iyip, 
Man mkpöfiök mfön y’ima 
Esie, 
Jesus akaka önö mi. 

2. Jesus ama aka ke Calvary, 
Aka ö…nö mi, 
Obiom ukut y’anyanya ñkukim, 
(Ekekpe) isön önö mi. 

3. Jesus ama aka ke Calvary, 
Aka ö…nö mi, 
Do, Enye okosio isop idiök 
(Jesus a--) kakpa önö mi. 

Amen. 

      """
    },
    {
      "id": 593,
      "title": "IDIM EMI EYETDE",
      // "audio":"",
      "body": """
      KEY Bb 6/4

{lm, .f, |s, :fe, :s, ld :r :m |r :-:-|L, 
:-:d |t, :L, :s, lf, :t, :L,|s, :-:-l-:-} 

1. ’MOSIM ke idim emi eyetde 
’Nyuñ nduk k’akpa-möñ uwem, 
Iyip eduökde k’obot Calvary 
Anam ukpöñ afia ’kan snow. 

Körös: 
Ih anam mfia ñkan snow 
(’kan snow) 
Iyip eyet mi motim ’fiök 
(möfiök) 
Sia eyet m’idiök mi, Christ 
odu k’esit mi, 
Iyip eyet mfia ’kan snow 
(’kan snow) 

2. ’Mosim ke idim emi eyetde, 
Ke Christ ami mokut emem, 
K’mfön Esie emefen m’idiök mi, 
Heven ’mötöñö k’ukpöñ mi. 

3. ’Mosim ke idim emi eyetde, 
Uböñ öyöhö ukpöñ mi 
Alleluia esit mi adara 
Iyip Esie anam ‘nsana. 

Amen. 
      """
    },
    {
      "id": 594,
      "title": "BUÑ UYO UWEM ",
      // "audio":"",
      "body": """
      KEY Eb 2/2

{|m :d.m |s .L:s |m :d.m|r :-|m 
:d.m|s .L :s .L|t :L |s:-} 

1. BUÑ nö mi O Öböñ, uyo-uwem, 
Nte okobuñde k’ mben inyañ 
Oto ke ikö Fo, ñkoyom Fi, 
Ukpöñ mi oyom Fi, Ikö Uwem. 

2. Buñ nö mi O Öböñ, uyouwem, 
Man mkpedip ikö Fo k’esit mi, 
Öböñ nam mi ñkpöñ obukidem 
Man Afo ada mi kpukpru usuñ. 

3. Nam mfiök ikö Fo man 
ñkpokut 
M’item Fo ewetde do enö mi, 
Man k’eti ebuana, nduk y’Afo, 
Man ekut eti uwem Fo k’ami. 

4. Diöñ ikö Fo Öböñ, nö mi, 
nö mi, 
Nt’ öködiöñd’ uyo ke Galilee, 
Kpukpr’ ufn eyetre, nyeböhö 
Ndien ami nyedu ke emem. 

Amen. 

      """
    },
    {
      "id": 595,
      "title": "IDIM MÖÑ ODU",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:s .,f |m :dld:m|r .,d :r .m lr 
:m .f |s:d'lm :r |d :-l-} 

1. IYIP oro öwöröde 
Emmanuel ke ñkañ, 
M’anamidiök eyere do 
Esana ke ukpöñ. 

Körös: 4/3 
Hallelujah! Christ Öböñ; 
Akakpa ke Calvary, 
Hallelujah! Hallelujah! 
Hallelujah! Amen. 

2. Inö oro akadara 
K’ufön iyip oro, 
Ami, nte inö oro, 
Nyuñ yet m’idiök mi fep. 

3. Eyeneröñ, et’ iyip Fo 
Enyene odudu, 
Tutu ufök Abasi Fo 
Eböhö ke idiök. 

4. Töñö nte ñkutd’ iyip 
Otode k’ñkañ Fo, 
Ima Fo edi ikwö mi 
Tutu osim mkpa. 

Amen. 
      """
    },
    {
      "id": 596,
      "title": "IDIM-MÖÑ EYETDE ",
      // "audio":"",
      "body": """
      KEY Eb 3/2

{:d|m .s :m :d |L, .d :d :L|L .s :s 
:m |r :-} 

1. ’MOKUT idim-möñ eyetde, 
Idim oro okpon, 
Jesus ökpösöñ Andifak, 
Owut unan k’ñkañ. 

Körös: 
’Mokut idim-möñ eyetde. 
’Moduk, O Enye eyet mi, 
Toro Öböñ, Enye ’yet mi, 
Enye ’yet mi, ih eyet mi. 

2. ’Mokut obufa emana, 
Iyip k’etiñ ikö! 
Owot udöñ obukidem, 
K’idim-möñ eyetde. 

3. Mötöñ’ isañ usuñ heven, 
Mesin ererimbot, 
K’öföñ y’esit esanade, 
Christ oduñ k’esit mi. 

4. Mfön emedi ke isöñ, 
K’iyip anamd’ utom; 
Jesus ikpöñ k’ami mfiök, 
Emi ekewotde. 

Amen. 
      """
    },
    {
      "id": 597,
      "title": "ESIT FO ENEN YE ÖBÖÑ? ",
      // "audio":"",
      "body": """
      KEY Bb 6/4

{|s, :s, :s, lm, :f, :s,|L, :L, :L, ld :-:|
m :m :dlr :-:m|d :-:-l-:-: } 

1. M’IDIÖK udöñ fo ömököñ ke cross? 
M’esit fo ’nen y’ Öböñ? 
Me ‘ñkpö etak fi ke ntak Öböñ? 
M’esit fo ’nen y’ Öböñ? 

Körös: 
M’esit fo ’nen y’ Öböñ, 
Eyet k’iyip Esie, 
Anam asana, ösukhör’ idem, 
Enen k’iso Öböñ? 


2. Amakan idiökñkpö y’obukidem? 
M’esit fo ’nen y’ Öböñ? 
Amakan kpukpru idiök k’uwem fo? 
M’esit fo ’nen y’ Öböñ? 

3. Ömöböhö ubiomikpe k’idiök? 
M’esit fo ’nen y’ Öböñ? 
Nte Jesus akara k’ esit fo? 
M’esit fo ’nen y’ Öböñ? 

4. Amayak Jesus akar’ uwem fo? 
M’esit fo ’nen y’ Öböñ? 
Amayak Jesus oduñ k’esit fo? 
M’esit fo ’nen y’ Öböñ? 

5. Amasaña ke uñwana heven? 
M’esit fo ’nen y’ Öböñ? 
M’ ukpöñ fo esine afia öföñ? 
M’esit fo ’nen y’ Öböñ? 

Amen. 
      """
    },
    {
      "id": 598,
      "title": "ETORO ENYIÑ ESIE!",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|m :m .,r |d :d .,t, |L, :d ls, :-|m 
:m .,m|s:s.,m |d:m |r :-} 

1. KE cross, Andinyaña 
’kakpade, 
K’nduö nyom eriyet k’idiök; 
Do k’ eyet esit mi ke iyip, 
Tor’ enyiñ Esie! 

Körös: 
Tor’ enyiñ Esie! 
Tor’ enyiñ Esie! 
Do k’eyet esit mi ke iyip, 
Tor’ enyiñ Esie! 

2. Anyaña mi k’ utibe usuñ! 
Jesus otim oduñ k’ esit mi; 
Enye onyime mi do ke cross 
Tor’ enyiñ Esie! 

3. O idim emi eyetd’ idiök, 
Ami madara koro moduk, 
Jesus anyaña, ’nam nsana, 
Tor’ enyiñ Esie! 

4. Di ke idim öfönde eti, 
Yak ukpöñ fo nö Andinyaña; 
Be duk kemi ndien, nyuñ 
fön ma 
Tor’ enyiñ Esie!

 Amen. 

      """
    },
    {
      "id": 599,
      "title": "IYIP FO IKPÖÑ",
      // "audio":"",
      "body": """
      KEY G 4/4

{|s :slm:s |r :-.m lf :-|m .m 
:r .d lr :L,|t, :-ld :-} 

1. JESUS se mi k’ukot Fo, 
Iyip Fo ikpöñ afak mi; 
Öyöhö unana mi, 
Iyip Fo ikpöñ afak mi. 

Körös: 
Baba! ‘ndi ubök ubök, 
Ndi k’ mbuötidem; 
Ke cross Fo, Eyeneröñ! 
Iyip Fo ikpöñ afak mi. 

2. Se esit mi öfukhö, 
Iyip Fo ikpöñ afak mi; 
Mufenke, mkpöñke Fi, 
Iyip Fo ikpöñ afak mi. 

3. Ke ekim ini edem, 
Iyip Fo ikpöñ afak mi; 
Kemi k’ mböm da mi duk, 
Iyip Fo ikpöñ afak mi. 

4. Da mi ntre, kop akam, 
Iyip Fo ikpöñ afak mi; 
Usuñ efen iduhe, 
Iyip Fo ikpöñ afak mi. 

5. Utom ’namde ifönke, 
Iyip Fo ikpöñ afak mi; 
Iyetke mi ke idiök, 
Iyip Fo ikpöñ afak mi. 

6. Mayak idem mi ’nö Fi, 
Iyip Fo ikpöñ afak mi; 
Sio mi ke ubiomikpe, 
Iyip Fo ikpöñ afak mi. 

Amen. 
      """
    },
    {
      "id": 600,
      "title": "ITÖÑ IDISATKE ABA ",
      // "audio":"",
      "body": """
      
KEY D 4/4

{:d|m :-.m lf :-.f|s :L lr :s |d .r 
:m .f lm :r |d –l-} 

1. ISÖÑ odu enemd’ eti 
Iduñ nti owo; 
Ayama ke nsi nsi, 
Ubiak iduhe do. 

Körös: 
Nyin ke ita uyo uwem 
Nyin ke iñwöñ idim-uwem 
Jesus ödöhö, mendiñwöñ; 
Itöñ idisatke aba, 
Itöñ idisatke? 
Baba, idisatke! 
Itöñ idisatke? 
Baba, idisatke! 
Jesus ödöhö, mendiñwöñ, 
Itöñ idisatke aba. 

2. Idim esie idisatke, 
M’ iköñ ikeñeke; 
Mkpa abakhare enye 
Ye iduñ nyin emi. 

3. Nte ndik nyin ekeme 
Ndibin mfukhö; 
Man ikut Canaan imade 
K’enyin mbuötidem?

4. Iyedök k' obot 'nte Moses 
Ise isöñ oro?
Mbufut Jordan, me mkpa 
Ikpanke nyin 'ndiduk.

Amen. 
      """
    },
    {
      "id": 601,
      "title": "AFO ÖKÖNÖ MI UWEM FO",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{:s|d:r lm :f ls:-l-:m lL:s lf :s 
|m :-l-} 

1. AFO ’könö uwem, 
Onyuñ oduök iyip 
Man ami mböhö 
’Nyuñ ‘ñwörö ke mkpa, 
Ökönö mi uwem 
Nso k’ami ’nö Fi? 

2. Akabiat ini Fo 
Ke ’memidem y’ukut 
Man k’nsinsi ini, 
Mkpöfiök uböñ Fo, 
Akabiat ini Fo, 
Nso k’mbiat ’nö Fi?
 
3. Obio uñwan’ Ete, 
Uyam’ ebekpo Fo; 
’Kayak edi k’isöñ, 
K’ mfukhö ye ukut, 
Akayak önö mi, 
Nso k’nyak ’nö Fi? 

4. Okobiom ukut mi, 
Akak inua ‘ndibuk; 
Ke ökpösöñ ubiak, 
Man osio mi ke hell, 
Okobiom önö mi; 
Mbiom nso ’nö Fi? 

5. Akada ösök mi, 
Oto k’iduñ k’ enyöñ: 
Erinyaña k’mfön 
Erifen ye ima; 
Ökönö mi enö, 
Nso k’ami ’nö Fi? 

6. O yak ’nö uwem mi, 
Mbiat m’ini ’nö Fi; 
Ukut mi eyetre, 
Idara eyekpon, 
Mayak kpukpru ’nö Fi, 
Öböñ y’Edidem mi. 

Amen. 

      """
    },
    {
      "id": 602,
      "title": "MKPA UFAK ",
      // "audio":"",
      "body": """
      KEY Ab 3/4

{:s, .d |m :-:m|d :r :m |f :-:m|d 
:-:m |m :-:r|d :-:t,|d :-} 

1. OMOKOP abaña mbuk cross, 
Do Jesus akakpa; 
Ekpe isön Fo k’iyip Esie,
Öwöröde ke ‘ñkañ? 

Körös: 
Enye akakpa ndifak fi, 
Akakpa ndifak fi; 
O utib’ ima k’ntak fo, 
Akakpa ndifak fi! 

2. Omokop nte eyatd’ Enye 
Anyanya ñkukim? 
Enye ete “Dahado nö mö 
Koro mö mifiökke.” 

3. Omokop nte anyañade 
Owo inö ke cross? 
Emi ekebeñede ete, 
“Öböñ ima, ti mi” 

4. Omokop k’Enye ’sede 
heven, 
Ödöhö “Okure” 
Ömödöhö Öböñ mököm Fi 
K’önöde mi uwem Fo? 

Amen. 
      """
    },
    {
      "id": 603,
      "title": "EKEKÖÑ KE CROSS ",
      // "audio":"",
      "body": """
      
KEY F 4/4

{:m .,m|m:d.,r lm.m :-.m |f :d .,r 
lm :m .,m |m:r.,d lt, :d .,r ld :-l-} 

Duet: Sop/Ten 

1. KIET odu okonyime 
‘ndikpa k’ibuot mi, 
Man ukpöñ mi okpodu uwem; 
Enye okonyime ndika 
k’usuñ cross, 
Man efen kpukpru 
m’idiökñkpö mi. 

Körös: 
Emeköñ mö ke cross 
pp Emeköñ mö ke cross, 
O Enye okonyime ‘ndibiom; 
K’ndutukhö y’ubiak Jesus 
aka ke cross 
Okobiom me idiökñkpö mi do. 

2. Enye enyene ima y’ime önö mi, 
K’eyetde m’idiökñkpö mi efep; 
Möfiök möböhö, ubiomikpe iduhe, 
Emeköñ m’idiökñkpö mi ke cross. 

3. ‘Nyeyire Andifak mi, 
‘ndikpöñke Enye, 
Nyedara ke kpukpru usen; 
Nyekwö ke uyo mi ye ke esit mi, 
Kor’ emende m’idiök mi efep. 

Amen. 
      """
    },
    {
      "id": 604,
      "title": "NIM MI KE IDAK IYIP ",
      // "audio":"",
      "body": """
      KEY Bb 6/8

{|s, :-:s, ls, :m, :s, |d :-:d ld :-:|
s, :-:mlm :r :d |r :-:-|-:-:-} 

1. AFO ama afak mi 
Jesus Christ Öböñ, 
Ami ‘mbuötidem y’Afo, 
Nim mi k’idak iyip. 

Körös: 
Öböñ nim mi k’idak iyip 
Otode Calvary 
Yak ndi Okuo Ete 
Nim mi k’idak iyip. 

2. Ñkötöñ’ edöñ ke cross 
Ye m’idiökñkpö mi, 
Do k’erinyañ’ osim mi 
Nyesuk ndu do. 

3. Ke ebiet ñkakpade 
’Nö obukidem 
Yak enam mi nsana 
Oto ke iyip Fo. 

4. Memen esit mi y’uyo 
Nditor’ Öböñ, 
Emi afakd’ ukpöñ mi 
K’eti iyip Esie. 

Amen. 
      """
    },
    {
      "id": 605,
      "title": "METI CALVARY ",
      // "audio":"",
      "body": """
      KEY Eb 3/4

1. AFO ama afak mi 
{:m .m . m|m:d:s.,s|s:-:L L L 
|s :m :r .,m|r :-} 

1. ‘NYETIEN’ Enye ke 
kpukpr’ usuñ, 
Koro mekpep ‘ndibuöt idem; 
Meti Enye ’kakpa ’nö mi, 
Öduök iyip ke Calvary. 

Körös: 
Eyekpeme k’okoneyo, 
Ekpeme ke uwemeyo; 
Jesus edi eti Ufan, 
Enye ’kakpa ke Calvary. 

2. Menem esit k’mbet Esie, 
’Mama Enye ’da mi usuñ, 
Menem esit k’uduak Esie, 
Oto k’iyip ke Calvary. 

3. Kaka iso, kufeghe ‘ndik, 
Christ Andinyaña ekpere; 
Modorenyin ‘ndikut Enye, 
Ufan oro ke Calvary. 

Amen. 
      """
    },
    {
      "id": 606,
      "title": "USUÑ CROSS ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:s, .,L, |d :d ld :r .,d |m :m .,f lm 
:-.r |d :t, .,d lf :L,|s, :-l-} 

1. K’USUÑ cross k’ndisaña 
nsim iduñ, 
Usuñ efen iduhe, 
Ndikwe inua-otop uñwana, 
Kini ñkpöñde usuñ cross. 

Körös: 
Usuñ cross osim k’iduñ 
(k’iduñ), 
Usuñ cross osim k’iduñ 
(k’iduñ), 
Enem ndifiök k’ñkade iso 
Usuñ cross osim k’iduñ. 

2. Nyebe k’usuñ esimede 
iyip, 
Usuñ Christ ekebede, 
Nyedök nsim ebiet ukpöñ mi 
Odude k’iduñ y’Abasi. 

3. Mafiak edem ke usuñ 
ererimbot, 
Ndisañake aba, 
Koro Öböñ mi k’okot ete “Di” 
K’iduñ Enye ’betde k’usuñ. 

Amen. 
      """
    },
    {
      "id": 607,
      "title": "HALLELUJAH, UTIBE ANDINYAÑA ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{|s :s ls :m|d' :d' lt :-|L :L ls :d' |t 
:L ls :-} 

1.p “OWO ukut” O enyiñ, 
mf Enöd’ Eyen Abasi; 
f Andifak m’idiök owo, 
ff Hallelujah! Andinyaña. 

2.p Obiom but ye esuene,
mf Enye ada itie mi; 
f Efen mi k’iyip Esie, 
ff Hallelujah! Andinyaña. 

3.p Ke m’idiök ikanamde,
mf Eyeneröñ Abasi 
f Osio isop idiök nyin, 
ff Hallelujah! Andinyaña. 

4.p K’eriköñö ke eto,
mf Enye ete, “okure” 
f Ada uböñ ko k’enyöñ, 
ff Hallelujah! Andinyaña. 

5.p K’edidide ke uböñ,
mf Ndida iköt Esie; 
f Iyekwö ikwö emi, 
ff “Hallelujah! Andinyaña!” 

Amen. 

      """
    },
    {
      "id": 608,
      "title": "IYIP EYENERÖÑ",
      // "audio":"",
      "body": """
      KEY D 4/4

{|m .,m :m .,re |m :m .,f |s :-l:
s .,m |r :r lm :f .,m |r :-l-} 

1. ÖFÖFÖN odu ke iyip 
Eduökde ’nö m’anamidiök, 
Eyen Abasi ömöfön, 
Inia Esie ömökök nyin, 
Ñkoyo ‘ñkpöñ otu Esie, 
Önö mi ubiak ye ufen, 
Yet mi k’iyip Eyeneröñ 
Ndien nyefia ñkan snow. 

Körös: 
S: ‘Nye… fia ñkan snow, 
ATB: ‘Nyefia ñkan snow 
‘nyefia ñkan snow, 

S: ‘Nye… fia ñkan snow, 
ATB: ‘Nyefia ñkan snow 
‘nyefia ñkan snow, 

S: Yet mi k’iyip Eyeneröñ, 
ATB: Yet mi k’iyip, ke iyip 
Eyeneröñ 
All: Ndien nyefia nkañ snow 
(‘ñkan snow). 

2. Ayar’ anyanya ñkukim, 
Amakan cross k’idem Esie, 
Enye k’obiom uwak ukut, 
Ikobiomke ke ikpikpu; 
Nam mi nsim k’idim oro 
Man eyet me idiökñkpö mi; 
Yet mi k’iyip Eyeneröñ 
Ndien nyefia ñkan snow. 

3. Ete, ñkoyo ñkpöñ Fi, 
Esit mi okosop usuñ, 
Me idiök mi ebiet iduot, 
Möñ ikemeke ndiyet, 
Jesus k’ iyip otode Fi, 
Mbere ke uñwöñö Fo; 
Nam nsana ke iyip Fo, 
Ndien nyefia ñkan snow. 

Amen. 

      """
    },
    {
      "id": 609,
      "title": "KINI NSEDE UTIBE CROSS ",
      // "audio":"",
      "body": """
      KEY Eb 3/4

{:d|m :f :r |d:-:m ls :-:L|s:-:s 
|d' :-:t |L:-:s |s :f :m |m :r } 

1. KINI ‘nsede utibe cross 
Emi eköñd’ Öböñ uböñ, 
Inyene mi mesin kpukpru 
Ye ofri iseri uwem. 

2. Öböñ kuyak mi mbure 
Iböhöke ke mkpa Christ 
M’ inem ñkpö isöñ emi 
Mayak k’idak iyip Esie.
 
3. Iyip k’ibuot y’ ubök 
y’ ukot 
Ewut mböm y’ ima Esie, 
M’oruk ukut y’ ima emi 
Edot anyanya ñkukim? 

4. Ami ‘ñkpönö enyöñ 
y’ isöñ 
Mö oro ikpekemke kem 
Ke utibe ima Öböñ, 
Oyom ukpöñ ye uwem mi. 

Amen. 
      """
    },
    {
      "id": 610,
      "title": "IDIM MMÖÑ ODU ",
      // "audio":"",
      "body": """
      KEY C 4/4

{:d .m |s :-.L ls:d'|d':-.L ls :d .m 
|s :-.s l L.s : m .d |r :-l-} 

1. IYIP oro öwöröde 
Immanuel ke ñkañ, 
M’anamidiök eyere do 
Esana ke ukpöñ, 
Esana ke ukpöñ, 
Esana ke ukpöñ, 
M’anamidiök eyere do 
Esana ke ukpöñ. 

2. Inö oro akadara 
K’ufön iyip oro, 
Ami nte inö oro 
Yet me idiök mi fep, 
Yet me idiök mi fep, 
Yet me idiök mi fep, 
Ami nte inö oro 
Yet me idiök mi fep. 

3. Kini ñkutde iyip Fo 
Öwöröde k’ ñkañ, 
Ima Fo eyed’ ikwö mi 
Tutu osim mkpa, 
Tutu osim mkpa, 
Tutu osim mkpa, 
Ima Fo eyed’ ikwö mi 
Tutu osim mkpa. 

4. K’ata eti inem uyo 
‘Nyekwö odudu Fo, 
Edi k’ini ’memidem mi 
Nyekwö ke udi, 
p Nyekwö ke udi, 
Nyekwö ke udi, 
Edi k’ini ’memidem mi 
p Nyekwö ke udi. 

Amen. 

      """
    },
    {
      "id": 611,
      "title": "MKPERE CROSS ",
      // "audio":"",
      "body": """
      KEY F 6/8  

{|m :-:f lm:-:r |d :-:L, lL,:-|s, 
:-:dld :-:m |m :-:-lr :-:} 

1. JESUS nam mkpere cross, 
Do ke idim odu 
Edade ekök kpukpru 
Oto k’ obot Calv’ry. 

Körös: 
Do ke cross, do ke cross, 
Ke uböñ mi odu 
Tutu ukpöñ mi okut, 
Ifure ko k’ enyöñ. 

2. Do ke cross y’ mbuñ’ esit 
Ñkut mböm y’ ima 
Uñwana usenubök 
Ayama önö mi. 

3. Do ke cross, Eyeneröñ 
Owut mi idiöñö 
Añwam mi k’usen k’usen; 
Mfut Esie ’fuk mi. 

4. Do ke cross, nyekpeme, 
Nyuñ mbuötidem mi, 
Tutu ‘nsim eti utit, 
Ko ke edem akpa. 

Amen. 
      """
    },
    {
      "id": 612,
      "title": "IBUOT EKEYATDE ANYANYA ",
      // "audio":"",
      "body": """
      KEY A 4/4

{:s, |d:rlt, :s,|d :r lm:rlm:d lm 
:fe|s :-l-} 

1. IBUOT ekeyatde ‘ñkukim, 
Eyat uböñ kemi 
Anyanya uböñ ke ibuot, 
Enye ’mi akande. 

2. Edikoñ ebiet ke heven 
Edi Esie k’unen, 
Öböñ mböñ ye Edidem 
Akara k’ uñwana. 

3. Mö edude k’enyöñ y’ isöñ 
Ekop idaresit; 
K’Enye anamde mö efiök 
Ima y’enyiñ Esie. 

4. Mö ekutde ukut ye but 
Ebö kpukpru mfön, 
Enyene ‘nsi nsi enyiñ 
Ye idara heven. 

5. Ekut ukut y’ Öböñ k’ isöñ; 
Eduñ y’Enye k’enyöñ; 
Edara ke mö efiökde 
Uyöh’ ima Esie. 

6. Cross emi Christ akakpade 
Edi uwem owo 
Önö eti idorenyin 
Ye ‘nsi nsi uwem. 

Amen. 

      """
    },
    {
      "id": 613,
      "title": "ODUDU ODU KE IYIP ",
      // "audio":"",
      "body": """
      
KEY Bb 4/4

{|s, :s, .s, ls, :s, .s,|L, :L, .L, ls,:-.d 
lt, :r .,de lr :-ld :m .,re lm :-} 

1. M’EYEBÖHÖ mbiomo idiök fo? 
Odudu omodu ke iyip 
Afo omoyom ndikan idiök? 
Utibe odudu k’ iyip. 

Körös: 
SA: Odudu utibe odudu, 
TB: Odudu, odudu, utib’ odudu 
All: K’ iyip E-yeneröñ; 
SA: Odudu utibe odudu, 
TB: Odudu, odudu, utib’ odudu 
All: Ke et’ iyip Eyeneröñ. 

2. Me ’yeböhö udöñ ye iseri? 
Odudu omodu ke iyip 
Di man eyet fi ke möñ Calvary. 
Utibe odudu k’ iyip. 

3. Afo ’moyom ndifia ñkan snow? 
Odudu omodu ke iyip; 
Kpukpru ntöi idiök esop k’ Enye; 
Utibe odudu k’ iyip. 

4. Me ’yenam utom Jesus Edidem? 
Odudu omodu ke iyip 
Eyetoro Enye k’ usen k’ usen? 
Utibe odudu k’ iyip. 

Amen. 

      """
    },
    {
      "id": 614,
      "title": "KE NDITI MI ",
      // "audio":"",
      "body": """
      
KEY D 3/4 

{:d.r |m :r :d |s :-:f .m |r :d:r|m 
:-} 

1. IMÖKÖM Fi Öböñ, 
k’ utibe mfön Fo 
Ekpemede nyin tutu mfin, 
Imeteñe akwa ima y’mfön Fo 
Ke idude k’iso Fo, nyin 
ituak ibuot. 

Körös: 
Nte ekemde k’eti item Fo 
mfin, 
Nyin ibuana k’okpokoro Fo, 
Imeti m’ ikö oro eketiñde, 
“Enam emi nditi Mi” 
(ti Mi). 

2. Nyin idotke ndita 
ikpökhidem Fo, 
Me nditañ ñkeñe esie, 
K’ ntak Fo nyin ibuana 
k’ okpokoro, 
Ke mböm emi Afo önöde kpukpru. 

3. Yak idemere k’ odudu ye 
k’ idara, 
Ke se ikutde k’ mbuöitdem, 
Iwut mkpa Öböñ tutu Enye ’di, 
Ndien nyin ibuana ke akwa 
uböñ Fo. 

Amen. 
      """
    },
    {
      "id": 615,
      "title": "JESUS IDARESIT UKPÖÑ ",
      // "audio":"",
      "body": """
      KEY G 3/4

{:s, | m :r :d| f :m :r | d :r :t, |d ::
t, |d:-:r | m :f :m| m :r :d |r :-} 

1. JESUS, idaresit ukpöñ, 
Idim uwem, uñwan’ owo, 
Ikpöñ ñkpö isöñ emi 
Itiene Fi ubök ubök. 

2. Akpanikö Fo adada, 
Anyaña mö ekotde Fi, 
Öfön ye me andiyom Fi, 
Ekem ye mö ekutde Fi.
 
3. Itabi Fi Uyo-uwem, 
Emi edid’ udia ukpöñ 
Nyin iñwöñ Fi idim uwem 
Man Afo ’yukhö ukpöñ 
nyin. 

4. Ukpöñ nyin ke eyire Fi 
K’ebiet y’utom ekededi 
Nyin idara ke mfön Fo, 
Ediöñ nyin ke ibuötd’ 
idem. 

5. O Jesus diduñ ye nyin mi, 
Nam nyin idu eti uwem 
Bin ekim idiök ñkpö fep, 
Man uñwana Fo ayama. 

Amen. 
      """
    },
    {
      "id": 616,
      "title": "NTE EMETIENE JESUS? ",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{:m, .s, |d :d ld .s, :m .s, |d :d ld 
:d.r |m :m.m lm:r .d|r :-l-} 

1. EMETIENE Jesus man 
Enye ’yet fi? 
Eyet fi k’iyip Eyeneröñ?
Ömöbuötidem k’mfön Esie kemi? 
Eyet fi k’iyip Eyeneröñ? 

Körös: 
Emeyet… fi k’ iyip… 
Ke iyip eke Eyeneröñ? 
(’yeneröñ) 
Nte öföñ fo asana nte snow 
Eyet fi k’ iyip Eyeneröñ 

2. Amasaña ofri usen ye Öböñ? 
Eyet fi k’ iyip Eyeneröñ?
Ömöbö emem do ke mkpa Esie? 
Eyet fi k’iyip Eyeneröñ? 

3. Ödö ‘ndö k’edi, öföñ fo 
asana? 
Asana k’ iyip Eyeneröñ? 
Ukpöñ fo eyeduk k’obio uñwana? 
Eyere k’ iyip Eyeneröñ? 

4. Sio öföñ edekhede ye 
idiökñkpö 
Nyuñ yere k’ iyip Eyeneröñ! 
Idim odu önö me anamidiök 
O, yere k’ iyip Eyeneröñ! 

Amen. 

      """
    },
    {
      "id": 617,
      "title": "AMI MOKOP UYO FO",
      // "audio":"",
      "body": """
      KEY Eb 3/4

{:d .m |s:-.m :r .d |d :-:d |r :-.f 
:L .s |m:-} 

1. ÖBÖÑ mokop uyo, 
Okotde mi ndi; 
Man eyet mi k’iyip oro, 
Otode Calvary. 

Körös: 
Ke ndi, Öböñ! 
Metiene Fi; 
Yet mi ke iyip oro, 
Otode Calvary. 

2. Okposuk ndiökde, 
Eyenö ukeme; 
Afo eyet mi nsana, 
Nsana ke kpukpru. 

3. Edi Jesus okot, 
K’mbuötidem y’ima; 
Ke idorenyin ye emem, 
K’isöñ ye ko k’enyöñ. 

4. Edi Jesus anam, 
Utom ke esit mi 
Adian mfön k’mfön k’ebiet 
Idiök akarade. 

5. Ödöñ iberedem, 
Önö mesukesit 
Man me uñwöñö eyöhö, 
Ke ebuötde idem 

6. Edar’ eti iyip, 
Edar’ ufak mfön; 
Edara enö Christ Öböñ, 
Odudu nyin y’uböñ. 

Amen. 
      """
    },
    {
      "id": 618,
      "title": "KPASUK IYIP ÖBÖÑ JESUS",
      // "audio":"",
      "body": """
      KEY G 4/4

{|d:d ld :r |m :s lm :-|d .d:d .rlm 
:m |r :-ld :-} 

1. NDEK mi nso iyet? 
Kpasuk iyip Öböñ Jesus 
Nso inam nsana? 
Kpasuk iyip Öböñ Jesus. 

Körös: 
Ata Eti Iyip 
Anam mfia ‘nte snow! 
Mfiökke möñ efen 
Kpasuk iyip Öböñ Jesus! 

2. Ke eriyet mi mokut -
Kpasuk iyip Öböñ Jesus! 
Ke erifen mi moyom -
Kpasuk iyip Öböñ Jesus! 

3. Ke isop idiökñkpö mi -
Kpasuk iyip Öböñ Jesus! 
Itoho k’eti utom -
Kpasuk iyip Öböñ Jesus! 

4. K’idorenyin y’emem mi -
Kpasuk iyip Öböñ Jesus! 
Ye edinen ido mi -
Kpasuk iyip Öböñ Jesus! 

Amen.
      """
    },
    {
      "id": 619,
      "title": "KE IDAK IYIP ESIE ",
      // "audio":"",
      "body": """
      KEY Db 3/4

{:s, lm:m:mlr :d :rlm:s:sls ::
s lL :se:L ld' :t :L ls:-:-l -: -} 

1. IDIDUOT akpa möñ öwörö k’eto, 
Öfiörö oto ke iyip, 
Christ anam mi mböhö ke akpa oro, 
Do k’emen m’ukwañkpö mi efep. 

Körös: 
M’idiökñkpö mi k’idak iyip, 
M’idiökñkpö mi k’idak iyip, 
Ke ndek masana, mö iduhe aba, 
Hallelujah, mö k’idak iyip. 

2. Do, Jesus okut ukut, akpa 
ke cross, 
K’ökpösöñ ubiak y’esuene, 
Owo eköñ okokim Enye ke ñkañ, 
Do, akpa uwem akasiakha. 

3. Akpa uwem oro eyeka iso 
Öfiörö k’ofri emana, 
Eyeda mi osim eti obio oro, 
Efak mi k’iyip Eyeneröñ. 

4. Ufan, di k’ akpa oro 
k’mbuötidem, 
Yak Christ anam fi asana, 
K’utibe mfön Esie afo eyedök, 
Ökwö, “Jesus amanyaña mi” 

Amen. 
      """
    },
    {
      "id": 620,
      "title": "CHRIST JESUS ENYENE ODUDU ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{.sl s,.d:d .,r lm :-.m lm.r :f .,t, 
ld :-.d lt, .r: r .r ld .m:m.mlr .t, 
:d .L, ls, :-} 

1. CHRIST enyen’ odudu, 
Odudu ndifen, 
‘Ndidemere anamidiök 
Nyuñ ‘nnö enye uwem; 
Christ enyen’ odudu, 
Tiñ ke kpukpru ebiet, 
Men ndudue fo sök Enye, 
Afo ’yekut mfön. 

Körös: 
Christ enyen’ odudu 
Otode Abasi, 
Christ enyen’ odudu, 
Esit mi onyime; 
Christ enyen’ odudu, 
Möbuötidem y’Enye, 
Christ enyen’ odudu, 
Nyekpono Enye. 

2. Christ enyen’ odudu 
‘Ndibot fi obufa 
Nyuñ ’sio esit fo ke idiök, 
Anam öfön ama; 
Christ enyen’ odudu 
Ndikpeme owo, 
Baba kiet idikemeke 
‘Ndiyip eröñ Esie. 

3. Christ enyen’ odudu 
Ndidöñ fi esit 
Ndinyuñ ’biom mbiomo fo, 
Kam yak mö nö Enye; 
Christ enyen’ odudu 
Ndinö fi emem, 
O! Buötidem fo ye Enye, 
Buötidem, kop uyo. 

4. Christ enyen’ odudu, 
Odudu ndibiat, 
Odudu ndinuak m’ asua, 
Kpa m’asua ukpöñ fo; 
Christ enyen’ odudu 
Ke usen mkpa fo, 
Önö ukpöñ fo erikan 
Y’ odudu eriset. 

Amen. 

      """
    },
    {
      "id": 621,
      "title": "YAK MÖ EKEN EKUT JESUS KE AFO ",
      // "audio":"",
      "body": """
      KEY Ab 64 8.7.8.8 – 8.8.11.8 

{:s, l m, :-:f, ls, :-:d lt, :-:L, lL, :-:L, 
ls, :-.fe :s lm :-:r lr :-:-l -} 

1. K’ ASAÑADE k’ererimbot, 
M’owo ke esese fi, 
Sana k’ofri ido uwem 
Yak ekut Jesus k’uwem fo, 

Körös: 
Yak ekut Jesus k’uwem fo 
(k’afo), 
Yak ekut Jesus k’uwem fo 
(k’afo), 
Kaka iso tiñ nyuñ nam 
akpanikö 
Yak ekut Jesus k’uwem fo. 

2. Afo edi ‘ñwed k’enyin mö, 
Ekotde kpukpru ini, 
Amanam mö ese enyöñ? 
Nte ekut Jesus k’afo? 

3. Idara edikpon didie, 
Ke iduñ edem enyöñ, 
K’ okutde m’ukpöñ omumde, 
Yak ekut Jesus k’uwem fo. 

4. Du uwem nö Christ 
kpukpr’ ini, 
Söñö nam akpanikö, 
Da mendiyo usuñ uwem, 
Yak ekut Jesus k’uwem fo. 

Amen. 
      """
    },
    {
      "id": 622,
      "title": "ÑWANA ETI EKÖÑ",
      // "audio":"",
      "body": """
      KEY G 3/2

{|m :m :m |m :-:m |r :-:d|f :-:|
m :m :m |m :-:r |r :-:d |r :-:-} 

1. ÑWANA eti eköñ y’uko, 
Christ eyedi odudu fo, 
Tim mum uwem, afo ’yekut, 
Idara y’uböñ k’nsinsi. 

2. Feghe ‘mbuba k’mfön Öböñ, 
Wuk enyin fo nyuñ se Enye, 
Usuñ uwem ana k’ iso, 
Christ edi usuñ ye utip. 

3. Kpöñ ekikere, buötidem, 
Enye ’yenö mböm Esie; 
Yire ke afo eyekut 
Ke Christ edi uwem y’ima. 

4. Kudikhe Enye ekpere, 
Enye idikpukhökere; 
Kam buötidem afo ’yekut 
Christ edi kpukpru önö fi. 

Amen. 
      """
    },
    {
      "id": 623,
      "title": " NDI OKUO KE NSI NSI ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{d:-.r lm .s :-|d':-.L ls .m :-|d 
:-.rlm.s:s .m|r:-l-} 

1. NDI Okuo ke nsinsi 
Andifak, ndi Okuo 
M’enö mi k’ itie uwa Fo, 
Ami mayak mö ’nö Fi 
Monyime k’ofri esit mi, 
‘Ndiyak idem k’utom Fo 
K’ukpono, itoro y’ uböñ 
Nyenam kini uwem. 

Körös: 
Ndi Okuo ke nsinsi 
Andiyaña ndu k’ ima Fo 
(k’ima Fo) 
Ndi Okuo ke nsinsi 
Andinyaña möbuötidem 
k’ ima Fo. 

2. Ndi Okuo ke nsinsi 
Idara ke esit mi, 
Uböhö y’ idöñesit mi, 
Afo ’di udeme mi, 
K’ mkpöñde mbiomo 
k’ edem 
Nyefeghe mbuba 
Möbuötidem k’Afo y’uko 
Man mkpöbö anyanya. 

3. Nyetiene Fi kpukpr’ usuñ 
Se ödöñde nyeka 
Ndien k’ ata iso eköñ 
Nyeñwana ye m’ usua, 
Nyuñ ’kan oto ke mböm Fo 
Ndara k’ odudu Fo, 
Nyekut Fi k’ obio uböñ 
Do k’ mbuötidem etre. 

Amen. 

      """
    },
    {
      "id": 624,
      "title": "KE NDIADE ERERIMBOT ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{|s .,s :L .s lm .,s, :d .r |d :t,} 

1. K’ NDIAD’ UWEM, nana 
Andinyaña, 
Uwem mi k’usen öfön k’nso? 
Me nyekut emem y’ndöñesit 
K’ñkpö uwem ebede efep? 
K’ ndiad’ uwem, nana 
Andinyaña, 
Oro eyekem k’ eñwan uwem? 
Ndidomo y’ inemesit emi 
Ndikutde k’ndude ye Christ. 

2. K’nyened’ ufan y’uwak 
inyene, 
Etop mi onyuñ asuanade, 
Ke idorenyin efen miduhe, 
Eke ukpöñ mi enyenede; 
K’ ndiad’ uwem, nana 
Andinyaña, 
Emi akakpade önö mi, 
M’ererimbot eyenö uböhö 
K’ntiened’ enye ye ukut mi? 

3. O ikpikp’ uwem! ke Christ 
miduhe, 
K’uföt ekim ye ukut uwem! 
Editie didie k’nsinsi ini, 
Ukut ye möñeyet eyekpon; 
Ke ’nanade Andinyaña k’uwem, 
O mkpa mi editie didie? 
Ke ’nanad’ Enye ke mfut mkpa, 
Ami nyetak k’ nsi nsi. 

4. O idara ndinyene Jesus! 
O erikök ke mbuñesit! 
Akwa idiökñkpö Enye eyefen 
Onyuñ obiom kpukpru mfukhö; 
K’ nyenede Jesus, Jesus 
ikpöñ, 
Nyomke ñkpö efen k’ isöñ, 
O, kpukpru edi okim ke 
Jesus, 
Me unana mi eyeyöhö. 

Amen. 
      """
    },
    {
      "id": 625,
      "title": "SUK IDEM SAÑA ",
      // "audio":"",
      "body": """
      
KEY G 6/4

{|s, :d:r lm :-.r :d |r :d :L, lL, :s, 
:-|s, :d:m ls, :-.f :m |m :r :d lm 
:r :-} 

1. K’ OYOMD’ Andinyaña 
oto ke heven, 
Edisaña ye afo kpukpru ini; 
Mbet odu önö fi nditiene, 
“Suk idem saña y’Abasi” 

Körös: 
Suk idem ndien Öböñ ’yekpere fi, 
Suk idem Enye eyedöñ fi esit; 
Mbon iseri isañake y’ Enye, 
Suk idem saña y’Abasi 

2. Nte Öböñ ’kodude k’ eyo oko, 
Ye me Prophet ye me öfiökñkpö owo; 
Eyedu y’afo k’asañade k’item, 
Suk idem saña y’Abasi. 

3. Kpa nte möñ odude ke obube, 
Ntre ke Jesus odu y’ nti owo; 
Duök iseri fo ke mbuñöresit, 
Suk idem saña y’Abasi. 

Amen. 

      """
    },
    {
      "id": 626,
      "title": "ÖBÖÑ, NYENAM",
      // "audio":"",
      "body": """
      
KEY G 6/8

{:s, |d:-.d:d ld :r :m |r :-:L, |L, ::
d |t, :-.d :r lr :-:f |m :-:-} 

1. ÖBÖÑ, nyenam ke ukeme mi 
K’ ndude k’uwem emi, 
K’ erikwö ye eribuk ima Fo 
Man m’ owo efen efiök. 

Körös: 
Ami ‘nyenam! Öböñ,
‘nyenam! 
Nyesio akaña mi, 
K’uwem y’mkpa ami 
‘nyenam
Akpanikö, Öböñ. 


2. O Öböñ! Nyenam utom ’nö Fi, 
Nte ubak isön mi, 
Ke ndibuk ufön Fo ye ami 
’Nö mö esopde usuñ. 

3. Öböñ utom Fo ’yenem mi esit 
Tutu ekot mi k’ enyöñ, 
Ndien ye me enjel ami ‘nyebuk 
Ima Fo k’nsi nsi. 

Amen.
      """
    },
    {
      "id": 627,
      "title": "OKUO KE UTOM",
      // "audio":"",
      "body": """
      KEY G 4/4

{:s, .s, |d :d ld .m :d .s, |L :d ls, 
:d .,r |m :-.s ls :m |r :-l-} 

1. ’MEMEK nditiene Christ 
kpukpru usen, 
Ndi Okuo ke utom, 
Okposuk mfumde k’ usuñ ñkukim, 
Ndi Okuo ke utom. 

Körös: 
Okuo k’ utom kini ödiökde, 
Okuo k’ utom kini öfönde, 
Ih! Okuo k’ utom ke ini iso, 
Okuo ke utom, Öböñ. 

2. Yak mi ñkubiat m’ini mi 
ikpikpu, 
Ndi Okuo ke utom. 
Nyenam nte Afo etemede, 
Ndi Okuo ke utom. 

3. Ndibupke Fi ntak, m’ini ewe, 
’Memek ndidu y’ Afo 
Tutu eberede m’itim uböñ do 
Ebö mi esin k’ iduñ. 

4. Ndi Okuo k’ utom tutu ke utit 
K’uwem isöñ ebede, 
‘Nyedemere ‘nduk k’ utom 
okpond’ akan 
K’ nsinsi idaresit. 

Amen. 
      """
    },
    {
      "id": 628,
      "title": "UDIM EKÖÑ ABASI UWEM ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{|s :m .,f |s :d' .,r' lm' :r' ld' :-lL 
:L .,t |d :L ls :d' lr' :-} 

1. KOP uyom k’ isañ usuñ uwem, 
Nte uyom ‘mbufut iñyañ, 
Eduö nte kini oyobio, 
Amiade k’ mben esuk. 

Körös: Sop & Alto: 
Kop ntim ikpat mbon eköñ 
Nte ekade k’ usuñ uwem 
Ekpa mba ke utom ye ke isañ 
Ke ukut ye ke eñwan 
(k’ eñwan) 
Edori enyin k’ mbuötidem 
Esaña ke usuñ mendinen 
K’isañ mö esöñö 
k’mbuötidem 
Ke ufök Abasi uwem. 

Ten & Bass: 
Ntim ikpat, ntim ikpat 
Ntim ikpat k’esaña 
Ntim ikpat k’esaña 
Ke ukut ye ke eñwan 
(k’ eñwan) 
Ntim ikpat, ntim ikpat 
Ntim ikpat k’esaña 
K’isañ mö, esöñö 
k’mbuötidem 
Ke ufök Abasi uwem. 

2. Mö eka iso k’ mbuötidem, 
Kini y’ebiet ekededi, 
K’enim ete, Ikö Abasi, 
Eyeyöh’ unana mö. 

3. Duk ke ñka eyomde fi do, 
Yire k’ enye, Öbön ’yediöñ, 
Enye ’di idorenyin m’idut 
K’utom edinen ido. 

Amen. 

      """
    },
    {
      "id": 629,
      "title": "NYEDU UWEM NNÖ ANDIFAK MI ",
      // "audio":"",
      "body": """
      KEY F 6/8 

{:d |m :re :m lf :d:r|m :-:-ld ::
d |r :r :r lr :s :f |m :-:-l-:-} 


1. NYEDU n’ Öböñ Andifak mi, 
Okutd’ ukut man mböhö, 
Nyema nyuñ nam utom Esie, 
K’ima y’ukpem’ Esie y’ami. 

Körös: 
Ndu uwem (uwem) mi ’nö 
Enye 
(Nyuñ) ’nam kpukpr’ usen 
k’uyo Esie, 
Nyedi se Öböñ oyomde, 
Ntiñ s’Enye ödöñde. 

2. Mayak kpukpru nim k’ itie 
uwa, 
Mawai ndem ke esit mi, 
Ndikpaha mba k’ utom mi, 
Ndinyuñ ñkpöñke enye. 

3. Öfön ‘ndikop uyo Andifak, 
Ndinyuñ ’nam utom Esie, 
Nyetoro Enye k’nsinsi, 
Ke ediye obio oro. 

Amen. 
      """
    },
    {
      "id": 630,
      "title": "AMI NDIYAKE FI ÖÑYÖÑ ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{:s, |L, :s, ld :r |m :-.r ld :s, |L, :d 
lf :L, |s, :-l-} 

1. AMI ‘ndiyakke Fi önyöñ 
K’afo mudiöñke mi 
Öböñ nyeñwana y’Afo 
Tutu ke usiere. 

Körös: 
Diöñ mi, Ö-böñ diöñ mi, 
Ami nyewut, m’owo ima Fo, 
Yet mi a-ran k’ utom, 
Man nnam uduak Fo. 

2. Ami ndaha ufön Fo 
’Nö idem mi ikpöñ, 
Edi nyenö mö efen, 
Man mö edu uwem. 

3. Öböñ yet mi aran k’ utom 
Man k’ ebiet ñkade, 
Nsian mendisöñö k’Afo 
Efiök eridiöñ Fo. 

4. Ami nyomke ubök Fo 
Asana mi ayak, 
Edi nam mbö edidiöñ 
Otode ke Afo. 

Amen. 

      """
    },
    {
      "id": 631,
      "title": "MÖNÖ JESUS KPUKPRU ",
      // "audio":"",
      "body": """
      KEY F 4/4

{|m :-.m lm .m :r .m |s :-lm :-|r 
:-.r |s .s :f .r |m :-l-} 

1. AMI mönö Jesus kpukpru 
Uwem, ekefakde mi, 
Ekikere, ikö y’ido 
M’ usen mi ye m’ini mi, 
Ami mönö Jesus kpukpru 
M’ usen mi ye m’ ini mi, 
Ami mönö Jesus kpukpru 
M’ usen mi ye m’ ini mi. 

2. Yak nnam s’Enye ödöñde, 
Nsaña k’usuñ Esie, 
Yak enyin mi ese Jesus 
Yak mbuk itor’ Esie, 
Ami mönö Jesus kpukpru 
Yak mbuk itor’ Esie, 
Ami mönö Jesus kpukpru 
Yak mbuk itor’ Esie.
 
3. K’enyin mi esede Jesus 
Mefre kpukpru ‘ñkpö eken, 
Spirit mi ama ndikut, 
Enye ’mi ekeköñde! 
Ami mönö Jesus kpukpru 
K’nsed’ Enye ’keköñde! 
Ami mönö Jesus kpukpru 
K’nsed’ Enye ’keköñde. 

4. O, edi ata utibe! 
Jesus, Edidem uböñ, 
K’ ima okot mi edima 
Man nduñ k’mfut Esie, 
Ami mönö Jesus kpukpru: 
K’nduñ ke mfut Esie 
Ami mönö Jesus kpukpru: 
K’nduñ ke mfut Esie. 

Amen. 
      """
    },
    {
      "id": 632,
      "title": "KE UTOM",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s, .s, |d :d ld :r |m :d l-:d .t, |L, 
:t, ld :L, |s, :-l-} 

1. KOP Öböñ ke ekpe ubök 
Utom do önö kpukpru, 
Kpañ utöñ ke ikot Spirit, 
Nö ibörö fo ntem: 

Körös: 
Ami mebeñ’ idem k’ utom 
Fo, Öböñ, 
Se mi mi, (se mi mi,) döñ 
mi (döñ mi) 
Monyime ndidi s’ Afo 
oyomde, 
Nyeka k’ebiet oyomde mi, 
Ami mebeñ’ idem k’ utom 
Fo, Öböñ, 
Se mi mi, (se mi mi,) döñ 
mi (döñ mi) 
Ke usuñ okimde, nyeka ye Afo 
Mebeñ’ idem k’ utom, Öböñ. 

2. Uyo ke okot fi kemi, 
Eyekop uyo oro? 
K’odukde fi suñ suñ k’utöñ, 
Börö Öböñ fo ntem: 

3. Ediwak ukpöñ ke etak, 
Söp, nö mö uñwam kemi, 
Sia ini k’ösösöp ebe, 
Eyedöhö Christ ete? 

Amen. 
      """
    },
    {
      "id": 633,
      "title": "AMI NYEKA KPUKPRU EBIET YE ENYE",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:m, .,f, |s, .,fe, :s, .,d lt, :L,|s, :d l :
t, .,d |r .,d :t, .,d |t, :L,|s, :-l-} 

1. AMI nsaña ye Andinyaña, 
Ada mi usuñ k’usen k’usen, 
Nyetiene Enye k’idaresit, 
Nyeka ke kpukpr’ usuñ. 

Körös: 
Ami nsaña k’usuñ ye Jesus 
Motim ntöñö eti isañ 
Nyetiene Enye k’ idaresit 
Nyenam akpanikö 
Amakem eyekot mi ke heven 
Man ndu do y’ Enye 
k’ nsinsi 
Ami mötöñö isañ ye Jesus 
Nyetiene kpukpr’ usuñ. 

2. K’ adade mi ebe itikhere, 
Enye ödöhö mi suñ, ete: 
“Di, kufeghe, Ami ndu y’ afo, 
Nyesaña ye afo.” 

3. Enem nditiene usuñ Esie, 
Okposuk usuñ afakhade, 
Edi usuñ osimd’ obio iduñ, 
Emi ñkade ‘ndiduñ.
 
4. Nyesöp nsim ke utit isañ 
Nyesöp nsim k’inem esuk, 
Do nyesaña k’efak gold 
k’uböñ, 
‘Nditoro k’nsi nsi. 

Amen. 
      """
    },
    {
      "id": 634,
      "title": "SUK SE JESUS",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:m .,f ls .,fe :s .,fe ls .,d' :t .,L ls .,L 
:s .,flm :-} 

1. NTE ömöfiök ndibe ‘ñkpö 
ke uwem andikan? 
Suk sese, suk se Jesus 
kpukpr’ usuñ 
Nte afo eyedi andikan ke 
kpukpru eñwan? 
Suk sese, suk se Jesus 
kpukpr’ usuñ. 

Körös: 
Suk sese (suk se Jesus) 
suk sese (kpukpr’ usuñ) 
Suk sese, suk se Jesus 
kpukpr’ usuñ. 
Suk sese (suk se Jesus) 
suk sese (kpukpr’ usuñ) 
Suk sese suk se Jesus 
kpukpr’ usuñ 
(kpukpr’ usuñ) 

2. Ke ini asua odukde, 
k’andidomo enyikde 
Suk sese, suk se Jesus 
kpukpr’ usuñ; 
Ti k’ebiet idiökñkpö 
awakde,mfön awak akan 
Suk sese, suk se Jesus 
kpukpr’ usuñ. 

3. Ke okutde akpa Jordan 
öfiöröde k’ iso fo 
Suk sese, suk se Jesus 
kpukpr’ usuñ; 
Suk wuk enyin fo se Jesus 
Enye ’yeda fi ebe, 
Suk sese, suk se Jesus 
kpukpr’ usuñ. 

Amen. 

      """
    },
    {
      "id": 635,
      "title": "DA MME OWO NÖ CHRIST ",
      // "audio":"",
      "body": """
      KEY C 4/4
{:m .,f ls :s ls :d' lm' :d' l-:d' .,t lL 
:-l-:d' ls :-l-} 

1. KOP k’efiori ikö uwem 
Da m’owo… nö Christ... 
Da me ukpöñ di nö Jesus 
Da m’owo… nö Christ... 
Yak nyin ida ke esit kiet 
Inam udem’ utom nyin 
Yom mö kiet kiet tut’ utom 
okure 
Nam utom… k’akam. 

Körös: 
Da m’owo… nö Christ... 
Da kiet… da kiet... 
Nam utom ököri osim 
kpukpru 
Tutu mö enyime Christ 
Da m’owo… nö Christ... 
Da kiet… da kiet... 
Man utom ököri osim 
kpukpru 
Da m’owo… nö Christ. 

2. Döñ ikö osim me idut 
Da m’owo… nö Christ... 
Suan ifiök erinyañ’ emi 
Da m’owo… nö Christ... 
Ekufre mböhiduñ nyin 
Mö ekperede ekan 
Döñ mböhiduñ esit ke ikö, 
Sin ifik… k’utom. 

3. Suan eti mbuk idara 
Da m’owo… nö Christ... 
Tutu Enye edi k’uböñ 
Da m’owo… nö Christ... 
Nam k’mbuötidem ye uko 
Man ada m’ ebek edi 
K’ebiet nyin, iwut mfön 
Abasi 
Tutu i…da mö. 

Amen. 
      """
    },
    {
      "id": 636,
      "title": "BAT MI SIN ",
      // "audio":"",
      "body": """
      
KEY Eb 4/4

{.s |s .s :s .L ls.m :-.s |L .L :f .L 
ls :-} 

1. ÖBÖÑ oyom menam-utom 
ke iñwañ Esie, 
Enye amanam mi nsaña 
k’usuñ öniöñ, 
Mebeñe mfön nditiñ k’ ofri 
esit mi, 
O Andinyaña, bat mi sin 

Körös: 
Bat mi sin, bat mi sin, 
Ke utom ima ye inemesit, 
Ih! Bat mi sin, bat mi sin, 
O Andinyaña, bat mi sin. 

2. Mebere k’Afo Öböñ 
k’eriyet k’ iyip Fo, 
K’ata idim edidiöñ emi 
mikpukhöke 
Mokut kpukpru ‘nti mfri 
eköri k’mfön Fo, 
O Andinyaña, bat mi sin. 

3. Öböñ nö mi odudu 
ndiñwana y’idiök 
Nö mbuötidem y’ uko 
ndikan m’asua Fo, 
Mebere k’Afo, ukpöñ mi 
ifiökke efen 
O Andinyaña, bat mi sin. 

4. Nyeñwam k’ mbiomo owo 
efen ke usuñ, 
Midighe, nyekpep enye, 
eriböñ akam, 
Nyenam akpanikö k’ufök 
y’esen idut, 
O Andinyaña, bat mi sin. 

Amen. 
      """
    },
    {
      "id": 637,
      "title": "EDA KPUKPRU ÖYÖHÖ MBAK DUOP EDI ",
      // "audio":"",
      "body": """
      KEY D 4/4

{:s|s :m lm :s |f :r lr :-.m|f .,s 
:L .,L lt:L |s :-l-} 


1. WINDOW heven ibereke, 
Akañ öyöhö ke isöñ, 
Abasi ikpuhökere, 
Ikö Esie edi ukem.
 
Körös: 
“Eda öyöhö mbak duop edi, 
Edomo mi” Jehovah ’döhö 
‘Nyebere window heven 
’nö ‘mbufo 
Nñwaña nti ‘ñkpö tutu 
akakha 
“Edöñ, efik enyuñ enyeñe 
Tutu öduöhö” 

2. Emum edidiöñ Abasi, 
Ikö Esie etiñ ntre, 
Koro idiökñkpö k’ uföt 
nyin, 
Adianare nyin y’Abasi. 

3. Vine iñwumke mfri esie, 
Idiök ‘mkpasip ofuk eti, 
‘Ndien Abasi inemk’ esit, 
O yak iyom iso Esie. 

Amen. 
      """
    },
    {
      "id": 638,
      "title": "YÖHÖ MI KE ODUDU",
      // "audio":"",
      "body": """
      KEY Eb 6/8 

{:d |m :m :mlm :r :d |s :s:L ls ::
m |s:s :s |L :s :m |r :-:-} 

1. ÖBÖÑ, tat mi enyin nyuñ 
wut m’ utom mi, 
Iñwañ k’ ebebet ukpeñe; 
Mbök, da mi sin ke utom 
fo mfin, 
Man nda m’ ukpöñ ’nö Fi. 

Körös: 
Yöhö mi k’ odudu Fo Öböñ, 
Odudu k’ utom y’ ukeme 
‘Ndinam uduak Fo 
k’ inemesit, 
K’ ebiet ekededi. 


2. K’ ufök, me k’ esen idut 
m’utom edu, 
Ke m’enö, k’ ima ye 
k’ akam; 
Öböñ, nam mfiök 
m’ukpöñ ek’ eyode, 
Etakde k’ofri ebiet. 

3. Yöhö mi k’ odudu ‘ndinam 
k’ enyiñ Fo 
Ndinö talent y’ ini mi, 
Man mendiyo eto k’ utom 
y’ akam mi, 
Ese Fi edu uwem. 

Amen. 
      """
    },
    {
      "id": 639,
      "title": "EYEBÖRÖ, SE MI MI, DÖN MI? ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:d .r |m :m lm :r .d|s :s ls : |d' 
:-.L ls :m |r :-l-} 

1. M’UKPÖÑ do k’ ebet 
uñwana gospel 
Jesus k’ okot fi (kot fi) 
Me ’yebörö kini ekededi 
“Se mi mi, döñ mi? 
(döñ mi)” 

Körös: 
Me ’yebörö ke okotde 
(döñ mi) 
“Döñ mi (‘nyeka) döñ mi 
(‘nyeka) 
Mebeñ’ idem ke utom Fo 
Öböñ 
Mönö Fi ofr’ idem mi 
(kemi) 
Me ’yebörö ke okotde 
(döñ mi) 
“Döñ mi (‘nyeka) döñ mi 
(‘nyeka) 
Mebeñ’ idem ke utom Fo Öböñ 
“Se mi mi, döñ mi? 
(döñ mi)” 

2. K’ obiomde cross Esie 
k’esen idut 
Ke edem akpa (akpa) 
Eyedöhö ke akade ikpöñ 
“Se mi mi, döñ mi? 
(döñ mi).” 

3. K’ mbiomde cross nyeyar’ 
anyanya 
‘Nyebeñe idem (idem) 
Nyetim mbiom tutu k’ akpatre, 
K’Enye ’kotde mi 
(kot mi) 

Amen. 
      """
    },
    {
      "id": 640,
      "title": "KE UWEM FO ÖFÖNDE",
      // "audio":"",
      "body": """
      KEY Db 4/4

{:m .f|s .s :fe .s lL .s :m .d'|t :t lt 
:r .m |f.m :f .s lL .L :t.,L |s :-l-} 

1. NTE ido-uwem fo omotoro 
Jesus? 
Amanam m’owo efiök 
k’Enye öfön? 
Eyekop k’anyan ebiet, ima 
Esie y’afo 
Eti etop ’yefiak edi 
k’uwem fo ’fönde. 

Körös: 
K’uwem fo ’fönde, 
k’uwem fo ’fönde. 
Eyekop etop fo, etienede fi 
K’ uwem fo ’fönde, 
k’uwem fo ’fönde. 
Eyekop etop fo k’uwem 
fo ’fönde 

2. Eyekere, esin fi k’ndek 
k’ uwem emi, 
Isehe ‘nte afo asuade idiök, 
Edi k’ebiet afo ’dude, me 
se ’kpanamde 
M’ufan ererimbot efiök 
k’uwem fo ’fönde. 

3. Ndusuk ufiökke k’afo 
amañwam owo 
Ndinyene erikan ke 
idiökñkpö, 
Ndusuk ukwe mfri utom 
ima fo kiet 
Edi eyekop etop fo 
k’uwem fo ’fönde. 

Amen. 
      """
    },
    {
      "id": 641,
      "title": "ENAM NTE IREN OWO",
      // "audio":"",
      "body": """
      KEY D 4/2

{:s |d' :m lf :L |s :-l-:s |L :s|t :d' 
|r' :-l-} 

1. ENAM nte iren 
Esöñö ke eñwan 
Ebe-iso k’eköñ ’yedi 
Idara mbufo. 

2. Ke eköñ ösöñde 
Oto k’ udim ekim 
Enye ododu k’nsinsi 
Añwam ke ’nanenyin 

3. Kop ikwö idara, 
Mö ekande k’eñwan 
Etorode Eyeneröñ 
Emi ekewotde.

4. K’ntak iyip Esie 
K’ eyarade Enye 
Esöñ’ eda, eyak uwem, 
Ekan kpukpru m’ asua. 

5. Nte iyekpa ‘mba 
K’ odudu ekpride? 
Yak nyin ikot Ebe-iso 
Ise Enye ikpöñ. 

6. “Mösöñö, ke ’memde” 
O nim k’akpanikö, 
Odudu ye ndöñesit 
Enye ikpöñ önö. 

Amen. 
      """
    },
    {
      "id": 642,
      "title": "AKANI ETI USUÑ",
      // "audio":"",
      "body": """
      KEY G 4/4 

{:s, .s, |d:d lm :r .d |r :L, lr :|
t, .t, :s .,L ls :f |m :-l-} 

1. NYIN k’ isaña ye esañ 
nyin k’ ubök, 
K’akani eti usuñ; 
Idi mbon isañ eke heven, 
Akani eti usuñ. 

Körös: 
Isaña k’ ima akakde ndibuk, 
Ika k’ obio eke mikpukhökere, 
Iyenyuñ ikut Jesus Andifak nyin, 
Do ke eti iduñ. 

2. Nyin isaña k’ idiök 
ererimbot, 
K’akani eti usuñ; 
Ke musua esöñde, idu k’emem, 
K’akani eti usuñ. 


3. Nyin isaña ke enyiñ Öböñ 
nyin, 
K’akani eti usuñ; 
Inyuñ itoro k’ ökpösöñ uyo, 
K’akani eti usuñ. 

4. Nyin k’ isaña ikpere ötömöñ, 
K’akani eti usuñ; 
Ibere ye Andida nyin usuñ, 
K’akani eti usuñ. 

Amen. 

      """
    },
    {
      "id": 643,
      "title": "NÖ MI JESUS",
      // "audio":"",
      "body": """
      KEY F 3/4

{:d .,r |m :-.m :r .,m |s :f :f .,m |r 
:-.d :r .,m |d :-} 

1. DA ’rerimbot nö mi Jesus, 
M’ idar’ esie ’di ukpök, 
Ed’ ima Christ öfön ama, 
Ebighi k’ nsi nsi. 

Körös: 
O akwa mböm Abasi 
O akwa ima Esie 
O uyöhö eti ufak 
Ye uwem nsi nsi. 

2. Da ’rerimbot nö mi Jesus 
Idöñesit ukpöñ mi, 
Ke Öböñ ekpemede mi, 
Nyekwö ke oyobio. 

3. Da ’rerimbot nö mi Jesus 
Ye akwa ima Esie, 
Ndien ke isañ mi k’isöñ, 
Uñwana eyeyama. 

4. Da ’rerimbot nö mi Jesus 
Nyeda ke cross Esie, 
Tutu nsobo y’ Öböñ mi, 
K’uyam’ ebekpo Esie. 

Amen. 
      """
    },
    {
      "id": 644,
      "title": "NDINAM UTOM ESIE KE AKPANIKÖ ",
      // "audio":"",
      "body": """
      KEY F 6/8  

{:s|s:-.f:mlr.d:-:r|m :d:-.L,ls, :-} 

1. UDORI omodu ke utom Jesus 
Enye ’yedu ye nyin 
k’inamd’ utom nyin, 
Ñkpö ererimbot inem iduhe, 
Emem ye uyukhö do k’ utom Öböñ. 

Körös: 
‘Nyema Enye kemi ‘ñkan k’eyo oko; 
Nyenam utom Esie kemi ñkan, 
‘Nyenam s’etemede ke s’ekpededi, 
Ndi owo eköñ, ’yekpa k’ utom mi. 


2. K’ idomo edide man ñkpöñ usuñ, 
Ke ‘ñkerede Öböñ, esit mi afiak 
Aka k’ebiet emi ekeköñd’ Enye, 
Do, uyo ödöhö, “Ñkakpa ’nö fi.” 

3. Meti ebiet oro enamde ‘mböhö, 
Do k’nyene ’rifen, enem mi eti; 
Do ke Jesus etiñ önö ukpöñ mi, 
M’idiök mi emefen ami möböhö. 

4. Mfön oro okpon, owo inöhö 
Menyene uyukhö k’ndude 
ke Christ, 
K’ufan ekpöñde mi k’ukut edide 
Mebere ke Jesus ye ima Esie. 

5. Jesus ikpöñ önö mi 
ndöñesit, 
Ima y’mfön Esie idikureke, 
Kini eyo y’edim, k’utö y’ukpeñe 
Ima y’ mfön Esie ikpukhökere. 


6. Eyebö eridiöñ Jesus önöde? 
Erinyaña k’ mfon ke ufn idiök, 
Tiene Andinyaña k’ eto Calvary, 
Idim-möñ asiakha, öfiörö ’nö fi. 

Amen. 
      """
    },
    {
      "id": 645,
      "title": "NDITIENE FI ",
      // "audio":"",
      "body": """
      
KEY Ab 4/4  

{|d :-.d ld :d |m :-.r lr .d :d |r :-.r 
lr :r |f :-.m lr :-} 

1. JESUS ami mökpöñ 
kpukpru, 
Nditiene Fi Öböñ, 
Ererimbot emesin mi, 
Afo ’di okim kemi; 
Mesin me udöñ esit mi 
Ye ifiök ererimbot, 
Itie mi ömöfön eti 
Sia nyenede Öböñ. 

2. Yak ererimbot esin mi, 
Ema ’sin Öböñ ñko, 
Me owo emebiaña mi, 
Afo ubiañake mi; 
K’edinende iso y’ami,
Öböñ ifiök ye ima 
M’asua ye m’ufan esin mi,
Mbök kukpöñ mi Öböñ. 

3. Owo ekpenam mi idiök, 
Eyenam ndiana Fi, 
Uwem ökpösöñ y’idomo, 
Eyenö mi ifure; 
Utunöke mi ke idiök, 
Ke ima Fo odude, 
O k’mfukhö osimde mi, 
K’Afo, edi idara. 

Amen. 
      """
    },
    {
      "id": 646,
      "title": "EDIKOÑ EBIET",
      // "audio":"",
      "body": """
      KEY Ab 3/2

{.s, :s, .d |m :-.m :r .d|L, :-.r 
:d .L, |s, :-.d :m .d|r :-} 

1. NSAÑA ke usuñ heven 
K’usen k’usen ami k’ndök 
Mekpe ubök ke ndökde, 
“Öböñ da mi sim ke enyöñ. 

Körös: 
Öböñ nam mi nsöñö ‘nda, 
K’mbuötidem k’isañ heven, 
Man ñkut s’ikoñde ikan, 
“Öböñ da mi sim ke enyöñ.” 

2. Ami nyomke ndidu 
K’ ebiet ndik ye eyikhe, 
Ndusuk ema ndidu, 
Okim edi k’ata enyöñ. 

3. Moyom ‘ndikan ererimbot, 
’Kposuk Satan añwanade, 
K’ mbuötidem mokop uyo 
Ikwö nti owo k’ enyöñ. 

4. Moyom ‘ndidök k’ata enyöñ 
Man nse uyama uböñ, 
‘Nyeyom tutu nsim heven, 
“Öböñ da mi sim ke enyöñ.” 

Amen. 
      """
    },
    {
      "id": 647,
      "title": "NTE ÖBÖÑ EBERE KE AFO? ",
      // "audio":"",
      "body": """
      KEY C 4/4

{:m .,f |s :s ld' :-.t |t :L l-:L .d' |t 
:-.L ls :f|m :-l-} 

1. K’ EKÖÑ emi añwanade 
Kabaña akpanikö, 
Ke eñwan ösöñde eti 
Ye me odudu ekim, 
Eyom ‘mbon akpanikö, 
Öböñ ebere k’afo? 

Körös: 
Öböñ ebere k’afo? 
Enye ’yom akpanikö, 
Spirit ödöhö ete: 
Yak Enye ’bere k’afo. 

2. Sese! nte mö ewakde, 
Edi k’ odudu satan, 
K’ odudu ukara ekim, 
Ke uföt okoneyo, 
Eyom ‘mbon akpanikö, 
Öböñ ebere k’afo? 

3. K’ebekpo, Ete k’ese nyin, 
Me enjel enö uñwam, 
Ebe-iso edi Jesus, 
Nyin iyekan, iyekan, 
Mendikan ebö ’nyanya, 
Öböñ ebere k’afo? 

Amen. 
      """
    },
    {
      "id": 648,
      "title": "MKPASIP OBIO UBÖÑ",
      // "audio":"",
      "body": """
      
KEY D 4/4

{:d .r |m :m .m lm :r .d |m :s lL .d' 
:t .L |s :m ld :m |r :-l-} 

1. AFO k’asuan ‘mkpasip obio uböñ 
Ufan, k’eti usiere emi? 
Afo k’asuan ‘mkpasip obio uböñ 
Ufan ke uföt uwemeyo? 

Körös: 
Koro ini idök k’ekpere 
(k’ekpere) 
Idök eyesöp ndikure 
(‘ndikure); 
M’ebek fo ewak, m’eyenyene kiet? 
Kini ebonde mö do k’ubet enyöñ. 

2. Afo k’asuan ‘mkpasip obio uböñ 
Ufan, k’uföt ökpösöñ ekim? 
Afo k’asuan ‘mkpasip obio uböñ 
Ufan kabaña eti idök. 

3. Afo k’asuan ‘mkpasip obio uböñ 
Ufan, ke ata eti isöñ? 
Omoyom idök öfönde eti 
Ufan, dibuana k’udim kpa mfin. 

Amen. 
      """
    },
    {
      "id": 649,
      "title": "INI UWEM EDI INI UTOM",
      // "audio":"",
      "body": """
      KEY D 4/4

{|m :m .,m lf.m :m|s .,s :L .m lf : 
|r :r .,r lm .r :r |f .,f :s .r lm : } 

1. NAM utom ke ini odude 
k’uwem, 
Jesus ke okot fi k’utom 
ukpeñe, 
Nam k’erinyime esit 
y’ikwö itoro 
Nam, nam utom nö Jesus. 

Körös: 
ATB: Nam, nam, nam, nam 

S: Ini utom k’ösöp ebe 
ATB: Nam, nam, nam, nam 
Nam, nam, nam, nam 

S: Yak ini ebe ye ima 
ATB: Nam, nam, nam, nam 
Nam, nam, nam, nam 

All: Idara do k’utom önö 
mesin-idem, 
Nam, nam, utom nö Jesus. 

2. Kpep utom ke ini odude 
k’uwem, 
Da obufa usen ke akwa enö, 
Ñwam mö ek’ efukhöde, ke 
idaresit, 
Nam, nam, utom nö Jesus. 

3. Utom kini uwem, nam 
k’ukeme fo 
Ke ebiöñöde fi, du 
k’idaresit, 
Kukpöñ Jesus Ufan fo, bere 
ke Enye 
Nam, nam, utom nö Jesus. 

Amen. 
      """
    },
    {
      "id": 650,
      "title": "ETI ENYIÑ ",
      // "audio":"",
      "body": """
      
KEY Ab 4/4

{|s, :d lm .,r :d .,r |d :-ls, :-|L, :d 
lt, .,L, :d .,L, |s, :-l-} 

1. DA enyiñ Jesus ye afo, 
Eyen ukut y' mfukhö, 
Eyenö fi ndöñesit, 
Ke ebiet ekededi. 

Körös: 
O enyiñ… enenem... 
Idorenyin nyin k’isöñ, 
O enyiñ… enenem (enem) 
Önö idara k’enyöñ 

2. Da enyiñ Jesus kpukpr’ ini, 
Nte otu eköñ fo, 
K’ idomo akande okuk, 
Kot enyiñ oro k’ akam. 

3. Ata eti enyiñ Jesus, 
Önö idara k’ ukpöñ, 
K’ Enye ’diböde nyin k’ima, 
Iyetor’ Enye k’ ikwö. 

4. K’enyiñ Jesus iyenukhö, 
Iduö ke ukot Esie, 
Ikpono Öböñ ke enyöñ 
K’ isañ nyin okurede. 

Amen. 

      """
    },
    {
      "id": 651,
      "title": "NTUA EYET IDIÑWAMKE MI ",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{|s:L ls :m |r :-ld :-|r :r lr :d |m 
:sls :-} 

1. EYET idiñwamke, 
K’ nsuk ntuade eyet, 
Imenke ndik ifep, 
Iyetke me idiök mi 
Eyet ’diñwamke mi! 

Körös: 
Jesus akakpa ’nö mi! 
Okokut ukut k’eto 
Jesus anam mböhö, 
Enye anyaña mi! 

2. Utom ’diñwamke mi! 
Nti utom n-namde, 
Ye nti ekikere, 
Inamke ukpöñ enen. 
Utom ’diñwamke mi! 

3. Ndibet iñwamke 
Ndu k’idiök y’nsobo; 
K’efiori uyo mböm; 
Ke mbetde nyekpa: 
Ndibet iñwamke 

4. Mbuötidem ke Christ! 
Y’eyet Enye ’katuade, 
Ye utom akanamde; 
Nam mi ntiene Enye, 
Oro eyeñwam mi. 

Amen. 
      """
    },
    {
      "id": 652,
      "title": "BUÖTIDEM NYUÑ KOP UYO ",
      // "audio":"",
      "body": """
      KEY D 3/4  

{:s |s :m :L |s :m :d' |t:L :t |d' :-} 

1. KA iso, ka iso, buötidem y’ Öböñ, 
Ti ikö uñwöñö Enye ’ketiñde, 
Enye ’kpeme onyuñ ada mö usuñ, 
Ek’ ebuötd’ idem, ekopd’ uyo Esie. 

Körös: 
Buötidem y’Öböñ, kop uyo Esie, 
Öböñ k’okot fi, kubiat ini aba 
Uñwana mböm Esie ’yama k’ usuñ 
Önö mö emi ekopd’ uyo Esie. 

2. Ka iso, ka iso, k’afo oyomde 
Ndiduk ke eti nduök odudu; 
Enö erinyaña omodu mfin 
Önö kpukpru m’andinim k’ akpanikö. 

3. Ka iso, kop obufa nsöñidem 
Utip ye anyanya ena fi k’ iso; 
Ima Esie okpon, Enye isinke 
Mö emi edikopde uyo Esie. 

Amen. 

      """
    },
    {
      "id": 653,
      "title": "MONYIME",
      // "audio":"",
      "body": """
      KEY A 4/4 

{:s, |d :d lm :-.d |r .d :d .L ls, :-.s, 
|L, :d lf :m |r :-l-} 

1. UKPÖÑ mi, enö fi Andinyaña 
K’mfön oto k’ikö; 
Kemi Öböñ, nyekpe mbiere: 
Ami monyime Fi. 

Körös: 
Ami…, ami 
Monyime, Abasi ñwam mi 
ndi Okuo; 
Ököduök iyip Fo ndidep mi 
Ami ‘nyedi Okuo. 

2. K’ mfön monyime mböm Fo kemi, 
Ima Fo edep mi, 
K’Afo, O Christ, monim k’ akpanikö 
Nyuñ ‘mbuötidem k’Afo. 

3. Afo Öböñ öfiök ’memidem mi, 
Y’ ndik anamde mi, 
Nö odudu man nse Fi ikpöñ, 
Kam nö mi odudu. 

4. Kemi Öböñ nö kpukpr’ owo mfön 
Etiene nyin ekwö, 
K’ ofri esit yak nyin idöh’ ite: 
Ami ‘ndi eke Christ. 

5. Mö ekedi, enyuñ ebup ete, 
“Öböñ omonyime?” 
Ököbörö mö, “Ami monyime” 
Ida k’ ikö oro. 

Amen. 
      """
    },
    {
      "id": 654,
      "title": "KIET EDI ÖBÖÑ NYIN",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, :m, .s, ld :s, .d |r :s, .r lm :d |L, 
:f .,f lm :d .m |r :L, .,r lr:-} 

1. KIET edi Öböñ nyin, eti 
Andifak, 
Nyin imösöñ idiana ye Enye, 
Yak ima emi eti Spirit Esie 
’Demerede k’esit nyin ayama. 

Körös: 
Iköt Jesus yak nyin ibuötidem 
Y’Enye emi adade nyin usuñ 
Yak ikop uyo, inam akpanikö 
Tutu k’uböñ nyin ikwö hosanna 

2. Iyenam utom Öböñ nyin k’idara 
K’ofri esit iyekpono Enye, 
Odudu Esie añwam k’memidem, 
Eyeyöhö kpukpru unana nyin. 

3. Kiet edi Öböñ, Andikara kpukpru, 
Mböm y’ mfön Esie edi “ukem” 
Edi itie nyin nditiene Enye, 
Yak itoro Enye k’nsi nsi. 

4. Kiet edi Öböñ, öfön y’iköt Esie, 
Emi ebetde eridi Esie; 
Eyekpukhöre mö ke mbiet Esie, 
Man k’obio uböñ mö ekpedara. 

Amen. 
      """
    },
    {
      "id": 655,
      "title": "TORO ANDINYAÑA! ",
      // "audio":"",
      "body": """
      KEY A 3/5

{:s, .,s, |d :d :t, .,d |r :r :d .,r |m :m 
:r .,d |r :r} 

1. TOR’ Öböñ, m’andifiök Enye, 
Anie akpabat isön nyin, 
K’ idara yak inö Enye, 
Se inyenede. 

2. Enyiñ “Jesus” enem eti, 
Enye akan kpukpru eñwan, 
Baba ‘ñkpö idinamke nyin, 
K’ ibuötde idem. 

3. Nti owo, ebuötidem, 
Enye edi Akpanikö, 
Enye idibiañake mö 
Ek’ Enye ’made. 

4. Öböñ nam nyin idiana Fi 
Inyuñ inim k’akpanikö 
Tutu nyin ibö uñwöñö, 
Idara k’enyöñ. 

5. Iyedu k’ebiet iyomde, 
Iyedi se ikpedide, 
Se miduhe kaña kemi, 
Eyenyene nyin. 

Amen. 

      """
    },
    {
      "id": 656,
      "title": "ABASI AMA ODU YE NYIN ",
      // "audio":"",
      "body": """
      KEY G 4/4

{:s, |m :m .,r ld :-.d |r .d :t, .L, ls, 
:s, |d :d .d ld :t, .d |r :-l-} 

1. EDARA k’ Öböñ, mfön Esie ewak 
Enye obuñ ñkpököbi, 
Afak ke iyip, nso k’ idifeghe, 
Sia Jesus edide “kpukpru” 

Körös: 
Öböñ amada, Öböñ amada 
Amada ye nyin, anie 
edibiöñö? 
A-nie e-(ekeme ‘ndibiöñö) 
Anie edibiöñö, biöñö nyin? 

2. Esöñö k’ Öböñ, dar’ odudu 
Esie, 
Nam akpanikö kpukpr’ usen, 
K’nsu edide, da ke akpanikö, 
Abasi eyedu ye nyin. 


3. Bere ke ikö ye m’uñwöñö 
Esie, 
Ke Christ edi “Ih ye Amen” 
Isöñ ekpebe, mö eyesuk eda, 
Ema ewet, efiak ewet. 

4. Edu ke Öböñ, ye k’ukpeme 
Esie, 
Uwem ‘nsi nsi ötöñö, 
Ndisio mem-mem ukpöñ 
k’ ubök Esie-
Emi ikemeke ‘ndidu. 

Amen. 
      """
    },
    {
      "id": 657,
      "title": "TIENE!",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, :d .,r lm .m :r .d |d .d :t, .L, 
ls, :-} 

1. EKPEDI k’ itikhere ‘nyeka 
y’ Öböñ mi, 
K’ebiet mfri ye m’inem 
möñ efiöröde; 
K’ebiet Enye adade usuñ 
nyetiene, 
Nyetien’ Enye tutu ‘mbö 
anyanya. 

Körös: 
Tiene! Tiene! Nyetiene 
Jesus! 
K’ebiet ekededi! Nyetien’ 
Enye 
Tiene! Tiene! Nyetiene 
Jesus! 
K’ebiet, ekededi! Nyetien’ 
Enye! 

2. Ekpedi k’ itikhere ‘nyeka 
y’Öböñ mi 
K’mbufut möñ y’oyobio 
esöñde eti; 
K’ ubök Esie ’mumde mi, 
mfegheke ndik, 
Ndidikheke k’ Öböñ 
ekperede. 

3. Ekpedi k’ itikhere ‘nyeka 
y’ Öböñ mi 
Ukpöñ mi eyediana ye 
Andinyaña 
Eyeñwam mi k’ usuñ Enye 
akasañade, 
Tutu osim ko ke obio Abasi. 

Amen. 
      """
    },
    {
      "id": 658,
      "title": "DA NYIN USUÑ ",
      // "audio":"",
      "body": """
      KEY G 6/8

{|s, :m:m lm :r :d |t, :f :f lf :-:|
s, :f :f lf :m :r |d:s :sls :-:-} 

1. DA nyin usuñ edima ’kpemeröñ 
Ika k’awawa ‘mbiet y’idim 
k’enyöñ, 
Kpeme k’okoneyo y’uwemeyo 
Nnyin idikpöñke Fi. 

Körös: 
SA: Baba! … Baba! … 
Baba! O baba! Afo ’di usuñ; 
Baba! … Baba! … 
Nnyin idikpönke Fi. 
TB: Baba! O baba! Afo ’di usuñ, 
Baba! O baba! Afo ’di usuñ; 
Baba! O baba! nyin 
ikpöñke Fi, 
Nnyin idikpöñke Fi. 

2. Enyöñ ökpödiök nte ödödiök, 
Mbufut ekpenyuñ enyene ‘ndik, 
Uñwan’ ikö Fo ama ’du k’usuñ, 
Nnyin idikpöñke Fi. 

3. Odudu Fo añwam ’memidem nyin, 
Nam isuk idem inö Fi Öböñ, 
K’ isimd’ iyekwö k’idara ite: 
Nnyin idikpöñke Fi. 

Amen. 
      """
    },
    {
      "id": 659,
      "title": "KE EBIET ÖBÖÑ ADADE MI ",
      // "audio":"",
      "body": """
      
KEY G 4/4

{:s, .d |m :m lf :-.m |m.r :-l :
s, .t, |r :r lm :-.r|r.d :-l -} 

1. K’ ÖBÖÑ adade mi usuñ 
Öyöhö kpukpru unana, 
K’ndude ke ima Esie, 
Nyetiene kpukpr’ usuñ, 

Körös: 
K’ Öböñ adade mi usuñ 
K’ Öböñ adade mi usuñ 
K’ Öböñ adade mi usuñ 
Ami nyetien’ Enye. 

2. Okpusuk usuñ okimde, 
Ukot mi akpade mba, 
Ke ösöñöde mi idem, 
Nyetiene kpukpr’ usuñ. 

3. K’ ukut isöñ osimde mi, 
Ke oyobio ofukde mi, 
Ima Esie ’kamade mi, 
Nyetiene kpukpr’ usuñ. 

4. K’ ebuan’ isöñ okurede, 
Enye okot mi ke iduñ, 
Ndibuana y’mbon ima, 
Nyetiene kpukpr’ usuñ. 

Amen. 
      """
    },
    {
      "id": 660,
      "title": "ETI UWEM!",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{|m :-lre :m |d :-lm:-|r :m lf :s 
|m:-l-:-} 

1. ETI uwem! Önö emem, 
K’ afaneköñ akand’ okuk, 
Öbuötidem k’uduak Öböñ 
Abat ete k’öfön ama. 

2. Eti uwem! Okut kpukpru 
S’ikpukhöre k’uföt m’isua, 
Mböm Esie ke kpukpru ‘ñkpö, 
Ayarare s’idibede. 

3. Eti uwem! Ukpöñ öfiök 
S’enyin ikpökhidem mikwe, 
Okut Öböñ eberede 
Usuñ heven oto k’ima. 

4. Eti uwem! Esit y’ukpöñ, 
Eböh’ utom obukidem, 
Ke ndidi kiet y’Edidem, 
Esuk ibuot enö Öböñ. 

5. O se uwem, eye didie! 
Öfön eti, akan kpukpru; 
Andinyaña ami moyom 
Ndinyene uwem emi. 

Amen. 
      """
    },
    {
      "id": 661,
      "title": "KPEME NDIFÖN MMA ",
      // "audio":"",
      "body": """
      KEY F 6/8

{|m:-:-lm :r :m |f:-:-lm :-:-|d 
:-:-lr:d :t, |d :-:-l-:-:-} 

1. KPEME k’ ndifön ’ma, 
neme y’ Öböñ fo, 
Duñ y’ Enye kpukpr’ ini, 
dia m’ ikö Esie, 
Saña y’ iköt Öböñ, ñwam 
’memidem mö, 
Kunyuñ ufre ‘ndiyom 
edidiöñ Esie. 

2. Kpeme k’ ndifön ’ma, ini 
k’ ebebe, 
Biat ini k’ ndibe ye Jesus 
ikpöñ 
Ke erise Jesus, eyebiet 
Enye, 
M’ufan ke ido fo eyefiök 
Enye. 

3. Kpeme nyuñ yak Öböñ ada 
fi usuñ, 
Kube Enye iso, ke 
s’ekpededi, 
K’ idara, k’ mfukhö, yire 
Öböñ fo, 
Ke erise Jesus, da k’ ikö 
Esie. 

4. Kpeme k’ndifön ’ma nyuñ 
nyene emem, 
Ekikere y’ uwem, Enye 
akara, 
Spirit Esie ada fi osim 
k’ ima 
Man afo okpodot ke utom 
Öböñ. 

Amen. 
      """
    },
    {
      "id": 662,
      "title": "DA UWEM MI, YAK EDI",
      // "audio":"",
      "body": """
      KEY G 3/4 

{|d :-:d |t, :-:s, |f :-:f |m :-:-|s ::
m |s :f :r |d :-:m |r :-:-} 

1. DA uwem mi, yak edi 
Ek’ enyenede kpa Fi; 
Da m’usen mi ye ini, 
Yak esuk etoro Fi. 

2. Da m’ ubök mi, nyuñ nam mö 
Enam eto k’ ima Fo; 
Da m’ukot mi nyuñ nam mö 
Ndisöp ke utom Fo. 

3. Da uyo mi, nam ñkwö 
Kpukpr’ ini ’nö Öböñ mi; 
Da mkpök inua ñko 
Nam eyöhö y’ ikö Fo. 

4. Da kpukpru inyene mi, 
Nsinke ndinö Fi; 
Da ekiker’ esit mi, 
Nam nte enemde Fi. 

5. Da me uduak esit mi 
Ididigh’ aba okim; 
Da esit mi ke Okuo 
Man edi ebekpo Fo. 

6. Da ima mi, Öböñ mi, 
Möduök enye k’ ukot Fo; 
Da idem mi, nyedi 
Kpa inyene Fo ofri. 

Amen. 

      """
    },
    {
      "id": 663,
      "title": "MBUÖTIDEM MI YE AFO, ÖBÖÑ JESUS ",
      // "audio":"",
      "body": """
      KEY Bb 4/4
      
{:m, .f, |s, :s, ld :t, |t, :L, l -: |s, :s, 
ld :m |r:-l-} 

1. AMI mebere ke Jesus, 
Mebere k’ Afo, 
Man mbö erinyaña Fo 
Ke mfön. 

Körös: 
Möbuötidem (möbuötidem), 
Ke Afo ikpöñ, 
Ami möbuötidem 
(möbuötidem) 
Ke Afo ikpöñ. 

2. Mebere Fi man efen mi, 
Möduö Fi k’ ukot 
Ke mfön Fo ye mböm Fo, 
Mebere. 

3. Mebere Fi man eyet mi 
Ke iyip oro, 
Mebere Fi, nam nsana 
K’ iyip Fo. 

4. Mebere Fi, nö odudu, 
Okuo ikpuhö, 
M’ikö Afo edinöde 
Eyedu. 

5. Mebere ke Afo, Öböñ, 
Kuyak mi nduö, 
Mebere ke Afo kemi, 
K’nsinsi. 

Amen. 
      """
    },
    {
      "id": 664,
      "title": "JESUS MMI, MMAMA FI ",
      // "audio":"",
      "body": """
      
KEY F 4/4

{: d .d |m :-lf :f | m :-.r ld :m lr :lt, 
:t, |d :-l-} 

1. JESUS ’mi, ’mama Fi, 
edi okimmö! 
Nyomke ndinam 
idiökñkpö aba, 
SAT: Akamba Andifak ye 
Andinyaña mi, 
All: Ndien kemi Öböñ ’mama 
Fi ñkan. 

2. ’Mama Fi koro Afo 
’kamade mi, 
Edep erifen mi k’eto 
Calvary; 
SAT: ’Mama koro okokutd’ 
ubiak k’isöñ, 
All: Ndien kemi Öböñ ’mama 
Fi ñkan. 

3. ’Mama Fi k’uwem, 
‘nyenyuñ ’ma Fi k’mkpa 
Nyenyuñ ntoro k’ofri 
uwem mi 
SAT: Nyenyuñ ñkwö Fi k’ini 
mkpa mi, 
All: Ndien kemi Öböñ ’mama 
Fi ñkan. 

4. Ke ini idara ke obio uböñ 
Nyesuk ñkpono Fi k’obio 
heven, 
SAT: Nyekwö ye anyanya ke 
ibuot mi 
All: Ndien kemi Öböñ ’mama 
Fi ñkan. 

Amen. 
      """
    },
    {
      "id": 665,
      "title": "OWO-EKÖÑ CROSS ",
      // "audio":"",
      "body": """
      KEY D 4/4

{:d |m :m lf .,m :f .,L |s :-l-:m |s 
:d' lt :L|s:-l-} 

1. NTE ‘ndi owo-eköñ cross 
An-di-ti-e-ne Christ? 
Me but, m’ukut edikpan mi 
‘Ndikwör’ enyiñ Esie? 

Körös: 
Ke enyiñ… eti enyiñ... 
Enyiñ Andifak mi, 
K’mfön ‘nyebö ’nyanya uwem, 
‘Nte cross mi edide. 

2. Eyeda mi eka k’ enyöñ 
K’ñwanade k’ mbre? 
K’ nti owo esind’ ifik 
‘Ndibö ’nyanya uwem. 

3. Ndiñwanake ye m’usua 
‘Nte ukut iduhe? 
M’ererimbot edida mi-
Usuñ man mböhö? 

4. Sia uböñ edide k’ eñwan, 
Nö mi odudu Fo, 
Nyeyö ukut ye ubiak, 
K’ odudu ikö Fo. 

Amen. 
      """
    },
    {
      "id": 666,
      "title": "ESÖÑÖ EDA YE JESUS! ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s, |d :-.dlm :d |d :-lL, :d |s:d 
lr :m |r :-|-} 

1. ESÖÑ’ eda ye Jesus, 
Nte ‘mbon eköñ cross, 
Menere banna Esie, 
M’asua idikanke, 
Iyenyene erikan 
K’Enye ’dade usuñ, 
Tutu m’asua ekure, 
Christ Öböñ akara.
 
2. Esöñ’ eda ye Jesus! 
Ekop ukorowo, 
Eka ke akwa eñwan 
K’ eti usen Esie; 
Enam ‘nte iren owo, 
Eñwana ye m’asua 
Ekop uko ke ndik, 
Eñwana ökpösöñ. 

3. Esöñ’ eda ye Jesus! 
Ke odudu Esie, 
Ubök owo isöñke, 
Kubuötidem k’ okuo; 
Esine ñkpö eköñ, 
Ekpeme ke akam, 
K’ ndik ye k’ini utom 
Eñwan’ ukem ukem. 

4. Esöñ’ eda ye Jesus! 
Eköñ ibighike; 
Mfin ema eñwana, 
Mkpöñ eyekure, 
Enye emi akande, 
Eyebö anyanya, 
Onyuñ akara k’uböñ
Y’Öböñ k’ nsi nsi.

 Amen. 
      """
    },
    {
      "id": 667,
      "title": "IKÖT CHRIST, EKA ISO! ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{|s :s ls :s |s :-.L ls :-|r :r ld :r |m 
:-l-:-} 

1. IKÖT Christ ’ka iso! Kpa 
‘nte ke eköñ 
Ese Jesus Öböñ, Andibem iso, 
Christ eti Ete nyin, akakan m’asua, 
Eka iso k’ eköñ, ekufiak edem. 

Körös: 
Iköt Christ ’ka iso kpa ‘nte 
ke eköñ 
Ese Jesus Öböñ, Andibem iso. 

2. K’ekotd’ enyiñ Jesus, 
m’asua efeñe, 
K’ntre, eka iso, esim erikan, 
Hell omotimere k’mkpo idara, 
M’ufan emen uyo ekwö itoro. 

3. Ufök Abasi, eka ‘nte 
‘mbon eköñ, 
Ika k’ usuñ nti owo ekade, 
Nyin ibahakere, kpukpru idi kiet, 
Ke ima ye k’ido ye idorenyin. 


4. Uböñ ye ebekpo eyesukhöre, 
Ufök Abasi eyesöñö ada, 
Me inua otop hell idikank’ enye, 
Kor’ uñwöñö Christ idikpukhökere. 

5. Eka iso, ebuana ke idara, 
Edian uyo ñko k’ ikwö erikan, 
Uböñ y’ ukpono enyene Christ Öböñ, 
Enjel y’owo ekwö k’ofri emana. 

Amen. 
      """
    },
    {
      "id": 668,
      "title": "EDI IKA UTOM! ",
      // "audio":"",
      "body": """
      KEY F 4/4

{:m .,f |s :s .,s ls :d .r |m :m .,m lm 
:r .m |f:f.,m lf :m .f |L :s .,fe ls } 

1. EDI ika utom! Kpukpru 
iköt Öböñ, 
Itiene usuñ Öböñ akasañade, 
Nti item Esie eyenö odudu, 
Yak ida ukeme nyin inam s’ iyomde. 

Körös: 
Sin idem… nam utom... 
Sin idem… nam utom... 
Yak ibet (k’ ime) ikpeme 
(k’ akam) 
Inam tutu Öböñ edi. 

2. Edi ika utom! Yukhö ukpöñ öbiöñ, 
Eda mekpa mba eka k’ idim-uwem, 
Cross ye banna Esie, uböñ 
nyin oto do, 
Iyefiori, “Erinyaña edi k’mfön.” 

3. Edi ika utom! Enyene nyin 
kpukpru, 
Ukara ekim ye idiökñkpö eyeduö, 
Ndien enyiñ Jehovah eyekoñ akan, 
Ekwö ökpösöñ, “Erinyaña ke mfön.” 

4. Edi ika utom! Ke odudu Öböñ, 
Öföñ ye anyanya eyedi utip nyin, 
Ndien ke iduñde k’ iduñ nti owo, 
Iyekwö ye mö, “Erinyaña ke mfön. 

Amen. 
      """
    },
    {
      "id": 669,
      "title": "NÖ UBÖK UÑWAM!",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|s, .m :m .r ld :s, |L,.d :d .L,|s, :|
s,.d:d.rlm.m:f.m |r:rlr:-} 

1. ODU ke ifu? Utom do ndinam 
K’ iñwañ Öböñ, itie utom fo odu, 
Di owo akpanikö nyuñ söñö da, 
Nö uñwam k’ebiet Öböñ okotde fi! 

Körös: 
Nö uñwam, nö uñwam, nö ubök uñwam; 
Mbon mba k’eduö, nö ubök uñwam! 
Nö uñwam, nö uñwam, nö ubök uñwam; 
Jesus ke okot fi, nö ubök uñwam. 

2. Usiorok’ uyo? Ikwö do ndikwö, 
Di kwö man anam itoro ebighi 
Tutu ikwö ödök k’ inyañ ye k’obot 
Enyuñ ekop k’enyöñ, nö ubök uñwam! 

3. Akam fo isimke ebekpo mböm? 
Emebeñe andiyo efiak edem? 
Akam emekeme ndinyañ’ enye, 
Okuo emekeme, nö ubök uñwam! 

Amen.
      """
    },
    {
      "id": 670,
      "title": "NDITÖ KE SPIRIT ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, .m :m .m lm :f |m .r:r .de lr:|
s, .f :f .f lf :s |f .m :m .re lm :-} 

1. K’ITÖDE ke Spirit ke usen 
k’ usen, 
Isuan mkpasip nti ido k’ usuñ 
K’itöde ke Spirit, ibere k’Öböñ, 
Utom nyin eyenem, utip eyefön. 

Körös: 
SA: Ke… itöde öfön, 
TB: Ke itöde öfön, ke itöde öfön 
SA: Nam… sim ke utit 
TB: Nam sim ke utit, nam sim ke utit, 
All: Kukop mmemidem, tutu okure. 

2. K’itöde ke Spirit, iyire k’akam, 
Mkpasip isuande eyesiakh’ iköñ, 
Inim ite k’ Öböñ eyenö edim, 
Iyekut iñwañ nyin y’nti mkpasip. 

3. K’ itöde ’kposuk k’ekpri 
mbuötidem, 
K’ itöde k’ memidem ye möñ-eyet, 
K’ eti y’idiök ini, tö sim ke utit, 
Idök eyedi idara k’nsinsi. 

Amen. 
      """
    },
    {
      "id": 671,
      "title": "NAM UTOM KORO OKONEYO KEDI",
      // "audio":"",
      "body": """
      KEY F 4/4

{|s :m .,f ls :s |L :-ls :-|d:d .,d ld 
:r |m :-l-} 

1. NAM utom, ekim k’edi, 
Nam ke usenubök, 
Nam, k’ mbara edepde, 
Nam, k’ ini mfri, 
Nam, k’eyo esierede, 
Nam, ke ini utin, 
Nam utom, ekim k’edi, 
Utom eyetre. 

2. Nam utom, ekim k’ edi, 
Nam ke uwemeyo, 
Nam utom kpukpru ini, 
Ifure ’yedi, 
Nö kpukpr’ ini ebede 
Ñkpö ‘ndinim k’ ubet, 
Nam utom, ekim k’ edi 
Utom eyetre. 

3. Nam utom, ekim k’ edi, 
Ke utin osopde, 
Ke uñwana odude, 
Nam, usen k’ ebe, 
Nam tutu uñwan’ utin 
Etre ndiyama, 
Nam, ke eyo okutde, 
Utom eyetre. 

Amen. 
      """
    },
    {
      "id": 672,
      "title": "ME NDIKA UBÖK UBÖK? ",
      // "audio":"",
      "body": """
      KEY D 6/8
{|s:-:s ls :f :m|d' :-:L ls :-:m |f 
:-:flf :m :r|s :-:f lm :-:-l-} 

Duet: Sop & Alto 

1. “ME ndika ubök ubök,” 
Ñkosobo y’ Öböñ mi? 
N-nyeneke se n-namde 
N-dinim k’ukot Esie? 

Körös 
“Me ndika ubök ubök” 
Ndisobo y’ Öböñ mi? 
Ndaha ukpöñ ’nö Enye 
Me ‘ndika ubök ubök? 

2. Mfegheke ndik mkpa 
Koro Christ anyaña mi; 
Edi ‘ndika ubök ubök, 
Edi ekikere mi. 

3. O me isua ñkabiatde, 
Mö ekpedude kemi; 
Mkpayak mö ’ñö Öböñ mi, 
Ndinam uduak Esie. 

4. Iköt Öböñ, esin idem 
K’ utom odude mfin; 
Mbemiso ekim mkpa, 
Eyom me ukpöñ kemi. 

Amen. 
      """
    },
    {
      "id": 673,
      "title": " EYESUK ETI ",
      // "audio":"",
      "body": """
      KEY Eb 
44 
11.10.11.10 –10.10.11.10 

{|s:fe .,s |d' :s .m |s :f .,r lf .m :-|L 
:t .,t ld' :s. L|t :L .,L |s :-} 

1. NTE ntanta’fiöñ usiere ’sopde, 
Owo ikwe enye k’uñwan’ utin, 
Ntre ke ibe ikpöñ ukut isöñ, 
Eti nyin ke utom ikanamde. 

Körös 
Esuk eti nyin, esuk eti nyin, 
Esuk eti nyin ke s’ikanamde; 
Ntre ke ibe ikpöñ ukut isöñ, 
Esuk eti nyin ke s’ikanamde. 

2. Me iyekpöñ utom inö mö efen, 
Ndidök kpukpru se ikötöde? 
Ih, me anditö eyetre utom mö, 
Eyeti mö k’utom ekenamde. 

3. Akpanikö inamde k’ uwem emi, 
Ye mkpasip itöde ke isöñ, 
Eyeti mö ke ini efrede nyin, 
Mfri idök ye se ikanamde. 

4. Kini Andinyaña edidade nyin, 
Ke iböde anyanya idara, 
Do k’ nti m’anamutom k’mbuötidem, 
Edibö utip ke s’ekenamde. 

Amen. 

      """
    },
    {
      "id": 674,
      "title": "KE MME USEN EBEDE ",
      // "audio":"",
      "body": """
      KEY A 4/4 

{:m, .,f, |s, :-.s, lL, :s, |s, .d :-l:
d .r |m :-.d lr .r :-|d :-l-} 

1. M’ ESIT edu ekpedöñde, 
Ke me usen ebede; 
M’ukpöñ edu eketakde, 
Ke me usen ebede, 
K’inöde idaresit, 
Ke isañ uwem emi; 
Oro ökpöfön eti 
Ke me usen ebede 

Körös 
K’ ebede… k’ ebede… 
K’ ebede… k’ ebede… 
O ikpanam s’ ifönde, 
Ke me usen ebede. 

2. Ini nsakhi iduhe, 
Ke me usen ebede, 
Yak iso fo ayayama, 
Ke me usen ebede, 
Eseme okpon k’isöñ 
Möñeyet ye mfukhö, 
Menere mbon iduö; 
Ke me usen ebede. 

3. Mbon ima inyenede 
Ke me usen ebede; 
Nyin k’ikpöñ mö kiet kiet 
k’edem, 
Ke me usen ebede; 
Me mkpasip isuande, 
K’ mfut m’eyo ’yeköri 
Eyenö inemesit 
Ke me usen ebede. 

Amen. 

      """
    },
    {
      "id": 675,
      "title": "NYAÑA MÖ EMI ESOPDE",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|s, :m, .f, ls, .s, :s, |d :t, .L, |L, :s, 
|s, :L,.t, ld :r .m |r :d .L, |s, :-} 

1. NYAÑA mö esopde ye mö ekpade, 
K’ mböm, sio mö ke idiök ye udi; 
K’ mböm yom mendidue ye mö eduöde, 
Nam mö efiök Jesus Andinyaña. 

Körös: 
Nyaña mö esopde ye mö 
ekpade, 
Jesus enyene ‘mböm, 
Enye ’yefak. 

2. ’Kposuk esind’ Enye, 
Enye k’ebebet, 
Ndibö mö esit öbuñöde; 
Kot mö edi k’ima, nam 
k’nsukesit, 
Eyefen k’enimde k’ akpanikö. 


3. K’öwöñesit owo, asua 
k’añwana, 
Mfön ikpöñ ekeme ndiñwam; 
K’ima y’mfönido otukde enye, 
Ukpöñ akakpade ’yedu uwem. 

4. Nyaña mö esopde, edi utom nyin, 
Nam ke Öböñ eyenö odudu; 
K’ime, damö di ke mkpafakh’ usuñ, 
Tiñ nö andiyo k’Öböñ amakpa. 

Amen. 
      """
    },
    {
      "id": 676,
      "title": "KA, NAM UTOM! ",
      // "audio":"",
      "body": """
      KEY Eb 3/4
      
{:d |m :-:s |d' :-:s |f:m :r |d :-:r 
|m :-:fe |s :-:s |L :s :fe |s :-} 

1. KA, nam utom, nyime 
‘ndinam, 
Uduak Ete k’idaresit, 
Usuñ Öböñ ’kasañade, 
Nt’ ofn ikpasañake? 
Nt’ ofn ikpasañake? 

2. Ka nam utom, iditakke, 
K’atakde fi mi, utip ko; 
K’owo esinde fi k’ ndek, 
Öböñ k’otoro, kpöñ owo, 
Öböñ k’otoro, kpöñ owo. 

3. Ka, nam utom fo mi k’isöñ, 
K’Enye ’made ’yetoro fi, 
K’anamde ke idaresit; 
Se anamde iditakke, 
Se anamde iditakke. 

4. Ka iso, nam k’idaresit, 
K’iduñ, eyeduök odudu 
Eyekop uyo Ödö-ndö 
Ödöhöde, “Ami ’medi” 
Ödöhöde, “Ami ’medi.” 

Amen. 

      """
    },
    {
      "id": 677,
      "title": "SAÑA YE ÖBÖÑ ",
      // "audio":"",
      "body": """
      KEY Db 4/4

{:s |d' :m .,f ls.m :-.d |r :m .,r ld :.
d |f :L .,L ls .d' :-.d' |t :L .,L |s :-} 

1. SAÑA ye Öböñ ke se 
ekpededi, 
Ke usuñ okimde, saña ye Enye; 
M’asua ekpeñwana, ndik ekpedi 
K’asañade ye Christ, 
ufegheke ‘ndik 

Körös: 
Saña ke… uko ka iso 
Sin ifik… ye odudu 
(y’odudu) 
Saña ye… Christ Andinyaña, 
Enye ’yeda fi osim utit. 

2. Saña ye Öböñ k’ebiet 
ekededi, 
K’ mfut y’ekim Enye 
’yewut fi usuñ 
Uyama Esie eyenö uñwana 
Eyenam nsat isöñ edi eduek. 

3. Saña ye Öböñ kunyuñ ubet
 k’usuñ, 
Se Enye etemede, nam ke ini; 
Daha ke uyo ye odudu Esie, 
K’asañade ye Christ afo eyenen. 

Amen. 
      """
    },
    {
      "id": 678,
      "title": "MBON UTOM ",
      // "audio":"",
      "body": """
      KEY C 4/4 

{.,s :L .,s |m :-l-.,s :L .,s |d' :-l.,
m :s ., d' |t :-l-.,r' :f .,L |s :-l -} 

1. UDIM Christian… k’ofri 
ebiet 
Iboho mi… ikpebe Christ… 
Ikot ikö… k’ñwed Esie… 
Öyöhöde… y’idorenyin… 

Körös: 
Yak kpukpru nyin emi 
ibohode ke Christ 
Ke ofri esit nyin isuan etop 
Esie; 
Yak nyin isöñ ida iñwam 
k’utom Öböñ, 
Ibeñe Enye ödiöñ udim 
Christian nyin. 

2. Iboho mi… man nyin 
ikwö… 
Itoro Christ… Edidem 
nyin… 
Man nditö… ekut usuñ… 
‘Ndiduk k’uwem... nsi nsi… 

3. ‘Nyeka iso… k’utom 
Öböñ… 
Idemere… uñwöñö nyin… 
Itien’ Enye… Ibuötidem… 
Tutu isim… iduñ k’ enyöñ… 

Amen. 
      """
    },
    {
      "id": 679,
      "title": "NAM AKPANIKÖ NÖ JESUS ",
      // "audio":"",
      "body": """
      KEY Bb 6/8 

{:s, |s, :L, :s, ld :-:t, |L, :t, :L, lr ::
d |t, :t, :L,ls, :s, :fe, |s, :-:-l-} 

1. S’ AFO ananam k’ebiet akade, 
Nam akpanikö nö Jesus, 
O! tim nam öfön saña k’uñwana, 
Nam akpanikö nö Öböñ. 

Körös: 
SAT: Suk ibuot nö Jesus 
(nö Jesus) Öböñ 
B: Suk ibuot nö Christ Öböñ 
SAT: ’Yemum fi akama, ösöñ fi 
idem, 
B: Eyesöñö fi idem, 
All: Tim saña ye Enye, kere 
Cross Esie, 
Nam akpanikö nö Jesus! 

2. Kini idomo, da k’ ñkañ Esie 
Nam akpanikö nö Jesus 
Ke öbuötd’ idem, afo eyekan 
Nam akpanikö nö Öböñ. 

3. M’asua ekpebiat, suk nam 
k’ idara, 
Nam akpanikö nö Jesus, 
K’ afaneköñ y’ ndik ekand’ ekuk, 
Nam akpanikö nö Öböñ. 

4. Ka, suan eti ‘mbuk, nyuñ 
toro Öböñ, 
Nam akpanikö nö Jesus; 
Nam itoro fo ödök ke enyöñ, 
Nam akpanikö nö Öböñ. 

Amen. 

      """
    },
    {
      "id": 680,
      "title": "NDITÖ UÑWANA ",
      // "audio":"",
      "body": """
      
KEY G 4/4

{:d .,r |m .,m :m .,m lf .,m :r .,d 
|r .,r :r .,m lr :r .,m |f .,f :f .,f ls .,f 
:m .,r |m .,m :m .,f lm } 

1. IMASAÑA ofri usen nte 
‘nditö uñwana 
K’ndiduök me utom ekim 
ye me ikpikpu ñkpö? 
Imökpöñ mö itiene uñwana 
otode k’enyöñ 
Kabaña eti y’utibe ima 
Andinyaña nyin? 

Körös: 
SA: K’isaña… k’iso Esie, 
TB: K’isaña k’iso Esie, ke iso 
Esie 
SA: Nte ‘nditö uñwana 
TB: Nte ‘nditö uñwana, ‘nditö 
uñwana 
All: Nte nyin imeyet öföñ 
nyin k’eti iyip Jesus? 
Imasaña ika k’uboñ nte 
‘nditö uñwana? 

2. Imasaña k’nsukidem nte 
‘nditö uñwana 
K’ererimbot ukut, ubiak 
ye idiökñkpö edude? 
Nte k’iyom mö eyode eka 
ke usuñ ekim? 
Ida mö iduk k’uyama, ke 
nsi nsi usen? 

3. Eyak nyin ikwö k’idara 
nte ‘nditö uñwana 
Yak idara erinyaña ’nam 
iso nyin ayama, 
Do ke menamidiök ekop 
eti mbuk isuande, 
Mö ye nyin itiene Jesus 
ika k’obio Edidem. 

Amen. 
      """
    },
    {
      "id": 681,
      "title": "EMI EDI UTOM NYIN ",
      // "audio":"",
      "body": """
      
KEY C 6/8

{|s:-:fe lL :-:s |s :-:-lm :-: |s ::
s lf:-:r|m :-:-l-:-} 

1. NYIN ndidöñ esit eke 
’fukhöde 
Edi utom emi nyin 
inyenede, 
Ndiyom mendisop ke 
enyöñ obot, 
Ida mö k’idara isin ke otu. 

2. Nyin iyeka iso ndifön ido, 
K’enyiñ Jesus, iñwam mö 
ek’ eduöde, 
Inö m’ubuene ‘ñkpö ke 
ntarubök; 
Edi kpa utom nyin, ke uyo 
Öböñ. 

3. Yak nyin ika iso, ibere 
k’Öböñ; 
Iyom eti utip ököñwöñöde 
Eti öföñ uböñ y’ediye 
iduñ, 
Emi Andinyaña edinöde do. 

Amen. 
      """
    },
    {
      "id": 682,
      "title": "JESUS ANDIÑYAÑA MI ",
      // "audio":"",
      "body": """
      
KEY A 4/2

{|d :d .d |m :-.d lt, :r |d:-|L, 
:L,.L, |s :-.dlt, :d |r :-} 

1. OWO isañ k’usuñ uwem, 
K’emen cross esie kpukpr’ 
usen 
Ke ’memidem, enye okot, 
“Jesus Andifak.” 

2. Ke Satan odomod’ enye, 
Ibereke k’idemesie; 
K’ mbuötidem, enye okot: 
“Jesus Andifak.” 

3. K’okopde ‘ndik, ese enyöñ, 
Do k’ enye enyene emem 
Spirit esie adara ke 
“Jesus Andifak.” 

4. Öböñ da mi usuñ k’uyen, 
Man ’ma Fi nyuñ ’nim 
mbet Fo; 
Nyetoro Fi k’nsinsi 
“Jesus Andifak.” 

Amen. 

      """
    },
    {
      "id": 683,
      "title": "SÖÑ IDEM, NYUÑ DÖHÖ BABA!",
      // "audio":"",
      "body": """
     
KEY G 6/8 

{:s, |s, .d :-:d ld :-.t, :d |m :-:ls 
:-:s |s :-.r :r lr :d :r |m :-:-l-:-} 

Soprano Solo: 

1. EYEN, ömötöñ’ isañ uwem, 
K’ata akwa usuñ – uwem 
Eyekut ediwak idomo, 
Idiökñkpö ke kpukpru ebiet. 
Ererimbot öyöhö y’udöñ, 
Ñkpö mkpa kpukpru ebiet, 
Kini idomo ye ’memidem, 
Söñ idem nyuñ döhö baba! 

Körös: 
Söñ idem nyuñ döhö baba 
(baba) 
Söñ idem nyuñ döhö baba 
(baba) 
Söñ idem, eyen! söñ idem 
eyen! 
Söñ idem nyuñ döhö baba! 

2. K’uko k’edinyene ifure 
K’ötöñöde anyan isañ, 
Mbuötidem fo ye Abasi 
Eyenam fi öböh’ idiök, 
M’idomo eyesuk ewawak, 
Nte idim möñ ebede, 
K’erinam akpaniko k’uwem, 
Söñ idem nyuñ döhö baba! 

3. K’afo ediyomde nsaña, 
Yom ye mbio akpanikö, 
Da ye m’ufan fo k’ini 
’domo 
Kukpöñ mö uyom mbufa, 
Ke m’idiök ufan etapde fi 
Ndifiök iniñe ke wain, 
Söñöda k’ime y’eti ido, 
Söñ idem nyuñ döhö baba! 

Amen.  
      """
    },
    {
      "id": 684,
      "title": "NDISAÑA KE UÑWANA",
      // "audio":"",
      "body": """
     KEY Db 4/4 

{|s :s .,L ls :m .,f |s :d' .,r' ld' :L |s 
:s .,L ls :f .m |m :r .d lr :-} 

1. IÑWANA ndisaña k’ikpat Öböñ 
K’idomode nditiene Öböñ; 
Ke ndinam uwem nyin ebiet Esie 
Nyin ida m’ikwö idara idi. 

Körös: 
Öfön didie ndisaña ke ikpat Öböñ, 
Saña k’uñwana, saña k’uñwana, 
Öfön didie ndisaña ke ikpat Öböñ 
Ke eti usuñ. 

2. K’iyirede ye Andida nyin 
usuñ, 
K’edomode nyin ndikpöñ usuñ, 
K’iberede k’ubök Andinyaña nyin 
K’idara iyetoro kpukpr’ usen. 

3. Isaña ke mbuötidem ke Öböñ 
Ikaka iso itiene Enye 
K’ikutde Enye “Edidem ke uyai” 
Edinem didie ndidu y’ Enye. 

Amen. 
 
      """
    },
    {
      "id": 685,
      "title": "IKWÖ MBON EKÖÑ ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{|d, :m, ls, :-.s, | L, .t, :d .r lm :d |f 
:-.f lm :-.m |r :r lr: } 

1. MBON ufak edemere, 
Eyire ke Christ Öböñ 
Akwa idut emen idem, 
Mbak m’asua edikan. 

Körös: 
ATB: Fiori ökpösöñ ke ikwö 
All: Fiori ökpösöñ ke ikwö 
Nte mbufut inyañ, 
Oto k’ iyip Christ ufak nyin, 
Ikakan ibe oro, 
B: Ikakan ibe, ikakan, ikan 
ibe oro, 
SAT: Ikakan ibe oro 
B: Ikakan ibe, ikakan, ikan 
ibe oro, 
SAT: Ikakan ibe oro 
All: Oto k’ iyip Christ ufak 
nyin, 
Ikakan ibe oro. 

2. Mbon uko ini oko 
Ekeda k’ isöñ emi, 
Se idiöñö erikan mö, 
Ekekan k’ iyip Jesus. 

3. Nyin idifegheke mkpa, 
Uwem odibe ke Christ, 
Ke usen eridi Esie, 
Iyebuana ke uböñ. 

4. Nyin iyeda k’ iso Esie 
Iyekut Öböñ uböñ, 
K’ iso Esie iyedara 
Iyenyuñ ibö utip. 

Amen. 
      """
    },
    {
      "id": 686,
      "title": "KUNYIME UNÖ IDOMO ",
      // "audio":"",
      "body": """
      KEY Bb 6/8.6 

{|m :-:-lm :f :m |r:-:-lr :-:-|d 
:-:-ld:r :d |t, :-:-l-:-:-} 

1. K’ IDOMO edide, kuyak akan fi, 
Ke akande kiet, eyekan mö eken, 
Ñwana nte eren, eyekan idiök, 
Wuk enyin se Jesus eyeda fi usuñ. 

Körös: 
Beñe Jesus añwam fi, 
Man omum fi akama 
Enye oyom ‘ndiñwam fi, 
Eyeda fi usuñ. 

2. Kpöñ mbukpo ufan, ye idiök ikö, 
Kpono enyiñ Öböñ, kuda k’ ikpikpu,. 
Tim kpeme idem fo, fön ido y’ owo, 
Wuk enyin se Jesus, eyeda fi usuñ. 

3. Andikan, Öböñ eyenö anyanya 
Okposuk iduöde, k’utit iyekan, 
Öböñ eyedemere odudu nyin, 
Kam se Jesus, eyeda fi osim utit. 

Amen. 
      """
    },
    {
      "id": 687,
      "title": "DARA KE ÖBÖÑ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:s, |s, :m, .,f, ls, :d .,r |m :-l-:d |r 
:r .,r lr :m .,r |d :-l-} 

1. TORO Öböñ nyuñ daresit, 
Mö emi esit enende, 
Kpukpru ek’ emekde Enye, 
Bin mfukhö ye ukut fep. 

Körös: 
Dara (ke Öböñ) Dara (dara) 
Köm Öböñ kemi, daresit; 
Dara (ke Öböñ) Dara (dara) 
Köm Öböñ kemi, daresit; 

2. Dara, Enye edi Öböñ 
K’ isöñ ye ke heven nde, 
K’ ikö Enye anam ama, 
“Akwa y’ Ökpösöñ” Andifak. 

3. Me asua k’ eñwan ekpewak 
Enyuñ ekpere ndikan, 
Udim eköñ Öböñ edu, 
Ewakde ekan me asua, 

4. K’ ekim akande fi okuk, 
Ke ikpa enyöñ okimde, 
Kutimere esit baba 
Buötidem nyene erikan.
 
5. Toro Öböñ nyuñ daresit 
Nam itor’ Esie ebighi 
Ke ofri esit ye uyo, 
Kwö hallelujah k’ ökpösöñ. 

Amen. 

      """
    },
    {
      "id": 688,
      "title": "KE EDIWAK MFUKHÖ",
      // "audio":"",
      "body": """
      KEY F 4/2

{|m :d lL :s |f :m lr :-|m :d ls :s |s 
:fe ls :-} 

1. KE mfukhö ye k’ukut 
Christian suk ka, ka iso, 
Söñö da, ndiñwana, 
Söñö ke ikö uwem. 

2. Christian suk ka, ka iso 
Buana k’ eköñ, bin m’ asua, 
Kukpa ‘mba, utom odu, 
Ökpösöñ utom-ime. 

3. Christian, ekufiak edem, 
M’ eyekpöñ añwa-eköñ 
Afiak ke idiök ini? 
Ufiökke odudu Christ? 

4. Kpöñ mfukhö nyuñ dara, 
Sine ‘ñkpö eköñ heven, 
Eñwan idibighike, 
Eyekwö ke akande. 

5. K’ukut, nyen’ idorenyin, 
Eyesökhi möñ-eyet 
Kuyak ‘ndik öbiöñö fi 
Söñö eti k’ unana. 

6. Daha k’enyöñ ka eköñ, 
Eyenyene erikan 
Me asua ekpebiöñö 
Iköt Christ, eka iso. 

Amen. 
      """
    },
    {
      "id": 689,
      "title": "EDI, MBON UKUT ",
      // "audio":"",
      "body": """
      
KEY C 4/2

{|s:-lm:d|L:-.sls:-| l f:-.m f.s 
:L .t |d' :-ls :-} 

1. EDI, mbon ukut, ekpade mba, 
Edi ke ebekpo mböm k’ edöñ, 
Eñwaña esit mi, ebuk ukut mi, 
Baba mfukhö, heven mikökke. 

2. Anan’ idorenyin ye öbuñ’ esit, 
Idorenyin odu mibiañake; 
Iberedem k’etiñ mi suñ suñ ete: 
Baba mfukhö, heven mikökke. 

3. Sese Uyo uwem ye möñ öfönde, 
Otode ke ebekpo Abasi! 
Edi k’usör’ ima, k’ öfiökde ete: 
Baba mfukhö, heven mikökke. 

Amen. 
      """
    },
    {
      "id": 690,
      "title": "ABASI EYEKWÖHÖRE MÖÑEYET ",
      // "audio":"",
      "body": """
      
KEY G 4/4

{:s, |d:-.dl d .r :m .f |s :-l-:f |m :lr 
:-.r |d :-l-} 

ABASI eyekwöhöre möñ eyet, 
Mkpa ididuh’ aba, 
Mkpa ididuh’ aba 
Me mfukhö me eyet 
y’ ubiak 
Ñkpö edem emebe efep 
Ñkpö edem emebe efep. 

Amen. 

      """
    },
    {
      "id": 691,
      "title": "ÑKPÖ-UTO NYIN EMI EBEDE ",
      // "audio":"",
      "body": """
     KEY Eb 3/4

{:d .,r |m :-.m :r .m |s .,f :m :m .f 
|s :-.m :r .f |m :-} 

1. ESIT mi kpöñ ñkpö isöñ 
Uwem ebe ‘nte usen, 
Ebuana mö amabiara, 
Mö kiet kiet k’ebe efep.
 
Körös: 
Ke ikpöñde ererimbot, 
Y’ ekiker’ uwem emi; 
Iyekut ñkpö-uto nyin, 
K’ ebiet iduñ Ete nyin. 

2. Nti ufan edu ye nyin, 
Mö ekpeme isañ nyin; 
Ediwak ke ebebet nyin, 
K’ebebet k’edem oko. 

3. Ekukot mö ekekpöñde, 
Eböhöde oyobio, 
K’ikpöñde mö k’mben esuk, 
Iyesobo k’ nsinsi. 

Amen.  
      """
    },
    {
      "id": 692,
      "title": "MMÖÑ-EYET IDUHE ABA ",
      // "audio":"",
      "body": """
      KEY Bb 3/4

{|s, :m, :f, ls, :-:d |d :-:L, lL, :-:L, 
|s, :-:s, ls, :d :m |r : -:r lr :-} 

1. M’UÑWÖÑÖ do k’ikö 
Öböñ, 
Önö mbon mba emem; 
Se inemde ikan edi 
K’eyekwökhöre möñ-eyet. 

Körös: 
’Yekwökhöre (mmöñ-eyet) 
’Yekwökhöre (mmöñ-eyet) 
Eyekwökhöre möñ-eyet. 

2. Ke nyin ibiomd’ udop 
cross mi, 
Esit nyin öyöhö y’ ubiak; 
Do k’ nsinsi usen Öböñ, 
Eyekwökhöre möñ-eyet. 

3. O, owo ukut, söñ esit, 
K’ ukut ebed’ anyanya do; 
Söñöda ye Abasi fo, 
Eyekwökhöre möñ-eyet. 

4. O, ata inem uñwöñö, 
Iyesöñö k’ mbuötidem; 
M’ukut isöñ ibighike, 
Eyekwökhöre möñ-eyet. 

Amen. 

      """
    },
    {
      "id": 693,
      "title": "ÑKPÖ KIET OKPOYOMDE ",
      // "audio":"",
      "body": """
      KEY D 6/8

{|m :-:f lfe :-:s |L :-:s ls :m :-|d' 
:-:t lL :-:s |f :-:m lf :-:-} 

1. KE usuñ isañ mi k’ isöñ 
Ke ñkpö ekededi 
Odu ‘ñkpö kiet okpoyomde 
Akande ñkpö efen. 

Körös: 
S: Odu ‘ñkpö kiet okpoyomde 
Edi Jesus ke esit. 
ATB: Idigh’ inyene m’ukpono 
Edinö eti itie 
Idighe inem idiökñkpö 
Edi Jesus ke esit. 

2. Ke me ini afaneköñ 
Ke spirit öfukhöde 
Odu ‘ñkpö kiet okpoyomde 
Akpanyañade ukpöñ 

Körös: 
S: Odu ‘ñkpö kiet okpoyomde 
Edi Jesus ke esit. 
ATB: Idighe me inem ikö 
Anam mfukhö ebe; 
Idighe edise k’ mböm, 
Edi Jesus ke esit. 

3. Ke m’ini ubiak y’ udöñö 
Ke mkpa ekperede; 
Odu ‘ñkpö kiet okpoyomde 
Emi ökpödöñd’ esit. 

Körös: 
S: Odu ‘ñkpö kiet okpoyomde 
Edi Jesus ke esit. 
ATB: Ukpök ñkpö ererimbot, 
Inöhö ndöñesit; 
Usuñ ndöñesit odu: 
Edi Jesus ke esit. 

Amen. 
      """
    },
    {
      "id": 694,
      "title": "NYIN IYETIM IFIÖK IKAN ",
      // "audio":"",
      "body": """
      KEY F 4/4

{:d .,r |m .,m :m .,m lm :r .,d |r .,d 
:d .,L, ld } 

1. MBUFUT inyañ uwem, 
omotimerede nyin 
Oyobio y’idiök enyöñ 
iyakke idaresit, 
Ko k’eti isöñ oro, 
k’ntukhube ebede 
Nyin iyetim ifiök ikan 
k’ini ’so (k’ini ’so). 

Körös: 
K’ini ’so k’usiere edide, 
K’etañde ‘ndima enyöñ k’iduñ, 
Nyin iyebuk nte ikekande, 
Kor’ iyetim ifiök ikan 
k’ini ’so (k’ini ’so). 

2. Nyin idodu k’ unana ke se 
uwem oyomde, 
Unana ufök y’ udia, iduñ 
k’edisat isöñ; 
Nyin ibuötidem k’ Öböñ 
man ekem k’ ikö Esie, 
Nyin iyetim ifiök ikan 
k’ini ’so (k’ini ’so). 

3. M’idomo omosim nyin edi 
nyin mi ifiökke, 
Se Abasi anamde ndida 
nyin ‘nsim iduñ 
Edi k’ukpeme Esie, 
iyetien’ isim mkpa, 
Kor’ iyetim ifiök ikan 
k’ini ’so (k’ini ’so). 

4. M’idomo ye me afia 
ewewak ndibuat nyin, 
Ndien esit öduö nyin 
k’ ndisime erinam, 
Didie ke ikut ukut 
k’iyomde ‘ndinam eti, 
Nyin iyetim ifiök ikan 
k’ini ’so (k’ini ’so).

 Amen. 
      """
    },
    {
      "id": 695,
      "title": "WUK ENYIN SE ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:m, .,f, |s, .,s, :fe,.,s, ld .,t, :L, .,m, 
|s, .,s, :s, .,s, ls, :s, .,d |t, :-l-:s, .,r 
|d :-l-} 

1. KE usen ekim edide, 
Esit fo otimere; 
Wuk enyin… wuk enyin… 
Imenyene idorenyin 
K’eti iduñ omodu, 
Se k’eyekut uñwana. 

Körös: 
Wuk enyin… nyuñ se 
Abasi (wuk enyin) 
Wuk enyin… s’ Enye iso 
(iso) 
Wuk enyin… se be idem 
fo (wuk enyin) 
Wuk enyin… yom ‘mfön 
(mfön) 

2. K’ ererimbot efekde fi, 
Ke idiökñkpö awakde; 
Wuk enyin… wuk enyin, 
Udim nti owo edu, 
Eyöhö k’obot y’usuk; 
Se k’eyekut uñwana. 

3. K’ mbiomo fo odobide, 
Ke okopd’ ubiak y’ukut 
Wuk enyin… wuk enyin 
M’ enyen’ esit ima edu 
Edara ndiñwam fi, 
Se k’eyekut uñwana. 

4. Kini oyobio ebede, 
Uñwana eyeyama, 
Wuk enyin… wuk enyin, 
Abasi ikpöñ akara 
Kpukpru ndibe ñkpö, 
Se k’eyekut uñwana. 

Amen. 

      """
    },
    {
      "id": 696,
      "title": "ENYE ODU YE AMI",
      // "audio":"",
      "body": """
      KEY F 4/4

{:s, .,s, |d .,t, :d .,r lm .,r :m .,f |s 
:L ls :L.L |s :-l-:f |m :-l-} 

1. MENYEN’ Ufan 
’mibiañake, edi Christ Öböñ, 
Enye ’du y’ami (y’ami), 
Nte eka, Enye önö mi ndöñesit 
Enye ’du y’ ami (y’ami). 

Körös: 
Enye odu y’ami ke m’ufan 
ekpöñde 
Enye odu y’ami onyuñ 
ama mi (ama mi) 
Ih, ke uñwana me ke 
ökpösöñ ekim, 
Enye ’du y’ami, (y’ami) 

2. Ke afaneköñ, Enye owut 
mi s’ifönde, 
Enye ’du y’ami 
Ami ’ñwana ndifön ma ke 
usen k’usen, 
Enye ’du y’ami (y’ami). 

3. Uyomke Andinyaña emi önöd’ emem 
Edidu y’ afo? (y’afo) 
Eyenö fi inemesit y’ikwö idara, 
K’odude y’afo (y’afo). 

Amen. 

      """
    },
    {
      "id": 697,
      "title": "O KE ISO FO, ÖBÖÑ",
      // "audio":"",
      "body": """
      
KEY D 4/4

{:d |d :-.r lm :f |s :-.L ls :f|m :-lr 
:r |d :-l:s |d' :-ld' :r'|d' :-lL :L ls 
:-l } 

1. K’ISO Fo Öböñ, ukpöñ mi 
adara, 
K’ñkotde Fi ke ukut mi; 
Ndöñesit mi k’usen y’ikwö k’ekim, 
Idorenyin y’erinyaña. 

2. Ekpemeröñ edidu möñ 
y’eröñ Fo, 
Man öbök mö ke ima Fo? 
Nso ke ntua k’itikhere mkpa, 
Me k’nyode ke wilderness. 

3. Enye ’se tösn enjel duop 
k’edara, 
Kpukpru ebet ikö Esie; 
Etiñ! uyo Esie ada k’nsinsi, 
Ndien mö etoro Öböñ. 

4. Eti Ekpemeröñ ‘nyedi ikot Fo, 
Möfiök edinem uyo Fo; 
Kök nyuñ kpeme mi, Afo ’di okimö, 
K’ Afo ‘nyedara k’nsinsi. 

Amen. 
      """
    },
    {
      "id": 698,
      "title": "EDI ENYE",
      // "audio":"",
      "body": """
      KEY Db 4/4 

{:m.,f|s s.-:s.Lls m.-:m.,s
|d' .,r' :d' .L ls } 

1. ME kiet odu ndiñwam nyin 
eke öfiökd’ esit nyin 
Emi ukut uwem osimd’ 
ökpösöñ, 
Kiet emi atuade mböm 
onyuñ otode k’ima, 
Enye önö nyin m’edidiöñ iyomde? 

Körös: 
Kiet odu… kiet odu… 
Kiet emi edi Jesus Christ 
ikpöñ, 
Ke ukpöñ öfukhöde otode 
ke ukut, 
Enye edi Ufan emi añwamde. 


2. Me kiet odu ndiñwam nyin 
k’idude k’memidem 
K’mbiomo uwem anamde nyin iduö, 
Emenere nyin ke ima 
onyuñ añwam k’mbiomo, 
Omum nyin k’nsinsi ubök Esiemö? 

3. Me kiet odu ndiñwam 
nyin, ’nö anamidiök emem, 
Ke enye enyenede mbuñesit; 
Etiñde ikö erifen, önö ata uböhö 
Iyip Esie ’nam isana nte snow? 

4. Me kiet odu ndiñwam nyin 
ke utit ekperede, 
Ndida nyin mbe ke ekim mkpa, 
Emi añwañad’ usuñ nyin, 
ebinde ‘ndik y’eyikhe, 
Adade spirit nyin ebe ke ukut. 

Amen. 
      """
    },
    {
      "id": 699,
      "title": "ENYE IFREKE ESIEMÖ ",
      // "audio":"",
      "body": """
      KEY G 6/8

{:s, |d :-:dld :t, :d |r :-:r lr :-:s, 
|r :-:rlr :-.d :r |m :-:m lm :-} 

1. KE ekim ofukde usuñ mi, 
Usuñ onyuñ oyomd’ eti, 
Uñwöñ’ emi enem mi k’ukpöñ, 
Enye ifrek’ Esiemö. 

Körös: 
Enye ifrek’ Esiemö (baba) 
Enye ifrek’ Esiemö 
Ke m’ufan ekañde, kiet odu, 
M’idifreke Esiemö. 

2. Ke kpukpru m’uduak mi 
ekpude, 
K’ndik ofukde ukpöñ mi, 
Mbere k’ ikpanesit Esie, 
Idifreke Esiemö. 

3. O! Enye ifreke Esiemö 
Owut ima kpukpru usen, 
K’usen oro Enye ’kedide, 
Anam iduñ k’esit mi. 

Amen. 
      """
    },
    {
      "id": 700,
      "title": "OKIM, OSUK EDI OKIM ",
      // "audio":"",
      "body": """
      KEY G 4/4

{:s, |s, :-.m lt, :d |r :L, l -:t, .,L, 
|s, :-l-:f |m :-l -} 

1. K’ IDARA ye k’ mfukhö 
Christ edi… okim… 
Ke kpukpru usenubök 
Eyedi… okim… 

Körös: 
All: Andinyaña ikpuhö 
SA: Uböñ Esie ’yama 
TB: Uböñ Esie ke ayama 
All: Nyekwö k’ nsi nsi 
Enye ’di… okim… 

2. Ke ukut ererimbot 
Christ edi… okim… 
K’odudu y’ ndöñesit 
Enye ’di… okim… 

3. K’ inyene okurede, 
Christ edi… okim… 
Y’ ima emi okponde 
Enye ’di… okim… 

4. Enye ada mi usuñ, 
Christ edi… okim… 
K’idukde k’ uböñ Esie 
Eyedi… okim… 

Amen. 

      """
    },
    {
      "id": 701,
      "title": "KE EBEDE ME MBUKPÖÑ ",
      // "audio":"",
      "body": """
      KEY Eb 4/4 

{|s.s :s.L|s.m:r.d|L :L ls:ls 
.s :s.L |s .m :r .d |r :d |r:-} 

1. K’AFANEKÖÑ ye oyobio edide, 
Usuñ fo okim, ukpöñ fo öfukhö, 
Eti uñwana do önö fi k’iso, 
Okposukedi ebede k’idomo 

Körös: 
Se uñwana utin k’ ayama; 
Se uñwana ebinde ndik; 
Se ke iso, ekim eyebe; 
Buötidem ye Jesus Enye 
ekpere. 

2. Okposuk mufiökke ‘ntak 
ekotde fi, 
Ndibiom mbiom’ emi 
odobide, 
Nim cross oro k’iso fo 
k’usen ekim, 
Buötidem ye Jesus k’ofri 
usen fo. 

3. Ka ke mbuötidem nyuñ 
kan m’idomo; 
Fiök k’Andinyaña fo odu 
ndiñwam, 
Kufeghe okposuk eköñ ösöñde 
Öböñ ömöñwöñ’ erikan önö fi. 

4. Ke eköñ ösöñde, k’ukut 
okponde, 
K’idomo ösöñde, akpakande fi; 
Öböñ k’ekpere fi, önö odudu 
Ndiyö mö kpukpru ke mö edide. 

5. Öböñ ödöh’ ete k’afo omodot, 
Owo akpanikö ke usuñ uwem; 
Ke edomode fi ke akwa ikañ 
Eyenyen’ erikan emi oyomde.

 Amen. 
      """
    },
    {
      "id": 702,
      "title": "LILY ITIKHERE ",
      // "audio":"",
      "body": """
      KEY F 2/4 

{.d m |s.s:L.s|s.m:-.d|r.d 
:d .,L, |s, :d .r |m .m :m .m lL .s 
:s .m |r :-} 

1. JESUS edi Ufan mi, Enye ekem y’ami, 
Öfön akan tösn duop ke ukpöñ mi, 
Lily ke itikhere, mokut k’Enye ikpöñ 
Kpukpru s’edad’ eyet mi man mböhö, 
Ndöñesit k’ukut mi, uñwam k’afaneköñ, 
Oyom nyak mbiomo ’nö Enye 
Edi Lily k’itikhere, ntanta usiere 
Öfön akan tösn duop ke ukpöñ mi. 

Körös: 
Ndöñesit k’ukut mi, 
uñwam k’afaneköñ, 
Oyom nyak mbiomo ’nö Enye, 
Edi Lily k’ itikhere, 
ntanta usiere, 
Öfön akan tösn duop ke ukpöñ mi. 


2. Emen me-mfukhö mi, obiom me-ukut mi, 
K’idomo Enye ’di Akwa Tower mi, 
Kpukpru ndem k’esit mi, 
mayak mö ’nö Enye, 
Enye ekpeme mi k’odudu Esie, 
Ererimbot esin mi, Satan odomo mi, 
Oto ke Jesus nyesim utit 
Edi Lily k’itikhere, ntanta usiere, 
Öfön akan tösn duop ke ukpöñ mi. 


3. Enye idikpöñke mi, idinyuñ isinke, 
K’ndude k’mbuötidem k’uyo Esie 
Akan mi okuk k’ikañ, ndifegheke ‘ndik, 
Enye ada manna öbök mi k’ukpöñ, 
Ke nsimde ke uböñ, ‘nyekut iso Esie, 
K’ebiet möñ inemesit odude 
Edi Lily k’itikhere, ntanta usiere, 
Öfön akan tösn duop ke ukpöñ mi. 

Amen. 
      """
    },
    {
      "id": 703,
      "title": "NTE JESUS EKERE? ",
      // "audio":"",
      "body": """
      KEY Db 6/8  

{:s |m :-:r ld :-:L .L |s :-:f lm:-:m 
.m |r :de :rls :-:f|m :-:-l-:-: } 

1. NTE Jesus otim ekere, 
Kini ukut mi ye ubiak, 
Kini ’nanenyin y’mbiomo 
’kponde, 
Ke usuñ oyomde eti? 

Körös: 
Ih! ekere, Enye ’kere, 
Enye öfiök ukut mi, 
Ke m’usen ediökde, 
Ekim okponde, 
Möfiök Enye, ’kere (’kere) 

2. Me Jesus ekere usuñ mi, 
Ke ekim ye ‘ndik okponde? 
K’usen ebede, k’ekim edide, 
M’Enye ekere ndiñwam? 

3. Me Jesus ese ke ñwanade 
Ndiböhö me idomo; 
Ke mfukhö mi ’nyeneke 
uñwam, 
Ntua eyet kpukpru ini? 

4. Me Jesus ekere ke ‘ñkömde 
M’ufan ke isöñ etie-suñ, 
Esit mi öduö onyuñ öbuñö, 
Nt’ Enye ekere kpukpru? 
Amen. 
      """
    },
    {
      "id": 704,
      "title": "TUTU ENYE EDI ",
      // "audio":"",
      "body": """
      KEY D 3/4

{| s :m :f |s :-:d' | r' :d ':t |d' :-:|
L :d ' :L |s :-:m | s :f :m |r :-:-} 

1. YAK ika iso k’ikwö 
Tutu Enye ’fiak edi 
Ke ekpri ini emi, 
Yak isaña k’ uñwana, 
Ikere obio heven 
K’iso tutu Enye ’di 

2. Ke m’ufan nyin ekpöñde, 
Eduk k’nduök odudu, 
‘Nte anam uwem isöñ 
Akabare efek fi? 
Dop uyo ke eseme, 
Bet tutu Enye edi. 

3. Ke m’ukut efikde nyin, 
Iyenam mö efere 
Ediwak ubiak ke Cross 
Owut ikpikpu uwem -
Mkpa, ekim ye udi 
Ebet tutu Enye ’di. 

4. Se, enim usör’ ima, 
Eñwöñ wine, ebuñ uyo 
Nditi, tutu Öböñ 
Okot nyin k’iduñ k’enyöñ 
Mö k’isöñ ye mö k’uböñ 
Ebet tutu Enye ’di. 

Amen. 
      """
    },
    {
      "id": 705,
      "title": "KAM TIÑ NÖ JESUS ",
      // "audio":"",
      "body": """
      KEY Bb 
44 10.10.10.7 – 10.7.11.7 

{|d :m lm :r |d .,r :d .,L, ls, :d |r 
:r .,m lr :s,|m :m .,f lm :d } 

1. AMAKPA ‘mba, onyuñ öduö esit? 
Kam tiñ nö Jesus, kam tiñ nö Jesus, 
Ömöfukhö k’idara ’kpöñde fi? 
Kam tiñ nö Jesus Öböñ. 

Körös: 
Kam tiñ nö Jesus, 
kam tiñ nö Jesus 
Ata Ufan ifiökde; 
Ufan efen iduhe nte Enye,
Kam tiñ nö Jesus Öböñ. 

2. Afo omosobo y’ möñ eyet? 
Kam tiñ nö Jesus, kam tiñ 
nö Jesus, 
Nt’ idiökñkpö odibe k’uwem fo? 
Kam tiñ nö Jesus Öböñ. 

3. Nte k’efeghe ediwak ukut? 
Kam tiñ nö Jesus, kam tiñ 
nö Jesus 
Omotimer’ esit ’baña mkpöñ?
Kam tiñ nö Jesus Öböñ. 

4. Ekikere ‘mkpa otimere fi 
Kam tiñ nö Jesus, kam tiñ 
nö Jesus, 
Eridi Jesus k’uböñ efek fi? 
Kam tiñ nö Jesus Öböñ. 

Amen. 

      """
    },
    {
      "id": 706,
      "title": "UFIÖKKE ENYE KE EKERE?",
      // "audio":"",
      "body": """
      KEY Ab 4/4 

{|m :-.s lf .m :r .,m |d :-ls, :-|L, 
:-.d ls, :d|r:-l-: } 

1. KE öfukhöde ke spirit 
Oto k’mbiomo, 
Nam Jesus öfiök esit fo, 
Enye ’kere fi. 

Körös: 
Ih! Kiet odu ‘ndibiom 
‘mbiomo fo, 
Onyuñ añwam fi; 
Ka, nyuñ tiñ kpukpru nö 
Jesus, 
Enye ’kere fi. 

2. Kini ukot fo ofumde, 
Kini idomo, 
Ti Jesus akakpa ’nö fi, 
Enye ’kere fi. 

3. Nte ukut omosim fi 
Ke uwem emi? 
Christ Öböñ idikpöñke fi, 
Enye ’kere fi. 

4. Nt’ ikpökhidem fo emem 
Oto ke ubiak? 
Kere baña ukut Öböñ, 
Enye ’kere fi. 

5. K’ufan y’inyene ’suanade, 
K’uwem ösöñde; 
Öböñ k’osuk odu y’afo, 
Enye ’kere fi. 

6. Kemi ke kpukpru uwem fo, 
K’ikwö ye k’akam; 
Kpat usuñ fo n’Öböñ Jesus, 
Enye ’kere fi. 

Amen. 
      """
    },
    {
      "id": 707,
      "title": "JESUS, AKAKAN UFAN ",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:m, .f, |s, :s, ld :-.t, |L, :d ls, : |
d .d :-.dld :t, .,d |r :-l-} 

1. KIET odu öfiökde esit 
nyin, 
Jesus akakan Ufan; 
K’ unana Enye önö mfön, 
Jesus akakan Ufan. 

Körös: 
Jesus akakan Ufan 
(akpan ufan) 
Jesus akakan Ufan 
(eti Ufan); 
Enye öfiök ukut nyin 
Onyuñ obiom ‘mbiomo nyin 
Jesus akakan Ufan. 

2. Enye eyedöñ esit k’ ukut 
Jesus akakan Ufan; 
Eyetua mböm, añwam, 
ödiöñ, 
Jesus akakan Ufan. 

3. Eyeñwam fi kini idomo, 
Jesus akakan Ufan; 
Eyekama fi k’ubök Esie, 
Jesus akakan Ufan. 

4. Kiet odu akpad’ önö 
kpukpru, 
Jesus akakan Ufan; 
Enye önö erifen k’mfön, 
Jesus akakan Ufan. 

Amen. 

      """
    },
    {
      "id": 708,
      "title": "JESUS ÖFIÖK UKUT FO ",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, :s, ls, :s, |d :-ld :-|r :r lt, :t, 
|d :-l-:-} 

1. JESUS öfiök ukut ye unana fo; 
Öfiök mbuñesit, okop akam fo, 
Sian Enye ukut fo, 
buötidem y’Enye 
Top mbiomo fo nö Enye k’eyeñwam. 

2. Buötidem ke Jesus, eyekut unen; 
Enye eyefuk fi, osio k’idomo, 
Enye eyeda fi usuñ ke emem 
Tutu osim k’usen uyama uböñ. 

3. Christ öfiök ukut fo, okop eseme 
K’esit öfukhöde, okop eyet fo, 
Eyenö odudu ndikan ndik, 
Eyedöñ fi esit, etre möñ eyet. 

Amen. 
      """
    },
    {
      "id": 709,
      "title": "EDIMA EBIET UBÖHÖ UKPÖÑ MI ",
      // "audio":"",
      "body": """
      KEY Eb 6/4

{:d |m :-:s ld' :-:d' |t:-:t lL :-:L 
|s :-:m l s :f :r | f :-:-lm :-:-} 

1. EBIET uböhö ukpöñ mi, 
Ke ini ukut mi, 
Ye ke ini afaneköñ, 
Mbere ke Afo. 

2. Metiñ mfukhö mi ’nö Fi, 
Erikök oto Fi, 
Ikö Fo önö erikök 
Ke kpukpru ubiak mi. 

3. O! k’ eyikhe akande mi, 
Ñkwe ndöñesit; 
Kpukpru idorenyin etak 
Sia ñkoyomke Fi. 

4. Öböñ, ndifeghe ‘ñka möñ? 
Möbuötidem y’Afo, 
Ukpöñ mi eyeyire Fi, 
K’ ndude ke ntöñ. 

5. Itie mböm ana iñwañ, 
Ukpöñ mi emedi 
Ndinam s’ Afo amade, 
Ke idak ukot Fo. 

Amen. 

      """
    },
    {
      "id": 710,
      "title": "ENYIÑ ORO ENEM DIDIE!",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:s|d' :t lL :s |s :flm :m |r:d lf :m 
|r :-l-} 

1. ENYIÑ Jesus enem didie 
Ye andibuötidem! 
Akan mfukhö ye ubiak, 
Emen ndik efep. 

2. Ökök spirit öbuñöde, 
Önö ndöñesit, 
Önö owo öbiöñ udia 
Ye ata ifure. 

3. Enyiñ emi edi ITIAT, 
Ebiet uböhö mi, 
Onyuñ öyöh’ unana mi 
Y’uwak mfön Esie. 

4. Jesus, Ekpemeröñ, Ufan 
Oku ye Edidem, 
Öböñ mi ke kpukpru usuñ 
O! bö itoro mi. 

5. Nyesuan etop ima Fo, 
K’ uwem mi ke isöñ; 
Enyiñ Fo eyedemere 
Ukpöñ mi ke mkpa. 

Amen. 

      """
    },
    {
      "id": 711,
      "title": "JESUS, IYIP FO ",
      // "audio":"",
      "body": """
      
KEY C 4/4

{:s|d' :s lL :L |s:f lm :m |f :m lr 
:s |L :fe ls } 

1. JESUS iyip, ye ido Fo, 
’Di uyai mi y’ öföñ uböñ 
Mböde mi k’ererimbot, 
Anamde mi ‘ndara eti. 

2. Kini nsetde ke mkpa, 
Ndiduk iduñ mi k’ enyöñ; 
Ndien uko mi eyedi 
Jesus akakpa önö mi. 

3. ’Yeda y’ uko k’ usen oro, 
Anie edibiom mi ikpe? 
Iyip Fo anam mböhö 
Isuñi, idiökñkpö ye but. 

4. Afia-öföñ ikpukhöke 
K’uwem isöñ abiarade; 
Emana ibiatke enye, 
Öföñ Christ edi obufa.
 
5. Mekpa mkpa y’ mbon ukut, 
Edara ke uyo Öböñ; 
Uyai ye öföñ mö edi 
Jesus, iyip ye ido Fo. 

Amen. 
      """
    },
    {
      "id": 712,
      "title": "DI DAÑ YE AMI",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{|m :-lm :r |d :-ls :-|L :sls:f |m 
:-l-:-|m :-lf :s |L :-ls :-lf :r lm 
:fe |s :-l-:-} 

1. DI dañ y’ ami okoneyo k’ edi, 
Ekim k’ ösöñ, Öböñ di dañ y’ ami, 
Ke ’nanade uñwam eti eti, 
O Andinyaña di dañ ye ami. 

2. Ibio usen uwem k’ ösöp ebe, 
Idaresit y’ uböñ isöñ k’ ebe, 
Kpukpru ñkpö ererimbot etak, 
Afo k’ ösöñ ada, di dañ y’ ami. 

3. Kudi k’ndik nte Öböñ me ‘mböñ 
Di k’ mfönido, k’ mba erikök, 
Enyene ‘mböm, onyuñ ökök kpukpru 
Ufan m’anamidiök, di dañ y’ ami. 

4. Moyom iso Fo ke ofri ini, 
Mfön Fo akan odudu usua, 
Afo ikpöñ edi Andinyaña, 
K’eti, me ke idiök, di dañ y’ ami, 

5. Ke odude, ñkereke m’asua 
Ubiak ye eyet idikanke mi, 
Ami mfegheke ‘mkpa me udi 
Makan mö k’Afo odude y’ ami. 

6. Wut idem kini ami ndede, 
Yama k’ekim, wut mi usuñ enyöñ; 
Ikpikp’ uwem ebe, usier’ edi, 
K’ uwem y’ mkpa, Öböñ, 
di dañ y’ ami. 

Amen. 
      """
    },
    {
      "id": 713,
      "title": "NÖ MI MBUÖTIDEM",
      // "audio":"",
      "body": """
      KEY Ab 3/2

{:s, |s, .d :m :r |d .L, :s, :s, |s, .d 
:m :d|r :-} 

1. NÖ mi mbuötidem emi 
Ösöñd’ akan m’ asua 
Midinyuñ isukhökere, 
Inö ukut isöñ: 

2. Eke midisukke uyo, 
Kini afaneköñ; 
Edi kini ukut m’ ubiak 
Edibere k’ Öböñ: 

3. Mbuötidem ayamade 
K’ mbufut ösöñde; 
Ke ndik idifegheke, 
Ke ekim, iyikke: 

4. Eke ösöñöde ada 
Ke mkpafakh’ usuñ; 
Man k’osimde usen mkpa, 
Uñwana ayama. 

5. Öböñ nö nyin mbuötidem, 
Ke se ekpededi, 
Man ikpokop inem enyöñ 
K’idude mi k’isöñ. 

Amen. 
      """
    },
    {
      "id": 714,
      "title": "EKEME NDINYAÑA",
      // "audio":"",
      "body": """
      KEY Bb 4/4

{:m, .,f, |s, :s, ls, :d .,r |d :t, lt, :r, 
.,m, |f, :f, lf, :t, .,L, |L, :s, ls, } 

1. OWO ukut kufeghe ndik, 
Yak esit fo ebere ke Öböñ; 
K’ esemede, eyenö fi uñwam 
K’ ukut ekededi. 

Körös: 
Enye ekeme ndinyaña fi, 
Anyaña fi k’ ubök ’nasia 
Esie, 
Enye ekeme ndinyaña fi, 
Kunyuñ ufeghe ‘ndik. 

2. Owo ukut, m’asua ekpewak, 
Da mbuötidem ye ñkpö eköñ, 
Afo eyekan k’ odudu Esie, 
Akan ebe oro. 

3. Owo ukut, k’ usuñ fo ’kimde, 
Enye ’yeñwam fi, ebin ndik fo, 
Ekpere fi ke kpukpru unana, 
Uböñ enyen’ Enye! 

Amen. 
      """
    },
    {
      "id": 715,
      "title": "BET, KUSUK UYO!",
      // "audio":"",
      "body": """
      
KEY C 4/4

{:s|s :-.s lfe .s :L .s |d' :-l-:m |f 
:-.m lr .L :s .f |m :-l-} 

1. ATUA eyet, ebiet odu, 
Eke ’nanenyin miduhe, 
Ñkpö ikpukhökere do, 
Anie ’disin ndidu do? 

Körös: 
O bet (bet k’ime) bet k’ime 
kusuk uyo 
O bet (bet k’ime) bet k’ime 
kusuk uyo! 
O bet (bet k’ime) O bet 
(bet k’ime) 
O bet, kusuk uyo! 
(kusuk uyo). 

2. Kini ukut osimde fi 
Nte Öböñ onyimede; 
Men enyin se iduñ fo ko, 
Bet, ke ime, kusuk uyo! 

3. Nte ñkukim k’usuñ fo, 
Ker’ anyanya ukut Öböñ, 
Ediek’ afo öfukhöde, 
Ama osim Jesus k’isöñ. 

4. Kaka iso kuker’ ete 
Öböñ ikopk’ eseme fo, 
Usen emem fo eyedi, 
Bet, ke ime, kusuk uyo! 

Amen. 

      """
    },
    {
      "id": 716,
      "title": "ÖBÖÑ FO EKPERE",
      // "audio":"",
      "body": """
      KEY E 4/4 

{:d |m :-.m ls :f |m :-.m ld:d |m 
:-.dlt, :r |d :-l-} 

Duet: Sop & Ten 

1. ESIT mfukhö ye ubiak, 
Abasi fo öfiök! 
Enye öfiök kpukpru ukut 
Ye afaneköñ fo, 
Mbiomo emi obiomde, 
Abasi fo öfiök! 

Körös: 
Öfiök … öfiök, 
Abasi fo öfiök. 

2. Akpa mba k’ ndutukhö, 
Abasi fo öfiök! 
Enye öfiök nte m’asua 
Esuk efikde fi, 
Enye k’ ebet ‘ndiduñ y’afo, 
Abasi fo öfiök. 

3. Ke mbiomo efekde fi, 
Abasi fo öfiök! 
Öfiök kpukpru, bere 
k’Enye, 
Eyebö ifure, 
Top mbiomo fo nö Enye, 
Abasi fo öfiök. 

4. Ikpöñ owo kufiak edem, 
Abasi fo öfiök! 
Öfiök kpukpru me idomo, 
Ih! Kpukpru möñ-eyet, 
Dara, usuñ Esie öfön, 
Abasi fo öfiök. 

Amen. 

      """
    },
    {
      "id": 717,
      "title": "IDARA EYEDU KE USIERE! ",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{:d .r |m :s ls :d' |L :d' ls :m |s :-lL 
.s :m .d lm :-lr } 

Duet: Sop & Alto 

1. SA: OWO isañ mener’ ibuot, 
All: Idara ’yedu k’ usiere; 
SA: Abasi ödöhö ete, 
All: Idara ’yedu k’ usiere. 

Körös: 
Idara ke usiere, 
Idara ke usiere; 
Eyet ’yedañ k’ okoneyo, 
Idara ’yedu k’ usiere. 

2. SA: Iköt Öböñ ’kufeghe ‘ndik, 
All: Idara ’yedu k’ usiere, 
SA: Atua eyet, dop eyet fo, 
All: Idara ’yedu k’ usiere. 

3. SA: Dara okoneyo ’yebe, 
All: Idara ’yedu k’usiere; 
SA: Eti usiere eyedi, 
All: Idara ’yedu k’ usiere. 

4. SA: O, yak nyin kpukpru 
idara, 
All: Idara ’yedu k’ usiere; 
SA: Eyekwökhöre möñ-eyet, 
All: Idara ’yedu k’ usiere. 

Amen.
      """
    },
    {
      "id": 718,
      "title": "PAUL YE SILAS",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{ls, :-.s, |d :t, lL,:-.L, |r :d lt, :-.t, 
|L :s,ld :d |d :-} 

1. EKIM ’kofuk obio oro, 
M’efak esie edobo, 
M’otu owo ekefiori 
Ke ini uwemeyo; 
Mbon isañ ekekwörö 
Jesus ke ofri isöñ, 
Edu k’ekim k’ñkpököbi 
Ke uyo mbierikpe. 

2. Ekemia ediwak ikpa, 
Ekesuñi mö ñko; 
Ekesin mö k’ufök ukwak, 
Eköbi ubök y’ukot; 
Ekpeme ufök ‘ñkpököbi, 
Kini ekeded’ idap, 
Adaba utibe ndap 
Ke eyo esierede. 

3. Mbon ‘ñkpököbi eseme, 
Kop ‘nte mö esemede; 
Ke ökpösöñ, k’eböñ akam, 
Ekenyuñ ekwö ikwö! 
Ufök ‘ñkpököbi enyeñe, 
Usuñ ufök ebere! 
Unyek-isöñ ekenyeñe, 
’Kpököbi ökpökhöre! 

4. Ikpöñ okpon k’ ebiet oro 
Edi ekekwö ikwö; 
Kini okoneyo oro, 
Mö ekeyire k’akam; 
Owo isañ O! kwö ikwö! 
Ikwö eyenö emem, 
O! böñ akam owo ukut! 
Öböñ eyebörö fi. 

Amen. 

      """
    },
    {
      "id": 719,
      "title": "EMEM, ATA EMEM! ",
      // "audio":"",
      "body": """
      KEY C 4/2

{|s :-ls :s |s :-l-:s lL :L lL :s |s :-l-} 

1. ATA emem! K’ererimbot emi? 
Iyip Jesus önö emem k’esit. 

2. Ata emem! Ke mkpösöñ utom? 
‘Ndinam uduak Jesus edi emem. 

3. Ata emem! Ke ukut ewakde? 
Ke mfut Jesus ifure odu. 

4. Ata emem! Ke ikpöñde m’ufan? 
Jesus otim ekpeme mö ye nyin. 

5. Ata emem! Ke m’ikwe ini ’so? 
Imöfiök, Jesus odu k’ebekpo. 

6. Ata emem! K’mkpa ofukde nyin? 
Christ akan mkpa y’odudu esie. 

7. Ekem, kemi m’ukut isöñ ’yetre, 
Jesus okot nyin ke heven k’emem. 

  Amen.
      """
    },
    {
      "id": 720,
      "title": "BAT MME EDIDIÖÑ FO ",
      // "audio":"",
      "body": """
      KEY Eb 2/4 
11.11.11.11 – 9.9.9.11 

{|m .m :m .f |s .s :s .m |f :m |f :|
r .m :f.s|t.L :s .f |m :f |s :-} 

1. KINI mbufut uwem osimde fi, 
K’esede ete kpukpru ‘ñkpö 
etak fi 
Bat me edidiöñ fo, bat mö 
kiet ye kiet 
Afo eyefiök se Öböñ anamde. 

Körös: 
SA: Bat m’edidiöñ, bat mö 
kiet ye kiet 
TB: Bat me edidiöñ fo, bat 
mö kiet ye kiet 
SA: Bat m’edidiöñ, s’ Öböñ 
anamde 
TB: Bat me edidiöñ fo, 
s’Öböñ anamde 

SA: Bat m’edidiöñ, bat mö 
kiet ye kiet 
TB: Bat me edidiöñ fo, bat 
mö kiet ye kiet 
All: Afo eyefiök se Öböñ anamde. 

2. Mbiomo uwem odobi akan fi? 
Nte cross fo omodobi akan fi? 
Bat m’edidiöñ, ndik eyebe efep 
Afo eyedara k’ikwö kpukpr’ usen. 

3. K’esede mö eken y’inyene isöñ, 
Ti Christ öñwöñö ediwak önö fi, 
Bat m’edidiöñ emi okuk midepke, 
Utip fo ke heven y’iduñ fo 
k’enyöñ. 

4. Ke uföt idomo ye afaneköñ, 
Kuduö esit, Abasi akan kpukpru, 
Bat me edidiöñ fo, me-enjel edu, 
Ndidöñ fi esit, nyuñ ñwam 
tut’ utit. 

Amen.
      """
    },
    {
      "id": 721,
      "title": "EDI CHRIST IKPÖÑ ÖNÖ UYUKHÖ! ",
      // "audio":"",
      "body": """
      KEY F 4/4 

{: s, .d |m :m lm : d .m |s :s ls : s .m 
lr :-.r lr :d .r |m:-l-} 

1. O CHRIST, edi Afo ikpöñ 
K’ukpöñ mi okokut 
Emem y’ idara ‘ñkoyomde, 
Okodibede ko. 

Körös: 
Edi Christ önö uyukhö 
Baba kiet iduhe (baba) 
Ima, uwem ye idara 
Jesus, ñkut k’Afo. 

2. Ñkoyom emem y’ ifure, 
Edi ‘ñkoyomke Fi; 
Ke mbede Andinyaña 
Ima Esie ’mum mi. 

3. Ami ‘ñkoyom möñ k’obube 
Emi abiañade; 
K’ndukde do, möñ iduhe 
Esak mi nsakhi. 

4. Manyom inemesit uwem 
Edi nyomke Fi, 
Tutu ñkut mfön y’ima 
Afo amade mi. 

Amen. 
      """
    },
    {
      "id": 722,
      "title": "IH IH, BABA KIET! ",
      // "audio":"",
      "body": """
      
KEY F 4/4

{|m :m .,r ld :d .,t, |L, :d lL .s, : 
|m:mlr: |m:rld:} 

1. BABA ufan nyin ibietke Jesus, 
Baba kiet! Baba kiet! 
Ufan efen idinyañake nyin 
Baba kiet! Baba kiet! 

Körös: 
Jesus ömöfiök me usuñ nyin, 
Eyekpeme tutu utit, 
Baba ufan nyin ibietke Jesus, 
Baba kiet! Baba kiet! 

2. Baba kiet isanake ‘nte Enye, 
Baba kiet! Baba kiet! 
Baba ufan inenke ‘nte Enye, 
Baba kiet! Baba kiet!. 

3. Ikpöñke nyin ke ofri uwem nyin, 
Ikpöñke, ikpöñke; 
Kpukpru usen ke Jesus ama nyin, 
Ama nyin, ama nyin. 

4. Nte Enye efre iköt Esie? 
Baba kiet! Baba kiet! 
Nt’ Enye iböhö idiök owo? 
Eyebö, eyebö. 

5. Odu enö okponde ‘nte Jesus? 
Baba kiet! Baba kiet! 
Nt’ Enye ’sin nyin iduñ ke heven? 
Isinke, isinke.

 Amen.
      """
    },
    {
      "id": 723,
      "title": "NDIDE KE JESUS",
      // "audio":"",
      "body": """
      KEY Eb 3/2

{.s:s.s|d':s:s.m|r:-:f :f.f |r' 
:t :L .t|d' :-. } 

1. IDAP ke Jesus! Ömöfön 
K’owo edede ke Öböñ, 
Enye edemere k’enyöñ, 
Ökpöñ afaneköñ k’isöñ.
 
2. Idap ke Jesus! Enenem 
Ndidu ke idap oro; 
Iyekwö ke idorenyin, 
Odudu mkpa iduhe. 

3. Idap ke Jesus! Ifure, 
Edemere ye edidiöñ; 
Ndik ye usua ikanke 
Odudu Christ Andinyaña. 

4. Idap ke Jesus! O, nö mi 
Ebiet nduök odudu Fo! 
Okpo mi odu k’ukpeme, 

Onyuñ ebet ikot enyöñ. 
5. Idap ke Jesus! Oruk fo, 
Ekpekpöñ fi anyan usuñ; 
Okuo edi eti idap, 
Udemekere nditua. 

Amen. 
      """
    },
    {
      "id": 724,
      "title": "INI YE NSINSI INI! ",
      // "audio":"",
      "body": """
      KEY F 4/4

{:s, |d :d ld:r |m :-l-:m .f |s :-.L 
ls :m |m :r l-} 

1. IDIGH’ ini ebe; 
Edi nyin ikpöñ ibe; 
Idigh’ uwem akpa, 
Edi ikpökhidem nyin, 
Nsinsi ini omodu 
Omonyuñ ötöñö kemi; 
Ini ikemeke ‘ndibe, 
Edi nyin ibebe ifep. 

2. Ikö Fo ibehe, 
Edi nyin ke ibebe; 
‘Mbuötidem ikpaha, 
Edi nyin ikpöñ ikpa; 
Mbuötidem y’akpanikö, 
Ededu tutu ke usöñ, 
Mö mbiba edi ukem, 
Ikemeke ndibiara. 

3. Idorenyin odu, 
Okposuk nyin ikpade; 
Idigh’ ima akpa, 
Edi nyin ikpöñ ikpa, 
Mbiba emana k’enyöñ; 
Esaña k’idara k’isöñ, 
Nyin isasat nte iköñ, 
Mö eyeye eka iso. 

4. Ikpa man idu ’wem, 
Inyuñ ibe ke mkpa; 
Uwem nyin k’ododu, 
Ye nyin mkpa iduhe, 
Nyin ikpa nte mkpasip; 
Iyeset k’edikem usen, 
M’usen nsekhe nyin edi, 
K’idök nyin k’udi ebede. 

Amen. 

      """
    },
    {
      "id": 725,
      "title": "KUMEM IDEM",
      // "audio":"",
      "body": """
      KEY Bb 6/8 

{|s, :s, :s, lL, :s, :fe, |s, :-:-lm,:-:-} 

1. KUFUKHÖ, kukop 
’memidem, 
K’enimde k’akpanikö; 
Mfön omodu ke utom, 
Beñe Abasi nyuñ bö. 

Körös: 
SA: Ku … mem idem, 
ku… mem idem, 
TB: Kumem idem, kumem 
idem, 
kumem idem, kumem 
idem; 
All: Kumem idem unö ukut, 
Jesus eyenam ebe, 

SA: Be…re k’ Öböñ, be…re 
k’ Öböñ, 
TB: Bere k’Öböñ, bere 
k’Öböñ, bere k’Öböñ, 
bere k’Öböñ 
All: Kwö ke m’ukut fo 
ekponde, bere k’ Öböñ, 
söñ esit. 

2. Ke mbiomo efikde fi, 
Ke uwem efekde fi; 
Wuk enyin se Abasi fo, 
Böñ akam ke eyefön. 

3. Kufukhö, kukop ’memidem, 
Ñkpöñ eyefön akan, 
Afo eyeduñ k’ uñwana, 
Eyedu do ye Öböñ. 

4. Kufukhö, kukop ’memidem, 
Bere k’ubök Öböñ fo. 
Duñ ke akwa mböm Esie, 
Afo eyebö utip.
 
Amen. 

      """
    },
    {
      "id": 726,
      "title": "JESUS ÖMÖFIÖK",
      // "audio":"",
      "body": """
      KEY Db 4/2
      
{|s.s:fe.s lL .s :m .s|s :f lf :-|f .f 
:m .flt .L :r .m |f:s lm :-} 

1. NT’ OWO iduhe ‘ndiñwam 
k’mbiomo? 
Me ndisöñö fi idem ke usuñ? 
Afo owo isañ, kop uyo Öböñ, 
Ndöñesit odu, Jesus ömöfiök. 

Körös: 
Ih, (O Ih) Enye öfiök, 
M’usuñ Esie ’fön, 
Kop (O kop) Enye k’ okot, 
“Di duök odudu” 
Kam yak ini iso sin k’ubök Öböñ, 
K’mfukhö m’idara, Jesus ömöfiök. 

2. Ndodobi ‘mbiomo, Enye eyeñwam, 
Nte ’makpa mba? Jesus k’ekere, 
Enye otim öfiök usuñ isañ fo, 
Asaña isañ kop, Jesus ömöfiök. 

3. K’idomo ’simde fi, Jesus 
eyeñwam, 
Enye öfiök me afaneköñ uwem, 
K’ebiet ekededi nam utom Esie, 
Kuyik ke mbume, Jesus ömöfiök. 

4. Enye k’okot “Tiene mi, 
duök odudu” 
Nte usuñ ödiök? Esie ömöfön, 
Kam yak ini iso sin k’ubök Öböñ, 
K’ mfukhö m’idara, Jesus ömöfiök. 

Amen. 
      """
    },
    {
      "id": 727,
      "title": "KE UBÖK IMA ESIE OTUKDE MI ",
      // "audio":"",
      "body": """
      KEY C 4/4

{:m .f |s .s :fe .s ld' .d' :r' .d' |t :f lf 
:r.m|f .f :m.flt.L:s.f|m:Lls} 

1. AMI ñkakpa mba ke udop ukut mi, 
M’idiök mi ekebietd’ iduot, 
kemi ebiet snow, 
Ekedori mi ke itiat misekhekere, 
K’ ubök ima Esie ’tukde mi. 

Körös: 
K’ ubök ima Esie ’tukde 
(’tukde) mi 
K’ ubök ima Esie ’tukde 
(’tukde) mi 
Kpukpru ubiak ye mfukhö 
mi, ekabare idara, 
K’ ubök ima Esie ’tukde 
(’tukde) mi. 

2. Kini nduöde Enye edemer’ 
ukpöñ mi, 
Önö odudu k’memidem 
y’emem k’ubiak, 
Kemi edidiöñ awak otode ke enyöñ, 
K’ ubök ima Esie ’tukde mi. 

3. Ekim ikemeke ndifuk usen emi 
Kor’ Enye ödöñ mi esit, 
okop akam mi 
Madara kpukpru ini k’uwak 
mfön Esie 
K’ ubök ima Esie ’tukde mi. 

4. Ami ndikpöñke eti Ufan 
y’ Öböñ mi, 
Ubök Esie eyeda mi osim 
ke iduñ, 
M’idara isöñ ebiaña, efen 
do k’enyöñ 
K’ ubök ima Esie ’tukde mi. 

Amen. 
      """
    },
    {
      "id": 728,
      "title": "CHRIST ENYENE ODUDU NDINYAÑA",
      // "audio":"",
      "body": """
      KEY Eb 4/2

{:d |m :m lm .r :d .m |s :-l-:m |r 
:r lm .r :d .r |m :-l-} 

1. KINI oyobio Galilee 
Do mö ekefeghe ndik, 
Öböñ okowuk k’ökpösöñ, 
Anam mbufut odobo. 

Körös: 
Ofum etre k’uyo Esie, 
Erikök Esie ömöfön, 
Enye ikpöñ akan udi. 
Christ nyin (edi) Andinyaña. 

2. ‘Nnan emi mikwe ‘ñkpö 
baba, 
Etiene Öböñ, ebeñe, 
Erituk Esie ökökök, 
Anam mfukhö adara. 

3. K’eköñd’ Enye ke Calvary, 
Enyuñ enim Enye k’udi, 
Enye ’keset akan udi, 
Od’ uwem, akara kpukpru. 

4. Ke idomo ofukde mi, 
Ke idorenyin miduhe, 
Uyo oto suñ ke enyöñ, 
Ebin kpukpru ekim efep. 

Amen. 
      """
    },
    {
      "id": 729,
      "title": "NTE KE INI ME PROPHET ",
      // "audio":"",
      "body": """
      KEY F 4/4

{:d |m :f ls :d |r :m lf :m |r :d ld 
:t, |d :-l-} 

1. NTE Moses ’kemenere 
Urukiköt k’enyöñ, 
Ndusuk ese eböhö, 
Ndien mö ikpaha. 

2. Odudu erikök oto 
Andinyaña ke cross; 
Andise ke mbuötidem 
Idinyuñ itakke. 

3. Abasi, k’ima ökönö 
Eyen Esie k’uwa 
Man möbuötidem enyene 
Uwem nsi nsi. 

4. Eyen Esie ikedighe, 
‘Ndibiom ererimbot; 
Ikamake ñkpö eköñ, 
Itiñk’ ikö ndik. 

5. Ekedi ‘ndisio nyin k’iduö 
Nyuñ ‘nnö idorenyin, 
Man ikpere itie mböm, 
Ikufeghe ndik. 

6. Edi iyaresit odu, 
Önö m’esöñ ibuot, 
K’esed’ Eyen Esie k’ndek, 
Esinde ‘mfön Öböñ. 

Amen. 

      """
    },
    {
      "id": 730,
      "title": "MMÖÑ ERIKÖK ",
      // "audio":"",
      "body": """
      KEY A 4/4

{:s,|s,.d:d.rlm.d:d.t,|L, d.-:d , 
.,L,ls,:-.s,|s, d.-:d.r|m m.-:r
,d .-|r :-l-} 

1. MAYAK mbiomo mi ’nim 
ke inem esuk Canaan, 
Moduñ ke ebiet mmöñerikök, 
Ami ndiyoho aba k’idiök 
ererimbot, 
Moduñ ke ebiet mmöñerikök. 

Körös: 
Moduñ ke esuk, ndoduñ ke 
esuk 
Moduñ ke ebiet mmöñerikök 
Moduñ ke esuk, ndoduñ ke 
esuk 
Moduñ ke ebiet mmöñerikök 
(odude). 

2. Ami madara ye ‘nditö 
Israel k’ mbuötidem, 
Moduñ ke ebiet mmöñerikök, 
Adah’ ikañ y’obubit enyöñ 
ada mi usuñ, 
Moduñ ke ebiet mmöñerikök. 

3. Ukpöñ mi ömöyukhö ke 
manna otod’ enyöñ, 
Moduñ ke ebiet mmöñerikök, 
Itöñ idisatke mi, mokut 
idim-möñ uwem 
Moduñ ke ebiet mmöñerikök. 

4. Mökwö Hallelujah, ukpöñ 
mi öduök odudu, 
Moduñ ke ebiet mmöñerikök, 
Mada k’uñwöñö Esie, iyip 
Esie ökök mi, 
Moduñ ke ebiet mmöñerikök. 

Amen. 
      """
    },
    {
      "id": 731,
      "title": "ERITUK INI KIET ",
      // "audio":"",
      "body": """
      KEY Bb 6/8

{s, :-:s, ls, : :m, .s, |L, :-:L, ls,:-:|
d :-:d lm:-.r :d |r :-:m lr :-:-} 

Sop solo 

1. K’ERITUK Enye ini kiet, 
K’ebede ke otu owo, 
Otuk, ndien okop idem,
Öböñ önö erikök. 

Körös: 4/4 
Otuk ini kiet k’ebede, 
Eyekop ke esemede,
Bö erikök, Öböñ k’ekpere,
Jesus edi (Öböñ) Andikök. 

2. K’erituk anam mi ‘mböhö, 
Etiñ emem ke ukpöñ mi, 
Mayak ‘mbiomo mi nö Enye.
Öböñ önö erikök. 

3. K’erituk, utom okure 
Eyen Esie anyaña mi, 
Nyetoro kpukpru ini
Öböñ önö erikök. 

4. K’erituk, Enye ese mi, 
Ami mokut ima Esie, 
Enye okop eseme mi,
Öböñ önö erikök. 

5. K’erituk, k’odudu Esie, 
Enye eyekök fi kemi, 
Eyekop k’mbufut odop,
Öböñ önö erikök. 

Amen
      """
    },
    {
      "id": 732,
      "title": "MBEN ÖFÖÑ ESIE ",
      // "audio":"",
      "body": """
      
KEY D 6/8

{:s|s :-:s ls :-:s |s :fe :s lL :s :m 
|r :-:m ls :-:f|m :-:-l -:-} 

1. ENYE ’kotuk mben öföñidem 
Öböñ ke ndibe; 
K’otu owo ekand’ Enye ekuk, 
Okop nsöñidem. 

Körös: 
O, tuk mben öföñ Esie, 
Ke eyekop idem; 
Odudu erikök Esie 
Eyenö fi uwem. 

2. Enye ekedi ke nyekidem, 
Öfiök k’Öböñ edi, 
Okop odudu erikök emi 
Otode ke Öböñ. 

3. Enye ’te, “eyen añwan söñ esit, 
Afo ömöböhö;” 
Emem emi akand’ ifiök owo 
Öyöh’ ukpöñ esie. 

Amen. 
      """
    },
    {
      "id": 733,
      "title": "JESUS EYEN NAZARETH K'EBE ",
      // "audio":"",
      "body": """
      KEY G 6/8

{:s,|s,:-:d ld :-:r|m:-:fls :-:L|s 
:-:m ld:-.t , :d|r:-:m|r:-} 

1. NSINAM owo ewakde, 
Enyuñ etimere ñko, 
Ebono mi k’usen k’usen, 
K’nso ke mö ebono mi? 
K’ökpösöñ mö ebör’ ete, 
“Jesus Eyen Nazareth k’ebe” 
K’ökpösöñ mö ebör’ ete, 
“Jesus Eyen Nazareth k’ebe.” 

2. Jesus emi edi anie 
Anamd’ obio otimere? 
Ke esen owo ebede 
Ekeme ‘nditimere mö? 
Mö efiak ebörö ete, 
“Jesus Eyen Nazareth k’ebe” 
Mö efiak ebörö ete, 
“Jesus Eyen Nazareth k’ebe.” 

3. Jesus ekedi ke isöñ, 
Okut ukut, okop ubiak; 
M’ owo k’ ofri ebiet eda 
Mbon udöñ’ esök Enye 
Me ‘nnan edara k’ekopde 
“Jesus Eyen Nazareth k’ebe” 
Me ‘nnan edara k’ekopde 
“Jesus Eyen Nazareth k’ebe.” 

4. Afiak aka k’ebiet k’ebiet 
Nyin imokut ikpat Esie 
Enye ’di k’enyin usuñ nyin 
Oduk, onyime nditie; 
Nte nyin ididöhöke? “
Jesus Eyen Nazareth k’ebe” 
Nte nyin ididöhöke? “
Jesus Eyen Nazareth k’ebe.” 

5. Kpukpru m’ekpa mba edi 
Ebö erifen ye emem 
Me andiyo ñkpöñ Öböñ 
Edi ebö mfön Esie; 
K’idomo, uböhö odu, 
“Jesus Eyen Nazareth k’ebe” 
K’idomo, uböhö odu, 
“Jesus Eyen Nazareth k’ebe.” 

6. Ke esinde ikot Esie, 
Onyuñ ökpöñd’ ima Esie 
Enye eyenyuñ ökpöñ fi, 
Inyuñ ikopke akam fo, 
Afo eyetua k’akpatre 
“Jesus Eyen Nazareth ebe” 
Afo eyetua k’akpatre 
“Jesus Eyen Nazareth ebe.” 

Amen. 
      """
    },
    {
      "id": 734,
      "title": "KE INI MBUBREYO ",
      // "audio":"",
      "body": """
      KEY Eb 3/4

{:d |d :-:r |m :fe :s |s :-:fe |s ::
s |L :-:t|d':-:t|L :-:L |s :-:-} 

1. K’MBUBREYO O! 
Andifak 
Mbon udöñö ekedi 
O! k’ata akwa ubiak mö 
Enyöñ k’idaresit eti. 

2. Idahemi k’mbubreyo, 
Isañ’ ikpere ye m’ubiak, 
Okposuk mikwe Fi k’iso, 
Imöfiök k’Afo odu mi. 

3. Andinyaña, kan ukut nyin! 
Idi k’udöñö y’mfukhö, 
Ndusuk mi imaha Fi, 
Ndusuk emefiak edem. 

4. Öböñ kpukpru eyom 
emem 
Ye uböhö ke m’idiökñkpö, 
Mö ekpemade Fi ekan 
Enyen’ ubiomikpe k’esit. 

5. O Christ, Afo ’kedi owo, 
Okodu k’ukut y’idomo, 
Ima y’mböm Fo omofuk 
Kpukpru but y’ memidem 
nyin. 

6. Akabiat m’odudu eset, 
Ikö Fo enyen’ odudu; 
Yere k’mbubreyo emi, 
Ke mböm Fo kök nyin 
kpukpru. 

Amen. 

      """
    },
    {
      "id": 735,
      "title": "ENYIN ESIE ESE ME INUEN ",
      // "audio":"",
      "body": """
      KEY Db 6/4  

{|s:L :s lm :-:d |r :m :-l -:-:-|f 
:s :L ld' :-:d'|s :-:-l-:-} 

Soprono solo 

1. NSINAM mfukhöde? 
Abiaña oto möñ? 
Nso k’esit mi öduö, 
Oyom iduñ k’enyöñ, 
Ke Christ edide okim? 
Enye ’di Ufan mi; 
Enye k’ese me inuen, 
Möfiök ke ekpeme mi, 
Enye k’ese me inuen, 
Möfiök ke ekpeme mi. 

Körös: 
Mökwö koro madara 
(madara), 
Menyene uböhö (’böhö), 
Enye k’ese me inuen, 
Möfiök ke ekpeme mi. 

2. “Ekutimere esit” 
Mokop uyo Esie, 
K’ndude k’mfön Esie, 
Mökpöñ eyikhe mi; 
K’Enye adade usuñ, 
Ñkpö kiet ke mfiök; 
Enye k’ese me inuen, 
Möfiök ke ekpeme mi, 
Enye k’ese me inuen, 
Möfiök ke ekpeme mi. 

3. Kini edomode mi, 
Kini idiök enyöñ, 
Ke ini mfukhöde, 
Idorenyin akpa, 
Ami mekpere Enye 
Anam mi mböhö; 
Enye k’ese me inuen, 
Möfiök ke ekpeme mi, 
Enye k’ese me inuen, 
Möfiök ke ekpeme mi. 

Amen. 
      """
    },
    {
      "id": 736,
      "title": "KPEME MI, AKWA ANDIFAK ",
      // "audio":"",
      "body": """
      
KEY A 4/2 

{|s, :L,ls, : -.d| d .t , : d .r lm :r 
|m:d|L,:f lm:r|d:-} 

1. KPEME mi akwa Andifak 
Ke nsañade k’isöñ, 
Afo omokpon akakha 
Ke ubök Fo kpeme mi; 
Uyo heven, Uyo heven, 
Bök mi tutu k’nsinsi, 
Bök mi tutu k’nsinsi. 

2. Idim möñ O nam asiakha, 
Eke ’nöde erikök, 
Yak ubök Fo O Abasi, 
Ada mi usuñ isañ, 
Andinyaña, Andinyaña, 
Di otu mi y’odudu, 
Di otu mi y’odudu. 

3. Ke nsimde mben Jordan, 
Kan kpukpru eyikhe mi, 
Mkpa ye ndutukhö hell, 
Da mi sim isöñ Canaan, 
Ikwö eköm, ikwö eköm, 
Ke ami ndinö Fi, 
Ke ami ndinö Fi. 

Amen. 
      """
    },
    {
      "id": 737,
      "title": "ENYE KE EKERE MI ",
      // "audio":"",
      "body": """
      KEY Bb 3/4

{:s, .,m, |s, :-.m :d .s, |t, :L, :L, .,L, 
|f :-.m :r .d |d :t, } 

1. UÑWÖÑÖ Öböñ ömöfön, 
Ökönöde ke isöñ 
Ukpem’ Ete odu ye nyin, 
Eyenö uñwam Esie, 
Owo ukut duök odudu 
’Kposuk m’asua edide; 
Ke iso Ete ima nyin, 
Afo ’yekut ifure. 

Körös: :\$: 
S: Top mbiomo fo nö Enye, 
Kor’ Enye k’ekere fi; 
Bere y’Enye k’idaresit, 
Suñ-suñ ke ekere fi. DS.pp 
ATB: \$: Nö Enye, nö Enye 
mbiomo fo, 
Kor’ Enye, Enye ekere fi; 
Bere ye Enye ke idaresit, 
Suñ-suñ Enye ke ekere fi. 
DS.pp 

2. Uyama ntanta öfiöñ, 
Ndiye iköñ y’mbiet 
Ewut akwa ifiök Esie, 
Y’ ukpeme Esie ke mö, 
Kpukpr’ usen ikut ‘mfön 
Esie; 
Öbök unam ye inuen, 
Nte iyeyik me Enye 
Idinöh’ udeme nyin? 

3. K’ usörö ima ke uböñ 
Enye ’yeti Esiemö, 
K’ukara akwa Edidem 
K’afia ebekpo Esie; 
O! Ukpöñ kop idaresit 
K’ukut me utom k’isöñ, 
Enye ’yema, ekpeme fi 
Emi Enye ’kobotde. 

Amen. 

      """
    },
    {
      "id": 738,
      "title": "NYETIENE ENYE NTE ADADE USUÑ ",
      // "audio":"",
      "body": """
      
KEY E 4/4

{|d:m.,f ls.s:s|L:f.,Lls:-|s.f 
:f .f lf.m:m.m|s:r.,mlr:-} 

1. ME nti uñwöñö y’nti ikö, 
Ösöñ urua akan kpukpru 
m’etop efen; 
Ekikere Öböñ öfön ama, 
Enye edi akwa uwutñkpö önö mi. 

Körös: 
Nyetiene Enye, (nyetiene Enye) 
Ke ofri usuñ (ih, ke ofri 
usuñ); 
Nyetiene Enye, (nyetiene 
Enye) 
Tiene Jesus kpukpr’ usen. 

2. Inem ima Jesus okowutde, 
Enem akan kpukpru ima 
ererimbot; 
Enye öfönido y’idiök owo 
Enye edi akwa uwutñkpö önö mi. 

3. Kop edinem uyo “Etiene Mi!” 
Akpa-mba emem odu do önö fi; 
Bere ke m’uñwöñö akpanikö, 
Bere ke Öböñ, ukpöñ fo 
eyeböhö. 

Amen. 
      """
    },
    {
      "id": 739,
      "title": "NDIDUÑ KE ETI IDUÑ ",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{|d :-.r ld :L, |s, :-.L, ls, :m, |s, 
:-.L,ls, :f,|m, :s, |-:-} 

1. KO k’anyan ebiet mokop 
etop eköñ k’utöñ mi, 
Do möfiök idiökñkpö 
akara k’ererimbot, 
Ndik ye ñkpö isöñ 
k’ikpikpu ke eyom mi, 
Mö idikpanke mi eti iduñ. 

Körös: 
Ami ndoduñ k’obot k’idak 
ediye enyöñ (toro) 
Ami ke ñwöñ k’idim möñ 
eke midisatke, (O! Ih) 
Ami ndu k’usörö manna 
midikureke, 
Koro nduñde k’eti iduñ. 

2. Ko ke usuk ererimbot 
oyobio ke ösöñ, 
Nditö owo esöñ’ eñwana 
ye asua 
Enyaña mi k’ikö Abasi 
emi ñkopde
Ñkpö inamke mi k’eti iduñ. 

3. Yak oyobio edi, uyom 
inamke mi ndik, 
Ami möböhö k’ ukpeme 
ubök Abasi; 
Mi, utin ke ayama ñkpö 
idinamke mi, 
Möböhö k’nsinsi k’eti iduñ. 

4. K’nsede m’utom Öböñ, 
ami motim ñkere 
K’ñkopde uyo Esie 
möfiök uduak Esie, 
K’nduñde ke Spirit 
mekpep mbañ’ erinyaña, 
K’idara nyedu k’eti iduñ. 

Amen. 
      """
    },
    {
      "id": 740,
      "title": "KUFEGHE NDIK",
      // "audio":"",
      "body": """
      KEY Bb 6/8 

{|m, :f, :fe, ls, :d :r |m :-:r ld :-:|
s, :t, :L, lf, :-:L, |s, :-:-lm, :-:-} 

1. KUFEGHE ‘ndik ke s’ededi, 
Öböñ ’yekpeme fi, 
Du ke idak ima Esie, 
Öböñ ’yekpeme fi. 

Körös: 
Öböñ ’yekpeme fi 
K’ofri usuñ, k’usen k’usen 
Enye ’yekpeme fi 
Öböñ ’yekpeme (kpeme) fi. 

2. K’ofiopd’ esit ‘ndinam utom 
Öböñ ’yekpeme fi, 
K’ndik öyöhöd’ usuñ fo, 
Öböñ ’yekpeme fi. 

3. Eyeyöhö unana fo, 
Öböñ ’yekpeme fi, 
Idisinke ebeñe fo, 
Öböñ ’yekpeme fi. 

4. Okposuk idomo ’kponde, 
Öböñ ’yekpeme fi, 
Bere k’ikpanesit Esie, 
Öböñ ’yekpeme fi. 

Amen. 
      """
    },
    {
      "id": 741,
      "title": "NYEDA KE ITIAT",
      // "audio":"",
      "body": """
      KEY G 4/4

{:s, .,s, |d :d ld :d .,r |m :m lm :|
m .,r :d .,r lm :s |r :-l-} 

1. AMI ñkodu ke okpuk idiök 
Ñkoyo mkpöñ otu, 
K’ Öböñ mi edide, toro Enye: 
Anam mi nda k’akwa itiat. 

Körös: 
Mada k’itiat alleluia! 
Mada k’enyöñ Itiat 
(alleluia); 
Enye ’menere mi osio 
k’okpuk, 
Mada ke enyöñ itiat. 

2. Ke Enye osiode mi ke okpuk 
Emen ekim mi efep, 
Ukpöñ mi öböhö mbiom’ idiök 
Ke ndade ke akwa itiat. 

3. Ndifegheke k’ Enye ’kperede, 
Nyekwö k’usen k’usen; 
Möböhö ke oyobio ösöñde 
Sia ndade ke akwa Itiat. 

Amen. 
      """
    },
    {
      "id": 742,
      "title": "DA MI SIM IDUÑ ",
      // "audio":"",
      "body": """
      KEY Eb 6/4

Tenor & Bass 

{|s :fe :s ld' :t :L ls :-:-lm :-:-} 

Other parts 

{|s :f :m lr :-:m ld :-:-l-:-:-} 

1.TB: KE MBUFUT ye oyobio 
All: K’ uföt akpa uwem 
(uwem) 
TB: K’ ñkpöñde usuñ ifure 
All: K’ñwanade y’ idiök 
(y’idiök) 
TB: Uyo Andida mi usuñ 
All: Amakan oyobio (’yobio) 
Yak kpukpru nö mi, kam 
buötidem 
‘Nyeda fi nsim iduñ (iduñ). 

Körös: 
S: Da mi usuñ Öböñ, 
ATB: Da mi usuñ, da mi usuñ 
S: Be k’oyobio, Jesus 
ATB: Be k’oyobio, be k’oyobio 
S: Ami ñkpöñke fi 
ATB: Ami ndikpöñke Fi Öböñ 
S: Da sim iduñ 
ATB: Da usuñ Öböñ (O) da sim 
iduñ 

2. TB: Makpa mba k’ekim uwem, 
All: Mum mi ke ubök Fo (Öböñ) 
TB: Öböñ kuyak mfiak edem, 
All: Kpeme k’ odudu Fo (kpeme) 
TB: Da mi usuñ sim ke heven, 
All: K’nsinsi usiere (k’enyöñ) 
O kuyak mi ñkpöñ Fi, edi 
Da mi usuñ sim iduñ (k’enyöñ) 

3. TB: Inem uyo Ada-usuñ, 
All: Akan me oyobio (’yobio), 
TB: Eyen, bere y’ Ami k’ ekim 
All: Eyefön k’ usiere (’siere) 
TB: Ke ukut uwem oyomde 
All: Ndifuk fi k’ukpöñ 
(k’ukpöñ) 
Nyedu man ndöñ fi esit 
Nyuñ ‘nda fi nsim iduñ (iduñ). 

Amen. 
      """
    },
    {
      "id": 743,
      "title": "EFEN IBIETKE ITIAT NSINSI",
      // "audio":"",
      "body": """
      KEY D 4/4

{:m.,f|s :s.,Lls:d'|s:-.f lm 
:m .,f |s :m .,s lL .s :m .d |r :-l-} 

1. EFEN ibietk’ Itiat nsinsi, 
Mfut Esie omofuk kpukpru; 
Uböhö ke oyobio emi 
midibiañake, 
Efen ibietk’ Itiat nsinsi. 

Körös: 
O Itiat … ’yedibe, 
Ke idak … mba Fo, 
O Itiat … ’yedibe, 
Nyedibe ke Afo. 

2. Efen ibietk’ Itiat nsinsi 
Eyeda ke m’obot ebede 
Idiök akpakan okuk, ukpöñ 
enyen’ uböhö, 
Efen ibietk’ Itiat nsinsi. 

3. Efen ibietk’ Itiat nsinsi, 
K’ Enye mbon mba eböhö, 
Efre ekiker’ uwem, ndik 
mkpa iduhe, 
Efen ibietk’ Itiat nsinsi. 

Amen.
      """
    },
    {
      "id": 744,
      "title": "ITIAT NSINSI OFUK MI",
      // "audio":"",
      "body": """
      KEY Eb 4/4

{|m .,r :d.,r lm :s |m :-ld:-|r .,r 
:r .,m ls :f|m :-l-} 

1. ITIAT ‘nsi nsi ofuk mi 
Ke Christ ami möböhö; 
’Kposuk oyobio ösöñde, 
Ndu k’ukpeme Öböñ. 

Körös: 
Itiat ‘nsi nsi ofuk mi 
Itiat ofuk mi, itiat ofuk mi, 
Möböhö kini oyobio 
Akwa Itiat ofuk mi. 

2. Do eyikhe ikpanke mi, 
Inyuñ ibiatk’ emem mi, 
Ekpeme mi ke oyobio 
Ye k’ntimere esit. 

3. Kini oyobio ösöñde 
Idinamke mi ndik; 
Okposuk ösöñde eti, 
Nyekwö ke idara. 

4. Menyene emem ke Jesus, 
K’ndöñesit miduhe, 
Ödiöñ, ösöñö mi idem 
K’mbuötde idem y’ Enye. 

Amen. 
      """
    },
    {
      "id": 745,
      "title": "JESUS EDI UFAN ORO OYOMDE",
      // "audio":"",
      "body": """
      KEY Ab 4/4

{|s, .,s, :s .,L, |s, :d .,r |m :f lm :|
m .,r :r .,r lr :m .,r |d :L, ls, :-} 

1. K’ ODUDE k’ ubiomikpe 
idiökñkpö, 
Ufan odu ndinö fi emem; 
Odudu Esie önö erikan, 
Da Jesus ke Ufan fo. 

Körös: 
Da Jesus ke Ufan fo, 
(Ufan fo) 
Enye ’di ata Ufan (k’akpan) 
Da Enye k’okuo, buötidem 
y’ Enye 
Jesus edi ata Ufan. 

2. Ke ödiökde me öfönde y’afo 
Enye ’di Andiñwam 
y’Andinyaña, 
Öföfön ye andibere y’ Enye, 
Da Jesus ke Ufan fo. 

3. Ke m’idomo ekande fi ekuk, 
Mfön Esie eyekan mö kiet kiet, 
Bere y’ Ufan emi mibiañake, 
Da Jesus ke Ufan fo. 

4. K’ idiök enyöñ ekande fi ekuk, 
Buötidem k’ mfön ye 
k’ ufak Esie, 
Eyenö fi nsinsi uñwana 
Da Jesus ke Ufan fo. 

Amen. 

      """
    },
    {
      "id": 746,
      "title": "UBÖK EMI OMUMDE MI AKAMA ",
      // "audio":"",
      "body": """
      KEY Bb 4/4 

{:m, .,f, |s, :m lm :r |d :s, l-:s, .,d 
|t, :-.L, |s, :f, |m, :-l-} 

1. UBÖK odu adade mi 
Usuñ emi memfiökke; 
Ndien k’ ñkpö ekededi, 
’Mama kpa ubök emi, 
Enye omum mi kpukpr’ ini, 
Ekpep mi akpanikö; 
Emi edi ubök Jesus 
Ekeköñde k’ntak fo. 

Körös: 
Ubök emi omumde mi, 
’Kada unan k’ntak nyin, 
Esit mi ofiori ete: 
Öböñ ke ntiene Fi. 

2. Ubök odu ofukde mi, 
K’ andidomo edide 
Ubök odu añwamde mi, 
Ekpeme k’ idiök y’ ndik, 
O edima ubök Jesus, 
Eköñde ke Calvary, 
Ami nyetiene Enye, 
Ke erinyime esit. 

3. Ubök odu adade mi 
Usuñ osim ke heven; 
Ubök emi akan Satan 
Eyekan osim utit, 
Ubök omodu ndinö 
Menamidiök uböhö; 
Ubök adade mö usuñ 
Osim iduñ ke enyöñ. 

Amen. 
      """
    },
    {
      "id": 747,
      "title": "BERE KE UBÖK ESIE ",
      // "audio":"",
      "body": """
      
KEY G 4/2

{:s, |m: -.mlm .re :m .f |m :-.r ld 
:s, |r .r :-.de |r :f |m .m :-.r ld } 

1. KAM bere k’ ubök Öböñ Jesus, 
Enye ’yeñwam fi, eyeñwam fi, 
K’ öbuötd’ idem ke ima Esie, 
Eyenem fi esit. 


Körös: 
ST: Bere k’ ubök ye k’ ima Esie, 

AB: Bere ke ubök nyuñ bere 
k’ima Esie

ST: Bere k’ ubök ye mböm 
Esie, 

AB: Bere ke ubök ye ke mböm 
Esie 

ST: Bere k’ubök, se iduñ 
k’enyöñ 
AB: Bere ke ubök kam suk se 
iduñ k’enyöñ 

All: Bere ke Andinyaña. 


2. Kam bere k’ ubök Öböñ 
Jesus, 
Enye ’yeyama ke usuñ fo; 
Tiene Enye ke idaresit, 
Nyuñ kop uyo Esie. 

3. Kam bere k’ ubök Öböñ 
Jesus, 
Men mbiomo di, men 
kpukpru di; 
Mbiomo emi odobide, 
Yak nö Öböñ k’ akam. 

4. Kam bere k’ ubök Öböñ 
Jesus, 
Sian Enye kpukpru unana 
fo; 
Enye öyöhö k’ima y’mböm 
Inyuñ iyetk’ idap. 

5. Kam bere k’ ubök Öböñ 
Jesus, 
Enye öyöhö me unana; 
Enye edi Ufan mö emi 
Enyimede Enye. 

Amen. 
      """
    },
    {
      "id": 748,
      "title": "NTE UKWAK UBOM FO EYESÖÑÖ?",
      // "audio":"",
      "body": """
      KEY F 2 10.10.10.9 – 9.9.9.10 

{:d .,r |m :d lL, :r .,r |d :t, ld :m .,m 
|r :r ls :t,.d|t, :L,ls, } 

1. ME ukwak ubom fo 
eyesöñö 
Kini oyobio ösöñde eti? 
Kini ötö-möñ emenerede 
Me ukwak ubom fo ’yesöñö? 

Körös: 
Ukwak ubom ukpöñ nyin odu 
Ösöñ’ ada kini mbufut, 
Omum Itiat misekhekere 
Ösöñ’ ada k’ ima 
Andinyaña. 

2. Eyesöñ’ ada kini oyobio, 
Oto ke ukpeme Andinyaña? 
Ikö otode Enye osim mi, 
Etre ofim k’ odudu Esie. 

3. Eyemum akama kini ndik, 
Ke ini nsobo ekperede, 
Okposuk, oyobio ofimede, 
Akpa-möñ ifukke ubom nyin. 

4. Eyesuk omum ke ini mkpa, 
K’akpa-möñ ofukde ibifik 
nyin? 
Kini ötö-möñ, idibiañake, 
Ke idoride enyin k’ Enye, 

5. K’enyin nyin okutde ebe 
k’ekim, 
Obio gold ye esuk uñwana 
nyin, 
Iyesim ke eti esuk heven, 
K’ oyobio ebede k’ nsinsi. 

Amen. 
      """
    },
    {
      "id": 749,
      "title": "ME INI MI",
      // "audio":"",
      "body": """
      KEY G 3/4 

{:m |m :d :m |r :t, :r |d :-:d |d :L, 
:d |d :s, :d|t, :-} 

1. M’INI mi k’ ubök Fo, 
Öböñ mayak mö do, 
Uwem, m’ufan ye ukpöñ mi 
Mökpöñ k’ukpeme Fo. 

2. M’ini mi k’ ubök Fo 
Ke se ekpededi, 
K’inem m’ubiak, k’eti 
m’idiök 
Nte öfönde Fi. 

3. M’ini mi k’ ubök Fo 
Nsinam nyikde? 
Ubök Ete idiyakke 
Eyen Esie atua. 

4. M’ini mi k’ ubök Fo, 
Jesus ekeköñde; 
Ubök ekeköñd’ enö mi, 
Edi ukpeme mi. 

5. M’ini mi k’ ubök Fo, 
Möbuötidem y’ Afo, 
K’mkpa ebede nyedu, 
K’ubök Fo k’ nsinsi. 

Amen. 
      """
    },
    {
      "id": 750,
      "title": "ÖBÖÑ MI YE AMI",
      // "audio":"",
      "body": """
      KEY G 4/4

{:s, |s, :d ld :-.r |d :t, l-:t, |t, :r 
lL, :t, |d:-l-} 

1. MENYENE eti Ufan, 
Öfönde ye ami, 
Enye ’ma mi ata ima, 
Ima akpanikö, 
Ami ndu uwem k’ Enye 
Moyom ekpere mi, 
Man nyin iduñ ötö kiet, 
Öböñ y’ ami. 

2. Ömöfiök ’mama Enye, 
’Mama Enye eti, 
Ima Enye amade mi, 
Akak inua ‘ndibuk, 
Edi nsi nsi ima, 
Nsi nsi enö, 
Nyin idu ke ima kiet, 
Öböñ y’ ami. 

3. Öfiök nte nyomde 
Ndikö me ukpöñ, 
Ödöñ mi ñka ñketiñ 
Nti ikö ’nö mö, 
Ete ntiñ utib’ ima 
Y’ ntak mkpa Esie, 
Inam utom ötö kiet, 
Öböñ y’ ami. 

4. Ntre nyin idök obot 
Ke uyama enyöñ, 
Ibe isim ke m’ebedeñ, 
Ekim okoneyo; 
Mbufut ekan nyin ekuk 
K’ oyobio ösöñde, 
Nyin isaña ötö kiet,
Öböñ y’ ami. 

5. Ndien ke utit isañ, 
K’ifure ye emem, 
Kpukpru ekikere ndik 
Y’memidem ebe, 
K’ obio uböñ edidide, 
K’uböñ ini iso, 
Iyekara ötö kiet,
Öböñ y’ ami. 

Amen. 

      """
    },
    {
      "id": 751,
      "title": "MÖFIÖK ANDIDA MI USUÑ ",
      "audio": "",
      "body": """
      KEY F 4/4 

{.m :r .d |m :-.m :r .d |t, :-.f :m .r 
|f : -.f :m .re |m :-. } 

Duet: Sop & Alto 

1. KE oyobio osimde mi, 
Anamde usuñ mi okim, 
Ndik inamke ukpöñ mi, 
Möfiök Andida mi usuñ. 

Körös: 
Möfiök Andi…da mi 
usuñ… 
S: Mbe ke o…yobio uwem... 
ATB: Mbe ke oyobio, 
ke oyobio uwem 
K’mbufut ö…söñde eti… 
’Yefön ke Christ adad’ 
usuñ (ih, eyefön). 

2. ’Kposuk ukut osimde mi, 
Ke ñkutde ñkpö ndik; 
Eyikhe idinamke mi, 
Möfiök Andida mi usuñ.
 
3. K’ usen edide y’ idomo, 
Ke inyañ otimerede; 
Möfiök nyesim ke esuk 
Sia möfiök Andida usuñ 

4. Ima Christ ada mi usuñ, 
Enye ikpöñ ke ntiene; 
’Yebuötidem nsim utit 
Möfiök Andida mi usuñ. 

Amen. 
      """
    },
    {
      "id": 752,
      "title": "ENYE IDIFREKE",
      "audio": "",
      "body": """
      
KEY D 3/4

{:m |m :-.f :m |d :r :m |f :-:-|m : 
:d .d |r .r : -: .r |d :-.d :f |m :-:l-: 
: } 

Duet: Alto & Tenor 

1. ETE enyene ‘nditö k’ uwak, 
Me Enye eyefre mi enyin? 
Önö Eyen Esie k’ ufak mö, 
Enye idifreke mi enyin 
All: Enye ifreke mi enyin 
(enyin) 
Enye ifreke mi enyin 
(enyin) 
Önö Eyen Esie k’ ufak mi 
Enye idifreke mi enyin. 

2. Ete emeti ñkpri inuen 
Öfiök ufön mö ye iduö mö 
Ama nditö Esie akan 
Enye idifreke mi enyin 
All: Enye ifreke mi enyin 
(enyin) 
Enye ifreke mi enyin 
(enyin) 
Ama nditö Esie akan 
Enye idifreke mi enyin. 

3. Ikö Abasi edi k’ mfön 
Enye ke ekpeme ke ime 
Eka esifre eyen esie 
Enye idifreke mi enyin 
All: Enye ifreke mi enyin 
(enyin) 
Enye ifreke mi enyin 
(enyin) 
Eka esifre eyen esie 
Enye idifreke mi enyin. 

4. O ufan nyime Enye kemi, 
Önö erinyaña ke mfön, 
Kabaresit kop uyo Esie, 
Enye idifreke fi enyin 
All: Enye ifreke fi enyin 
(enyin) 
Enye ifreke fi enyin 
(enyin) 
Kabaresit kop uyo Esie, 
Enye idifreke fi enyin. 

Amen. 
      """
    },
    {
      "id": 753,
      "title": "EBIET IFURE",
      "audio": "",
      "body": """
      KEY Ab 6/4  

{:s, |m:-.m :m |m :-.r :d |d :-.L 
:d ls, :-:s, |d :-.d :d ld :r :m|r::-
l-:-} 

1. UKPÖÑ mi okoyo ke akpa uwem 
Obiom idiökñkpö ye ukut 
Uyo okosim mi ete, “mek 
Mi k’ okuo,” 
Ndien ami nduk k’ ifure. 

Körös: 
Ukpöñ mi omoduk do ke ifure 
Nduhe aba k’ idiök 
Ke mbufut akpa y’oyobio esöñde, 
Ke Jesus ami möböhö. 

2. Mayak idem mi k’ idak 
mfön Esie, 
Nyuñ ’buötidem k’ ikö Öböñ 
Ñkpököbi öbuñö, ukpöñ mi okut 
Eti ifure ke Öböñ mi. 

3. Ikwö mi kabaña ufak 
ukpöñ mi 
Edi akani ‘mbuk oro; 
Jesus eyenyaña mö eke eyomde 
Ndiduñ ke iduñ ifure. 

4. Öfön didie ‘ndinyene ifiök emi, 
‘Nte John owo ima Öböñ, 
Ndidu k’ökpösöñ ubök Öböñ Jesus 
Ebiet uböhö ke oyobio. 

5. Tiene Andinyaña, Enye k’ebet fi, 
Ndifak k’ odudu Esie, 
Di, nyuñ nim ukpöñ fo ke eti ifure 
Döhö edima edi okim. 

Amen. 
      """
    },
    {
      "id": 754,
      "title": "UBÖHÖ KE UBÖK JESUS ",
      "audio": "",
      "body": """
      KEY G 4/4

{|m :r .,d ls, :d |m :-.f lm :-|s 
:L .,s lm :d |r :-l-: } 

1. UBÖHÖ k’ubök Jesus 
K’ikpanesit Esie, 
Ima Esie ofuk mi 
Ukpöñ mi öböhö. 
Kop! Edi uyo m’enjel 
Ke ekwö enö mi 
Oto ke obio uböñ 
Ko ke edem inyañ. 

Körös: 
Uböhö k’ubök Jesus 
K’ikpanesit Esie, 
Ima Esie ofuk mi 
Ukpöñ mi öböhö. 

2. Uböhö k’ ubök Jesus 
Kini afaneköñ 
Möböhö me idomo 
Idiök ikanke mi 
Möböhö ubiak y’ukut 
Möböhö eyikhe, 
Ukut ke ekpri ini 
Ye möñeyet ñko. 

3. Jesus ebiet uböhö, 
Jesus ’kakpa ’nö mi; 
Nda k’ itiat nsinsi 
Idorenyin mi do 
Ami k’ ime k’ mbet mi, 
Tutu ekim ebe. 
Tutu usiere edi 
Ke ediye obio. 

Amen. 
      """
    },
    {
      "id": 755,
      "title": "NTE EKPEMERÖÑ",
      "audio": "",
      "body": """
      
KEY A 6/8 

{:s, |d :r :m lr :d :L, |L,:-:-ls, : :
s,|s,:t,:r|m:-.r :re|m:-:-} 

1. ÖBÖÑ, Andifak y’ odudu
nyin, 
Itiat, ebiet uböhö nyin, 
Enye öbök me eröñ Esie 
Ima Esie ’du k’nsinsi. 

Körös: 
Ada mö aka ke idim möñ, 
Ke ötö mbiet odude (’dude), 
Akama mö ke ikpanesit, 
Onim mö do ke ifure 
(k’ifure), 
Akama mö ke ikpanesit 
Onim mö do ke ifure 
(k’ifure). 

2. Öböñ edi otu-eköñ nyin, 
Enyin Esie ideh’ idap 
Enye öbök me eröñ Esie 
Iyakke ikpat mö ofum. 

3. Öböñ edi erinyaña nyin, 
Itoro enyene Enye, 
Enye öbök me eröñ Esie 
Man mö ekpebö eridiöñ. 

Amen. 

      """
    },
    {
      "id": 756,
      "title": "JESUS, ANDIMA UKPÖÑ MI ",
      "audio": "",
      "body": """
      KEY F 4/4

{|m:-:mlm:-:d|r:-:rlr:-: |m 
: -:m |s :-:f |m :-:-lr : -:-ld:-:l-:-:} 


1. CHRIST, Andima ukpöñ mi, 
Yak mi ntiene Fi, 
Kini mbufut uwem, 
Y’ oyobio ösöñd’ eti 
Dip mi O Andinyaña, 
Tutu oyobio ebe, 
Da mi k’emem sim iduñ 
Bö ukpöñ mi k’ akpatre. 

2. ‘Nyeneke uñwam efen 
Ke miböhöke Afo, 
Kukpöñ mi ikpöñ, mbök 
Ñwam mi nyuñ döñ mi esit 
Afo ’di uböhö mi, 
Möbuötidem ke Afo 
Fuk etiñ-ibuot mi ke 
Idak mfut mba Fo. 

3. Christ Afo ikpöñ k’ nyom, 
Koro amakan kpukpru, 
Menere mö eduöde, 
Kök ubiak, da ‘nnan usuñ 
Afo amasan’ eti 
Ami ‘ndi idiök owo, 
’Medekhe eti eti 
Afo ’di akpanikö. 

4. Mfön awak ke Afo, 
‘Ndifuk kpukpru idiök mi, 
Yak iyip Fo eyet mi, 
Anam nsana eti, 
Afo ’di idim-uwem, 
Yak mi ñwöñ Fi ke mfön 
Siakha ‘ndien ke esit mi, 
Tutu osim k’ nsinsi. 

Amen. 
      """
    },
    {
      "id": 757,
      "title": "UTIN UKPÖÑ MI ",
      "audio": "",
      "body": """
      KEY F 3/4

{|d :d :d | d :t , :d | r :m :r |d :-:|
m :m :m | m :r :m | s :f :m |r :-:-} 

1. UTIN ukpöñ mi O Öböñ 
Ikimke, k’ Afo odude, 
Kuyak ñkpö isöñ emi, 
Esin ami ndikwe Fi. 

2. Kini idap anamde mi, 
Yak mi nsuk mbere Fi, 
K’ idap mi, ekiker’ edi 
Nduök odudu ye Afo. 

3. Di dañ y’ami kpukpru ini, 
K’ esiode Fi, uwem ebe, 
Di dañ y’ami k’ okoneyo, 
Munyimeke mkpaha mkpa. 

4. Ke eyen Fo kiet oyode, 
K’ omiomde uyo Fo mfin, 
Töñö utom Fo O Öböñ; 
Kuyak enye atak k’ idiök. 

5. Di diöñ nyin k’ idemerede, 
Mbemiso nyin iwörö, 
Tutu ke akwa ima Fo, 
Iduök odudu ko k’ enyöñ. 

Amen. 
      """
    },
    {
      "id": 758,
      "title": "ESE KPA MI, MAN EBÖHÖ! ",
      "audio": "",
      "body": """
      
KEY D 3/4

{.d :m .f |s :-.s :L .fe |s :-:s |s :-.r 
:m .f |m :-. } 

1. ESE kpa mi, man eböhö, 
Ekop eti etop, 
Erinyaña edi k’ mfön, 
Fiori k’ ofri isöñ. 

Körös: 
Ese kpa Mi… man eböhö… 
M’idut (ke ofri) ererimbot, 
SA: Abasi efen iduhe, 
TB: Abasi, Ih Abasi ’fen iduhe 
All: Ese kpa Mi man eböhö 
(man eböhö). 

2. Ese kpa Mi k’eto mkpa, 
M’ukpöñ ekpade ‘mba, 
Ñkobiom m’idiök mbufo, 
Buötidem nyuñ böhö. 

3. Ese kpa Mi, ñkesetde, 
Ke ini idomo, 
Ami ‘nyenö akwa mfön, 
Man eböhö Satan. 

4. Ese Mi, kuse idem fo, 
Uñwam iduhe do; 
K’ erifen ye unana fo, 
Ese kpa Mi ikpöñ. 

Amen. 

      """
    },
    {
      "id": 759,
      "title": "ABASI EYEKPEME FI ",
      "audio": "",
      "body": """
      KEY Db 3/4

{|m :m :f |s :-.L :s |m :f :L |s :-:-} 

1. ÖBÖÑ eyekpeme kufeghe ‘ndik, 
Edi ukpeme fo k’ utin y’ mfut, 
Enye etiñ enyin y’iköt Esie, 
Enye ikpöñke fi oyo ikpöñ. 

Körös: 
Öböñ eyekpeme tutu utit 
Utibe Ete, Andifak y’ Ufan, 
Jesus eyeyere ke okotde, 
Enye ’yekpeme fi, bere k’Enye. 

2. Öböñ eyekpeme k’ofri usen, 
Onyuñ eneñere kpukpr’ usuñ fo, 
Enye Ekpemeröñ, ada m’eröñ 
Esie usuñ aka k’möñ uwem. 

3. Öböñ ’yekpeme fi k’ofri uwem, 
Önö fi edidiöñ awak akan, 
Kini uwem emi okurede, 
Eyeda fi aka k’obio Esie. 

Amen. 
      """
    },
    {
      "id": 760,
      "title": "MFUT ATA EDIKOÑ",
      "audio": "",
      "body": """
      KEY G 3/4

{:m .,re |m :d :r .,de |r :L, :d .d |t, 
: -.r :s .f |m :-} 

1. KE mfut Ata Edikoñ 
Uböhö mi odu do, 
Koro Enye ideh’ idap 
Ke osuk ekpeme mi, 

Körös: 
SA: Moduñ ke… mfut ökpösöñ 
TB: Ami moduñ k’mfut Esie 
SA: Edidem me ndidem 
TB: Mfut akwa Edidem 

All: Omofuk mi k’mba Esie, 
Modu do... ke ifure 
(ke ifure). 

2. Ke mfut Ata Edikoñ 
Möböhö ñkpö ndik 
Koro ami ndu k’idak 
Nsinsi ubök Esie. 

3. Ke mfut Ata Edikoñ 
Idiökñkpö iduhe do 
Enye edi idorenyin 
Y’Andifak mi ke kpukpru. 

Amen. 
      """
    },
    {
      "id": 761,
      "title": "AFO EDI ITIAT MI",
      "audio": "",
      "body": """
      KEY Bb 9/8 

{ls, :fe, :s, |L, :-:-ls, :-:-ld :t, :d 
|r :-:-lL, :-:-} 

1. AFO Itiat mi, Eti Andifak, 
Ebiet udibe ye uböhö; 
Afo Itiat mi y’mfut edidiöñ, 
Nyeduñ y’ Afo k’nsinsi. 

Körös: 12/8
SA: Afo Itiat, eti Andifak mi, 
TB: Afo Itiat, eti Andifak 
All: Ufan ye Andida mi usuñ 
(Ada-usuñ) 
SA: Idorenyin ye Andinyaña 
mi, 
TB: Idorenyin ye Andinyaña 
All: Iberedem ‘nyedibe k’Afo 
(‘nyedibe k’Afo). 

2. Afo Itiat mi k’idiök edide, 
Afo Itiat mi kini ukut; 
Afo Itiat mi kini mfukhö, 
Afo Itiat mi ‘ndifeghe ‘nso? 

3. Afo Itiat mi kini idomo, 
Afo Ufan, ukpukhökere; 
Afo ikpöñ k’ukpöñ mi ebere 
Suk ñwam mi ndi edisana. 

4. Afo Itiat mi, ke uböñ isöñ 
Ye m’ebekpo edibiarade, 
Afo ’yedi ’tiat erinyaña mi, 
Nsins’ Itiat ‘nyebere k’Afo. 

Amen. 
      """
    },
    {
      "id": 762,
      "title": "EKAUBÖK ABASI",
      "audio": "",
      "body": """
      KEY C 4/4

{:d .m |s :slf .m :r .d|L :d' l -:t .L 
|s:s lL.s:f.m|m:rl-} 

1. K’ ANDINYAÑA adade mi usuñ, 
Nyeböhö kpukpru afaneköñ; 
Eyedip mi ke ini oyobio 
K’ eka ubök Esiemö. 

Körös: 
K’eka ubök (k’eka ubök) Esiemö, 
K’eka ubök (k’eka ubök) Esiemö; 
Ami möböh’ ofri afaneköñ, 
K’eka ubök Esiemö. 

2. Omofuk mi k’ubök ima Esie, 
Etiñ ikö emem Esie ’nö mi; 
Möböhö koro Öböñ ’mumde mi 
K’eka ubök Esiemö. 

3. Eyekpeme, idikpöñk’ ukpöñ mi, 
Baba ‘ñkpö idibiatk’ ima Esie; 
Möfiök eyekpeme mi k’nsinsi, 
K’ eka ubök Esiemö. 

Amen. 
      """
    },
    {
      "id": 763,
      "title": "KE MFUT ITIAT",
      "audio": "",
      "body": """
      KEY G 2/2
      
{:m .f |s .m :r .m |d :d .t, |L, :t, .d 
|s, } 

1. KE mfut Akwa Itiat, yak 
ndu ke emem, 
Ke oyobio anamde ökpösöñ 
k’esit mi; 
Oyobio idikanke k’ndibede 
k’Enye, 
Ndodu ke ifure ye afo. 

Körös: 
Eti Andinyaña mi! Yak 
ndibe k’Afo, 
Yak nsuk ndibe ke idem Fo; 
Tutu oyobio uwem y’mbufut 
esie ebe, 
’Nyuñ nsim eti utit ke Afo. 

2. Ke idiök usuñ desert emi 
nsañade 
Y’ökpösöñ ufiop utin 
k’ibuot mi, k’ibuot mi, 
Yak ñkut eti mfut enemde, 
enemde 
Man ikpat mi ösöñö 
k’ñkutde. 


3. Ami ‘nyedu do k’emem 
tutu ami ñkut 
Enyöñ afiakde eye önö mi, 
önö mi; 
K’ufiop utin ebede ke 
usen, ke usen 
Man owo isañ önyöñ 
esiemö. 

Amen. 
      """
    },
    {
      "id": 764,
      "title": "ENYE EYETIM ODIP MI ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:d .r |m .m :m .f lm .r :d .m|s : lm 
:s .s |L .L :L .L lL. s:f.m |r :-l-} 

1. K’ NDIBE ebiet Esie, Enye 
’yedip mi, 
Eyesio mi ke ukut ererimbot; 
Eyefuk mi k’mfön k’idak 
mböm Esie, 
Andifak eyekpeme mi do. 

Körös: 
Eyedip mi… eyedip mi… 
K’ebiet mfukhö y’idomo 
misimke mi; 
Eyedip mi… eyedip mi… 
K’ ndibe ebiet Esie, Enye 
’yedip mi. 

2. K’ ndibe ebiet Esie, Enye 
’yedip mi 
Onyuñ owut mi uyam’ uböñ Esie; 
Ada uñwana nt’ ekura ofuk mi, 
Önö esit mi idorenyin. 

3. K’ ndibe ebiet Esie, Enye 
’yedip mi, 
Ke ata edisana ima Esie; 
Nyedu do nyuñ mbuana 
y’Andinyaña, 
O! ’matabi idara enyöñ. 

Amen. 
      """
    },
    {
      "id": 765,
      "title": "DA MI USUÑ, ANDINYAÑA",
      "audio": "",
      "body": """
      KEY Db 4/4

{|s:-.mls.d':t.L|s:-l-: |f:-.m 
lr .L :s .f|m :-l-: } 

1. ÖBÖÑ kuyak ndiyo 
(ndiyo) 
Da mi usuñ kpukpr’ ini 
(kpukpr’ ini) 
K’Afo ami möböhö 
(möböhö) 
Nyedu ke ima Fo. 
(k’ima Fo) 

Körös: 
Da mi usuñ, 
Öböñ kuyak ndiyo (ndiyo) 
Da mi be k’idiök (ke idiök) 
ini 
Da mi usuñ kpukpr’ ini 
(kpukpr’ ini). 

2. Afo ebiet uböhö (uböhö) 
Kini mbufut uwem (ke uwem) 
Möböhö k’ekperede, 
(möböhö) 
Mbere ke mböm Fo (mböm Fo). 

3. Öböñ da mi sim utit 
(sim utit), 
Ke oyobio ebede (ebede) 
Nyesim iduñ oro (ke iduñ) 
Ekwökhöre möñ-eyet 
(möñ-eyet). 

Amen. 
      """
    },
    {
      "id": 766,
      "title": "EBIET UBÖHÖ KE OYOBIO ",
      "audio": "",
      "body": """
      KEY F 4/4 

{:s, |d:dld:r |m :fls:-.m |m .,m 
:m .,m lf :m |r :-l-} 

1. ÖBÖÑ, ITIAT udibe nyin, 
Ebiet uböhö k’ oyobio, 
Ke ’nanenyin ekededi, 
Ebiet uböhö k’ oyobio. 

Körös: 
O Jesus ikpöñ edi odudu nyin, 
Ke ’memidem, ke ’memidem, 
O Jesus ikpöñ edi odudu nyin, 
Ebiet uböhö k’oyobio. 

2. K’uwemeyo y’okoneyo, 
Ebiet uböhö k’oyobio, 
Baba ndik, baba usua, 
Ebiet uböhö k’oyobio. 

3. K’ oyobio ekande ekuk, 
Ebiet uböhö k’oyobio, 
Nyin idifiak’ edem baba, 
Ebiet uböhö k’oyobio. 

4. O Akwa Itiat uböhö, 
Ebiet uböhö k’oyobio, 
Afo edi Andiñwam nyin, 
Ebiet uböhö k’ oyobio. 

Amen.
      """
    },
    {
      "id": 767,
      "title": "ENYE ODIP UKPÖÑ MI",
      "audio": "",
      "body": """
    KEY D 6/8

{:s|s:-.f :mlm:r:d|L:-.L:Lls::
s |s:-.f :m lm :f :m |r :-:-l-:-} 

1. UTIBE Andinyaña, Jesus Öböñ, 
Utibe Andinyaña mi, 
Enye odip ukpöñ mi k’aba itiat, 
Ke mben akpa-möñ uwem. 

Körös: 
Enye odip ukpöñ mi k’aba itiat, 
Emi ofukde ‘nsat isöñ, 
Enye odip uwem mi k’ima Esie, 
Ofuk mi do k’ubök Esie, 
Ofuk mi do k’ubök Esie. 

2. Utibe Andinyaña, Jesus Öböñ, 
Emen mbiomo mi efep 
Omum mi akama, ‘ndisekhekere, 
Önö mi eti odudu. 

3. Enye ömönö mi uwak edidiöñ, 
Y’ata eti mfön Esie, 
Nyekwö itoro Esie k’idara, 
K’utibe Andinyaña mi. 

4. K’nsined’ uyai Esie 
‘nyedök k’enyöñ, 
Man nsobo y’Enye k’ofim, 
Eti erinyaña ye ima Esie, 
Nyekwö ye mbon enyöñ. 

Amen. 
  
      """
    },
    {
      "id": 768,
      "title": "ENYE ADA MI USUÑ ",
      "audio": "",
      "body": """
      KEY D 4/4

{:s|m:-.rld:s|L :f |f :L|s:.
m lm :r .d |m:m lr } 

1. O ENYE ada mi usuñ, 
Ata ikö ndöñesit; 
Se ’namde ke kpukpru 
ebiet, 
Abasi ada mi usuñ. 

Körös: 
Ada usuñ, ada usuñ, 
Ubök Esie ’da mi usuñ; 
Ntien’ Enye k’akpanikö, 
Ubök Esie ada usuñ. 

2. Ke ini ñkpö ösöñde, 
Me kini ñkpö öfönde; 
K’eti ini me k’oyobio, 
Abasi ada mi usuñ. 

3. Öböñ ke ’mumde Fi ubök, 
Nsukk’ uyo, nsemeke; 
Möyukhö ke se ñkutde, 
Abasi ada mi usuñ. 

4. Ke utom mi okurede, 
K’mfon Fo ñkut erikan; 
Mfegheke ndik mkpa, 
Amada mi ebe Jordan. 

Amen. 
      """
    },
    {
      "id": 769,
      "title": "KE EKAUBÖK ESIE ",
      "audio": "",
      "body": """
      KEY Bb 6/4  

{: m, .f , |s, :-:s, ls, :L , :s, |s, :d :l-: 
:t,|L,:-:d ld:t,:r|d:-:-l-:} 

1. UKPÖÑ emi oyode 
Ökpöñ eti isöñ; 
S’ Andimum fi ñkama, 
Ke eka ubök Esie. 

Körös: 
Ke eka ubök Esie, 
Ke eka ubök Esie; 
Öfön önö m’öbuötidem, 
Ke eka ubök Esie. 

2. Ke oyobio edide, 
Ndinam fi öduö; 
Suk yire Andimum fi 
Ke eka ubök Esie. 

3. Ke idem ememde fi 
K’utom afo ’namde, 
Bere ke Andimum fi 
Ke eka ubök Esie. 

4. K’uföt mbufut Jordan, 
K’ukot fo misöñke; 
Ti, Enye ke omum fi 
Ke eka ubök Esie. 

5. Kini idisobode, 
Ye kpukpru ‘mbon ufak; 
Iyetor’ Andimum nyin 
Ke eka ubök Esie. 

Amen. 

      """
    },
    {
      "id": 770,
      "title": "MFUT AKWA ITIAT",
      "audio": "",
      "body": """
      KEY G 4/4

{|m:m .,rld.s,:d.r|m:Lls:d 
|m :-lr :d |r :-l-} 

1. DA MI ka ke mfut Itiat 
uböhö 
Ke ‘memidem; 
Nö mi mmöñ otode k’idim uwem, 
Enemd’ eti. 

Körös: 
Modibe mböhö oyobio uwem, 
Nyedu do k’idak mfut ima Fo; 
Ke ifure k’idak Itiat nsinsi 
Nyedara. 

2. Da esit mfukhö mi ka ke mfut 
Akwa Itiat; 
Do ke ndibe edisan’ iso Fo, 
Ndu k’emem. 

3. Da mi ka ke mfut Itiat 
nsinsi 
O kpeme mi, 
Man mböhö m’idomo ererimbot, 
K’mkpere Fi. 

Amen. 
      """
    },
    {
      "id": 771,
      "title": "ENYE EYEDIP MI ",
      "audio": "",
      "body": """
      KEY G 9/8 

{l s, :d :r |m :-:-lm :-:-l f :m :r |m 
:-:-ld:-:-ls, :d :m |s :-:-l-:-:s 
|L :s :f lm : -:-l -: -:-} 

1. K’OYOBIO uwem ösöñde, 
Ke inyañ ye ke obot, 
Nyeyom ebiet uböhö 
Ke mfut ubök Öböñ. 

Körös: 
Eyedip mi, eyedip mi 
K’ ebiet idiök misimke mi; 
Eyedip mi, eyedip mi 
Ke mfut ubök Esie. 

2. ’Kposuk idomo edide, 
Eyenam nyom iduñ, 
Me ‘ntunö Esie ’di k’ima, 
Idighe k’iyaresit. 

3. M’asua ekpedi ndibiat, 
Eñwana ke kpukpr’ usuñ, 
Uduak mö Öböñ eyebiat, 
Esin k’nsins’ idara. 

4. K’ ntre k’mbiomde cross 
k’isöñ 
K’nsobode y’idomo 
Jesus k’ekpeme ukpöñ mi, 
Usua idikwe unen. 

Amen. 

      """
    },
    {
      "id": 772,
      "title": "ANDINYAÑA ODU YE AMI ",
      "audio": "",
      "body": """
      KEY Eb 3/4

{:m .,f |s :-.m :d' .,L |s :m :L .,s |r 
:-.m :s .,f |m :-} 

Duet: Sop & Alto 

1. AMI moyom Andinyaña, 
Ndisañake ikpöñ; 
Nyefiök k’ Enye ’kperede, 
K’ubök Esie ’mumde mi. 

Körös: 
Ukpöñ mi… ’didigheke 
(ke idiök) 
Ke Enye adad’ usuñ… 
Nyeka ‘ndisukke uyo, 
Ke nde ikpat Esie. 

2. Ami moyom Andinyaña, 
Mbuötidem mi emem; 
Enye önö ndöñesit, 
Baba efen minöhö. 

3. Ami moyom Andinyaña, 
Ke isañ usuñ uwem; 
Man mbe k’oyobio 
y’ utin, 
Ke eköñ ye ke eñwan. 

4. Ami moyom Andinyaña, 
Man Enye ada usuñ; 
Tutu k’mben akpa Jordan, 
Mbe mbufut Esie. 

Amen. 
      """
    },
    {
      "id": 773,
      "title": "KE MFUT MBA ESIE",
      "audio": "",
      "body": """
      KEY F 4/4

{:m .f |s .L :s .f lm :m .r |d :d ld 
:d.d|t,.t,:d.dlr.r:d.t |d.d:r.r 
lm .m } 

1. KE mfut mba Esie, ifure odu 
Ifure odu ke utom, ifure 
odu ye m’ufan 
Ke mfut mba Esie ifure odu 
Ke mfut mba Esie, ifure (odu). 

Körös: 
Ifure (odu) ye emem (emem) 
Idara (okpon) ke mfut mba Esie 
Ifure (odu) ye emem (emem) 
Idara (okpon) ke mfut mba Esie 

2. Ke mfut mba Esie, do 
k’emem odu, 
Emem emi akand’ ifiök, 
emem emi mikureke, 
Ke mfut mba Esie, do k’emem odu 
Ke mfut mba Esie, do k’emem (odu). 

3. Ke mfut mba Esie idara okpon, 
Idara ndibuk mbuk akwa 
idara ye uböñ 
Ke mfut mba Esie, idara okpon 
Ke mfut mba Esie, idara (okpon). 

Amen. 
      """
    },
    {
      "id": 774,
      "title": "NDIBERE KE NSINSI UBÖK",
      "audio": "",
      "body": """
      KEY A 4/4

{|m :m lm .,r :d |r :r lr .,d :L, |s, :s, 
ld .,t, :d .r |m :m lr :-} 

1. O UTIBE ebuana y’ idara 
K’ ndibere k’ nsinsi ubök; 
O akwa emem y’uwak 
edidiöñ 
K’ ndibere k’ nsinsi ubök. 

Körös: 
SA: Bere… bere… 
TB: Bere ke Jesus, bere ke 
Jesus, 
All: Möböhö ke kpukpru idiök 
SA: Bere… bere… 
TB: Bere ke Jesus, bere ke 
Jesus 
All: Bere k’nsinsi ubök Öböñ. 

2. Ami möböhö, k’ isañ mi 
k’ isöñ, 
K’ ndibere k’nsinsi ubök; 
Usuñ ayama ke ofri usen 
K’ ndibere k’nsinsi ubök. 

3. Ndibak anie? Ndifegh’ 
anie? 
K’ ndibere k’nsinsi ubök; 
Menyene emem ke Andinyaña 
K’ ndibere k’nsinsi ubök. 

Amen. 
      """
    },
    {
      "id": 775,
      "title": "ÑKPEKEMEKE KE MIDIGHE AFO",
      "audio": "",
      "body": """
      KEY F 4/4

{:d.,r |m:L ls:f|m:-lm:m|s 
:f .m lr :r |d :-l-} 

1. ÖBÖÑ ñkpekemeke 
Ke midighe Afo, 
Iyip Fo akafak mi, 
K’ akwa eköm-urua, 
Edinen ido y’ uwa, 
Erifen önöde, 
Edi idorenyin mi, 
Mbure ke Afo. 

2. Öböñ ñkpekemeke, 
Ke ndade ikpöñ, 
Odudu, eti ido 
Ye ifiök iduhe; 
Afo Andinyaña mi 
Edi kpukpru ’nö mi, 
Odudu mi eyedu, 
K’ mberede y’ Afo. 

3. Öböñ ñkpekemeke, 
Ke midighe Afo; 
Ndien ke ekpri ini, 
Ami ‘nyebe inyañ, 
Afo udukpöñke mi, 
K’ oyobio ösöñde, 
Afo eyekpere mi, 
Etiñ “Edi Ami.” 

Amen.
      """
    },
    {
      "id": 776,
      "title": "MMÖYÖHÖ KE ENYE",
      "audio": "",
      "body": """
      KEY C 4/4

{:s|d' :-.s lm :s|L :-ls :d'|r' 
:-.t ls :f |m : -l-} 

1. KE Christ, ima awawak, 
K’ Enye, mfön k’ ufak, 
K’ Enye, udia usen mi, 
K’ Enye, uböhö mi, 
K’ Enye, usio isop mi, 
K’ Enye, ‘nsinsi uwem, 
K’ Enye, erinyaña mi, 
K’ Enye, utit k’ eñwan. 

Körös: 
K’ Enye!... k’ Enye!... 
Uyöhö edidiöñ ke utom Esie, 
K’ Enye!... k’ Enye!... 
Ke Enye möyöhö (yöhö). 

2. K’ Enye, möduök odudu, 
Ntiñke ke ubak, 
K’ ofri nti edidiöñ 
Anam mi ndara, 
K’ ata akwa ukpono, 
Mokut k’ usen k’ usen, 
Mfön Esie emekem, 
Ndikpem’ esit mi.

3. K’ ndikutde Fi Jesus, 
K’ ñkutde iso Fo 
Ke ‘ndude ke mbiet Fo, 
Eyenem mi akan, 
Nyekwö itoro mi, 
Ke se Afo ’namde, 
Nyenyuñ ’nö Fi uböñ, 
Sia akafakde mi. 

Amen. 
      """
    },
    {
      "id": 777,
      "title": "UBÖK FO OMUM MI",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:s, |d :t, ld :r |m :-.r ld :d |r :r ld 
:t, |d:-l-} 

1. MÖFIÖK ubök Fo omum mi, 
Öböñ y’ Andinyaña, 
K’isañ mi, nyetiene Fi, 
Ke ebiet akade. 

Körös: 
Möfiök Enye mbuötd’ idem, 
Koro ödiöñde mi, 
Afo, ukwak ubom ukpöñ, 
Modori Fi enyin. 

2. Möfiök ubök Fo omum mi, 
Kini afaneköñ 
Odomode man ‘ñkpöñ usuñ, 
Öyöhö mi y’ ndik. 

3. Möfiök ubök Fo omum mi, 
Eyetim ekpeme 
Esit mi ke nsañade, 
Mbe utuñö möñ. 

4. Möfiök ubök Fo omum mi, 
Eyeñwam ukpöñ mi, 
Öböñ, mfön Fo ekem mi, 
Man nsim ke utit. 

Amen. 

      """
    },
    {
      "id": 778,
      "title": "SAÑA KE UÑWANA ",
      "audio": "",
      "body": """
      KEY Ab 6/8

{:s, |m:-:-l -:r :d |d :-:-l-:t, :L, 
|s, :-:-l-:L, :s, |f,:-:-l-:-} 

1. SA: AMI nsaña ke uñwana 
cross 
TB: Ami nsaña, ndu ke 
uñwana cross 
Mbe ke oyobio (ke oyobio), 
Ukpöñ mi ke oyom heven, 
Ke uñwana Calvary 
(k’uñwana Calvary). 

Körös: 
SA: Saña k’uñwana, saña 
k’uñwana 
TB: Saña ke uñwana, saña ke 
uñwana 
ST: Mbufo ‘nditö uñwana, 
AB: Nditö uñwana, 
SA: Eto ke cross eduk k’uböñ, 
TB: Eto cross Calvary ebe 
eduk k’uböñ 
SB: Emenyen’ uñwana 
AT: Emenyene, emenyen’ 
uñwana. 

2. SA: Ami nsaña ke uñwana cross 
TB: Ami nsaña, ndu ke 
uñwana cross 
Ke uñwana oro (ke uñwana); 
Ami mokut Enye emi 
Akakpade önö mi 
(akpade önö mi). 

3. SA: Ami nsaña ke uñwana cross 
TB: Ami nsaña, ndu ke 
uñwana cross 
Ayamade ’nö mi (’yama ’nö mi), 
Ada mi ebe k’mbufut, 
Osim ebiet iduñ mi 
(osim ke iduñ mi). 

Amen. 
      """
    },
    {
      "id": 779,
      "title": "NYEBET TUTU KE USIERE ",
      "audio": "",
      "body": """
      
KEY Eb 4/4

{|s :-.fels .,fe :s.,fe|s :-lm : |L 
:-.s lf :m|r :-l-: } 

1. OYOBIO ke ösöñ eti, 
Uñwam iduhe, 
K’ emen aka ke nsobo, 
Ke ekim inyañ. 

Körös: 
S: Sese! Andinyaña! 
ATB: K’idara se Andinyaña! 
S: Kop eti mbuk, 
ATB: Dara kop eti mbuk 
All: Nyebet tutu k’ usiere, 
Medi ‘ndiñwam fi, 
kudikhe, 
(Ih!) Nyebet tutu 
k’ usiere, 
Medi ‘ndiñwam fi, 
kudikhe (kudikhe). 

2. M’awat inyañ emem idem 
Enyuñ ekpa ‘mba, 
Edara ndikut Öböñ, 
Andinyaña mö. 

3. Ke akpa otimerede 
Onyuñ ofukde, 
Me anditak ekpañ utöñ, 
Christ edi ‘ndiñwam! 

4. K’ ukpöñ oyomde nditak, 
K’ima Enye ’di, 
Kpöñ s’itakde! Bere 
k’ Enye, 
Eyesim iduñ! 

Amen. 

      """
    },
    {
      "id": 780,
      "title": "JESUS EDI ANDIKPEME NYIN ",
      "audio": "",
      "body": """
      KEY Bb 4/4

{|d :-.d lt, :L, |s, :-lm, :-|s, :m lr 
:d |r :-l-:-} 

1. JESUS Ekpemeröñ, ödöñ nyin esit, 
Osuk akama nyin, ifeghe nso? 
Yak itiene Enye k’ ebiet akade 
Edide ke desert, me ke idimmöñ. 

2. Jesus Ekpemeröñ, kop uyo Esie, 
Suñ suñ uyo Esie, anam idara 
K’Enye aduaride, edi ke suñ suñ 
Ada usuñ ikpöñ, efen iduhe. 

3. Jesus Ekpemeröñ, akpa önö mö, 
Eyet kpukpru eröñ ke iyip Esie 
Onim mö ndibe idiöñö Esie 
“Mandinyene spirit mi, edi Okim.” 

4. Jesus Ekpemeröñ, k’ ada mö usuñ 
M’ekpe ekpebine, kiet iditakke 
K’itikhere mkpa ’yöhöde y’ndik 
Nyin ifegheke ‘ndik, ikakan udi. 

Amen. 
      """
    },
    {
      "id": 781,
      "title": "ANDINYAÑA, DA NYIN USUÑ NTE EKPEMERÖÑ ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{|m :m lm .r :m .f | s :d ' l s :m |r :m 
lf .L :s .f|m :-l-} 

1. KPEME nyin, O Andinyaña, 
Nte Andikpemeröñ, 
Bök nyin mi man ikpasaña, 
Ke ata eti isöñ, 
Eti Jesus, Eti Jesus, 
Kpeme nyin k’ ofri uwem; 
Eti Jesus, Eti Jesus, 
Kpeme nyin k’ ofri uwem. 

2. Idi Okuo, da nyin k’ ufan. 
Di Andida nyin usuñ, 
Kpeme eröñ Fo, kan idiök, 
Yom nyin k’ isopde usuñ 
Eti Jesus, Eti Jesus, 
Kop, O kop k’ ikped’ ubök 
Eti Jesus, Eti Jesus, 
Kop, O kop k’ ikped’ ubök, 

3. Ömöñwöñö ndibö nyin, 
Okposuk ibuenede; 
Amada mböm afak nyin, 
Anyaña nyin ke mfön, 
Eti Jesus, Eti Jesus, 
Nam nyin ibak iyom Fi 
Eti Jesus, Eti Jesus, 
Nam nyin ibak iyom Fi. 

4. Nam nyin mi ibak iyom Fi 
Inyuñ inam uduak Fo; 
Eti Öböñ, Andinyaña, 
Yöhö nyin ke ima Fo, 
Eti Jesus, Eti Jesus, 
Ma nyin tutu ke utit 
Eti Jesus, Eti Jesus, 
Ma nyin tutu ke utit. 

Amen. 

      """
    },
    {
      "id": 782,
      "title": "USEN IDARA KIET ",
      "audio": "",
      "body": """
      KEY F 3/2

{.s, :s, .m |m:-.m :m.,f |f : -:f 
|f : -.t, :d .r|m:-} 

1. AMI mfiökk’ ini eke 
Öböñ edidide; 
Edi möfiök ke usen kiet, 
Eyeda mi önyöñ. 

Körös: 
K’ akwa usen idara kiet, 
Möfiök, (möfiök) eyeyom mi, 
Öñwöñö ke ikö Esie, 
’Yenam akpanikö 
K’ akwa usen idara kiet 
Öböñ eyeda mi. 

2. Ami mfiökk’ ini eke 
Ndikutd’ Edidem, 
Ndikpöñde ukut isöñ, 
Ntor’ Enye k’ enyöñ. 

3. Ami mfiökk’ ntak eke 
Enye amade mi, 
Edi möfiök ke Calvary 
Akpa, anam ‘mböhö, 

4. Ami mfiökk’ ini eke 
Ndikutde Enye, 
Edi möfiök nyetoro 
Enye k’ nsi nsi. 

Amen.
      """
    },
    {
      "id": 783,
      "title": "AFO EMI MEKPEMERÖÑ EKEKPONODE ",
      "audio": "",
      "body": """
      KEY F 3/4

{|d : -:m |s :-:m |f :s :L |s :-:r } 

1. AFO ke enjel ekesian 
Me ekpeme eröñ ete: 
“M’ete ekufeghe ndik 
Christ amana önö nyin” 

2. Mefiökñkpö owo ekedi, 
Ekama gold, myrrh ye 
incense, 
Etiñ ye ukpono ete: 
Öböñ amana ’nö nyin. 

3. Imöduö k’ isöñ k’ ukpono, 
Iköm Fi, k’ erinyaña nyin, 
Önöde k’ utib’ emana, 
Öböñ, edidem kpukpru. 

Amen. 
      """
    },
    {
      "id": 784,
      "title": "UTIBE ENYIÑ ",
      "audio": "",
      "body": """
      KEY D 3/4

{|s :L :-.f |s .,f :f :-|f :t :-.L |L .,s 
:s :-} 

Duet: Sop & Alto 
1. M’ENJEL ’ketiñ nso 
k’ikwö idara mö? 
K’ okoneyo edide uñwana, 
Uböñ akasiakha, ntanta 
eyamaKe eti mbuk emana Öböñ, 

Alto solo: 
Ikot enye didie, m’enjel 
etorode? 
Nditö owo, etoro didie? 

Duet: Sop & Alto 
Utibe y’ ökpösöñ, kpa Eyen 
Abasi 
Kot Enye Jesus, Andinyaña 
nyin. 

Körös: 
Kot Enye Jesus, kot Enye Jesus, 
Kot Enye Jesus, Andinyaña nyin. 


Duet: Sop & Alto 
2. M’idut ekop etop mö 
ekebetde ko, 
K’ ekim, uñwana oro 
emedi; 
Mö edude k’ udi, etuade 
k’ mfukhö, 
Emanade k’ ukut, ekpa 
k’ ndik 

Alto Solo: 
Ke m’ini ebede, 
Ikañ inemesit 
Edemere oto heven k’ enyöñ 

Duet: Sop & Alto 
Imokut Öböñ nyin nt’ 
ekeñwöñöde 
Kot Enye Jesus, Andikan mkpa. 

Duet: Sop & Alto 
3. Etre ufök ikpo, mfukhö ye 
ubiak, 
Enye akan idiökñkpö ye 
mkpa 
Dop uyo fo, kutua, kpöñ 
ndik fo ñko 
Andiyo, nyöñ di, bö 
Edidem fo. 

Alto Solo: 
Akan mkpa ye hell, uböñ 
enyen’ Enye 
Eyesin nyin k’ eti iduñ Esie. 

Duet: Sop & Alto 
Ko k’enyöñ k’etoro enyiñ 
ima Esie 
Jesus Andinyaña, akan mkpa. 

Amen. 
      """
    },
    {
      "id": 785,
      "title": "USEN EMANA CHRIST ",
      "audio": "",
      "body": """
      KEY Bb 4/4

{|s, :m, .,f, ls, :d |d :-lt, : |r :t, .,L, 
ls, :f, |m, :-.f, ls, : } 

1. INI kiet k’ obot Judah 
Uñwana ’kasiakha, 
K’ efioride Messiah 
Esemde ke uyai, 
Ndien ebe ke ofim, 
Ke mba usiere 
Oto ke enyöñ ete: 
“Christ Jesus amana!” 

Körös: 
Uböñ, uböñ, eyak nyin ikwö, 
Uböñ enyen’ Edidem 
Fiori itor’ Esie k’ ikwö idara 
“Usen emana Öböñ nyin” 

2. O utibe ebekpo 
Kpa ufök ufene, 
Ököbö m’ enö uböñ 
Myrrh, frankincense ye 
gold 
Myrrh edi ndot-ndot 
K’ uwa mkpa Esie, 
Frankincense ke ukpono, 
Gold ke uböñ Esie. 

3. Nyin imokop ke ofim, 
Etop otod’ enyöñ, 
Ke ererimbot emi, 
Uñwan’ Esie ’kara; 
Nyin inö Enye nso? 
Ekem k’ ukut Esie; 
Inö akam ke incense 
Y’ ima ke anyanya. 

Amen. 

      """
    },
    {
      "id": 786,
      "title": "UKOT ENIYÑ ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:m, .,s, |d :d ld :d .,r |m :m lm 
:m .,f |s :m lr :d |r :-l-} 

1. YAK ’nam akpanikö 
k’mbiomde cross 
’Nam utom Öböñ ’made; 
’Nam uduak Esie ke ofri esit, 
Tutu ekot mi k’ enyöñ 


Körös: 
Eyekot enyiñ ke ekpri ini 
(k’ekpr’ ini) 
Tor’ Öböñ (tor’ Öböñ) 
‘nyedu do (‘nyedu do) 
Eyekot enyiñ ke ekpri ini 
(k’ekpr’ ini) 
Hallelujah! ‘Nyedu do 
(du do). 

2. K’usuñ isañ mi Enye eyenö 
Mfön emi ekemde; 
Ke utom ye eñwan uwem emi, 
Tutu ekot mi k’ enyöñ. 

3. K’eköñ ösöñde, ubök Esie do 
Ndiñwam ke idomo; 
K’usuñ ödiökde, Enye ’yekpeme 
Tutu nsim ke iduñ. 

Amen. 

      """
    },
    {
      "id": 787,
      "title": "NDIMA, NYIN IDI NDITÖ ABASI ",
      "audio": "",
      "body": """
      KEY C 4/4

{:s .,s |t :t l -:L .,s |d' :d' l -:s .,s 
|t :t l-:L .,s |d':-l-} 

1. AFO idim edidiöñ, di, 
Nam mi ñkwö mfön Fo, 
Idim mböm ke öfiörö, 
Anam nyin itoro Fi. 

Körös: 
Ndima nyin idi iköt Öböñ 
S’ididide iyarakere kemi 
Imöfiök (’möfiök) ke Enye 
edide (’dide) 
Imöfiök (’möfiök) ke Enye 
edide (’dide) 
Iyebiet Enye, sia idikutde 
Nte Enye etiede. 

2. Kpep mi m’inem ikwö oro, 
Mö ekwöde ke enyöñ 
Motoro k’obot ndade 
Obot akwa ima Fo. 

3. Nyewuk itiat uböhö 
Nyeyom uñwam Fo do 
Nyesim iduñ k’ ifure 
Oto k’ akwa ima Fo 

4. Ke nyode, Christ oyom mi, 
Ñkoyo mkpöñ Öböñ 
Anyaña mi k’ iyip Esie, 
Osio k’ ndik ye mkpa. 

5. O! ami ndu ke isöñ 
Kabaña mfön Öböñ, 
Yak mfön Fo ‘nte ebuka 
Öböp esit mi k’Afo. 

6. Ononuk mi ofri ini, 
Ndikpöñ Öböñ ’made 
Bö esit mi, nyuñ nam enye 
Ebiet iduñ Fo k’ enyöñ. 

Amen. 
      """
    },
    {
      "id": 788,
      "title": "MBUFO IKÖT ÖBÖÑ ",
      "audio": "",
      "body": """
      KEY Ab 4/2

{ls, :-|d :m lr :r |m :-ls :-|f :m lr 
:r |d :-} 

1. MBUFO iköt Christ, 
Eka iso k’ utom; 
Me andinam uyo Esie 
Edu ke ukpeme. 

2. Yak uñwana ‘mbufo 
Eyama ökpösöñ, 
Esöñ’ eda k’iso Esie, 
Enyiñ Esie okpon,
 
3. Öböñ ete, “kpeme” 
Eridi k’ ekpere! 
Idiöñö omowut idem, 
Kpukpru ebeñidem. 

4. Eti owo utom, 
Söñöda k’ itie fo, 
Kini Öböñ edidide, 
Eyebö anyanya. 

5. Christ ’yenam usörö 
K’ ubök Esie ikpöñ, 
Eyemenere fi itie 
Ke otu me enjel. 

Amen. 
      """
    },
    {
      "id": 789,
      "title": "NTE IYEDU DO? ",
      "audio": "",
      "body": """
      
KEY F 4/2

{:s, .s, |d:d .,r lm :r .d |f.s :L ls 
:m .f |s :s .,L l s .m :r .d |r :-} 

1. IMÖFIÖK eti obio uböñ odu, 
Ko ke heven ke enyöñ, 
Mö efakde eyedu do ye Jesus, 
Nte iyedu do? 
Nte iyedu do? 
Nte iyedu do? 
Mö efakde eyedu do ye Jesus 
Nte iyedu do? 

2. Esine mfia öföñ do k’ efak 
gold, 
K’idak uyama enyöñ, 
Esaña k’ uñwana ima Ete mö, 
Nte iyedu do? 
Nte iyedu do? 
Nte iyedu do? 
Esaña k’ uñwana ima Ete mö 
Nte iyedu do? 

3. K’ ikutde eti Andinyaña 
kemi, 
Inyuñ itiene Enye, 
K’ edibonde nditö Esie k’ iduñ 
Nte iyedu do? 
Nte iyedu do? 
Nte iyedu do? 
K’ edibonde nditö Esie k’ iduñ 
Nte iyedu do? 

4. Ke idude ke idak ukpeme 
cross 
K’ikperede k’ iyip 
Nyin ibat udori nyin ke 
eritak 
Koro iyedu do 
Koro iyedu do 
Udori nyin ibat ke eritak 
Koro iyedu do. 

Amen. 

      """
    },
    {
      "id": 790,
      "title": "KE IMA AYAMADE ODUK ",
      "audio": "",
      "body": """
      KEY Eb 6/8
      
{d:-:rlm :-:f |s :-:L ls :m :r|d ::-
lm :-:-|r :-:-l-:-} 

1. JESUS önö inemesit k’ima 
’dukde, 
Kini owo öfukhöde, k’ima 
’dukde 
Ekpep nyin ‘ndiböñ akam, 
onyuñ ebin mfukho, 
Emen ekim nyin efep 
k’ima ’dukde. 

Körös: 
SAT: K’ima ’dukde, k’ima 
’dukde 
B: K’ima odukde, odukde, 
k’ima ’dukde 
All: Esit eyeyöhö y’ ikwö 
k’ima (k’ima) ’dukde 
SAT: K’ima ’dukde, k’ima 
’dukde 
B: K’ima odukde, odukde, 
k’ima ’dukde 
All: Iyedu k’emem y’ idara 
k’ima (k’ima) ’dukde 

2. Obio eyeyöhö y’uyai k’ima 
’dukde 
Esit eyedara k’ utom k’ima 
’dukde, 
Me idomo eyetre, ukpöñ 
eyedu k’emem 
Uwem eyenyen’ uböñ 
k’ima ’dukde. 

3. Uñwana ’yeyama k’ukut 
k’ima ’dukde 
Anam mbiomo efere k’ima 
’dukde, 
Uböñ eyeyama ke ebiet eke 
ikade, 
O iyefiök edidiöñ k’ima 
’dukde. 

4. Iyenyen’ akwa ukpono 
k’ima ’dukde 
Y’eti ufan akpanikö k’ ima 
’dukde, 
Ke ikande mi k’ isöñ inyuñ 
idukde heven 
Do nyin idiyomk’ utin 
k’ ima ’dukde. 

Amen. 

      """
    },
    {
      "id": 791,
      "title": "ISO YE ISO ",
      "audio": "",
      "body": """
      KEY Bb 4/4

{|s, :-.s, lL, .s :m, .d |d :-lt, :-. |r 
:-.d lt, .L, :s, .L, |s,:-l-:} 

1. K’NSOBODE y’Andifak mi 
O me editie didie? 
K’idaresit ñkutd’ Enye 
Christ akakpade ’nö mi. 

Körös: 
Ke ñkutde Enye k’ iso. 
Ko k’ ata edem enyöñ 
Iso y’iso k’uböñ Esie 
Ami nyekut Enye. 

2. Kemi ñkwe Enye öfön 
Ke enyin ikpökhidem, 
Edi eti usen k’ edi, 
Ndikutd’ Enye k’ uböñ. 

3. O, idara k’iso Esie, 
K’ ukut y’ ubiak ebede, 
Ke ediöñde ökpö-usuñ, 
Ekim eyebe efep. 

4. Iso y’iso O! et’ ini 
Isobo inyuñ ifiök 
Iso y’ iso y’Andifak mi 
Jesus Christ amama mi.
 
Amen. 

      """
    },
    {
      "id": 792,
      "title": "EDIEKE CHRIST EKPEDIDE KEMI? ",
      "audio": "",
      "body": """
      KEY E 4/4

{:s,.d|m:-.mlf :f|m:-l-:d.m 
|s :-.s lL :L |s :-l-} 

1. K’ ÖBÖÑ edide kemi 
Ye m’udim enjel Esie, 
Eyekut nyin kpukpru 
k’ iñwañ, 
Idade ke itie nyin? 
Nt’ öföñ nyin asana 
Oto ke iyip Esie? 
Nte iduñ k’ uñwana 
K’ Öböñ edide kemi? 

Körös: 
SA: Imekpeme,… ke ibebet, 
TB: Nte imekpeme, ke ibebet 
All: Ye mfia öföñidem? 
Iyedara ‘ndikut Enye 
K’ Öböñ edide kemi 
(kemi)? 

2. K’ Öböñ edide kemi 
Nt’ Öböñ y’ Ebierikpe, 
Nte owo omodu mi, 
Edinyekd’ ikot Esie? 
Nte owo kiet odu 
Ökpöñde Christ y’ uñwana 
Mikutke idem atak, 
K’ Ebierikpe edide. 

3. Christ Ebierikpe ’yedi 
Nte ewetde k’ ñwed, 
Nyin iyeda k’iso Esie, 
Enye idisink’ owo; 
Nyin imebeñe idem? 
Öföñidem nyin afia? 
Ke Ebierikpe owo 
Ekpedide mi kemi? 

Amen. 

      """
    },
    {
      "id": 793,
      "title": "CHRIST KE AFIAK EDI ",
      "audio": "",
      "body": """
      KEY D 3/4

{:d |m :r :d|s :-:L .,s |m :r:d |m 
:r } 

1. ME k’ usenubök me k’ eyo 
esierede, 
Kini uñwana ebinde ekim efep; 
Jesus eyedi ke akwa uböñ Esie 
Ndida iköt Esiemö. 

Körös: 
Öböñ Jesus ini ewe 
K’ idikwö k’ idara 
Christ emedi alleluia 
Alleluia amen, 
Rit. Alleluia amen. 

2. Me k’ uwemeyo, m’edidi 
k’usenubök, 
Ekeme ndibuat k’uföt okoneyo; 
Uyama uböñ Esie eyebin ekim 
Ke Jesus öböd’ “Esiemö.” 

3. Ke m’udim heven efioride 
hosanna 
Ye me nti owo ye me enjel ñko; 
Anyanya uböñ ayama k’ibuot Esie 
Ke Jesus öböd’ “Esiemö.” 

4. O! idara ‘ndika do ke nyin 
mikpaha, 
Udöñö, ukut, mkpa, y’eyet 
iduhe; 
Eda nyin eduk ke uböñ ye 
Öböñ nyin 
Ke Jesus öböd’ “Esiemö.” 

Amen. 
      """
    },
    {
      "id": 794,
      "title": "EMEBEÑIDEM? ",
      "audio": "",
      "body": """
      
KEY D 4/4

{:s.,f|m.,m:m.,flL s.-:fe.,s
|d' .,d' :d' .,m ls :s .,s |L .,L :L .,L 
lL s.-:s.,m|r:-l-}


1. INI odu emi owo ye me 
enjel mifiökke, 
Ke Christ otode k’enyöñ 
edi k’uböñ, 
Ndimek ’yesobo y’ Enye 
k’Enye okotd’ Esiemö; 
Mö eyekop ukorowo 
k’akpatre. 

Körös: 
Emebeñe (’beñe) idem 
(idem) ‘ndikut Edidem, 
Beñe idem, kpeme, böñ 
akam (nyuñ böñ akam); 
Emebeñe idem ‘ndikut 
Edidem? 
Beñe idem ke usen utip. 

2. Erikpukhöre eyedu ke 
eriyip enyin kiet; 
Nyin iyesine se midibiarake, 
Ndima eyebiet Enye 
k’ Enye ’sukhörede ’di 
K’ uwemeyo, k’okoneyo 
m’usiere. 

3. M’idiök nyin ekpebiet 
iduot, yak nyin iyom 
idim-möñ; 
Emi okotode k’eto Calvary, 
Ekeme ndikpeme nyin, 
anam nyin ifia ‘nte snow; 
K’Enye edide k’afia ikpa 
enyöñ. 

Amen. 
      """
    },
    {
      "id": 795,
      "title": "IDARA ERIDI ÖBÖÑ! ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:s, .d |m :-lr .d :L, .t, |d:-l-:s 
|d' :-.s lL .s :d .m |r :-l-} 

1. IDARA eridi Öböñ 
Iyekut kpukpru ndima 
Mö eyeköm nyin k’ idara 
Ke ediye esuk oro.
 
Körös: 
Idar’ eridi, eti eridi 
Eridi Andinyaña nyin 
k’uböñ 
Akwa idara k’eti usiere, 
Y’eridi Öböñ Andinyaña 
nyin! 

2. Idara eridi Öböñ 
Iyebuana k’ nsi nsi 
K’ikwö idara me enjel 
Ikwö Moses y’ Eyeneröñ. 

3. K’eridi Öböñ nyin k’uböñ 
Iyedu y’Enye k’nsinsi, 
K’ iduñ ima y’idaresit, 
Idiana ye mö ke ikwö. 

Amen. 

      """
    },
    {
      "id": 796,
      "title": "ENYE EYEFIAK EDI ",
      "audio": "",
      "body": """
      
KEY G 2/4

{.d |m .m :r .m |d .d :s, |d .d :-.d |r 
.,d :d } 

1. ANDINYAÑ’ ekedi k’ isöñ 
Enye ’yefiak edi 
Ke uyama ikpa enyöñ 
Enye ’yefiak edi. 

Körös: 
Usen… k’edi… 
Christ eyekara 
Ukpöñ mi beñe idem 
Enye ’yefiak edi 


(Repeat after last verse with pp) 

2. Nam kpukpru ekop k’ idara, 
Enye ’yefiak edi 
Oto k’enyöñ k’uyam’ uböñ 
Enye ’yefiak edi. 

3. Nam kpukpru ekondo efiök, 
Enye ’yefiak edi 
Nte Öböñ, idigh’ Eyen, 
Enye ’yefiak edi. 

4. Ke akwa usiere oro, 
Enye ’yefiak edi. 
Nyin iyesobo ye Enye, 
Enye ’yefiak edi. 

5. O! yak inam k’ukeme 
nyin, 
Enye ’yefiak edi 
Eyeda nyin önyöñ k’ iduñ, 
Enye ’yefiak edi. 

Amen. 
      """
    },
    {
      "id": 797,
      "title": "JESUS EMI ",
      "audio": "",
      "body": """
      KEY G 4/4 

{.s, |d.d :d.r lm :m .f |s .s :d .r lm 
:-|r:rlr.s:-.f|m m.-:m.,rld.:-} 

1. NSINAM mbufo edade ese enyöñ? 
Jesus emi ’yetöñö ‘ntak edi; 
Me enjel eketiñ, esine mfia öföñ: 
Jesus emi ’yetöñö ‘ntak edi. 

Körös: 
Jesus emi, Jesus emi! 
O, tiñ eti mbuk nö kpukpru 
‘nditö owo; 
Nam utom, böñ akam, dara 
kpukpru usen, 
Jesus emi ’yetöñö ‘ntak edi. 

2. K’iböde Spirit Esie, ifiök 
k’Enye ’kpere, 
Jesus emi ’yetöñö ‘ntak edi; 
Enye ödiöñ nyin, önö ima 
y’ndöñesit, 
Jesus emi ’yetöñö ‘ntak edi. 

3. Ke enöde nyin ukeme 
iyefön ima, 
Jesus emi ’yetöñö ‘ntak edi; 
Iyesuan ikö gospel k’ofri 
inemesit, 
Jesus emi ’yetöñö ‘ntak edi. 

4. Ke kpukpr’ ini idomo ida 
k’ima Esie, 
Jesus emi ’yetöñö ‘ntak edi; 
Akwa Edidem uböñ akara 
ko k’enyöñ; 
Jesus emi ’yetöñö ‘ntak edi. 

Amen. 

      """
    },
    {
      "id": 798,
      "title": "KOP MFIORI! ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:s |m :d lL :s |f:m lr :s|d' :t lL :L 
|s :-l-} 

1. KOP mfiori, Christ emedi, 
Nt’ ekeñwöñöde; 
Yak kpukpru esit edara, 
Kpukpru owo ekwö. 

2. Edi ndisio me owo 
K’ñkpököbi satan; 
Onyuñ abiat itim ukwak, 
Obuñ me ebuka. 

3. Edi, öböp mbuñesit, 
Ökök esit unan; 
Önö uwak mfön Esie, 
Ödiöñ me ubuene.
 
4. Ke hosanna, Öböñ emem 
Nyin iyedara Fi; 
Mbon enyöñ k’ekwö ñko 
Ndinö Fi uböñ. 

Amen. 
      """
    },
    {
      "id": 799,
      "title": "BETHLEHEM ",
      "audio": "",
      "body": """
      KEY G 4/4

{:m|m:mlre:m|s:f lL,:r|d 
:t, .d lr:s, |m :-l-} 

1. O EKPRI obio Bethlehem 
ana didie ntem! 
Ntanta öfiöñ akayama ke 
uföt ekim; 
K’ekim oro nsinsi uñwana 
asiakha, 
Se ikodoride enyin omosu 
‘mfin emi. 

2. Christ amana oto Mary, 
mö k’enyöñ eboho, 
Me enjel k’ima ekpeme 
owo k’eded’ idap; 
Ntanta öfiöñ efiori emana 
Esie 
Y’ikwö etoro Edidem, 
emem y’ owo k’isöñ. 

3. Ke suñ suñ ke enö nyin 
ata utibe enö, 
Abasi önö esit nyin me 
edidiöñ Esie; 
Utöñ ikopk’ eridi Esie 
k’isöñ, edi 
Mbon nsukesit emebö 
Christ ke esit mö. 

4. O eti Eyen Bethlehem, di 
k’otu nyin mfin, 
Bin m’idiök nyin fep nyuñ 
nam nyin imana obufa; 
Imokop mbuk emi me 
enjel ebukde, 
Di ke otu nyin, duñ ye nyin 
O Öböñ Immanuel. 

Amen. 

      """
    },
    {
      "id": 800,
      "title": "ME ENJEL ETODE KE UBÖÑ ",
      "audio": "",
      "body": """
      KEY C 4/4

{|d :m |s :-.s ls :L |s :m ls :s|d' :t 
lL :L|s:-} 

1. ME enjel etode k’uböñ, 
Ekedi mi ke isöñ; 
Ekekwö ebañ’Andibot 
Ye mbuk eman’ Öböñ, 
Di itoro! Di itoro! 
Christ obufa Edidem. 

2. M’ekpemeröñ edu 
k’inwañ, 
K’ekpeme k’okoneyo; 
Kemi Öböñ oduñ y’owo, 
S’uñwana ’yamade ko, 
Di itoro! Di itoro! 
Christ obufa Edidem. 

3. Me öfiökñkpö ekukere, 
Ese ata uñwana; 
Eyom akwa udöñ m’idut, 
Emekut eman’ Esie, 
Di itoro! Di itoro! 
Christ obufa Edidem.

4. Nti owo k’etuak ibuot, 
K’ebet ke idorenyin; 
K’ekpr’ ini Öböñ eyedi, 
Eyeduk temple Esie 
Di itoro! Di itoro! 
Christ obufa Edidem. 

Amen.
      """
    },
    {
      "id": 801,
      "title": "KOP! MME ENJEL KE EKWÖ ",
      "audio": "",
      "body": """
      KEY G 4/4

{|s, :d ld:-.t, |d :m lm :r |s :s ls 
:-.f |m :r lm :-} 

1. KOP ikwö mbon enyöñ, 
“Tor’ obufa Edidem, 
Yak emem osim owo, 
Enam emem y’Abasi!” 
Edara kpukpru m’idut 
Ediana y’udim enyöñ; 
Ke se engel etiñde 
“Christ ’mana ke Bethlehem” 
Kop! Ikwö mbon enyöñ, 
“Tor’ obufa Edidem.” 

2. Me heven k’ ekpono Christ, 
Enye, nsinsi Öböñ 
K’ekem ini Enye ’di 
Mary akaman Enye, 
Abasi k’mbiet owo, 
Yak itoro Öböñ nyin 
Ama ndiduñ ye nyin 
Jesus! Andinyaña nyin! 
Kop! Ikwö mbon enyöñ 
“Tor’ obufa Edidem” 

3. Etoro Öböñ emem! 
Y’Utin edinen ido 
Önö uñwana y’ uwem 
Y’ erikök esök kpukpru; 
Ökökpöñ uböñ Esie, 
Amana man ikukpa, 
Man emenere owo, 
Man imana obufa 
Kop! Ikwö mbon enyöñ 
“Tor’ obufa Edidem.” 

Amen. 

      """
    },
    {
      "id": 802,
      "title": "KE OBIO EDIDEM DAVID ",
      "audio": "",
      "body": """
      KEY G 4/4

{|s, :t, |d :-.d l d .t ,: d .r |r :d ld :m 
|s :-.m lm .r :d .t , |d :-} 

1. KE obio Edidem David 
Ufök enañ okodu, 
Eka kiet onim Eyen do, 
Ke itie udia m’enañ; 
Suñ suñ Mary ’kedi eka, 
Jesus Christ edi Eyen. 

2. Okoto ko k’enyöñ edi, 
Abasi y’ Öböñ kpukpru, 
Okodu ke ufök isen, 
Akana ye m’ufene 
Andinyaña ye Öböñ nyin; 
Okoduñ ye m’ubuene. 

3. K’ofri ini uyen Esie 
’Kowut ido ukpono, 
Ama, onyuñ ese eka 
Akakamade Enye; 
Ñkpri nditö ke Öböñ 
Ekpebe ido emi. 

4. Enye ekebiet nyin ñko, 
Ököri k’usen k’usen; 
Ekedi ekpri ye ’memmem, 
Akasak onyuñ atua, 
Enye öfiök mfukhö nyin, 
Abuana k’idara ‘ñko. 

5. K’akpatre iyekut Enye 
Oto ke ima Esie; 
Enye suñ suñ Eyen oro 
Edi Öböñ nyin k’enyöñ, 
Ada iköt Esie usuñ 
Osim ke obio Esie. 

6. Idighe k’ufök ufene 
Emi m’enañ edude, 
Iyekut Enye ke heven 
K’ubök ’nasia Abasi 
Eyebana iköt Esie 
Ke mfia öföñ uböñ. 

Amen. 

      """
    },
    {
      "id": 803,
      "title": "KE ME EKPEMERÖÑ EKEKPEMEDE",
      "audio": "",
      "body": """
      KEY G 4/4

{:d |m :-.m lr :d |f :flm :r |m :s ls 
:fe |s :-l-} 

1. M’ EKPEMERÖÑ 
k’okoneyo, 
Eketie ke isöñ, 
Enjel Abasi ekedi, 
Uñwana ayama

2. Ödöhö mö “ekufeghe,” 
Koro ekenyekde, 
“Nda eti ‘mbuk idara, 
Nsök kpukpru owo.” 

3. Mfin emi k’obio David, 
Eyen amana do, 
Andinyaña kpa Christ Öböñ; 
Idiöñ’ edi emi: 

4. “Eyekut nsek Eyen do, 
Ewañde ke öföñ 
Ke usin udia ufene, 
Enöde mbufo.” 

5. Ke enjel etiñde ama, 
Otu mbon enyöñ 
Edi etoro Abasi 
Enyuñ edöh’ ete: 

6. “Uböñ enyene Abasi! 
Emem odu k’isöñ! 
Mfön osim kpukpru owo, 
Kemi ye k’nsinsi” 

Amen. 

      """
    },
    {
      "id": 804,
      "title": "NSO ORUK MBOHO!",
      "audio": "",
      "body": """
      
KEY C 4/4

{:m .f|s .s :s .s ls .m' :r'.d' |L .L :L 
.t ld' :t .L |s .s :s .s ld' .d' :t .d'|r':-} 

1. K’ ETI usiere oro ke 
Eyenowo edide, 
Nyin iyekut uyama uböñ 
Esie, 
Enye eyeda kpukpru iköt 
Esie önyöñ k’iduñ, 
Nso oruk mboho ke edidi! 

Körös: 
SA: Nso oruk, nso oruk 
TB: Nso mboho k’edidi, nso 
mboho k’edidi 

All: Nso oruk mboho mö 
efakde k’obio ima! 

SA: Nso oruk, nso oruk 
TB: Nso mboho k’edidi, nso 
oruk 

All: Mboho mö efakde k’iduñ 
enyöñ! 

2. K’nti owo emi edede ke 
Jesus esetde 
Eyekpöñ ndobo udi ye 
inyañ 
Edisobo y’Enye k’ofim ke 
ikpökhidem uböñ 
Nso oruk idara ke edidi! 

3. Ke ikutde obio oro 
y’ediwak ebiet iduñ 
Y’akpa möñ anade suñ 
öfiöröde, 
K’idisobode ye m’ufan 
ekpöñde nyin ke mkpa 
Nso oruk inemesit k’edidi! 

4. O Edidem k’afiak edi, ini 
onyuñ ekpere, 
K’idikutde eti usen 
uñwöñö; 
Eyekpukhöre nyin ini kiet 
ke eriyip enyin, 
Nyin iyedu k’iso Esie 
k’nsinsi. 

Amen. 
      """
    },
    {
      "id": 805,
      "title": "SESE! ENYE KE EDI ",
      "audio": "",
      "body": """
      KEY Bb 4/4 

{|d :-l m :s ld :t, lL, :s , | L, :-.t ld 
:t, .L , | s, :-.f , lm, :-} 

1. O! ENYE k’edi ke ofim 
Kiet emi ekewotde; 
Me tösn ‘ndisana owo, 
Ebuk erikan Esie, 
Alleluia, alleluia; 
Alleluia! Jesus k’edi 
‘ndikara. 

2. Kpukpru enyin ’yekut 
Enye, 
Ye öföñ uböñ k’ idem; 
Mö emi ekesind’ Enye 
Ekenyuñ eköñd’ Enye, 
Etua eti, etua eti; 
Etua eti, ke ekutde 
Messiah. 

3. K’ efioride ukorowo, 
Enyöñ y’ isöñ eyebe, 
Kpukpru mö esuade Enye, 
Eyekop k’ usen oro, 
Edi k’ikpe, edi k’ikpe; 
Edi k’ ikpe, edi k’ikpe, 
di k’ikpe. 

4. Sese ufak ekeyomde, 
Emedi ke odudu, 
Mendimek, m’owo ’kesinde, 
’Yesobo y’Enye k’ofim, 
Alleluia, alleluia; 
Alleluia, usen Öböñ emedi. 

5. Ih Amen! Yak ekpon’ Enye 
Etiede ke ebekpo; 
Öböñ da odudu y’uböñ, 
Da ebekpo ke Okuo, 
O wara di! O wara di! 
O wara di, alleluia, Öböñ di.
 
Amen. 
      """
    },
    {
      "id": 806,
      "title": "CHRIST KE EDI! ",
      "audio": "",
      "body": """
      
KEY E 3/4

{:m .,re |m :f :s .,L |s :m :d .,r |m 
:-.s :f.m |r :-} 

1. CHRIST ke edi! Yak ekondo 
Etre eseme esie; 
Yak mbuk Öböñ nyin anam, 
Mbuötidem nyin okpon. 

Körös: 
Christ ke edi! Christ ke edi, 
Di, Afo Öböñ emem. 
Christ ke edi! Christ ke edi, 
Di, Afo Öböñ emem. 

2. Isöñ ekeme ndibuk, 
Ukut y’ ubiak Fo ke cross; 
Enye eyekut uböñ Fo, 
K’ edide ndikara. 

3. Akana k’ufök ufene, 
Odor’ ibuot ke mbiet 
Nt’ esen owo y’oduduñ, 
Nyin y’Abasi isin Fi. 

4. Okodu ke esen idut 
K’ ökpöñde eti iduñ, 
K’ eriyama obio k’enyöñ, 
Mö eyekut uböñ Fo. 

5. K’ eti idorenyin emi, 
Yak ikutre ndikwö; 
Yak nyin ikwö ikwö ufak, 
Yak ikwö ke esit kiet. 

Amen. 
      """
    },
    {
      "id": 807,
      "title": "EDIDEM KE EDI",
      "audio": "",
      "body": """
      
KEY Ab 4/4

{:s, |s, :m lr :d |t, :L, lL, .d :t, .L, 
|s, :s, ld :t, .d |r :-l-} 

1. DARA! Öböñ nyin k’afiak edi 
Idinamke ubighi 
Tutu nyin ikwö ke usiere, 
Obufa inem ikwö. 

Körös: 
Utibe y’ eti usenubök, 
K’ Eyenowo ’didide 
Yak m’utuenikañ nyin eyama 
Idar’ eridi Esie 
Dara! Öböñ nyin k’afiak edi 
Idinamke ubighi 
Tutu nyin ikwö ke usiere, 
Obufa inem ikwö. 

2. Nyin k’ibebet eridi Öböñ 
K’uyai ebekpo Esie; 
Ye tösn ndinen owo duop, 
Iyesobo ke enyöñ. 

3. Yak ikukpa ‘mba, yak 
ikpeme, 
Ikuduök ñkpö eköñ, 
Tutu Enye ’di ye idara, 
Ndinö nyin anyanya. 

Amen. 
      """
    },
    {
      "id": 808,
      "title": "JESUS KE EDI!",
      "audio": "",
      "body": """
      KEY Bb 6/8 

{|s, :m, :f, |s, .d :-:d |t, :-.d :r |d 
:-:-|s, :m, :f, ls, :d :r |m :-.f :m lr 
:-:-} 

1. JESUS ke edi! O eti mbuk, 
Önö mö Enye afakde k’iyip, 
Enye edi ndikara k’uböñ, 
Jesus eyefiak edi. 

Körös: 
All: Jesus ke edi – eyefiak edi 
S: Jesus eyefiak edi ……… 
ATB: Jesus ke edi, Ih, Jesus ke 
edi O 
All: Fiori mbuk k’obot 
y’ unaisöñ, 
Jesus eyefiak edi. 

2. Jesus ke edi! m’akpamkpa 
’yeset, 
Mendima eyesobo k’ idara 
Enye ’yeda mö ödök ke enyöñ, 
Jesus eyefiak edi. 

3. Jesus ke edi! ‘ndifak ‘nti owo 
Ndinyuñ ’nö ererimbot emem, 
Idiökñkpö ye mfukhö eyetre, 
Jesus eyefiak edi. 

4. Jesus ke edi ke akpanikö! 
M’ anie k’ emek? Mbon akpanikö, 
Emi ebetde ke mbeñidem 
Jesus eyefiak edi. 

Amen. 
      """
    },
    {
      "id": 809,
      "title": "ÖBÖÑ KE EDI ",
      "audio": "",
      "body": """
      KEY G 4/4 

{:s, |d :d ld:d .r |m :m lm :d |r .r 
:-ld :t, |d :-:-} 

1. ÖBÖÑ k’edi kini iso, 
Beñ’ idem k’edide 
Enye oto k’enyöñ edi 
Beñ’ idem k’edide, 
Öböñ, edinen ido nyin 
Edi ‘ndidiöñ iköt Esie 
Onyime mö k’iso Ete, 
Beñ’ idem k’edide. 

Körös: 
Eyebeñ’ idem k’ ödöndö 
’dide? (k’edide) 
Eyebeñ’ idem k’ ödöndö 
’dide? (k’edide) 
Ikañ fo eyeyama ke ini 
ekededi, 
Eyebeñ’ idem k’ ödöndö 
’dide? 

2. Enye ’yefiak edi k’isöñ, 
Beñ’ idem k’edide 
Ötöñö ukara Esie, 
Beñ’ idem k’edide; 
Heven ’yekwö alleluia! 
Jesus ada ufak edi, 
Diöñ ikañ fo, sobo y’ Öböñ, 
Beñ’ idem k’edide. 

3. Enye edi önö kpukpru, 
Beñ’ idem k’edide, 
Nyin iyekop ukorowo, 
Beñ’ idem k’edide; 
Enye ’yekot kpukpru owo 
Ke ofri ekondo ikpe, 
Iyeda k’ ebekpo Esie, 
Beñ’ idem k’edide. 

Amen. 
      """
    },
    {
      "id": 810,
      "title": "KINI ÖDÖ NDÖ EDIDE!",
      "audio": "",
      "body": """
      KEY E 4/4 

{:d .,r |m .m :m .m lm .m :r .d |m 
:s ls:d.,r |m .m :m .m |s .m :r .d 
|m :r lr } 

1. UTUENIKAÑ nyin eyesak, 
K’ ödöndö ’dide? 
Ayama, ösöñö ada 
K’ ödöndö ’dide? 
Ke ata... okoneyo (okoneyo) 
M’ ikañ nyin eyeyama 
K’ ödöndö ’dide? 

Körös: 
:\$: O, beñidem! O, beñidem! 
     O, beñidem k’ ödöndö ’dide 
                    D.S with pp 

2. Me iyekop ekotde nyin 
K’ ödöndö ’dide? 
Iyebörö k’ idaresit 
K’ ödöndö ’dide? 
Ke ata... okoneyo 
(okoneyo) 
M’ ikañ nyin eyeyama 
K’ ödöndö ’dide. 

3. Kubiat ini k’ mbeñidem 
Ödöndö k’edi 
Mbak Enye edikpöñ fi; 
K’ ödöndö ’dide 
Ke ata... okoneyo 
(okoneyo) 
M’ ikañ nyin eyeyama 
K’ ödöndö ’dide. 

4. Ndusuk ke ini ukut 
K’ ödöndö ’dide, 
M’ ikade ndiyom aran 
K’ ödöndö ’dide 
Ke ata... okoneyo 
(okoneyo) 
M’ ikañ nyin eyeyama 
K’ ödöndö ’dide? 

5. O, iyesobo, ke uböñ 
K’ ödöndö ’dide 
Inyuñ ikwö alleluia 
K’ ödöndö ’dide 
K’ okoneyo (k’ okoneyo) 
Idara 
M’ ikañ nyin eyeyama 
K’ ödöndö ’dide? 

Amen. 
      """
    },
    {
      "id": 811,
      "title": "ENÖ ERERIMBOT IDARA! ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{|d':t.,L ls:-.f |m :r ld :-.s |L 
:-.L lt :-.t |d' :-l-} 

1. ERERIMBOT edaresit, 
Ebö Öböñ ‘mbufo; 
Yak kpukpr’ owo enyim’ 
Enye, 
Enyöñ y’isöñ ekwö... 
Enyöñ y’isöñ ekwö... 
SA: Eyak enyöñ y’isöñ ekwö 
TB: enyöñ y’isöñ ekwö. 

2. Edaresit! Christ akara, 
Emen uyo ekwö, 
Eyo y’ukwö, obot y’isöñ, 
Etöñö ‘ntak ekwö... 
Etöñö ‘ntak ekwö... 
SA: Yak etöñö ntak ekwö 
TB: etöñö ‘ntak ekwö. 

3. Christ akara ererimbot 
Ke edinen ido; 
Ererimbot enyuñ ekut 
Akwa ima Esie... 
Akwa ima Esie... 
SA: Ye utibe ima Esie 
TB: utib’ ima Esie. 

Amen. 
      """
    },
    {
      "id": 812,
      "title": "AFO KE EDI",
      "audio": "",
      "body": """
      KEY C 4/4

{:d.m|s s.-:s.,L|s m.-:r.d
,|d' ,d' .-:d' .,r' ld' } 

1. AFO k’edi! O Öböñ mi, 
Ke edi O, Edidem, 
Kpukpru k’eyarar’ enyiñ Fo, 
Yak nyin mi idara Fi! 
Afo k’edi! Ke uböñ Fo 
Abiat ikpehe k’mkpa, 
Nam usuñ-isañ nyin enem 
Ke uböñ otode Fi. 

Körös: 
Afo k’edi! Afo k’edi! 
Iyesobo ye Afo! 
Afo k’edi! Iyekut Fi, 
Ibiet Fi k’usen oro! 
Afo k’edi! Afo k’edi! 
Jesus, Öböñ ima nyin! 
Iyedara ke uböñ Fo, 
Iyenyuñ ikpono Fi! 

2. Afo k’edi! Baba ekim, 
Ndutukhö ye eyet, 
Idiök ñkpö ye mfukhö, 
Iduhe k’ usen oro; 
Afo k’edi! Jesus Öböñ, 
Iduh’ ekiker’ efen; 
O akwa uböñ y’idara! 
Otode ke ubiak Fo. 

3. Afo k’edi! Nyin k’ibebet, 
“K’öyöhö idorenyin” 
Nyin ibupke usen y’ini, 
Iyesim do k’ifure, 
Afo k’edi! Nyin k’ibuana, 
Inyuñ idi ntiense, 
K’edisana udia Öböñ 
Y’idorenyin idara. 

Amen. 

      """
    },
    {
      "id": 813,
      "title": "TAÑ MBON IDÖK NYÖÑ UFÖK! ",
      "audio": "",
      "body": """
      KEY Bb 4/4

{:m, .f, |s, :d ld :d .m |r :L, lL, :r .d 
|t,:-.t, |L,:s, |s, :-lm, } 

1. OMOKOP ikwö otode k’enyöñ, 
Obufa inem ikwö; 
Yak iböp m’ ebek nyin ke esit kiet, 
Kor’ ini emekpere. 

Körös: 
O, Öböñ idök eyesöp edi, 
Kpukpru eyekop uyo Esie; 
O, Öböñ idök eyesöp edi, 
Atañ ‘mbon idök önyöñ. 

2. Mö etie k’enyöñ ese nyin k’isöñ, 
Mendima k’ese nyin mi; 
Mö etre utom ndibiom cross mö 
Enyuñ ebö anyanya. 

3. O! ikwö mö osim nyin ke isöñ, 
Esit nyin onyuñ ösöñ; 
Esöñö ukpöñ nyin k’inem ikwö 
K’ikade iso k’utom. 

4. Ikwö omodu ke eti iduñ, 
K’eti ebiet idara; 
Nyin mi imöfiök ke mbuötidem, 
K’iyekwö kpa nte mö. 

Amen. 
      """
    },
    {
      "id": 814,
      "title": "NTE JESUS EYEKUT NYIN IKPEMEDE?",
      "audio": "",
      "body": """
      KEY Bb 4/4
      
{|s, :s, .,L, ls, :d .r |m :d lL, .d :-. 
|s, .fe:s, .L, ls,:d |r:-l-} 

1. KE Jesus edide ‘ndinö utip 
Ke okon m’ uwemeyo, 
Me eyekut nyin ke ikpemede 
Y’ediyam’ utuenikañ? 

Körös: 
O ufan, nyin imebeñe idem 
Ndika k’eti iduñ? 
Eyekut nyin nt’ ibeñed’ idem 
Ibet, ibet eridi Öböñ? 

2. M’edi kini eyo esierede 
Enye okot nyin idi, 
K’inamde ibat ke iso Öböñ, 
Nt’ Enye eyeköm fi? 

3. Imanam utom ekenöde nyin? 
Imanam k’ukeme nyin? 
Edieke esit nyin mibiomke nyin, 
Iyebö ‘nduök odudu. 

4. Öföfön önö mö ekpemede, 
Eyebuana ke uböñ; 
K’edide k’usiere m’okoneyo, 
Eyekut nyin k’ibebet? 

Amen. 
      """
    },
    {
      "id": 815,
      "title": "EKIM IDIDUHE",
      "audio": "",
      "body": """
      
KEY F 4/4

{:d .,r |m :s, ls, .s, :-.s, |L, :d ld 
:d .,r |m :s lL .s:-.m |m :r lr } 

1. EKIM ididuhe k’eridi Christ, 
Ekim ididuhe k’eridi Christ, 
Ekim ididuhe k’eridi Christ, 
Nditañ iköt Esie. 

Körös: 
Nditañ iköt Esie (nyöñ) 
Nditañ iköt Esie (nyöñ) 
Ekim ididuhe k’eridi Christ, 
Nditañ iköt Esie. 

2. Mfukh’ ididuhe k’eridi Christ, 
Mfukh’ ididuhe k’eridi Christ, 
K’eti usiere ke Christ edide, 
Nditañ iköt Esie. 

3. Eyet ididuhe k’eridi Christ, 
Eyet ididuhe k’eridi Christ, 
Idök eyefön ke Christ edide, 
Nditañ iköt Esie. 

4. Ikwö eyedu ke eridi Christ, 
Ikwö eyedu ke eridi Christ, 
Y’akwa idara ke Christ edide, 
Nditañ iköt Esie. 

Amen. 

      """
    },
    {
      "id": 816,
      "title": "KE IDUÑ NYIN MIDIKWE USÖÑ ",
      "audio": "",
      "body": """
      KEY Eb 6/4

{:d .r |m :-.re:m ld:-:m .f |s :-.fe 
:s |m :-:s .s |L :d':L ls .m : -:d |r 
: -:-l-:-} 

1. MOKOP ‘mbaña obio, ko ke anyan ebiet, 
Edi ediye iduñ ukpöñ, 
Edi Jesus ödiöñ, nyin idikpaha do, 
Ke iduñ nyin midikwe usöñ. 

Körös: 
Iduñ emi (nyin mi) ’dikwe usöñ, 
Iduñ n-nyin midikwe usöñ, 
Iduñ emi (nyin mi) ’dikwe usöñ, 
Iduñ n-nyin midikwe usöñ. 

2. K’eti iduñ oro, nyin idiyoh’ aba, 
Iyeduñ do ke nsi nsi; 
Do ke nsi nsi, iyetoro Öböñ 
K’iduñ nyin midikpaha aba. 

3. K’utom okurede, nyin ibö anyanya, 
Ukut y’idomo ebe efep, 
K’mfukhö ebede, ibuana k’ikwö ye 
M’ufan ekebemd’ iso 
ekpöñ. 

Amen. 

      """
    },
    {
      "id": 817,
      "title": "YAK UBÖÑ FO EDI O ABASI ",
      "audio": "",
      "body": """
      KEY G 4/2

{:s|f :m lm :r |d :-l-:m |r :t, lt, 
:L,|s,:-l-} 

1. CHRIST, uböñ Fo edi, 
Töñö ukara Fo; 
Nuak k’ökpösöñ ubök. 
Odudu idiökñkpö. 

2. Ukara emem Fo 
Ye ima odu möñ? 
Ini ewe k’usua 
Editre ‘nte k’enyöñ? 

3. Ini uñwöñö Fo? 
Eköñ mididuhe, 
Ufik y’idiök itöñ, 
Edikpöñd’ iso Fo. 
Unison 

4. Dakha k’enyöñ Öböñ, 
Di k’akwa odudu; 
Demere udöñ nyin, 
Emi iyomde Fi. 

5. Esuñi enyiñ Fo, 
Mö ebiat iköt Fo; 
Ke me idiök utom, 
Ima nyin emebit. 

6. Ofri ererimbot 
Edu k’ata ekim; 
Afo, O uñwana, 
Yama k’nsi nsi. 

Amen.
      """
    },
    {
      "id": 818,
      "title": "O UTIBE IDARA YE UBÖÑ MÖ ",
      "audio": "",
      "body": """
      KEY G 4/4

{:d :-ld :r |m :-ld :d |f :-lm :r 
|r :-ld : -} 

1. O IDARA mö editie didie, 
Ke ndima ekutde ifure! 
Ebö anyanya y’nduök odudu; 
Abasi eyedi kpukpru ’nö mö. 

2. Edidem y’ebekpo eye didie? 
Emem y’idara edinem didie? 
Nam nyin ifiök nti iköt Öböñ, 
Ediek’ edikemede ndibuk. 

3. Ikot obio oro Jerusalem, 
Önöde idara k’nsi nsi! 
Uyukhö nti ñkpö edu do 
S’ekebeñede ikpukhökere. 

4. Ebiet iduñ nyin ukut iduhe 
Iyekwö ikwö Zion ke emem, 
K’mfön Fo Öböñ nti iköt Fo 
Eyemen uyo ekwö k’nsinsi. 

5. Ida ikwö idi Enye k’iso, 
Emi kpukpru ‘ñkpö etode Enye, 
Ke Enye, Ete; ke Ete, Eyen, 
Enye ye Spirit, kpukpru edi kiet. 

Amen. 

      """
    },
    {
      "id": 819,
      "title": "OBIO UÑWANA ODU",
      "audio": "",
      "body": """
      
KEY G 2/2 

{|m :s .f |m :r |d :-|r :m .s |f :m 
|r :-} 

1. OBIO uñwan’ odu, 
Idiök idukke do, 
Se idekhede, 
Se idekhede 
Ikemeke ‘ndiduk.
 
2. Andinyaña medi, 
O Eyen Abasi 
Yet nyuñ nyaña mi, 
Yet nyuñ nyaña mi, 
Yet me idiök mi fep. 

3. Öböñ nam mi ndi 
Edima eyen Fo 
Ke odudu Fo, 
Ke odudu Fo, 
Sio mi ke idiök fep.
 
4. K’nsinede afia -
Öföñ mbon ufak, 
Ami masana, 
Ami masana, 
Do k’obio idara. 

Amen. 
      """
    },
    {
      "id": 820,
      "title": "UTIBE MBOHO MENDIMA",
      "audio": "",
      "body": """
      KEY C 4/4 

{:m .,f |s .s :s .s lL :s |d :-l-:m .,f 
|s :s lm' :d'|r' :-l-} 

1. K’IDISOBODE k’ikot Öböñ, 
K’uyama eti esuk, 
Idara do edikpon didie 
Y’ndima ekekpöñde. 

Körös: 
S: Mboho idara, 
ATB: O mboho, O idara y’mbon 
ima ko k’esuk, 
All: Ke ediye esuk (ko k’esuk); 
S: Mboho idara, 
ATB: O mboho, O idara y’mbon 
ima ko k’esuk, 
All: Kini idisobode. 

2. Iyefiök mö k’idisobode, 
Baba idisopk’ usuñ, 
K’nsinsi y’eti obio oro 
Mendima idisöñke. 

3. Andinyaña k’afia ebekpo, 
Ekpe ikpe ekondo, 
Nti owo eyeduk k’uböñ 
Ke ikpe okurede. 

Amen. 

      """
    },
    {
      "id": 821,
      "title": "KE EBET NDIBÖ NYIN DO ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:m, .,f, |s, :m .,r ld :m, .,L, |s, :-l:
s, .,s, |L, :L, .,L, |L, :d .,d |t, :-l-} 

1. K’ATA ediye esuk oro, 
Ekim okoneyo iduhe; 
Ndisana enjel edu do, 
Eyar’ uböñ k’ebekpo Ete, 
Mö ke ebet ndibö nyin do 
K’nsinsi akwa idaresit, 
K’iduñ oro eyede eti 
Kini ukut isöñ ebede. 

Körös: 
S: Mö k’ebebet, mö k’ebebet 
ATB: K’ebet, k’ebet, k’ebet, 
k’ebet, k’ebet, k’ebet 
All: Mö ke ebet ndibö nyin do, 
S: Mö k’ebebet, mö k’ebebet 
ATB: K’ebet, k’ebet, k’ebet, 
k’ebet, k’ebet, k’ebet 
All: Mö ke ebet ndibö nyin do. 

2. K’obio ’ro iyeduök odudu, 
Y’mbon ima nyin 
ekekpöñde; 
Iyebuana k’udim idara, 
Ikwö Hosanna k’nsi nsi; 
Iyekut Edidem nyin k’uyai 
Y’inyene emi mikureke, 
Usen oro edinem didie, 
Kini ididude k’obio gold. 

3. Kpukpr’ usen nyin k’ikpere 
esuk, 
Kpukpr’ ukut isöñ eyekure, 
Iyekop mfiori erikan, 
Iyeduök odudu ke utit; 
Mö emi enyöñde k’edara 
K’uyai obio nsinsi iduñ, 
Mö, ke isañ nyin okurede, 
Ke ebebet ndibö nyin do. 

Amen. 

      """
    },
    {
      "id": 822,
      "title": "EDIYE IDUÑ KE ENYÖÑ ",
      "audio": "",
      "body": """
      KEY C 4/4 

{:d |m :m :f|s :-:s .s|L :t:d'|s ::
m |s :f:r |s :f:r |m :-} 

Duet: Sop & Alto 

1. IDUÑ nyin k’isöñ eyöhö 
y’mfukhö, 
Koro mbon ima k’ekpöñ 
Ke iduñ enyöñ mö edu k’idara, 
Kpukpru ediana k’nsinsi. 

Körös: 
S: Iduñ, eti iduñ, 
ATB: Ediye eti iduñ, 
S: Iduñ, eti iduñ 
ATB: Ediye eti iduñ 
S: Iduñ, iduñ 
ATB: Ediye, ediye 
All: Eti iduñ k’enyöñ. 

2. Idorenyin do önö mekpa mba 
K’utom Öböñ mö enamde, 
Ediye iduñ do önö mö k’uböñ 
K’utip utom mö enamde. 

3. Ukut nyin k’isöñ odobi 
nyin k’ukpöñ, 
Möñ-eyet omokpon k’isöñ 
Edi möñ-eyet iduhe do baba, 
Mfukhö ñko iduhe. 

Amen. 

      """
    },
    {
      "id": 823,
      "title": "NTE EWET ENYIÑ MI DO? ",
      "audio": "",
      "body": """
      KEY Ab 3/4

{:s, .,s, |d :d :r |m :d :s, .,s, |L, :d 
:f |m :-} 

1. ÑKEREKE inyene, 
Silver me eke gold; 
Modor’ enyin ke heven, 
Nyebuana k’udim, 
K’ñwed obio uböñ Fo; 
Ediye ikpañwed, 
Tiñ nö mi, Öböñ Jesus 
M’ewet enyiñ mi do? 

Körös: 
M’ewet enyiñ mi do, 
K’ediye ikpañwed? 
K’ñwed obio uböñ Fo, 
M’ewet enyiñ mi do? 

2. Öböñ, m’idiök mi ewak, 
Nte ntan k’inyañ; 
Iyip Fo Andinyaña, 
Emekem ye ami, 
Emewet uñwöñö Fo; 
Ke uyai ubökñwed, 
“M’idiök fo ekpeyibe, 
Eyetie nte snow.” 

3. O! eti obio oro, 
O iduñ uñwana; 
Me andiduñ esine 
Mfia öföñidem; 
Emi idiök midukke; 
‘Ndibiat uyai esie, 
Me enjel ekpemede, 
Ewet enyiñ mi do. 

Körös: 
Ewet enyiñ mi do, 
K’ediye ikpañwed; 
K’ñwed obio uböñ Fo, 
Ewet enyiñ mi do. 

Amen. 
      """
    },
    {
      "id": 824,
      "title": "NSO USIERE KE EDIDI! ",
      "audio": "",
      "body": """
      KEY Ab 4/4 

{:s, .,s, |d., t, :d.,r lm :f .,r |m : ld 
:m .,m |s :-lr :f .,r |s :-lm } 

Körös: 
NSO usen k’edidi 
Hallelujah! 
Nso usen (k’edidi!), nso 
usen (k’edidi!) 
K’idikutde Edidem, 
Hallelujah! 
Nso usen k’edidi! 

Solo: Soprano or unison 
1. Ke ekim ebede efep, 
Ke m’akpa mkpa esetde, 
K’nti owo ebietd’ Enye, 
O, nso usen k’edidi! 

Körös: 
Demere kwö itoro, 
Hallelujah! 
Kwö itoro ebighi, 
Hallelujah! 
K’isimde mbon ufak, 
Hallelujah! 
Ns’ usen ima y’emem 
k’edidi! 

2. M’ekiker’ isöñ eyebe, 
Mkpa ye ukut eyetre, 
K’idude k’edem akpa ko, 
O, nso usen k’edidi! 

3. Eyikhe y’ndik iduhe, 
Ufen y’ntuaña iduhe 
Edi idara eyedu, 
O, nso usen k’edidi.
 
4. O, di k’eti isöñ oro; 
Iyeda k’iso ebekpo 
Inyuñ ikwö y’nti owo, 
O, nso usen k’edidi. 

Amen. 
      """
    },
    {
      "id": 825,
      "title": "KINI IDISOBODE KE IDUÑ ",
      "audio": "",
      "body": """
      KEY Bb 4/4

{:m, .,f, |s, :L, .,t, |d :m .,r |d :-ls, 
:s, .,s, |L, :t .,d ls, :m .,d |r :-l-} 

1. KE idisobode ke usiere, 
Nyin idiyoho nte isen; 
K’ididade k’inua ’top 
Edidem, 
Eyebö nyin esin ke iduñ. 

Körös: 
O ida…ra… eyekpon 
Iyekwö inem ikwö; 
Ke idisobode ke usiere, 
K’iduñ Öböñ nyin ye Edidem. 

2. Ke idisobode ke usiere, 
K’anyan isañ–ufen ebede; 
Kini eböpde me ebek ima, 
Nyin idinamke aba utom. 

3. Ke idisobode ke usiere, 
Inyuñ ikutde mendima nyin; 
Iyefiök mö k’uñwan’ obio oro, 
Ini oro editie didie! 

4. Ekim ebe, usiere emedi, 
Ndien imotim ikut kemi; 
K’ekpri ini mbukpöñ eyebe, 
Iyeduk k’nsinsi idara. 

Amen. 
      """
    },
    {
      "id": 826,
      "title": "EDIYE OBIO ABASI ",
      "audio": "",
      "body": """
     KEY Bb 3/4

{:s, |s, :-.L, :s, |s, .m, :-:s, |d :.
r :d |d.L,:-} 

1. ETI ebiet iduñ, efen ibietk’ enye 
M’efak esie enam ke gold; 
Akpamba iduhe, abiaña iduhe; 
Usöñ inyuñ iduhe do. 

Körös: 
Eti iduñ odu, ediy’ ebiet iduñ 
Andinam edi Abasi; 
Iduñ edem enyöñ, utib’ 
ebiet iduñ, 
Ediye iduñ Abasi. 

2. Idaresit esie emen ‘mfukhö efep, 
Ukut ididuhe aba, 
Öfiöñ ididuhe, utin ididuhe; 
Ndiyama k’obio oro. 

3. Uñwana eyedu, emen ekim efep; 
Ke iduñ Abasi Ibom, 
Eyedi utibe önö kpukpru emi 
Ekebede k’usuñ ukut. 

4. Ukut ye eseme, ndutukhö y’mkpa; 
Idibiatke idara do, 
Mbon isañ emi edidukde k’esit 
Eyedara k’nsi nsi. 

Amen.  
      """
    },
    {
      "id": 827,
      "title": "KE OBIO UBÖÑ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:d .,r |m :re lm :m .,f |s :fe ls 
:L .,L|m:-lr:-|d:-l-} 

1. MÖ ’mi ekande esine mfia 
Ke obio uböñ; 
Ekwö k’nsinsi enö Edidem! 
Ke obio uböñ. 

Körös: 
Ke obio uböñ (k’obio uböñ), 
Ke obio uböñ (k’obio uböñ), 
Iyekwö obufa ikwö 
ek’ Eyeneröñ 
Ke obio uböñ, 
Ke obio uböñ (k’obio uböñ), 
Ke obio uböñ (k’obio uböñ), 
Iyedu k’idaresit, isine mfia 
öföñ 
Ke obio uböñ. 

2. Ke ini Öböñ edikotde mi, 
Ke obio uböñ, 
Ke ima Esie ada mi oduk, 
Ke obio uböñ. 

3. Kini ikutde eti uñwana, 
Ke obio uböñ, 
K’ inua otop pearl ibe iduk do, 
Ke obio uböñ. 

4. Kwö, ukpöñ mi kwö sia udim enyöñ 
Ke obio uböñ 
K’ebet k’itim pearl ndibö fi ’nsin 
Ke obio uböñ. 

Amen. 
      """
    },
    {
      "id": 828,
      "title": "KE INUA OTOP GOLD ",
      "audio": "",
      "body": """
      KEY G 4/4

{|d :-.r lm .d :f .m |m :r lr :-|r :-.m 
lf .r :s .f |f :m lm :-} 

Duet: Sop & Alto 

1. KE Andinyaña okutde mi, 
Nyekut Enye iso y’iso; 
Nyemum ubök Esie ‘ñkama 
Ke usiere, k’inua otop gold. 

Körös: 
Nyekut Enye k’iso 
(iso y’iso) 
Nyeköm k’mfön Esie 
(mfön Esie), 
Ih, nyekut Öböñ y’Edidem, 
Ke usiere, k’inua otop gold. 

2. ‘Nyekut Enye akpad’ önö mi, 
M’unan k’ubök, ukot ye ñkañ 
Ñkut ndiye ñkpö heven 
Ke usiere k’inua otop gold. 

3. ‘Nyekut Enye k’iduñ ifure, 
Nduñ k’ufök ediöñd’ enö mi, 
Ukpöñ mi adara k’nsinsi 
Ke usiere, k’inua otop gold. 

Amen. 
      """
    },
    {
      "id": 829,
      "title": "ENYIÑ MI ODU DO KE NSINSI ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:m, .,f, |s, .,s, :s, .,s, |L, .,s, :d .,r 
|m :r ld :m, .,f, |s, .,s, :s, .,s, |L, .,s, 
:d .,m|r :r lr } 

1. ÑKPEWET enyiñ mi nim 
ke ñkpö eriti, 
M’idomo uwem eyesöp 
ebiat m’utom mi; 
O ke mfiökde k’edi ubök 
Öböñ ewet, 
“K’ñwed uwem Eyeneröñ” 

Körös: 
Ih enyiñ mi do k’ nsinsi 
hallelujah, 
Ema ewet enim do, eyet 
m’idiök mi efep 
Ih enyiñ mi do k’ nsinsi 
hallelujah 
K’ñwed Eyeneröñ. 

2. Ñkpö isöñ ekpetak, toro 
enyiñ Esie, 
Idiök mi ekebietd’ iduot, 
afia nte snow, 
Enyiñ mi do k’nsinsi, Enye 
etiñ ntre 
“K’ñwed uwem Eyeneröñ.” 

3. Nyedu k’otu ke akpatre 
ukot enyiñ 
Möbuötidem k’ Öböñ edi 
kpukpru önö mi 
Enyiñ mi do sia nsukd’ 
ibuot k’ ikot Esie, 
“K’ñwed uwem Eyeneröñ.” 

Amen. 

      """
    },
    {
      "id": 830,
      "title": "ETI USEN",
      "audio": "",
      "body": """
      KEY F 4/4

{:s, .,s, |d .,d :d .,d ld :m .,r |d :L, 
ls, :s, .,s, |d .,d :d .,d ld :m .,m |s 
: -l-} 

1. ETIÑ enö mi ebaña iduñ 
k’enyöñ, 
O etiñ ebaña iduñ k’enyöñ; 
Etiñ enö mi ebaña iduñ emem, 
O etiñ ebaña eti usen. 

Körös: 
Obio eyedi eti, 
Obio emi ekim miduhe; 
Etiñ enö mi ebaña iduñ emem, 
O etiñ ebaña eti usen. 

2. Etiñ ebaña iduñ m’ufan ekade, 
O etiñ ebaña obio k’enyöñ; 
Emi nsinsi eto-uwem odude, 
Ndinö eti inem utebe. 

3. Etiñ ebaña Edidem k’uyai Esie 
Etiñ ete ke nyekut Enye; 
Etiede k’ ebekpo afiade akan snow, 
K’obio m’efak esie edide gold. 

4. O! Enye ’nemesit y’ nditö 
Esie do, 
Iso Esie ebin ukut efep; 
Etiñ ete eyet ididuhe aba, 
Ke eti isöñ oro eyede. 

Amen. 
      """
    },
    {
      "id": 831,
      "title": "AMI KE NSE ENYÖÑ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{|s, .,fe, :s, .,L, |s, :d .r |m :r ld :|
d .,d :d .,d lr :d .L, |s, :-l-} 

1. MOWUK enyin mi ke ñkpö enyöñ 
Ñkpö isöñ inemke mi, 
Odudu heven k’oduri mi, 
Nyekut m’itim esie. 

Körös: 
Ami k’nse enyöñ, nse enyöñ, 
Ami k’nse ebiet iduñ mi 
k’enyöñ, 
Ami k’nse enyöñ, nse enyöñ, 
Mbe uyama enyöñ. 

2. Ami nduhe aba k’mfukhö, 
Koro utin ayamade, 
Abasi akara ke kpukpru, 
Möböhö k’uduak Esie. 

3. Ñkpö isöñ inyeneke inem, 
Monim inyene mi k’ enyöñ, 
Mebere ke ökpösöñ ubök 
Abasi mböm y’ima. 

Amen. 

      """
    },
    {
      "id": 832,
      "title": "MÖÑYÖÑ IDUÑ",
      "audio": "",
      "body": """
      KEY G 3/2

{.d :m .m |m :-.d :r .m |r :-.d:m 
.s |s :-.d :m.r |d:-} 

1. IDUÑ mi k’enyöñ emeye, 
Mkpa m’ubiak idukke do; 
Uyam’ esie akan utin, 
Iduñ oro edi okim. 

Körös: 
Mönyöñ iduñ, mönyöñ iduñ, 
Mönyöñ iduñ, ‘ndikpah’ aba, 
Mkpah’ aba, mkpah’ aba, 
Mönyöñ iduñ mkpah’ aba. 

2. Ufök Ete mi ko k’enyöñ, 
Idighe ek’ ererimbot; 
Ke mkpöñde ukut isöñ, 
Ufök oro ’yedi okim.
 
3. Yak mö efen eyom iduñ 
Emi ikañ editade; 
Ami mokop idaresit 
Ke iduñ mi ko ke enyöñ. 

Amen. 

      """
    },
    {
      "id": 833,
      "title": "AMI NYESOBO YE ENYE ISO YE ISO",
      "audio": "",
      "body": """
    KEY Ab 4/4

{:s, .s, |d.d :d .r lm .m :r .d |s:-l:
f .f |m .m :m .r ld .d :t, .d|r :-l-} 

1. AMI k’ñkwö Andinyaña ukpöñ mi, 
Nyire k’ufan anamde mböhö; 
Motim mfiök ke ndisimde k’utit 
Nyekut iso Esie. 

Körös: 
Nyekut iso Esie, 
Mbere k’mfön Esie; 
Ke utit isañ uwem, 
Nyekut iso Esie. 

2. Nduñ ye Enye emi mkponode, 
Ami k’ntiñ ufön Esie 
kpukpr’ ini; 
Motim mfiök k’idom’ uwem ebede, 
Nyekut iso Esie. 

3. Ami nduñ k’uñwana ima Esie, 
Nyebö utip k’ini idök k’enyöñ, 
Edieke ’namde akpanikö kemi, 
Nyekut iso Esie. 

4. Mokut ata emem ke iso Esie, 
Anam m’owo edara mbuk Esie; 
Motim mfiök ko k’iduñ 
obio enyöñ, 
Nyekut iso Esie. 

Amen. 
  
      """
    },
    {
      "id": 834,
      "title": "YOM MI",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:m, .s, |d :d ld .t, :d .r |m :d ls, 
:s, .s, |L, :d lt, :L, |s, :-l-} 

1. K’ OSIMDE heven, koro eyesim do, 
K’ öfiökde enyiñ Öböñ, 
K’ ökömde mö eke amade eti, 
Ekand’ ebekpo ekuk. 

Körös: 
Ke oyomde mi, nyedu do, 
(‘nyedu do) 
‘Nyedu do!... ‘nyedu do 
(‘nyedu do) 
Ke oyomde mi nyedu do, 
(‘nyedu do) 
SB: Tor’ enyiñ Esie 
AT: Toro eti enyiñ Esie. 

2. Ke asañade ye m’ufan ke heven, 
Oyomde ñkpö-uto; 
Ke odude ke akwa idaresit, 
Esede obio uböñ. 

3. K’okopde mö ekwöde ke ebekpo 
Etoro Eyeneröñ; 
Ke mbon ufak ekwöde ye harp gold, 
“Uböñ enyene Enye” 

4. Ke okponode Edidem ndidem, 
Akafakde fi k’mfön; 
K’okutde iso Andinyaña fi do, 
Eyedu ke idara. 

Amen. 
      """
    },
    {
      "id": 835,
      "title": "AMI ÑKA KE USUÑ HEVEN ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:d .,m |s .,s :s .,L ls .,m :d .,m 
|s.,s:s.,Lls:f.,m|r:sl-:m .,r 
|d :s l-: -} 

1. AMI ñka k’obio heven do 
k’nti owo edu, 
K’ekwö uböñ! (hallelujah!), 
k’ekwö uböñ! (hallelujah!) 
K’obio owo midikpaha, 
okoneyo miduhe 
K’ ekwö uböñ (hallelujah!) 
kpukpr’ usuñ! (kpukpr’ usuñ) 

Körös: 
O uböñ hallelujah! Ami 
ñka k’obio heven 
K’ekwö uböñ (hallelujah!), 
k’ekwö uböñ (hallelujah!) 
O uböñ hallelujah! Ami ñka 
k’obio heven 
K’ekwö uböñ (hallelujah!) 
kpukpr’ usuñ! 
(kpukpr’ usuñ) 

2. Ami ñka k’obio heven, 
m’efak esie edi gold, 
K’ekwö uböñ (hallelujah), 
k’ekwö uböñ (hallelujah!) 
Uböñ ebiet oro owo 
ikemeke nditiñ 
K’ekwö uböñ (hallelujah!), 
kpukpr’ usuñ! 
(kpukpr’ usuñ) 

3. Ami ñka k’obio heven, eti 
obio idara, 
K’ekwö uböñ (hallelujah!), 
k’ekwö uböñ (hallelujah!) 
Emi ‘nti owo esinede mfia 
öföñidem, 
K’ekwö uböñ (hallelujah!), 
kpukpr’ usuñ! 
(kpukpr’ usuñ) 

4. Ami ñka k’obio heven 
ndikut Andifak mi, 
K’ekwö uböñ! (hallelujah!), 
k’ekwö uböñ! (hallelujah!) 
Do nyekwö ikwö ufak ye 
erinyaña k’ mfön, 
K’ekwö uböñ! (hallelujah!), 
kpukpr’ usuñ! 
(kpukpr’ usuñ) 

Amen. 

      """
    },
    {
      "id": 836,
      "title": "KE ETI ISÖÑ ",
      "audio": "",
      "body": """
      KEY F 4/4

{:d .r |m :d ld:f .m |m :r lr :r .m |f 
:t, ld :r |m : -l-} 

1. K’INAMDE utom ke ererimbot 
O öfön nyin ndifiök 
K’inua ’top heven ndima k’ebet, 
Ndibö fi ye ami. 

Körös: 
Ke eti isöñ k’enyöñ 
(k’enyöñ) 
Kpukpru edu k’idara (dara) 
K’inua ’top oro ndima k’ebet 
Ndibö fi ye ami 

2. Afaneköñ mö iduhe aba 
Ekwökhöre möñ-eyet 
Mö ekwö ikwö eke me 
enjel 
Ke ebetde nyin mfin. 

3. Me nyin iyedu ke inua otop 
K’ikpeme, iböñ akam? 
Iyesobo mö k’eti usiere 
K’ntukhube ebede? 

Amen. 

      """
    },
    {
      "id": 837,
      "title": "OBIO ÑKAÑ INAÑ UKEM ",
      "audio": "",
      "body": """
      KEY Ab 4/4 

{:s, .s, |d :d .d ld :d.r |m :dl -:s, 
.s, |d :d.d ld :t, .t, |d :-l-} 

1. OBIO k’enyöñ ñkañ inañ “ukem” 
Edi “iduñ nduök odudu” 
Ñkañ iba k’edere ye k’usuk, 
Iba k’usiakha y’usop utin, 

Körös: 
O obio ñkañ inañ ukem, 
M’usuñ edu ndibe nduk do, 
K’edere ye ke usuk, 
k’ usiakha y’usop utin 
Eyebö nyin do k’iduñ ifure 

2. Inua otop ita k’ñkañ kiet 
kiet, 
Kpa nt’ essien Israel edide, 
Kpukpru nyin mendinyene 
uñwöñö, 
Iyeduk ke obio gold oro. 

3. K’obio k’enyöñ ñkañ inañ 
ukem, 
Jesus akasiak usuñ ke cross, 
Yak ererimbot eka ye ami, 
M’usuñ duopeba ena iñwañ. 

Amen. 
      """
    },
    {
      "id": 838,
      "title": "MMÖ EDI MME ANIE? ",
      "audio": "",
      "body": """
      KEY F 4/4

{.s, |d .d :d .d ld :-.r |m .m :m .m 
lr .d :-.m |r .r :r .r lr :-.d lm .m 
:m .m lr .d :-} 

1. MOKUT ke ebekpo, 
m’owo ekande ibat, 
Mokut ke ebekpo, m’owo 
ekande ibat, 
Mokut ke ebekpo, m’owo 
ekande ibat 
’Nyuñ ’bup “edi m’anie?” 

Körös: 
“Edi mö ewöñöde ke akwa ukut, 
Edi mö ewöñöde ke akwa ukut, 
Edi mö ewöñöde ke akwa ukut, 
Eyetde mö efia k’iyip 
Eyeneröñ” 

2. Ñkut m’owo emi 
meñkodorike enyin,
Ñkut m’owo emi 
meñkodorike enyin,
Ñkut m’owo emi 
meñkodorike enyin, 
’Nyuñ ’bup “edi m’anie?” 


3. Mokut mbon eköñ eke 
minyenek’ unan, 
Mokut mbon eköñ eke 
minyenek’ unan, 
Mokut mbon eköñ eke 
minyenek’ unan, 
’Nyuñ ’bup “edi m’anie?” 

4. Mökut m’owo emi 
ekewotde ke Öböñ, 
Mökut m’owo emi 
ekewotde ke Öböñ, 
Mökut m’owo emi 
ekewotde ke Öböñ, 
’Nyuñ ’bup “edi m’anie?” 

Amen. 
      """
    },
    {
      "id": 839,
      "title": "MÖNYÖÑ",
      "audio": "",
      "body": """
      KEY F 4/4

{:s, .s, |d:d lr :m |d :d l -:m |s 
:-.L ls :f|m :-l-} 

1. AMI ñkoduñ ke Egypt, 
Oyomd’ ökpöñ Canaan, 
Spirit Öböñ okokut mi, 
Mönyöñ ke uyo Esie 

Körös: 
Mönyöñ… mönyöñ… 
Ñka ke obio Canaan 
Mönyöñ… mönyöñ… 
Ke Canaan obio möñeba 
y’aran ökwök 
Mönyöñ… mönyöñ… 
Ñka ke obio Canaan 
Obio ima y’emem, 
idiökñkpö iduhe do 
Mönyöñ… mönyöñ 
(mönyöñ). 

2. Ami ñkodu ke ufn, 
K’ndik ye eyikhe 
Edi ke ndukde Canaan 
Möböhö ofri ofri. 

3. Nduñ ke isek Abasi, 
Öyöh’ unana mi; 
Ke aran ökwök ye manna, 
Ami möyukhö ke mö. 

4. Ke isöñ emem ye eduek, 
Ukpöñ mi eyeduñ; 
Möwörö ke ekim Egypt, 
Ndifiakke aba do. 

Amen. 

      """
    },
    {
      "id": 840,
      "title": "NTI NDIDO KE ESIORO UYO ",
      "audio": "",
      "body": """
      KEY A 4/2

{|m :-.m lm :r |d :-lL, :-|f :-.m lr 
:d |t, :-l -:-} 

1. KOP uyo ndido, 
Ikwö me enjel, 
Eberede usuñ 
Enö Edidem, 
Christ, Edidem uböñ, 
Ye Öböñ Ima, 
Ömödök k’idara 
K’ebekpo Esie. 

Körös: 
M’utom Esie etre, 
Ikwö k’idara, 
Jesus ödök k’enyöñ, 
Iköm Öböñ nyin. 

2. Ekedi ndikpa, 
Man anyaña nyin, 
Kemi y’Ete Esie, 
Enye ’du k’uböñ; 
Ikopk’ aba ubiak 
Ikpaha aba, 
Jesus Öböñ uböñ, 
Ömödök k’enyöñ. 

3. Enye k’ekpe ubök, 
Önö Esiemö, 
Ndiduk ke uböñ 
Ke ata mfön, 
Enye k’ödiöñ iduñ 
’Nö iköt Esie, 
Jesus k’odu uwem, 
K’onyuñ ama nyin. 

Amen. 

      """
    },
    {
      "id": 841,
      "title": "USUÑ UBÖÑ ",
      "audio": "",
      "body": """
      
KEY Bb 4/2

{|s, .,fe, :s, .,d lt, :r |d :-ls, :|
t, .,L, :t, .,d lr :t, |d :-l-: } 

1. USUÑ obio uböñ odu, 
Aka iduñ Edidem; 
Ami nyom obio uböñ, 
Nsaña k’usuñ oro. 

Körös: 
SA: O, eti… usuñ uböñ, 
TB: Ediye usuñ, O usuñ uböñ, 
SA: O, eti… usuñ uböñ, 
TB: Ediye usuñ, O usuñ uböñ, 
SA: Eyeka ye ami k’uböñ? 
TB: Eyeka ye ami k’uböñ, 
eyeka ye ami k’uböñ, 
All: Nsaña k’usuñ oro. 

2. Christ ekebe k’ usuñ emi, 
Ödök obot Calvary; 
Man Enye akpasiak usuñ 
Akad’ ebekpo Öböñ. 

3. K’ nsañade k’usuñ emi, 
Ñka obio Edidem; 
K’mbuötidem ñkop ikwö 
Emi m’ enjel ekwöde. 

4. Ke odudu Spirit, ñkut 
Ediye isöñ oro 
Emi ayamade eti, 
Odude k’usuñ uböñ. 

Amen. 

      """
    },
    {
      "id": 842,
      "title": "USÖRÖ NDÖ ",
      "audio": "",
      "body": """
      KEY G 4/2

{:s, .,s, |m :m lf :-.m |m :r ld :t, .,d 
|r :s, .,s, lfe, .,s,:L, .,d |r :-l-} 

1. KE ediye iduñ ko k’enyöñ 
Eke mö efakde midikpaha, 
Akwa udia eyedu do 
k’nsinsi, 
Ke usörö ndö Eyeneröñ. 

Körös: 
Nte afo ’yedu do, nte afo 
’yedu do, 
Ke usörö ndö Eyeneröñ 
Y’öföñ ndö fo k’idem, 
eyekut me ndima 
Ke usörö ndö Eyeneröñ? 

2. Ñwan ndö ’yesin’ afia öföñ 
Möñ eyet esie eyebe efep, 
Akwa idara ’yedu k’usen oro, 
Ke usörö ndö Eyeneröñ. 

3. Kpukpru mö efakd’ esio 
k’idiök, 
Eyeto k’usuk ye ke edere 
Kpukpru m’idut eyesobo 
ötö kiet, 
Ke usörö ndö Eyeneröñ. 

4. Iyetor’ Enye k’eti isöñ 
K’Eyeneröñ edidade uböñ; 
Ufök Abasi eyedi ñwan ndö 
Ke usörö ndö Eyeneröñ.

Amen. 

      """
    },
    {
      "id": 843,
      "title": "KE EBEBET MI ",
      "audio": "",
      "body": """
   
KEY E 68 9.9.12.9 – 8.8.12.8 

{:d .r |m :re :m lf :r :m |d :-:-l:-:
m .f ls :fe :s|L :s :m lr:-:-} 

1. OMOKOP abañ’ obio heven 
K’ ökpöñde ererimbot emi 
Ndisana enjel ye ndinen owo 
Ekwö ekanare ebekpo? 

Körös: 
STB: Do Jesus ke ebebet mi 
A:   Do Jesus k’ebebet, ke 
     ebebet mi, 
     
STB: Do Jesus ke ebebet mi 
A:   Do Jesus k’ebebet, ke 
     ebebet mi, 
     
All: K’eti ebiet oro akade 
     nditim, 
     
SB:  Do Jesus ke ebebet mi 
AT:  Do Jesus ke ebebet, 
k’ebebet mi, 

2. Eti obio oro k’ödöñ mi, 
Ke mbede k’ekim ye k’udi, 
Ndima edu do k’eti ebiet oro, 
Mö k’ebebet mi ke ebekpo. 

3. Nyedara usiere oro, 
Ke ikot oro osimde mi 
Ndiduök odudu k’iduñ nti owo, 
Ke uñwana ebekpo oro. 

Amen.    
      """
    },
    {
      "id": 844,
      "title": "IDUÑ UÑWÖÑÖ ",
      "audio": "",
      "body": """
      
KEY F 4/4

{:d .r |m :m .m lf :f .f |s :s ld :d .r 
|m .m :m .,m lr :d |r :-l -} 

1. EBEÑE ebiet enö mi ke enyöñ, 
K’ukut uwem emi ebede; 
Do ke nti owo ye mfia öföñ, 
Ekwö ikwö itoro k’nsinsi. 

Körös: 
Jesus ömöñwöñ’ iduñ ’nö mi do, 
Jesus ömöñwöñ’ iduñ ’nö mi do, 
Ukut, ubiak, mkpa iduhe 
Jesus ömöñwöñ’ iduñ ’nö mi do. 

2. Ke ufök Ete uwak ebiet edu, 
Jesus ödöhö ami monim; 
K’ isöñ uñwana iduñ mi odu do, 
Eyen ete okuo odu ñko. 

3. K’iso ebekpo mbon ima edu, 
Ke iduñ idaresit k’enyöñ; 
Ke efak gold nyesaña ye mö do, 
Nyeyara edisem anyanya. 

4. Ke iduñ oro ko ke edem enyöñ, 
Mkpa y’ udöñö iduhe do; 
Nyin iyekara do ye Öböñ Jesus 
Iyenyuñ idu do k’ nsi nsi. 

Amen. 
      """
    },
    {
      "id": 845,
      "title": "NYEÑYÖÑ IDUÑ KE AKPATRE",
      "audio": "",
      "body": """
      KEY F 4/4

{:d .,r |m .,s :s .,L ls .,m :m .,r 
|d .,r :d .,L, ls, } 

1. KE ini uwem osimde ke 
edem usop utin, 
Onyuñ osiode mbukpöñ 
k’edem mi, 
Nyekut ini oro nte ata eti ini 
Nyenyöñ k’akpatre 

Körös: 
Nyenyöñ k’akpatre, (’kpatre) 
Nyenyöñ k’akpatre, (’kpatre) 
Ke utom ye itök mi 
k’ererimbot okurede, 
Nyenyöñ k’akpatre. 

2. Okposuk nte usuñ isañ mi 
ökösöñd’ eti 
Ye nte mbede k’ediwak ukut 
Edi nyesöp nsim iduñ ke 
obio Abasi, 
Nyenyöñ k’akpatre. 

3. Kini ndisañade k’itikhere 
mfut mkpa, 
Nyesöñö mum ubök Andinyaña, 
Enye öñwöñö ndika y’ami 
mfegheke ‘ndik, 
Nyenyöñ k’akpatre. 

Amen. 
      """
    },
    {
      "id": 846,
      "title": "IBÖHÖ ITO KE IYIP JESUS ",
      "audio": "",
      "body": """
      KEY G 4/4 

{:s,|d :-.d lm.m :r.d|L, :dls, 
:s, |d :-.d lm :m |r :-l-} 

1. AMAKEM iyeda k’iso ikpe, 
M’akpa ‘mkpa eyeset; 
Öböñ ’yenam ifiök 
s’ikanamde, 
Eyekot enyiñ nyin. 

Körös: 
Nyedu do k’ekotde enyiñ 
Nsana oto k’eti iyip; 
Nyeyere k’ekotd’ enyiñ mi; 
Ami möböhö. 

2. Nyebö edisem anyanya do, 
Öböñ edinöde, 
K’ndibiatde tösn isua 
duop do, 
Uwem ikureke. 

3. Iyesobo, ikpöñke kiet aba, 
Utom nyin eyetre, 
Iyenim ‘mbiomo nyin 
k’ukot Jesus, 
Idu ke ifure.

 Amen.
      """
    },
    {
      "id": 847,
      "title": "ESEN IDUHE DO ",
      "audio": "",
      "body": """
      KEY E 3/4

{:d .,r |m :-.,m :f .,m |L :s :d' .,d' 
|t :-.,L :s .,f |m :-} 

1. K’EBEREDE usuñ enö 
‘Namidiök enyañade, 
K’otode k’nsinsi mböm 
Mokut Andinyaña mi; 
Ke ndukde k’ebiet iduñ, 
Emi eyede eti, 
Eyebö mi do k’idara, 
Ndidighe esen do. 

Körös: 
Ndidighe esen do, 
Jesus otim itie ‘mmi, 
Eyekut mi, eyeköm mi, 
Ndidighe esen do. 

2. Ke ofri ini uwem mi, 
Ami mbine utit, 
Edi eti obio iduñ, 
Obio iduñ ukpöñ mi; 
Ebana mendima idem, 
K’mbuanade ke uböñ, 
K’nsetde ke efak esie 
Ndidighe esen do. 

3. Do ke Andifak mi odu, 
Eyeneröñ k’ebekpo, 
Enye ’yenyime Esiemö 
K’enyened’ idiöñ’ iyip; 
K’mfukhö m’odude ikpöñ 
Kuse nte etiede, 
Yak idorenyin fo edi 
Ududighe esen do. 

Amen. 
      """
    },
    {
      "id": 848,
      "title": "NDINYÖÑ IDUÑ ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:s, .d |m .m :m .m lm .m :f .,m |r 
:-l-} 

1. ISAÑA k’akpa uwem ika k’ iduñ 
Mö esind’ ifik y’mbon mba edu, 
Nyin idifegheke ndik ke isañ, 
Koro Andinyaña adade usuñ. 

Körös: 
Inyöñ ika ke uböñ (Ih nyin), 
inyöñ ika k’uböñ (k’uböñ) 
Iyesobo mendima nyin do 
Inyöñ ika ke uböñ (Ih nyin), 
inyöñ ika k’uböñ (k’uböñ) 
Kpukpru ukut uwem eyebe. 

2. Jesus ada nyin usuñ ebe inyañ, 
Enye ’yeda nyin osim k’esuk emem, 
Enye ’di Etubom ye Adausuñ, 
Baba mbufut möñ ikanke Enye. 

3. Di buana k’utom gospel, 
kubet aba, 
Iyeñwam fi ke isañade k’usuñ, 
K’ekpr’ ini k’isimd’ iduñ 
Ete k’enyöñ, 
Iyetuak ibuot do inö Abasi. 

Amen. 
      """
    },
    {
      "id": 849,
      "title": "KE NSIMDE IDUÑ ",
      "audio": "",
      "body": """
      KEY C 4/4 

{|d .d :m.m ls .s :d' .L |s:m lr:-} 

1. NYEYAR’ anyanya gold 
k’nsimd’ iduñ, 
Ukut mi eyekure k’nsimd’ iduñ, 
Y’öföñ uböñ k’idem, 
nyekwö mbaña 
Öböñ edepde mi k’nsimd’ iduñ. 

Körös: 
K’nsimd’ iduñ… k’nsimd’ iduñ, 
Kpukpru ukut eyebe 
k’nsimd’ iduñ; 
K’nsimd’ iduñ… k’nsimd’ iduñ, 
Kpukpru ukut eyebe 
k’nsimd’ iduñ. 


2. Kpukpru ekim eyebe k’nsimd’ iduñ, 
Nyekut uñwana do k’nsimd’ iduñ; 
Uñwan’ obio heven ’yesiakha k’usuñ mi, 
Eyeda mi usuñ osim k’iduñ. 

3. Nyekut Öböñ mi ke nsimd’ iduñ, 
Nyekwö mfön Esie k’nsimd’ iduñ; 
‘Nyeda k’iso Esie, nyekpono Enye, 
Nyeduñ ye Enye k’nsimd’ iduñ. 

Amen. 
      """
    },
    {
      "id": 850,
      "title": "IDARA KE IMA JESUS ",
      "audio": "",
      "body": """
     KEY F 4/4

{|m :s lL :s |d:flm :-|r.r :r .r ld :r 
|m :s l-:-} 

1. NYIN ika k’iduñ Zion, 
Idara ke ima Jesus, 
Imokut ata emem, 
Idara ke ima Jesus.

Körös: 
Dara, dara 
Kwö ke kpukpr’ usuñ, dara 
kpukpr’ usen, 
Dara, dara, 
Idara ke ima Jesus. 

2. Iyeka k’mbuötidem, 
Idara ke ima Jesus, 
K’obot me k’una isöñ, 
Idara ke ima Jesus. 

3. Iyesöp isim iduñ, 
Idara ke ima Jesus, 
Iduñ do k’nsi nsi, 
Idara ke ima Jesus. 

Amen. 
 
      """
    },
    {
      "id": 851,
      "title": "EKA MÖÑ MBON ISAÑ? ",
      "audio": "",
      "body": """
      KEY C 3/4

{:s .d'|d' :t :f .L |L :s :s .d' |t :-.s :L 
.t |d' :-} 

1. MBON isañ, eka mmöñ, 
Ekama esañ k’ubök? 
Nyin isaña eti isañ 
Ika k’uyo Edidem, 
Ibe k’obot y’itikhere, 
Nyin ika k’ufök Edidem, 
Nyin ika k’ufök Edidem, 
Ika ke eti isöñ, 
Nyin ika k’ufök Edidem, 
Ika ke eti isöñ. 

2. Mbon isañ eyom nso 
Ke eti isöñ oro? 
Eti öföñ ye anyanya, 
Ke ubök Andinyaña, 
Iyeñwöñ eti möñ uwem, 
Iyeduñ y’ Öböñ k’nsinsi, 
Iyeduñ y’ Öböñ k’nsinsi, 
K’ediye isöñ oro, 
Iyeduñ y’ Öböñ k’nsinsi, 
K’ediye isöñ oro. 

3. Mbon isañ, nyin ika ye 
Mbufo k’obio oro? 
Edi ika, edi ika, 
Ke udim mbon isañ, 
Di O! di kunyuñ ukpöñ nyin, 
Christ k’ebebet ndibö nyin, 
Christ k’ebebet ndibö nyin, 
K’uyama obio oro, 
Christ k’ebebet ndibö nyin, 
K’uyama obio oro. 

Amen. 

      """
    },
    {
      "id": 852,
      "title": "KE IBEDE INYAÑ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{.m :re .m |s :-l -.m :r .d |t, :-l-} 

1. KE ibede… akwa inyañ 
K’obio emi… enyin mikwe 
K’isöñ emi… mikureke 
Do kpukpru eyet eyetre. 

Körös: 
S: Ke ibede akwa akpa inyañ, 
Mokop mendima mi 
ekotde mi 
’Nyesöp ñkpöñ mben 
inyañ emi 
Nduñ ye Jesus ke nsi nsi. 

ATB: Ke ibede akwa inyañ 
(akwa inyañ) 
Mokop mendima ekotde 
(mi ete di) 
’Nyesöp ñkpöñ mben 
inyañ (inyañ emi) 
Man nduñ ye Jesus k’nsi nsi. 

2. K’edem inyañ… heven odu, 
Baba idiök… iduhe do, 
Ke utom nyin… okurede, 
Do ukot nyin… idifumke. 

3. M’isua ukut… ididuhe 
Ke ibede… edem emi, 
Ntuaña ididuhe do, 
Mfukh’ esit eyekure. 

4. K’edem inyañ… emem odu, 
Do Christ okot… iköt Esie, 
K’edem inyañ… ‘mbufut etre, 
M’enjel ekwö … “Emedi – O” 

Amen. 
      """
    },
    {
      "id": 853,
      "title": "IDUÑ KE OBIO ENYÖÑ ",
      "audio": "",
      "body": """
      KEY F 4/4

{:d .,r |m :m.,f ls :L |s :-lm :-. |d 
:d .,d lr :m |r :-l -} 

1. NYIN isaña ika k’usuñ 
cross, 
Ika k’ obio enyöñ, 
Nyin idifegheke mendidiök, 
Oto k’ima Ete. 

Körös: 
S: I…duñ … ko … 
ATB: Nyin ika ke iduñ, 
S: Ika k’obio enyöñ 
ATB: Ika k’obio, obio k’enyöñ 
All: Nyin isaña ika k’usuñ 
cross, 
Ika k’obio enyöñ. 

2. Nyin isaña ika k’usuñ cross, 
Jesus ebe iso, 
Nyin iyetiene ikpat Esie, 
Isim eti iduñ. 

3. Nyin isaña ika k’usuñ cross, 
Usuñ ökpödödiök, 
Ubök kiet eyeda nyin usuñ, 
Osim k’obio oro. 

Amen. 

      """
    },
    {
      "id": 854,
      "title": "“KE EDIYAMA ESUK” ",
      "audio": "",
      "body": """
      
KEY A 4/2

{:s, |s, .,f, :m, .,f, ls, :d |m :-ld 
:s, .,s, |L, :d lt, :L, |s, :-l-} 

1. ‘NYESOBO y’mbufo ke uböñ, 
Ke oyobio ebede, 
‘Nyebuk akani mbuk oro, 
K’ ediyam’ esuk oro. 

Körös: 
K’ediyam’ esuk, ko ke esuk gold, 
K’obio Ete nyin, obio idara 
Nyin iyesobo do, nyin 
iyesobo do, 
Inyuñ iyar’ anyanya k’uböñ. 

2. ‘Nyesobo y’mbufo ke uböñ, 
Ke ebiet eto uwem, 
‘Nyetoro eti Andifak nyin 
Ke mfön önöde mi. 

3. ‘Nyesobo y’ mbufo ke uböñ 
Ke ebekpo Andifak 
Nyebuana ye mö efakde 
Ndikwö ikwö ufak. 

4. ‘Nyesobo y’mbufo ke uböñ 
K’utom mi okurede, 
Nyeköm mbufo k’idara, 
K’nsinsi uyam’ esuk. 

Amen. 
      """
    },
    {
      "id": 855,
      "title": "USEN UBÖÑ",
      "audio": "",
      "body": """
    KEY Ab 4/4 

{.s, |s, .d :d .r lm :r .d |L, .d :d .,L, 
ls, :-.s, ,s,|s, .d :d .r lm :m .f |s .m 
:m .d |r :-. } 

1. ERERIMBOT esin Christ 
enyuñ ekañ Enye; 
Ediwak iyomk’ Enye, esisit 
ekpon’ Enye, 
Edi k’ekpri ini Enye eyedi 
k’uböñ; 
Koro usen uböñ k’edi 
k’ini ’so. 

Körös: 
O usen uböñ ke edi! K’edi 
kini iso! 
K’ Öböñ edide k’odudu 
y’uböñ oto k’enyöñ 
O, eyedi utibe onyuñ eye 
ndise, 
Ke usen uböñ edide 
k’ini ’so. 

2. Heven eyenyen’ uyai 
onyuñ ayam’ eti 
Ndimek ’yeyama k’uböñ, 
Christ eyebana mö, 
Uyai Andinyaña eyeyam’ 
owo k’enyin, 
Ke usen uböñ edide 
k’ini ’so. 

3. Ubiak nyin eyekure, 
idiökñkpö eyetre, 
Kpukpru mfukhö ke edem 
eyedi idara, 
Iyedu k’idara k’idude ye 
Andifak 
Ke usen uböñ edide 
k’ini ’so. 

4. Usen oro k’edi yak me 
andiyom enye 
Ewa idem ndisaña 
k’mkpafakha usuñ, 
K’ndiyom mendisop, 
Christ akakpade önö 
Koro usen uböñ k’edi 
k’ini ’so. 

Amen.   
      """
    },
    {
      "id": 856,
      "title": "ITIAT IDAK ISÖÑ UFÖK ABASI ",
      "audio": "",
      "body": """
      KEY Eb 4/4 

{:m |m :m lf:m |m :-lr :d ld:L ls 
:f |m :-l-} 

1. UFÖK Abasi ada ke Jesus 
Christ Öböñ, 
Jesus ökötöñ’ enye k’möñ 
y’iyip Esie, 
Okoyom enye edi añwan 
ndö Esie, 
Edep ke iyip Esie, akpa 
önö enye. 

2. Ndimek k’ofri isöñ mö 
kpukpru edi kiet, 
Usuñ erinyaña mö edi kiet 
ke Öböñ, 
Ediöñ k’eti enyiñ kiet, 
ebuana kiet k’udia, 
Enyen’ idorenyin kiet 
otode ke mfön. 

3. M’owo k’esede enye, edu 
k’mkpaidem, 
K’ekutde ubakhare ye 
ukwañ erikpep; 
Iköt Öböñ k’ekpeme, 
k’etua, k’ebup ini, 
K’ekpr’ ini ntuaña mö 
’yekabare ikwö. 

4. K’uföt utom ye ukut, 
k’ndutime y’eköñ, 
Enye ke ebet utit, kpa 
emem ‘nsi nsi, 
Ke idorenyin emi enye ’bö 
edidiöñ, 
Ufök Abasi akan, odu ke 
ifure. 

5. K’isöñ enye abuana 
y’Abasi-ita ke kiet, 
Odu k’eti ebuana ye 
mendinyen’ emem, 
Nti y’ndisan’ owo, Öböñ 
nö nyin mfön 
Man nyin nte mö oro, iduñ 
y’Afo k’enyöñ. 

Amen. 
      """
    },
    {
      "id": 857,
      "title": "ME EDI AFO, ME EDI AMI? ",
      "audio": "",
      "body": """
      KEY F 6/8

{|m :m :m lm :r :m |s:-:s lm :-:|
s :m :L ls :-:-| s :m :L ls :-:-} 

1. OWO ’yeduk k’ediye usuñ, 
K’ini’ so ppk’ini’ so, 
Atabi m’uböñ ebetde do 
M’edi afo, ppm’edi ami? 
Owo eyesaña k’usuñ gold 
Okut ndiye ndise do 
Oduk k’idara okokopde 
M’ edi afo, ppm’edi ami? 

2. Owo ’yeyak cross esie 
onim, 
K’ini’ so, ppk’ini’ so, 
Andikan eyebö anyanya 
M’edi afo, ppm’edi ami? 
Owo eyekut Öböñ uböñ, 
Öwörö ökpöñ ukut isöñ, 
Adara y’Enye k’nsi nsi, 
M’edi afo, ppm’edi ami? 

3. Owo ’yetuak k’eberid’ 
usuñ, 
K’ini’ so, ppk’ini’ so, 
Uyo ödöhö “Mfiökke fi” 
M’edi afo, ppm’edi ami? 
Eyekot ibörö iduhe, 
Eyetuak usuñ ke ikpikpu 
Ataba utip nti owo, 
M’edi afo, ppm’edi ami? 

4. Owo ’yekwö ikwö erikan 
K’ini’ so, ppk’ini’ so, 
Abuana k’ikwö ye ‘mbon 
ufak 
M’edi afo, ppm’edi ami? 
Owo eyeköm mbon ima 
Emi ekedude k’esuk gold, 
Eböhö do ke nsi nsi, 
M’edi afo, ppm’edi ami? 

Amen. 
      """
    },
    {
      "id": 858,
      "title": "INUA OTOP ANA IÑWAÑ ",
      "audio": "",
      "body": """
      KEY C 6/8

{:s|s :-:m ls :-:d' |d' :-:L ls ::
m |L :-:s lm :-:d lm :-:-lr :-} 

1. INUA otop ana iñwañ, 
Ndien ke m’usuñ esie, 
Uyama otode ke cross 
Ayarad’ ima Öböñ. 

Körös: 
O se oruk akwa mböm, 
M’ebered’ usuñ enö mi? 
’Nö mi …’nö mi, 
Eberede ’nö mi. 

2. Ana iñwañ önö kpukpru 
Eyomde erinyaña; 
Owo inyene y’ubuene, 
Ke kpukpru obio y’idut. 

3. Ka iso kukere m’asua, 
Usuñ mböm ’na iñwañ, 
Nyime cross nyuñ bö 
anyanya, 
Nsinsi idiöñ’ ima. 

4. Ke edem akpa iyenim 
Cross ekenöde nyin mi, 
Iyara anyanya uwem, 
Ima Enye ke heven. 

Amen. 
      """
    },
    {
      "id": 859,
      "title": "NTÖT KE ESUK ",
      "audio": "",
      "body": """
      KEY F 3/4

{.s, :d.,r |m :-.f :m .,r |d :-.d 
:d .,m|s :-.L :s .,m lr :-} 

1. UWEM ebiet ofim inyañ, 
Idiökñkpö y’ukut k’ofime, 
Ke ofim osuk otopde, 
Ndik ofuk nte ntöñ, 
K’utuñö-möñ, ikop uyo, 
Nte ntöt k’esuk k’okot, 
Osop-usuñ, kam dorenyin, 
Esit ndik eyedara. 

Körös: 
Se usuñ mi öduö-esit, 
Emi odude k’oyobio, 
Se usuñ mi, bö ifure, 
Uyo heven ke ofiori. 

2. Yak nyin ikop ikot emi, 
Iwat ika k’edem esuk, 
Ika k’ebiet ekotde nyin, 
Eteme ke suñ suñ uyo 
Ediwak ukpöñ k’etak mi, 
Enyuñ esop ñko k’inyañ, 
“Etiene mi! Etiene mi!” 
Ntöt enöde ke esuk. 

3. Afo emi edomode 
Uñwöñ’ Abasi adada; 
M’andikan eyetim ekwö, 
Ke eyöde esim utit; 
Spirit Öböñ odoro fi, 
Ndibuk ima Esiemö, 
K’ifure k’edem oyobio, 
Ntöt enöde ke esuk. 

4. Di, Öböñ mfön k’ima Fo, 
Nam ibe k’oyobio uwem, 
O kpeme sim iduñ k’enyöñ, 
Eti iduñ, k’edem oko; 
Do iyeböhö oyobio, 
Nyin iditreke ndikwö, 
’Nö Andidep nyin ke iyip, 
Anamd’ isim k’esuk emem. 

Amen. 
      """
    },
    {
      "id": 860,
      "title": "NDIMA, NYIN IDI NDITÖ ABASI ",
      "audio": "",
      "body": """
      
KEY C 4/4

{|s:s ls : -.d' |m .f :s .L ls :d'|L :L 
lL :-.d' |t .L :s .fe ls : -} 

1. NYIN idi ‘nditö Abasi, 
Utibe ikö mfön 
Ke Eyen, Ete okut nyin, 
Önö nyin itie ‘nditö. 

Körös: 
‘Ndima idi nditö Abasi, 
S’ididide iyarakere kaña; 
S: Iyefiök k’eyarared’ Enye, 
ATB: Iyefiök, nyin iyefiök 
k’eyarared’ Enye, 
S: Ema eyarare Enye 
ATB: Ema eyarare, eyarare Enye 
All: Iyebiet Enye, iyebiet Enye; 
Iyekut ‘nte Enye ’tiede. 

2. Eti idorenyin k’edi, 
Iyesöp ikut Öböñ; 
Ke uyama ikpa enyöñ 
Iyekut Andinyaña. 

3. K’odudu erikpukhöre, 
Iyebiet Enye k’uyai; 
Christ k’anam uñwöñö 
Esie, 
Iyeduk k’uböñ Esie. 

Amen. 
      """
    },
    {
      "id": 861,
      "title": "AMI NYEYUKHÖ",
      "audio": "",
      "body": """
      KEY C 4/4

{|s :-.fe ls :L |L :slm .s :-|L :-.se 
lL :d' |d' .t :L ls:-} 

1. UKPÖÑ mi ke ikpökhidem, 
Uyukhöke mi k’isöñ? 
Eseseme nso ndien? 
Nsinam muyukhöke? 

Körös: 
SA: Ami nyeyukhö, ami 
nyeyukhö 
TB: Ami nyeyukhö, ami 
nyeyukhö, ami nyeyukhö 
All: K’ndemere k’mbiet Esie. 
SA: Ami nyeyukhö, ami 
nyeyukhö 
TB: Ami nyeyukhö, ami 
nyeyukhö, ami nyeyukhö 
All: K’ndemere k’mbiet Esie. 

2. Ukpöñ mi, esit k’eyire 
Iseri ererimbot, 
Nsinam asuade ’nö mi, 
Nsinam muyukhöke? 

3. Ukpöñ mi, afo ’yom ete 
Mkpa ’nö obukidem, 
Mkpöñ udöñ ererimbot 
Man afo okpoyukhö? 

4. Ukpöñ mi ka iso seme, 
Sua idiök, y’ndisime, 
Ami monyime cross Jesus 
Man afo okpoyukhö. 

Amen. 
      """
    },
    {
      "id": 862,
      "title": "KE EBEREDE ME USUÑ PEARL ",
      "audio": "",
      "body": """
      KEY A 4/4

{:s, .d|m :m lf :-.s |f .m :-l :t, .d lr 
:r lf :-.t, ld :-l-} 

Solo: (optional) 

1. mpMAYAK kpukpru ‘ñkpö 
’nö Jesus 
Isöñ emi ’nemke mi; 
Ami mefre m’inem esie 
Ke ntide Calvary, 
M’ufan isöñ ekpesin mi 
Ke uwem efekde mi 
Menyene edima Ufan 
K’eberede m’usuñ pearl. 

Körös: 
Usiere uwem k’ ebe, 
Mbubreyo ke edi; 
Esit mi idifukhöke, 
K’eberede m’usuñ pearl. 

2. Kini Jesus okotde mi, 
Me enjel eneme suñ; 
Nyebere y’Andinyaña, 
K’mbede k’itikhere; 
Nyeda k’uñwöñö Esie 
Ösöñd’ urua akan gold 
“Kufeghe, ndodu y’afo,” 
K’eberede m’usuñ pearl. 

3. Ke edem mbufut Jordan, 
Ke ibede tuep esie, 
Do ke Eto-Uwem odu 
Od’ uwem möñ öfiörö 
Ke inem iduñ me Spirit 
Edi iduñ edidiöñ 
Ndien me enjel k’ebebet, 
K’eberede m’usuñ pearl. 

Amen. 
      """
    },
    {
      "id": 863,
      "title": "ME NTANTA ÖFIÖÑ EYEDU? ",
      "audio": "",
      "body": """
      KEY A 4/4

{:m, .f, |s, :fe, .s, ld :m .,r |d :t, .d 
lr, :r, .m, |f, :t, .L, ls, :f, .s, |m, :-l-} 

1. KE emi mekere eti obio oro, 
Nyesim ke utin osopde, 
Oto k’mfön, nyeda ye Andinyaña, 
Me ‘ntanta ’yedu k’anyanya mi? 

Körös: 
Me ntanta eyedu ke anyanya mi? 
K’mbubreyo, k’utin osopde 
(osopde), 
Ke ndemerede k’iduñ nti owo, 
SB: Me ‘ntanta ’yedu 
k’anyanya mi? 
AT: Me ‘ntanta ’yedu, eyedu 
k’anyanya mi. 

2. K’odudu Öböñ nyeda k’utom y’akam 
Nyekpeme nyuñ mum me ukpöñ, 
Do edisem ‘ntanta eyedi okimmö 
Nyetoro Enye k’nsinsi. 

3. O! akwa idara k’ndikutde Enye, 
‘Nti owo ’yeduö k’ukot Esie 
Idara mi eyekpon ke obio oro, 
Sia ‘ntanta ’dude k’anyanya mi. 

Amen. 
      """
    },
    {
      "id": 864,
      "title": "OBIO EKE GOLD",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:s, .,d |m :f .m lm :r .d |r :d .L, ls, 
:s, .fe, |s,:d .t, ld :f .m lr :-l-} 

1. OBIO omodu ko ke mkpa ebede, 
Owo ibukke m’uböñ Esie; 
Utin, iduhe do, iköñ ikeñeke 
Ke ediye obio gold oro. 

Körös: 
S: Utin iduhe do 
ATB: Utin iduhe do, utin 
iduhe do 
S: Iköñ ikeñeke 
ATB: Iköñ ikeñeke, ’keñeke 
All: Me öbuötidem eyekut 
Andinyaña 
Ke ediye obio gold oro. 

2. Edidem, Andifak y’ Öböñ 
nyin odu do 
Mbon akpanikö eyekut; 
Do nti owo eyeyama k’nsinsi, 
Ke ediye obio gold oro. 

3. Kpukpru ukpöñ idade ika 
k’ukot cross, 
M’eröñ idade iduk k’otu, 
Mö eyedi uyama ke anyanya nyin 
Ke ediye obio gold oro. 

Amen. 
      """
    },
    {
      "id": 865,
      "title": "KE EKPRI INI NYIN IYENYÖÑ ",
      "audio": "",
      "body": """
      KEY F 4/4

{:s,.d |m:m lm:r .d |m .d :d.L, 
|s,} 

1. YAK ikwö, ikwö idaresit 
ke usuñ, 
Ke ekpri ini nyin iyenyöñ, 
Ekim ididuhe ke eti usiere, 
Ke ekpri ini nyin iyenyöñ. 

Körös: 
Ke ekpri ini, ke ekpri ini, 
Iyekpöñ uwem emi, 
Nyin iyesobo ke oyobio ebede, 
Ke ekpri ini nyin iyenyöñ. 

2. Iyenam s’ubök nyin okutde 
ndinam, 
Ke ekpri ini nyin iyenyöñ, 
Mfön Abasi eyenö nyin ukeme, 
Ke ekpri ini nyin iyenyöñ. 

3. Nyin iyediöñ usuñ inö 
m’akpa mba, 
Ke ekpri ini nyin iyenyöñ, 
Yak esit ima asuan edinem mbuk, 
Ke ekpri ini nyin iyenyöñ. 

4. Emem y’ uböhö edu ke 
edem oko 
Ke ekpri ini nyin iyenyöñ 
Möñ eyet iduhe k’ediye ’bio oro 
Ke ekpri ini nyin iyenyöñ. 

Amen. 

      """
    },
    {
      "id": 866,
      "title": "IKÖT EDIDEM HEAVEN ",
      "audio": "",
      "body": """
      KEY Ab 3/4

{:s, .,s, |d : -.r :d .,t, |r : -:t, .,d |r 
: -.s, :L, .,s, |m :-} 

1. IKÖT Edidem heven, 
K’isañade, yak ikwö 
Itoro Andifak nyin, 
Odot ukpono y’uböñ. 

Körös: 
SA: Nyin ika k’iduñ Öböñ, 
TB: Nyin ika k’iduñ, ke iduñ Öböñ 
ST: Ke usuñ me ete nyin; 
AB: K’mkpafakh’ usuñ, usuñ 
m’ete nyin; 
SA: Mö ke edara kemi, 
TB: Mö ke edara, k’edara kemi 
All: Nyin iyedara ye mö. 

2. Emenere enyin ko, 
Eyekut obio Zion, 
Do nyin iyekut Öböñ 
Ke nsi nsi iduñ. 

3. Kufeghe esöñ eda, 
Ke isöñ udeme nyin, 
Jesus, Eyen Abasi 
Ödöhö, eka iso. 

4. Öböñ, iyeka iso, 
Ikpöñ kpukpru ‘ñkpö isöñ, 
Di Ada Usuñ nö nyin, 
Iyesuk itiene Fi. 

Amen. 
      """
    },
    {
      "id": 867,
      "title": "MBUÖTIDEM ",
      "audio": "",
      "body": """
      KEY Bb 4/4
      
{:s, |m : m .r ld : t, .L , |L, :s, ls, : 
|s, .s, : -.f, lf, :-.m, |m, :-} 

1. NAM ñköri k’mbuötidem, 
Ñkeme ndikut, 
Idara nti owo ko, 
Ye uböñ mö k’enyöñ. 

Körös: 
Ediwak ufan ke ebebet kemi 
K’edara k’eti iduñ, 
Ediwak uyo ke ekot nyin idi, 
Ndibuana ye mö 
K’ ekot nyin idi, k’ ekot 
nyin idi, 
K’ ekot nyin k’eti iduñ, 
ppK’ ekot nyin idi, k’ ekot 
nyin idi, 
K’ ekot nyin k’eti iduñ. 

2. Mö ekedu k’mfukhö mi, 
Eketua mi k’isöñ, 
Ekeñwana kpa nte nyin, 
Ke idiök ye ndik. 

3. Didie k’mbufo esim do? 
Mö ebörö ete, 
K’Eyeneröñ akañwam mö 
Oto k’mkpa Esie. 

Amen. 
      """
    },
    {
      "id": 868,
      "title": "NTE IYESOBO KE EDEM AKPA? ",
      "audio": "",
      "body": """
      KEY C 4/4

{|m :-.f ls :m' |m' :-.r' lr' :d |m :-.f 
ls :m' |r' :d' lr' :-} 

1. M’IYESOBO k’edem akpa, 
Ke mbufut ebede? 
K’ebiet uñwana nsinsi, 
Mfukhö mididuhe? 

Körös: 
M’iyesobo k’enyöñ? 
M’iyesobo k’enyöñ? 
M’iyesobo k’edem akpa, 
Ke mbufut ebede? 

2. M’iyesobo k’eti esuk, 
Ke isañ nyin ebede? 
M’iyenim ukwak ubom nyin, 
K’mben ediye esuk? 

3. M’iyesobo ko ke enyöñ, 
K’ebiet ndiye tower 
Y’ibibene eke Jasper, 
Emi Öböñ öböpde? 

4. K’ebiet mö emi efakde, 
Ekwöde k’inem uyo, 
Se ebotde edian uyo, 
Ke edinem ikwö mö. 

5. M’iyesobo ye ndima, 
Emi ekekpöñde nyin? 
Nte iyekop uyo mö, 
Inyuñ ikut mö k’iso? 

6. M’iyesobo ye Christ Öböñ, 
K’ editañde Esiemö? 
M’iyebuana k’mfön Esie, 
Itie k’ebekpo Esie?
 
Amen. 

      """
    },
    {
      "id": 869,
      "title": "KE EDEM AKPA OKO ",
      "audio": "",
      "body": """
      KEY G 6/8

{s, |m :-:m ls :-:m |m :-:r ld :-:d 
|r :-:r lr :d :r |m :-:s ls :-} 

1. K’IYETD’ öföñ k’iyip Jesus, 
Iyesobo k’edem akpa; 
Inyuñ ineme y’ndima, 
Uböhö k’ndik ye ubiak, 
K’edem akpa oko. 

Körös: 
K’edem… akpa oko, 
k’edem… akpa oko 
K’edem… akpa oko, nyin 
idikpah’ aba; 
Nyin idikpah’ aba, nyin 
idikpah’ aba 
Nyin idikpah’ aba k’edem 
akpa oko. 

2. Mfegheke baba idiök, 
K’mbuötidem mokut iduñ; 
Mokop enjel edöhöde, 
“Eyekwökhöre möñ-eyet,” 
K’edem akpa oko. 

3. K’isobode ye me ufan, 
Akwa idara eyedu; 
Emi edemere ukpöñ, 
Ke m’itim gold eberede, 
K’edem akpa oko. 

4. Andifak kpeme ukot mi 
Man idara mi öyöhö; 
Nyuñ ntoro k’nsi nsi, 
Ke ekwökhöre möñ-eyet, 
K’edem akpa oko. 

Amen. 

      """
    },
    {
      "id": 870,
      "title": "EDINEM DIDIE NDIDU DO ",
      "audio": "",
      "body": """
      KEY C 4/4

{:s |d' :d' .,d' ld' :t .,L |s :-lm :m |f 
:f .,m lr :m .,f |s :-l-} 

Duet: Sop & Alto 

1. ITIÑ ibañ’ eti isöñ, 
Obio ayamade eti, 
Uböñ esie ayarade, 
Edinem didie ‘ndidu do. 

Körös: 
‘Ndidu do… ‘ndidu do, 
Edinem didie ‘ndidu do; 
‘Ndidu do… ‘ndidu do, 
Edinem didie ‘ndidu do. 

2. Itiñ ibaña efak gold, 
Ibibene eye eti; 
Inem esie ’di utibe, 
Edinem didie ‘ndidu do. 

3. Itiñ ibañ’ emem y’ima, 
Y’akwa öföñ-idem uböñ; 
M’ikwö nti owo k’enyöñ, 
Edinem didie ‘ndidu do. 

4. Itiñ ibaña uböhö 
K’idiök, mfukhö y’idomo; 
Ke añwa ye k’esit ufök, 
Edinem didie ‘ndidu do.
 
5. Öböñ k’idara y’mfukhö, 
Beñe esit nyin nö heven; 
K’ekpri ini nyin iyefiök, 
Ikop inem ndidu do. 

Amen. 

      """
    },
    {
      "id": 871,
      "title": "EDIYE IDUÑ ",
      "audio": "",
      "body": """
      KEY D 6/8 

{|m :m :m lf:m :f |s: -:-ld' :-:|
s :-:L l s :f :m l m :-:-lr :-:-} 

1. NSINSI iduñ odu, ayama eti, 
Idara omokpon, ekim iduhe do, 
Me enjel k’ekwo ikwö, 
ekanare ebekpo, 
Ns’ini k’ndikut fi ediye 
ebiet iduñ? 

Körös: 
SA: Ediye iduñ, uyama iduñ 
TB: Eti iduñ, eti iduñ 
All: Uyam’ iduñ Öböñ 
SA: Uyama iduñ 
TB: Eti uyama iduñ. 

2. Nti iköñ esiakha ke obio oro, 
Nditö ke ekwö itoro Jesus do, 
Se nte mö ekwöde, 
ekanare ebekpo, 
Ns’ini k’ndikut fi, ediye 
ebiet iduñ? 

3. Nyesöp ndibuana ye udim 
k’enyöñ, 
Christ Andinyaña mi, 
ndifeghek’ mkpa, 
Nyesöp ñkut Enye, ke 
uyama ebekpo, 
Do ami nyekut fi, ediye 
ebiet iduñ. 

Amen. 
      """
    },
    {
      "id": 872,
      "title": "KE MBUKPÖÑ EBEDE",
      "audio": "",
      "body": """
      KEY G 4/4

{:m, .,f, ls, :-l-.m :r .,d ld :t, l :
t, .,d|r :-l-.f :m.,r |m:-l-} 

1. NYIN isaña k’obot Zion, 
Ika k’ediye iduñ; 
Uyama ye uyai esie, 
Mbiet esie iduhe (iduhe), 
Iyebuana y’mboneköñ; 
Ke mfia öföñidem, 
Iyesobo ke usiere 
Ke mbukpöñ ebede (ebede) 

2. Me apostle ekewotde, 
Ye ndisana owo; 
Eyebuk mbuk erifak, 
Ke nsi nsi ini (k’nsinsi), 
Iyekop inyuñ ibuana; 
K’ikwö k’nsinsi iduñ; 
K’isobode ke usiere, 
Ke mbukpöñ ebede (ebede) 

3. Imeti ediwak uyo, 
Ye m’ufan nyin imade; 
Iyekut mö k’inua otop 
Obio eböpde k’enyöñ 
(ke enyöñ) 
K’Öböñ ödöhöde “edi,” 
Iyebö utip kpukpru, 
K’isobode ke usiere, 
Ke mbukpöñ ebede (ebede). 

Amen.
      """
    },
    {
      "id": 873,
      "title": "IYESOBO KIET EKEN DO ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:d .,r |m .,m :m .,m lm :m .,f |m .,r 
:d .,r lm :m .,f|s .,L :s.,m ld :m |r 
:-:-} 

1. K’ UTIN ösukhörede, 
K’utom nyin okurede, 
Ke esit mfukhö ebede; 
Öböñ enyöñ ye isöñ 
Eyenam idemere, 
Iyesobo ke obot Zion. 

Körös: 
Nyin iyesobo do 
(Ih) nyin iyesobo do 
Ke mbiet Andinyaña 
K’uyama obio oro 
Nyin iyesobo do 
(Ih) nyin iyesobo do 
Ibuana (iyebuana) k’uböñ 
Esie. 

2. K’ata ökpösöñ ukut, 
K’oyobio ösöñd’ eti, 
Ke ekim ofukde k’usuñ nyin 
Öböñ eyeda usuñ 
Tutu uyama usen, 
K’ebiet oyobio mididuhe. 

3. Okposuk nyin ituade 
Inyuñ ikopde ndik, 
M’usen nyin eyöhö y’unana; 
Öböñ ima eyedi 
Ndida iköt Esie 
Ndien nyin idikwe ukut do. 

Amen. 

      """
    },
    {
      "id": 874,
      "title": "ETI ISÖÑ",
      "audio": "",
      "body": """
     KEY G 3/4

{:s, |m .,m :m :r |d .,d :d :s, |f .,f 
:f :m |r .,r :r } 

1. AMI moduk k’eti isöñ 
M’inyen’ esie edi okim 
Uñwan’ esie ayam’ eti 
Koro ekim ebed’ efep. 

Körös: 
Eti isöñ, eti isöñ 
Sia ndude k’akwa obot 
Ami nse mbe k’inyañ 
M’ufök enimde enö mi 
Ñkut uböñ obio oro 
Ebiet iduñ mi k’nsinsi 

2. Andinyaña odu y’ami 
Idodu k’eti ebuana 
Omum mi ke ubök Esie 
Oduk k’mben obio heven. 

3. Ata edinem utebe 
Otode ke eto uwem, 
Iköñ esie ikeñeke 
K’ebiet möñ-uwem odude.
 
4. Ikwö heven omosim mi, 
Otode ke inem ofim, 
Me enjel ke mfia öföñ 
Ebuana ke ikwö ufak. 

Amen.  
      """
    },
    {
      "id": 875,
      "title": "KE NTUKHUBE EBEDE ",
      "audio": "",
      "body": """
      KEY D 4/4

{:m.,f |s .,s :s .,s ls .,d' :t .,L |s .,s 
:s .,s ls } 

1. KE ntukhube usenubök 
Asuanade ebe 
Utin ayama k’idara 
Ke inyañ ye ke obot 
Iyeti uñwöñ’ Ete nyin 
Ke nyin isede enyöñ 
Iyetim ifiök kiet eken 
K’ntukhube ebede. 

Körös: 
Iyefiök… se idide 
(nyin idide) 
SA: Nyin isañake ikpöñ 
TB: Nyin isañake, isañake 
ikpöñ 
Ke ata eti usiere 
K’usen idara oro 
Iyetim ifiök kiet eken 
K’ntukhube ebede 

2. Nyin isaña k’uwem emi 
Ye mfukhö k’esit nyin 
K’inamde ökpösöñ utom 
Inyuñ ikutde ukut 
Andinyaña ödöh’ ete 
“Di, mö emi ediöñde,” 
K’isobode ke usiere, 
K’ntukhube ebede. 

3. Nyin iyedi ke idara 
Iyedu ke ebekpo 
Iyekut me ndima nyin 
Mö eyefiök nyin ñko 
Iyetoro Andifak nyin 
K’inem ikwö ufak do, 
Mfukhö y’ekim iduhe 
K’ ntukhube ebede. 

Amen. 

      """
    },
    {
      "id": 876,
      "title": "EYEN EDIDEM ",
      "audio": "",
      "body": """
      KEY F 3/4

{:m |s :-.s :s|m :-:m |m :-.m :m 
|d :-: } 

1. ETE mi edi owo inyene, 
Inyene isöñ edu k’ubök Esie; 
Ata uwak inyene silver ye gold, 
Emeyöhö k’ubet unim 
inyen’ Esie. 

Körös: 
Ndi eyen Öböñ, 
Eyen Edidem; 
Ye Christ Andifak mi, 
Ndi eyen Öböñ 


2. Eyen Abasi, Andinyañ’ owo, 
Akasaña k’isöñ nte ubuene; 
Edi kemi Enye akara k’enyöñ, 
Eyenö mi iduñ ke heven 
kini ’so. 

3. Ñkedi esen owo ke isöñ, 
Ñkamana nduk ke ubon idiök 
Ekeda mi k’eyen, ewet 
enyiñ mi do, 
Ndibuana k’uböñ ye 
k’uwak inyene. 

4. Ebiet nduñde mi, ñkereke, 
Ebeñe ebiet iduñ enö mi ko; 
Ndi esen k’isöñ, edi 
nyekwö, 
Etoro Abasi, ndi eyen Öböñ. 

Amen. 
      """
    },
    {
      "id": 877,
      "title": "NYIN IDIDÖHÖKE “SAÑA SUÑ” ",
      "audio": "",
      "body": """
      KEY Bb 6/8

{:s, |s, :-:m, ls, :-:d lm :-:d ld :t, 
:L,|s,:-:m, ls, :-:d |r :-:-l-:-} 

1. IDU mi ye m’ufan k’idara, 
K’ata ekpri ini, 
Edi ini mfukhö odu, 
Ikömde “saña suñ.” 

Körös: 
“Saña suñ,” iduhe k’enyöñ 
“Saña suñ,” iduhe 
(k’enyöñ) 
K’obio idara ye ikwö, 
“Saña suñ” iduhe. 

2. Idara edikpon didie do 
K’isobode ‘ndima, 
K’uwem okurede iyedu 
Ye mö k’nsi nsi. 

3. Eköm ndikpöñ kiet iduhe, 
K’ediy’ obio oro, 
Edi ikwö emem y’idara, 
Ke nyin idikwö do. 

Amen. 

      """
    },
    {
      "id": 878,
      "title": "ETI EBIET IDUÑ",
      "audio": "",
      "body": """
      KEY G 4 
44 9.9.9.9 – 6.9.6.9 

{:d .,r |m :r .d lr :d .L, |s, :-l :
d .,r |m :m .,m ls :s .,m |r :-:-} 

1. ETI ebiet iduñ omodu, 
Ikut enye ko k’mbuötidem, 
Kor’ Ete nyin k’ebebet 
k’usuñ, 
Ndinö nyin ebiet iduñ do. 

Körös: :\$: 
SAB: K’ediy’ ebiet iduñ 
T: K’ediy’ ebiet iduñ, 
k’ediy’ ebiet iduñ 
All: Iyesobo ke esuk oro 
(ko k’enyöñ) 

SAB: K’ediy’ ebiet iduñ 
T: K’ediy’ ebiet iduñ, 
k’ediy’ ebiet iduñ 

All: Iyesobo ke esuk oro. 
                    DS. pp 

2. Iyekwö k’ediy’ esuk oro 
Edinem ikwö mö ediöñde 
Mfukhö ididuhe aba 
K’isimde ke iduñ ifure. 

3 IyekömEte nyin ko k’enyöñ 
Ke uwak mfön Esie ye nyin, 
Iyeköm ñko k’utib’ ima 
Ye ke kpukpru edidiöñ Esie. 

Amen. 
      """
    },
    {
      "id": 879,
      "title": "IYEDA KE ISO EDIDEM ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:d .,r |m .,m :r .,m ld :d .,d |r .,d 
:t, .,L, ls, :s, .,d |r :-ls, :d .,r 
lm :-ld } 

1 IYEDA k’iso Öböñ,
Iyekwö ye me enjel 
Kini ’so..., kini ’so... 
Isaña k’uyam’ esuk, 
Iyekwö k’nsi nsi 
Kini ’so..., kini ’so.... 

Körös: 
Iyeda... k’iso Öböñ..., 
Iyekwö ye me enjel 
Uböñ enyene Öböñ 
Hallelujah! Hallelujah 
Iyeda (iyeda) k’iso Öböñ. 

2. Mbio heven efiori 
Iyeda k’iso Öböñ 
Kini ’so..., kini ’so... 
Mfukhö nyin eyebe, 
Iyetor’ enyiñ Esie, 
Kini ’so..., kini ’so.. 

3. O, ukpöñ mi demere, 
Eyeda k’iso Öböñ, 
Kini ’so..., kini ’so..., 
Da itoro sök Enye, 
Eyebiet Enye k’uyai 
Kini ’so..., kini ’so... 

Amen. 

      """
    },
    {
      "id": 880,
      "title": "NYEFIÖK ENYE ",
      "audio": "",
      "body": """
      KEY Ab 4/4 

{:d .r |m :m .m lm .m :r .d |m .d :d 
.L, ls, :s, .s, |d .d:d .dld .m :r .d|r 
:-l-} 

1. KE utom okurede, ke 
uwem mi ebede, 
K’ndikutde obufa usenubök; 
Nyefiök Andifak mi 
k’nsimde edem oro, 
K’uyama iso k’Enye edibö mi. 

Körös: 
‘Nyefiök E…nye, ‘nyefiök Enye, 
Nyeda y’Enye ’kafakde mi, 
‘Nyefiök E…nye, ‘nyefiök Enye, 
K’ñkutde unan k’ubök Esie. 

2. Ke ini ukorowo ami nyekut Enye, 
Nte iso Esie ediyamade, 
Nyetoro Enye k’ima, mböm 
y’mfön Esie, 
Emi otimd’ itie önö mi k’enyöñ. 


3. O ndima mi ke uböñ ke 
ekot mi ndi, 
Meti ke ekpöñde mi k’mben inyañ, 
Mö eyekwö ebö mi k’obufa 
inem iduñ, 
Ami moyom ‘ndikut Andinyaña mi. 


4. Nyeduk k’inua otop ye afia 
öföñidem, 
K’ebiet möñ-eyet mididuhe aba, 
Nyebuana ye kpukpru mö 
k’ikwö idara do, 
Ami moyom ‘ndikut Andinyaña mi. 

Amen. 
      """
    },
    {
      "id": 881,
      "title": "IDUT KE ANYAN EBIET ",
      "audio": "",
      "body": """
      KEY Eb 6/4

{:m |m :-:m ls :-:s lf:s :L lm ::
m |r :-:L, ld :-:t, |d:-:-l-:-} 

1. IDUT odu k’anyan ebiet, 
Ukut iduhe do, 
Emi me enjel ekwöde 
K’ebekpo Abasi. 

Körös: 
O eyenem k’isobode 
K’anyan idut oro, 
K’ebiet utin minimeke 
Ayama k’nsinsi, 
Ayama k’nsinsi, 

2. Idi mbon isañ k’isöñ, 
Idu mi k’ekpr’ ini; 
Imöfiök ke edem oro 
Eti iduñ odu. 

3. Iduñ ima omodu do 
Önö m’akpa mba, 
Kpukpru eyekut k’nsinsi, 
Iduñ nti owo. 

Amen. 
      """
    },
    {
      "id": 882,
      "title": "KE MBEN AKPA JORDAN ",
      "audio": "",
      "body": """
     KEY G 4/4
     
{:d .m |s :-.L ls :m |d :r ld :d |r :r 
lr :s .f |m :-l-} 

1. AMI ndu k’mben Jordan, 
Monyuñ ntim nse 
Canaan obio idaresit, 
Do k’utip mi odu. 

Körös: 
Iyekut emem k’obio idara 
(kini ’so) 
Ko ke ata ediye (ediye) 
isöñ; 
K’ikwö Moses ye Eyeneröñ 
(kini ’so), 
Inyuñ iduñ ye Jesus do. 

2. K’ofri una-isöñ oro, 
Uyama kiet odu; 
Eyen Abasi akara, 
Ebin ekim efep. 

3. Ini ewe k’ndisim do, 
Ndara k’nsinsi? 
Ns’ini k’ndikut Ete, 
Nduök odudu do? 

4. Ukpöñ mi ke idaresit 
Iyomk’ ererimbot; 
K’mbufut Jordan ösöñde, 
Mfegheke ndik. 

Amen.  
      """
    },
    {
      "id": 883,
      "title": "IDIKÖMKE TIE SUÑ",
      "audio": "",
      "body": """
      KEY G 6/8

{:s, |s, :-:d lm :-:s ls :-:m ld :-:r 
|m :m :-lf :-:m |r :-:-l-:-} 

1. MÖ edude k’eti iduñ, 
Idikömke tie suñ; 
Do ke mö eköm kiet eken, 
Idöhöke tie suñ. 

Körös: 
Idikömke tie suñ (tie suñ) 
Idikömke tie suñ (tie suñ) 
K’eti iduñ k’edem enyöñ, 
Idikömke tie suñ. 

2. K’ ikpöñd’ obio ukut emi, 
Idikömke tie suñ; 
Ikpöñ mi k’eyet, edi do, 
Idöhöke tie suñ. 

3. K’idude ye mö efakde, 
Idikömke tie suñ; 
Iyekwö do k’nsi nsi, 
Idöhöke tie suñ. 

4. K’eti iduñ emem k’enyöñ, 
Idikömke tie suñ; 
’Yeduñ ye Christ k’nsi nsi, 
Idöhöke tie suñ. 

Amen. 

      """
    },
    {
      "id": 884,
      "title": "KINI EDIKOTDE ENYIÑ ",
      "audio": "",
      "body": """
    KEY Ab 4/4
    
{:d .,r |m .,m :m .,m lm .,r :d .,d 
|r .,d :d .,L, ls, } 

1. KINI ukorowo Öböñ 
edisiorode uyo, 
Nsinsi usiere edisiakhade 
Ke iköt Jesus Öböñ nyin 
edisobode y’Enye. 
Edinyuñ ekotde enyiñ 
‘nyedu do. 

Körös: 
Kini edikotde enyiñ 
(‘nyedu do) 
Kini edikotde enyiñ 
(‘nyedu do) 
Kini edikotde enyiñ, 
Kini edikotde enyiñ ‘nyedu do. 

2. K’ usiere oro mekpa mkpa 
ke Christ edisetde 
Ndibuana k’ uböñ eriset Esie, 
Ke ndimek ediduñde ke 
ufök mö ko k’enyöñ 
Edinyuñ ekotde enyiñ 
‘nyedu do. 

3. Yak mi ’nam utom Öböñ 
k’ofri uwem mi ke isöñ, 
Yak mi mbuk utibe ima Esie 
Ndien kini utom ye uwem 
mi edikurede 
Edinyuñ ekotde enyiñ 
‘nyedu do. 

Amen.   
      """
    },
    {
      "id": 885,
      "title": "UYAMA NSI NSI ",
      "audio": "",
      "body": """
     KEY Bb 4/4

{: m, .f , |s, :s, ls, : d .t , |L, :L, lL, :d 
|s, :d lt, :d |r :-l – } 

1. OBIO uñwana omodu, 
Ayamade eti; 
Okoneyo iduhe do, 
Christ edi uñwana. 
Körös: 

Ke itimde… ibiom cross 
Iyeya… ra ’nyanya, 
(Iyeyara anyanya), 
K’iduñde ye ‘nti owo 
K’uyama nsi nsi. 

2. Iduñ ifure omodu, 
K’edem inyañ oko; 
Emi mbufut etrede, 
Inim inyene do. 

3. Iduñ odu, iduñ uböñ 
Ediy’ obio heven; 
Mendima ek’ edude mi, 
Eyedara nyin do. 

4. Ödöñ nyin ndikpöñ uwem 
Ösöpde ndibe; 
Nyuñ mbuana y’ mbon 
enyöñ 
K’idara ‘nsi nsi.

 Amen. 
 
      """
    },
    {
      "id": 886,
      "title": "JESUS EYEBÖ MI DO ",
      "audio": "",
      "body": """
     KEY F 6/8

{|s:L :m ls :f :t, |d :-:-|s, :-:-|d 
:m :r ld :L :fe |s :-:-l-:-: } 

Sop Solo 

1. K’EDEM akpa, mö ekot mi, 
Me ufan enemde mi; 
Nyesobo ye mö k’uböñ, 
Mkpa ididuhe do. 

Körös: 
Ko ke edem akpa Eden, 
K’ediye ebiet iduñ; 
Me enjel ’yeda mi eka, 
Jesus eyebö mi do. 

2. K’edem akpa, mö ekot mi, 
Möfiök edi uyo mö, 
Edi kini mbubreyo, 
Etiñ ke suñ suñ uyo.
 
3. K’edem akpa, mö ekot mi, 
Do mfukhö iduhe; 
Mö esaña do ye Jesus, 
Esine mfia öföñ. 

4. K’edem akpa, mö ekot mi 
Ke ebebet mi k’ima, 
K’edem akpa, ami k’ndi 
Spirit mi omonyime. 

Amen.  
      """
    },
    {
      "id": 887,
      "title": "IDUÑ IFURE OMODU",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:d .m |s :-.fe lL .s :fe .s |m :-l-:s 
|L :d' lt:L |s :-l-} 

1. IDUÑ ifure ye emem 
Omodu ko k’ enyöñ; 
Ke ibede k’ukut okoneyo, 
Eyet eyekure. 

Körös: 
Bet mi do... O, bet mi do... 
Ke eti uyama usiere oro, 
Bet mi do... O, bet mi do... 
Ke iduñ edem enyöñ ko, 
bet mi do. 

2. Obio uñwana omodu, 
Idar’ esie okpon; 
Mö edukde eyekut Edidem, 
Enyuñ eduñ y’ Enye. 

3. Anyanya omodu k’enyöñ, 
Öböñ edinöde; 
Mö emi ebetd’ eridi Esie, 
’Yeduñ k’uböñ Esie. 

4. Nam akpanikö sim mkpa, 
Saña k’usuñ heven 
Man nyin ikpoduk ke usuñ 
uwem, 
K’nsi nsi usen. 

Amen. 
      """
    },
    {
      "id": 888,
      "title": "KE EYET EBEDE IYEBOHO",
      "audio": "",
      "body": """
      KEY Bb 4/4

{|s, .,s, :s, .,s, ld :d .,L, |s, :-lm, :|
s, .,s, :s, .,s, |d :t, .,d |r :-l-: } 

1. ÑWAM nyin ndisim obio iduñ, 
Isaña ibe ke inyañ; 
Kere me ufan ebetde nyin, 
Ke idisimde do k’ifure. 

Körös 
Ke eyet ebede iyedara; 
K’ utom ebed’ iyeduk 
k’ifure (ke ifure), 
Kop mö efakde k’ekwö 
ikwö idara 
K’eboho ke iduñ nti owo 
(nti owo). 

2. Ñwam nyin ndisim obio iduñ, 
Yak ika ikufeghe ‘ndik, 
Ke ikperede esuk emem, 
Iyetim ikut uyam’ esie. 

3. Obio iduñ emeye eti, 
Omonyuñ enyene inem; 
Iyekwö ke idara inö 
Enye emi akafakde nyin. 

4. Inem ofim do k’obio iduñ, 
Usier’ esie enem eti; 
Iyefiak ikut me ufan nyin, 
K’ebiet ukut y’mkpa miduhe. 

Amen. 
      """
    },
    {
      "id": 889,
      "title": "EWAK NTE NTAN MBEN INYAÑ ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{:m, .,f, |s, :s, .,L, ls, :d .,r |m :-ld 
:r .,m |f:m .,r ld :t,.,d |r :-l-} 

1. K’IDIBONODE ko k’edem 
Jordan, 
Iyekut mö emi efakde; 
Ewakde ‘nte ntan mben inyañ 
Eyedi utibe ndise. 

Körös: 
Ewakde ‘nte ntan k’mben inyañ, 
Nte ntan ke mben inyañ 
(mben inyañ) 
O! ediye didie ndikut mö efakde, 
Ewakde nte ntan k’mben inyañ. 

2. Ke ikutde mö ekenyañade, 
Ekeböhöde ukut isöñ; 
Ebohode k’idara ke heven, 
Eyedi utibe ndise. 

3. K’idade k’ediye mben 
inyañ, 
Ke idak mfut eto uwem; 
Isede obio uñwöñö oro, 
Eyedi utibe ndise. 

4. K’akpatre k’idikutde 
Andifak, 
Ye uyama uböñ Esiemö; 
Akarade k’ebekpo ‘nte Öböñ, 
Eyedi utibe ndise. 

Amen. 
      """
    },
    {
      "id": 890,
      "title": "ME IYESOBO KE MBEN INYAÑ? ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{|m :m lm .,r :m .,f |s :-lm :-|f :f 
lf .,s :f .,m |r :-ls :-} 

1. M’IYESOBO k’mben inyañ 
K’ebiet enjel edude 
K'mbufut esie ewetde 
Ebe k’ebekpo Öböñ? 

Körös: 
Iyesobo k’mben inyañ, 
Ke ediye, ke ediye inyañ; 
Iyesobo ye nti owo, 
Do ke ebekpo Öböñ. 

2. Ke isimde mben inyañ, 
Emi eyede eti, 
Do iyesuk ituak ibuot 
K’ofri ini idara. 

3. Ke isimde mben inyañ, 
Iyenim mbiomo nyin; 
Mfön eyenö ukpöñ nyin, 
Anyanya y’öföñ uböñ. 

4. Ke uyama inyañ oro 
Owutde uyai Öböñ, 
Nti owo midikpaha, 
K’ekwö ikwö uböhö. 

5. ’Yesöp isim k’inyañ oro, 
Isañ nyin ’yesöp etre; 
K’esisit ini, esit nyin 
Eyekwö ikwö emem. 

Amen.
      """
    },
    {
      "id": 891,
      "title": "ME ANIE EDI EMI? ",
      "audio": "",
      "body": """
      KEY E 3/4

{:s.,f|m :-.r :m .,f |L :s :m .,r |d :
.t, .d :m .,r |r :- } 

1. “M’ANIE ekwö ikwö emi 
Ekopde ko ke enyöñ?” 
Kop, mö ebuk uwak mfön 
Y’akwa ima Jehovah. 

Körös: 12/8 
SA: “Mö emi… 
TB: Mö emi eyetd’ öföñ 
SA: Eyetd’ öföñ… 
TB: Mö emi eyetd’ öföñ 
SA: Mö esana… 
TB: Mö esana, mö esana 
SA: K’iyip Eyeneröñ… 
TB: K’iyip Eyeneröñ 
SA: Mö emi… 
TB: Mö emi eyetd’ öföñ 
SA: Eyetd’ öföñ… 
TB: Mö eyetd’ öföñ 
SA: Mö esana… 
TB: Mö esana, mö esana 
SB: K’iyip Eyeneröñ… 
AT: K’iyip Eyen, ke iyip 
Eyeneröñ. 

2. 
“M’anie eda ekanare 
Akwa ebekpo ekuk?” 
Mö ewörö k’akwa ukut 
Eduk k’ nduök odudu. 

3. Se afia öföñ idem mö, 
Baba ntöi iduhe; 
Se edisem anyanya mö, 
Ekedepde ke iyip. 

4. Eyeneröñ ’da mö usuñ, 
Mö enyuñ ekpon’ Enye; 
Öbök mö ke udia heven, 
Ökwökhöre möñ-eyet. 

5. “Erinyaña enyene Christ,” 
Edi inem ikwö mö; 
Ndutukhö mö ’kabare 
Edi ikwö k’ebekpo. 

Amen. 
      """
    },
    {
      "id": 892,
      "title": "EKIM IDUHE DO ",
      "audio": "",
      "body": """
      KEY Eb 3/4

{:d .r |m :-.m :f .r |s :-:d .r |m .d 
:-:r |d:-} 

Solo (optional) 

1. K’IDUÑ nsinsi usen, 
Nkañ inañ ukem; 
Enye idibeh’ ifep, 
Ekim iduhe do. 

Körös: 
mf ’Yekwökhöre möñ-eyet 
    Mkpa y’ubiak iduhe; 
f   Ibatke ini k’isua (k’isua), 
mf  Ekim iduhe do 

2. M’itim esie edi pearl,
Ñkañ inañ ukem; 
Me efak enam ke gold, 
Ekim iduhe do. 

3. M’itim idiberike, 
Ñkañ inañ ukem; 
Idim uwem odu do, 
Ekim iduhe do. 

4. Mö iyomk’ uñwan’ utin, 
Ñkañ inañ ukem; 
Öböñ edi uñwana, 
Ekim iduhe do. 

Amen. 
      """
    },
    {
      "id": 893,
      "title": "KE ESE EDEM EMI ",
      "audio": "",
      "body": """
      KEY G 9/8

{|m :re :m |d:-:-ld :-:-lm :re:m 
|f :-:-l-: } 

Duet: Sop & Tenor 

1. KE edem inyañ mokut m’owo 
Eyede eti ke eyom mi; 
Eböhö ukut y’afaneköñ, 
K’ekpeme k’ime ebet mi do. 

Körös: 
Mö ke esese edem emi, 
Ndima k’ebet, ke eyom mi; 
Mö emeye, ebiet usiere, 
Ndima k’uböñ ke eyom mi. 

2. Ete ye eka k’ifure do, 
K’ebet awat ubom ‘ndibekhe; 
Eda mendima ebe akpa, 
Eduk ke esuk k’edem oro. 

3. Nditö-ete, esimde do, 
Ebet mö emi edidide; 
Edu ye enjel, efia ‘nte snow, 
K’ese mendima ebetde mi. 

4. Edima Eyen, uñwan’ ufök, 
Enye k’okot owo ete di; 
Enye onyuñ afia nte snow, 
K’ebet fi eka, k’idorenyin. 

5. Christ Andinyaña, uyam’ usen, 
K’oyom mö emi esopd’ usuñ; 
Kop eti ‘mbuk, nso k’ediyo? 
Jesus ete, di anamidiök. 

Amen. 
      """
    },
    {
      "id": 894,
      "title": "IKWÖ MMÖ EMI EFAKDE ",
      "audio": "",
      "body": """
      
KEY D 3/4

{:s .,fe |s :-.f : m.s. d' |d' :t :f .,m 
 |f:-.r: L.s. f|m:-} 


1. OBIO uböñ y’uwem odu 
K’uwem emi ebede, 
Emi ikwö do edide, 
Mbuk erinyaña nyin. 

Körös: 
SA: Akwa i…ma ye ukpono, 
TB: O ima … ye ukpono, 

SA: Uböñ o…wo mifiökke, 
TB: Uböñ owo mifiökke, 

SA: Idara erinyaña nyin, 
TB: O idara erinyaña, 

All: Ed’ ikwö mö efakde 
(mö efakde). 

2. M’anie edikwö k’idara 
Ke nsi nsi ini, 
Ke mfukhö ye eseme 
Ye möñ-eyet miduhe? 

3. M’anie ’dikwö erinyaña, 
Ebö nsinsi uwem? 
Mö ebede k’akwa ukut 
Enyuñ ekand’ idiökñkpö. 

4. Edi menditiene Jesus, 
Ese ‘ñkpö isöñ k’ndek, 
Enyuñ ebö erinyaña, 
Ke mkpa Esie ke cross. 

Amen. 
      """
    },
    {
      "id": 895,
      "title": "MmÖ EKWÖ OBUFA IKWÖ ",
      "audio": "",
      "body": """
      KEY C 4/4 

{|s .,s :s .,L |s .,f :m .,f |s : d' ls :|
L.,L:L.,tlr'.,d':t .,L|s:mlr:-} 

1. KO ke heven mö efakde ke ekwö, 
Enim anyanya mö k’iso Edidem; 
Kpukpru ukut isöñ iduhe aba, 
K’nti owo ebuanade ke ikwö. 

Körös: 
Kwö… Eyeneröñ 
(kwö Eyeneröñ) 
(Ekewot) de… ke Calvary 
(Calvary); 
Kwö … Eyeneröñ 
(kwö Eyeneröñ), 
(Emi o-) dude k’nsinsi. 

2. O utib’ ikwö ima ömöyöhö, 
O ufuöñkpö emi enemde eti; 
Otode Andinyaña ekesetde, 
Nte m’oku iyekara k’nsinsi. 

3. Mö eyetde öföñ ediduk k’otu, 
Mö eböde mfön ekeme ‘ndikwö; 
Yet nyin, Eti Andinyaña 
sio k’idiök, 
Yak ikwö uböhö ötöñö kemi. Amen.
      """
    },
    {
      "id": 896,
      "title": "EYET KE IYIP EYENERÖÑ ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{|m :m .,r ld :r |m .,r :m .,f ls :-|L 
:f .,L ls :m |f .,m :f .,s lm :-} 

1. M’ANIE edu ke edem oyobio, 
Ke ata mben ndobo udi; 
Ekot Jesus ndifak 
Eyet k’iyip ’yeneröñ? 

Körös: 
Emebe eduk k’obufa 
Jerusalem, 
Eyet k’iyip (k’ iyip) 
Eyeneröñ 
Emebe eduk k’obufa 
Jerusalem 
Eyet k’iyip ’yeneröñ. 

2. Edi mö emi ke ini uyen, 
Ekutde Jesus ke eti ifiök; 
Ekutde mfön Esie, 
Eyet k’iyip ’yeneröñ. 

3. Mö emi ke ini ukut y’ubiak 
Ekutde emem ke Jesus Öböñ, 
Oto k’edisan’ esit 
Eyet k’iyip ’yeneröñ. 

4. Mö emi ke ini akwa eñwan 
Esöñö k’uföt idomo ikañ; 
Christ ödöhö “tiene Mi” 
Eyet k’iyip ’yeneröñ. 

5. Ke akpatre ’mosim eti iduñ, 
Idiök y’ubiak y’mkpa iduh’ aba; 
Idara k’ nsi nsi, 
Eyet k’iyip ’yeneröñ. 

Amen. 
      """
    },
    {
      "id": 897,
      "title": "TÖSN DUOP KE ITIE TÖSN DUOP ",
      "audio": "",
      "body": """
      KEY C 4/4

{:s|d' :d' lm' :d'|s :-.f lm :s |L :t 
ld' :r'|d' :-lt } 

1. TÖSN duop ke tösn duop, 
Ke edisem öföñ; 
Mö edi udim efakde, 
Edu ke uñwana; 
Eñwan idiökñkpö y’mkpa, 
Kpukpru mö ekure! 
Eberede me itim gold, 
Man mendikan eduk. 

Körös: 
Hallelujah! Hallelujah 
Enyene Eyeneröñ; 
Hallelujah! Hallelujah 
Enyen’ Eyeneröñ. 

2. O! Ikwö “Hallelujah” 
Öyöh’ enyöñ y’isöñ, 
Ikwö ediwak harp ewut 
K’erikan ekpere! 
O! Usen ekebotde 
Kpukpru oruk y’usem! 
O idara okpon koro 
Emen ukut efep. 
576 Ñwed Ikwö Faith Tabernacle 

3. O idara eyekpon 
K’mben akpa Canaan! 
Ebuana edinem didie 
K’isobode m’ufan? 
Me mö eketuañade, 
Eyenyuñ edara, 
Eyen akpa ye ebekpa 
Ididuhe aba. 

Amen. 
      """
    },
    {
      "id": 898,
      "title": "MFÖN EMI ANYAÑADE ",
      "audio": "",
      "body": """
      KEY G 4/4

{|m :r.m ls, :-.s,|L, :f lm :-.m |r 
:L,lt, .t, :d .d|r :-lre :-} 

Duet: Sop & Alto 

1. O! K’ETI usiere oro, 
Uböñ ediyararede, 
Andifiök usuñ isañ mi, 
’Yebered’ usuñ gold ’nö mi; 
Uwem isöñ eyekure, 
Ikwö isañ mi eyetre, 
Mfön emi anyañade 
’Yedi ’kwö mi k’edem oko. 

Körös: 
Nyefiök ‘nte efiökde mi, 
Mfön ’ma k’iso ebekpo; 
Nyekut iso Öböñ mi, 
Ñkwö mfön anyañade. 

2. Usuñ uwem afakh’ eti, 
Adad’ osim k’eti iduñ, 
Afaneköñ iduhe do, 
Me öbuötidem eduñ do, 
Esit mi kwö ke kpukpr’ 
usuñ, 
Mfön emi anyañade, 
Tutu ke usiere oro 
Ndibede nduk k’uböñ. 

3. Ntimke ‘mfiök utit isañ 
Edi möfiök Ada-usuñ; 
Ntien’ Enye, eti Ufan 
Ima Esie ’di utibe; 
Ke ndidukde ye Enye, 
Ntid’ usuñ ‘ñkasañade, 
Nyebö utip erikan 
Otode Christ y’mfön Esie. 

Amen. 

      """
    },
    {
      "id": 899,
      "title": "KE ENYÖÑÖ IDUÑ ",
      "audio": "",
      "body": """
      KEY A 6/8
      
{:s, .s, |s, :L, :t, ld :t, :d |L, :-:r 
lr :-:-} 

Sop. solo 

1. S: MÖ k’eto ke me obio 
enyöñ k’iduñ, 
All: Kiet ye kiet, kiet ye kiet, 
S: Nt’ ikpat mö esimde 
k’mben inyañ, 
All: Ih, kiet ye kiet, 

SA: 
Mö kpukpru eyara anyanya gold, 
Eyak ndedekhe öföñ mö enim, 
Eduök odudu ye mfia öföñ mö, 
K’ebiet Öböñ odude y’iköt Esie. 


Körös: 
K’enyöñö ke iduñ, 
Ebe ke iñyañ kiet ye kiet; 
K’enyöñö ke iduñ 
Ih, kiet ye kiet. 


2. S: Nyin ñko iyesim ke 
mben inyañ, 
All: Kiet ye kiet, kiet ye kiet, 
S: Ikpere möñ oro k’usen 
ebede, 
All: Ih, kiet ye kiet, 

SA: 
Ndusuk ke ebe ke ifure, 
Nte mö esañade eka heven, 
Ndusuk ke mbufut ösöñde, 
Mö esuk esim iduñ nti owo. 


3. S: Jesus Andifak enyin nyin 
ese Fi, 
All: Kiet ye kiet, kiet ye kiet, 
S: Nyin imenere uyo k’ nyekidem, 
All: Ih, kiet ye kiet, 

SA:
Mbufut inyañ omokoñ eti, 
Edi imöfiök ebiet nyin idade, 
Afo ekebe k’uföt ata ekim, 
Da nyin usuñ, nö esañ ye 
uñwana. 

Amen. 
      """
    },
    {
      "id": 900,
      "title": "DA MI SUÑ SUÑ SIM IDUÑ ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{|m :-.f lfe :s |L :-ls :m |d' :-.d' |t 
:L |s :-l-: } 

Duet: Sop & Alto 

1. DA mi sim iduñ, Ete, da 
mi sim iduñ, 
Ke ekim uwem, Ete, ye 
kini ’domo 
Kuyak mi ndiyo, kpeme 
esit mi, 
Mbak ndiduö ke usuñ, da 
mi sim iduñ. 


Körös: 
Da mi sim iduñ, Ete! 
Da mi suñ suñ (O, Ete) 
Mbak ndiduö ke usuñ 
Da mi sim iduñ (iduñ) 

repeat with pp after last verse 


2. Da mi sim iduñ, Ete, da mi 
sim iduñ, 
Afo ada usuñ, nsañake 
ikpöñ, 
Ami nyetiene Fi ke idara, 
K’ubök ima Fo, O Ete, da 
mi sim iduñ. 

3. Da mi sim iduñ, Ete, da mi 
sim iduñ, 
K’uwem okurede, utom 
onyuñ etre, 
Nyeduök odudu ke nsi nsi, 
O, edima Ete k’enyöñ, da 
mi sim iduñ. 

Amen. 
      """
    },
    {
      "id": 901,
      "title": "EBIET IDUÑ KE EDEM ENYÖÑ",
      "audio": "",
      "body": """
      
KEY C 4/4

{.m :f .fe |s :m l -.d' ,d' :d' ,t .L |s 
:m : -. } 

1. AMI moyukhö mi ke ekpri ufök kiet, 
Ye ekpri silver ye ata ekpri gold 
Edi k’obio mö efakde eyamade, 
Moyom ufök eke silver ye gold. 

Körös: 
Menyene iduñ ko ke edem enyöñ, 
K’ediye obio, usöñ miduhe, 
Ke obio oro nyin idifumke aba, 
Isaña k’ efak edide gold. 

2. Okposuk ukut y’idomo esimde mi 
Kpa nte profet, ndoribuot k’itiat, 
Nnyenek’ eti ebiet iduñ mi k’isöñ, 
Möfiök Enye eyenö mi okim. 

3. Ndighe ikpöñ, kubat mi ke ubuene, 
Mkpaha mba, ndi eke heven, 
‘Ndi Owo isañ k’nyoyom obio iduñ, 
Moyom ufök ye harp ye anyanya. 

Amen. 
      """
    },
    {
      "id": 902,
      "title": "KE IÑWAÑ EDEM ENYÖÑ ",
      "audio": "",
      "body": """
      KEY G 4/2 

{|s:-.mlm.r:d.s,|L,.f:-l-: |f 
:-.m lr .s, :s .,f|m :-l-: } 

1. S: KO ke edem akpa Jordan 
K’ ebede ‘mbufut esie; 
Isöñ nsi nsi uwem 
Inem möñ öfiöröde; 
SA: Öwörö oto ke inyañ 
Do k’eto uwem odu, 
Ndima ke ebebet nyin 
Ke eti inwañ oro. 


Körös: 
Iyesobo ke usiere 
(ke usiere), 
Ye mö ke mben inyañ; 
Mö k’ ebebet eridi nyin 
(ke ebebet) 
Ke eti inwañ oro. 


2. S: Ediwak mfri ke iñwañ, 
Edi se ekesinde; 
Andikpeme iñwañ oro, 
Anam mö efön ema; 
SA: Mfri eköri k’nsinsi, 
Mkpa ididuhe do, 
Uwem nsinsi odu do 
Y’ ata akwa idara. 

3. S: Mfri isöñ edude do 
Ebetde eridi nyin 
K’ inwañ oro mö k’eköri, 
K’ mben inua otop gold; 
SA: Okposuk nyin ifukhöde 
Oto ökpösöñ ukut, 
Iyesobo mö k’ usiere, 
Ke eti inwañ oro. 

Amen. 

      """
    },
    {
      "id": 903,
      "title": "O ETE ANDIBOT KPUKPRU",
      "audio": "",
      "body": """
      KEY Eb 4/2

{:m |m :m lf:m |m :-lr :d |d :L ls 
:f |m :-l-} 

1. AFO Andibot kpukpru, 
Ke ifiök y’ ima Fo, 
Akadian ukpöñ iba, 
Ko ke inwañ Eden; 
Se nditö Fo emi, 
Yöhö uñwöñö Fo, 
Nö mö idara k’ ufök 
Y’ ima akpanikö. 

2. Afo O! Andinyaña 
‘Nte k’obio Galilee, 
Wut ndudu Fo mfin 
Ye iköt Fo emi; 
Nam idara mö k’isöñ 
Osim ko ke enyöñ, 
Nam mö ke eyukhöde, 
Efiök Fi ‘nt’ Andinö. 

3. Spirit Abasi Ibom 
Di duk ke esit mö 
Man edi edisana, 
Eyöhö y’ ima Fo; 
Yak ndudu Fo Öböñ 
Osio mö ke idiök 
Nam uwem mö ebiet Fi, 
Nyuñ kara k’esit mö. 

4. Iböhök’ Afo öböp, 
Eböp ke ikpikpu; 
Iböhök’ Afo ödiöñ -
Idara iduhe; 
Baba idianakere 
Se Afo öböpde, 
Ima Afo önöde 
Inyeneke utit. 

Amen.
      """
    },
    {
      "id": 904,
      "title": "IKWÖ NDÖ ",
      "audio": "",
      "body": """
      KEY F 3/4

Slowly 

{|m :m :m |f :-:f | s :f :m | r :m :f 
|s :d :f|m :-:r |d : -:-} 

1. ÖBÖÑ Jesus okodude 
Ke usörö ndö, 
Ibeñe ndudu Fo mi, 
‘Ndidiöñ ndö emi, 
Nyun nam mö eköri k’ima 
Emi otode Fi; 
Nam esit mö ediana kiet, 
Ke Afo O Öböñ. 

2. Dian mö k’ edisana ima 
Man mö ekpebiet Christ; 
Mbiomo mö ekpefere 
K’ eyöde kiet eken; 
K’ erise iduñ mö k’ enyöñ 
Eduñ k’ usen k’ usen 
Nte m’abuana ‘mfön 
uwem, 
Tutu Afo edi. 

Amen. 
      """
    },
    {
      "id": 905,
      "title": "AKAM NDÖ ",
      "audio": "",
      "body": """
      KEY F 4/4

{|m :-.m lre .m :L .,s |s :-lt, : -|f :.
m lr .de :r .re |m :-l -:-} 

1. EDINEN Ete, k’ iso Fo, 
Se nditö Fo k’ edöñ; 
Eyom Fi ödiöñ ndö mö, 
Ösöñö eñwöñö mö; 
Nam efiök ebuana oro, 
Okonimde to k’ eset 
Önö mö Afo afakde, 
Ke efiökde Calvary. 

2. Öböñ nte k’ ndö Cana, 
Akanam möñ edi wine, 
Nam idara ke ndö mö 
Öyöhö y’edidiöñ Fo; 
Yak ebuana ke ndö mö 
Ewut edisan’ uwem; 
K’ ufök mö, ima Fo okpon, 
Kor’ Afo ’dide Ibuot. 

3. Yak mö efiök nda-usuñ 
Spirit oto k’ ikö Fo; 
Ndien ke mfön ekemde, 
Esaña ke uyo Fo, 
Ke ofri isañ mö k’isöñ, 
Esöñö k’mbuötidem 
Enam utom Fo ke ima, 
Tutu esim ke enyöñ. 

Amen. 
      """
    },
    {
      "id": 906,
      "title": "O ABASI IMA ",
      "audio": "",
      "body": """
      KEY D 3/4 

{|m :r:d|s:-:d' |d':t :L |s : -:-} 

1. ÖBÖÑ ima, itöñ’ edöñ, 
Ibeñe k’ ibuot mö emi, 
Man k’ edisana uñwöñö 
Mö edi kiet k’ Afo. 

2. Ke me usen idaresit 
Ke ini ñkpö öfönde, 
Yak esaña k’ mbuöidem, 
Mö edi kiet k’ Afo. 

3. Ke ini oyobio uwem, 
K’idorenyin mö ekpude, 
Nam ebere y’Afo ikpöñ, 
Mö edi kiet k’Afo. 

4. K’ oruk itie ekededi, 
Ke idara me ke ukut, 
Nö odudu y’ mfön ‘ndiyö, 
Mö edi kiet k’Afo. 

5. Nsinsi Ima, du ye mö 
Yak esuk edibe k’Afo 
Man mkpa okudianare 
Se Afo adiande. 

Amen. 

      """
    },
    {
      "id": 907,
      "title": "O ATA IMA ",
      "audio": "",
      "body": """
      
KEY Eb 4/2

{|d :-lm :s |s :-ls :-|s :s ld' :t |t :-lL 
:-|r :-lm :f |s : -lm : -|d :d lm 
:r |t, :-l-:-} 

1. O ATA Ima, akand’ ifiök owo, 
Nyin imötöñ’ edöñ ibeñe Fi, 
Man ima mö okunyene adaña 
Emi adiande kiet k’ nsi nsi. 

2. O Ata Uwem, nam mö esöñ’ eda 
K’ata ima ye ke mbuötidem, 
Ke idorenyin ye ke anyan ime 
Ebuötidem kini ‘ndik ye mkpa. 

3. Nö mö idara ebinde mfukhö 
Nö mö emem akand’ eñwan isöñ 
Man ke usen emi owo mifiökke 
Mö eduk k’nsinsi ima y’uwem. 

Amen. 
      """
    },
    {
      "id": 908,
      "title": "KE EBEBET KE EDEM OKO ",
      "audio": "",
      "body": """
      
KEY Ab 4/4

{:s, .,s, |d :d lm :-.r|d :s, l -:s, .s, 
|L, :dlr :- d .L, |s, : - l- } 


1. ‘NTE iköñ eyemerede 
Ke ini nda-eyo 
Ntre ke nyin ise m’ ufan, 
Emi ekpöñde k’ mkpa, 

Körös: 
Kiet ye kiet… kiet ye kiet… 
Emebe … ’yobio uwem, 
Edi mö ke ebebet nyin 
(k’ebebet nyin) 
K’ ebebet k’ edem oko. 

2. Me andiñwam nyin 
k’mbiomo 
Ye mö enamde utom, 
Ke akamba iñwañ idök, 
Eda m’ebek mö enyöñ. 

3. Ke ikodude kiet ye mö, 
Inyen’ eti ebuana 
K’itide, eyet ituade 
Anam nyin ifreke mö. 

4. Ke ikutde eto uwem, 
Ke mben akpa oro, 
Iyesöp idu ye Jesus 
Inyuñ ikop ikwö do.
 
Amen. 
      """
    },
    {
      "id": 909,
      "title": "EKÖM KE USEN USÖRÖ ",
      "audio": "",
      "body": """
      KEY G 6/8

{:s, |m : -:d lr :d :L, |s, :-:-ld ::
m |r :-:de lr :-:s |m :-:-ld :-} 

1. K’ IÑWAÑ eyede eti, 
M’eto esekhede, 
Enem nyin esit eti, 
Anam ifre ukut; 
Imököm kpukpru owo 
K’ikwö idaresit, 
Emi ebuanade mi, 
Ke usörö mfin. 

Körös: 
:\$: SA: Idi ‘ndisobo 
TB: Idi ‘ndisobo ye esit 
eköm, 
All: Ke akwa idaresit, 
SA: Idi ‘ndiköm fi 
TB: Idi ‘ndisobo ye esit 
eköm, 
All: Ke usörö mfin. DS. 

2. Abasi ekpeme nyin, 
K’ofri isua emi, 
Idi ndikpon’ Enye, 
Yak odu ye nyin mi; 
Man töñö ke uyen nyin 
Inam utom Esie, 
Isaña k’usuñ Esie 
Tutu isim usöñ. 

3. Ndien yak kpukpru ekwö 
K’ata idaresit; 
Abasi ömödiöñ nyin 
Ke usörö mfin; 
Yak nyin mi idiana kiet 
Ke edisan’ ima, 
Man nyin ikudianare 
Tutu isim heven. 

Amen. 
      """
    },
    {
      "id": 910,
      "title": "OWO ISAÑ, DUÖK ODUDU",
      "audio": "",
      "body": """
      KEY Ab 6/8

{|s, :fe, :s, lm, :f, :s, |L, :L, :L, |s, 
:-:-|d :d :d lt, :t, :s, |fe, :s, :L, ls 
:-:-} 

1. OWO isañ, isañ fo okure, 
Duök odudu k’ eti ebiet iduñ; 
Omosim utit fo ke ifure 
SAT: Ke obio iduñ ukpöñ. 
B: Ke obio Ete nyin, iduñ ukpöñ. 

2. Udukwe oyobio uwem aba, 
Uduyomke aba eti iduñ, 
Omosim eti iduñ ke enyöñ, 
SAT: Du do ke ima Esie. 
B: Duök odudu fo ke ima Esie. 

3. Owo isañ, isañ fo okure, 
Duök odudu k’eti ebiet iduñ, 
Ndik y’ ukut inamke fi aba, 
SAT: Duök odudu ke iduñ 
B: Duök odudu k’ eti ebiet iduñ. 

Amen. 

      """
    },
    {
      "id": 911,
      "title": "KPUKPRU EYEFÖN ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{:m.,r |d : -.r lm .,re :m .,f |s :m l:-|
L :-ls :m |r:-l -} 

1. KINI uwem mi edikurede, 
Eyeföfön; 
Öböñ uwem etiñ ‘ntre önö mi, 
Ami ‘ntiñ k’ uyo Esie. 

Körös: 
SA: Eyeföfön y’ ami (y’ami), 
TB: Eyeföfön, eyeföfön 
y’ami, y’ami, 
SA: Möbuötidem ke Calvary, 
TB: Koro möbuötidem ke 
Calvary, 
All: Ke iyip Christ Andinyaña mi, 
Möböhö ke idiök 
(ke idiök), 

SA: Eyeföfön y’ ami, 
TB: Eyeföfön, eyeföfön 
y’ami, y’ami, 

SA: K’ ndikutde obio uböñ, 
TB: K’ami ndikutde obio 
uböñ, 
All: Nyefiori k’ndikpöñde 
isöñ, 
Ke ömöfön y’ami 
(y’ami). 

2. K’ ndikpöñde me ndima ufan, 
Eyeföfön, 
K’ndikpöñde ererimbot emi, 
Ami nyeduñ ye Christ. 

3. K’ Öböñ edikotde mi man ndök, 
Eyeföfön; 
Onyuñ edide ke möñ me k’ ikañ, 
Nyebörö, “Öföfön.” 

Amen. 
      """
    },
    {
      "id": 912,
      "title": "CHRIST ESET, NDIK MKPA IDUHE ",
      "audio": "",
      "body": """
      
KEY C 2/4

{|m:d |s: -.m |L :L |s : -|m' :r' 
|d' :t |L :d'|d' :-|s : -} 

1. CHRIST eset! Ndik mkpa 
Idinamke nyin mi aba; 
Christ eset, nyin imöfiök, 
Udi, afo umumke nyin, 
Hallelujah! 

2. Christ eset! enö Enye 
Uböñ ke enyöñ ye k’ isöñ; 
Nyin ñko iyeka do, 
Ikara y’ Enye ke heven, 
Hallelujah. 

3. Christ eset! Enye ’kakpa 
Önö nyin, man idu uwem; 
Ke edisana esit, 
Yak nyin inö Enye uböñ, 
Hallelujah. 

4. Christ eset! Nyin imöfiök, 
Ima Esie ikpöñke nyin; 
Uwem, me mkpa y’ udi 
Idianakere nyin ye Christ, 
Hallelujah. 

5. Christ eset! Mkpa Esie 
Önö idorenyin uwem, 
Iyebö ndöñesit 
Ke ibede k’ mfut mkpa, 
Hallelujah. 

Amen. 
      """
    },
    {
      "id": 913,
      "title": "IYEBÖHÖ UKUT YE IDOMO ",
      "audio": "",
      "body": """
      KEY Bb 4/4
      
{:s, ,s, .L, |d .d :d .,d |d :s, .L, 
ld d.-:d.,d|d.}


1. K’ USEN ekemde nyenyöñ 
K’ebiet ukut miduhe 
(Iyeböhö) 
Iyeböhö u-kut ye idomo 
(Ukut y’ idomo) 
Iyeböh’ ukut isöñ 
Iyebuana do k’ uböñ 
(Ami n-ye) tie do ke ñkañ 
Jesus 
(Öböñ, nye) 
Duök odudu do esisit. 


Körös: 
(Iyeböhö) 
Iyeböhö ukut ye idomo 
(Ukut ye idomo k’ iduñ) 
Ih! k’ iduñ oro, k’edem oko 
(Ke edem oko, do ami nye) 
Köm nyebiowo ubök 
(Öböñ) nyuñ köm mö 

emesier’ O! 
(Ami nye) tie do ke ñkañ 
Jesus 
(Öböñ) nyeduök odudu do 
esisit 

CODA: ‘Nyeduök odudu do 
esisit 
(‘Nyeduök odudu do 
esisit). 


2. M’ufan ye iman k’ ebet mi, 
Nyesöp ndikut mö 
(Iyeböhö) 
Iyeböhö ukut ye idomo 
(Ukut y’ idomo) 
K’ edinem iduñ oro 
Kpukpru iyesobo do 
(Ami nye) tie do ke ñkañ 
Jesus 
(Öböñ, nye) 
Duök odudu do esisit. 

3. Nyetim ‘ñkut uböñ Esie 
Nyefiök mfön Esie 
(Iyeböhö) 
Iyeböhö ukut ye idomo 
(Ukut y’ idomo) 
O emem ye idara 
Ke iduñ ima Öböñ 
(Ami nye) tie do ke ñkañ 
Jesus 
(Öböñ, nye) 
Duök odudu do esisit. 

Amen. 
      """
    },
    {
      "id": 914,
      "title": "NDIMA IMEDI NDITUAK IBUOT",
      "audio": "",
      "body": """
      KEY G 4/4

{|s, : s, .L , |d :dlr : r .d |m .r :d .L , 
ls, :s, .L, ld :d |m :r ld :-} 

1. NDIMA, imedi ‘ndituak 
Ibuot ’nö Abasi nyin; 
Eyeböñ akam k’ odudu 
Ke nyin ikwöröd’ ikö? 
Ke Spirit Öböñ miduhe, 
Kpukpru öwör’ ikpikpu 
Ndima nyin, eboñ akam, 
Man manna edep k’ isöñ. 

2. Ndima, ’se m’anamidiök 
Ekpade mba k’ukut, 
Mkpa k’edi, hell k’ekpere 
Eyeyak man mö enyöñ? 
Se me ete ye m’eka nyin 
Ye nditö nyin k’etak, 
Ndima nyin eboñ akam 
Man manna edep k’ isöñ. 

3. Iban, eyeñwam nyin ñko? 
Nt’ eyen eka Moses, 
M’ eyeñwam mbon ntuaña 
Eñwanade ke idiök? 
Nyuñ buk Andinyaña nö mö, 
Nam efiök k’Enye ’kpere 
Iban enyuñ eböñ akam 
Man manna edep k’ isöñ. 

4. Yak ima Abasi ikan 
Inyuñ ima kiet eken, 
’Kpe ubök ’nö m’anamidiök 
Man mö eböhö idiök; 
Öböñ eyekot nyin k’ enyöñ, 
Iyenyuñ itie y’ Enye, 
Christ k’idem Esie ’yenö nyin 
Inem manna kpukpr’ ini. 

Amen. 
      """
    },
    {
      "id": 915,
      "title": "KE EDEM AKPA OKO",
      "audio": "",
      "body": """
      KEY A 6/8
      
{:m |m : -:r lr :-:d |d :-:m, lm, :-:f, 
|s, :-:m lr :-:d |L, :-:-l -:-} 

1. K’ISIMDE heven iyebuana 
ye mbon enyöñ, 
Do mbon ufak eyekwö, 
ikwö ima Jesus, 
K’ isimd’ inua-otop inyuñ 
ibe m’itim esie, 
Nti owo ke idaresit 
eyekwö ikwö. 

Körös: 
Dara… dara… koro Christ 
ekpere (’kpere) 
Mokut ima Esie (mokut), 
mokop uyo Esie (mokop) 
Kini… ikut...de Enye ke 
enyöñ (k’enyöñ) 
Do ke mbon ufak edikwö, 
ikwö ima Jesus. 

2. Kadañemi nsi ‘nsi ini 
edikad’ iso, 
Ikwö idara emi eyebiet 
mbufut möñ, 
Do ke akpa möñ uwem 
owut uyai esiemö, 
K’ebiet eyet mididuhe, 
idara eyekpon. 

3. Iyekut inyuñ ifiök kpa nte 
efiökde nyin, 
Iyesaña k’ awawa mbiet, 
ise ebekpo, 
Ndien kini idikwöde ke 
edinem uyo, 
Ke isimde utit m’ isua, 
Christ eyeda uböñ. 

Amen. 
      """
    },
    {
      "id": 916,
      "title": "ESIERE O! ",
      "audio": "",
      "body": """
      KEY G 4/2 

{.s, :s, .d |m : -.m ls .d :t, .d |f :l 
.s,:t,.r|f:-.rlde.r:s.r|m:-} 

1. EKIM k’edi, ikwö nyin 
eyetre, 
Iyefiak ikwö ikwö itoro, 
Inim m’enö nyin k’ ukot 
Fo, Öböñ; 
Esiere! Esier’ O! 

2. Usen uwem öyöhö ye ukut, 
Afaneköñ odip uñwan’ esie, 
K’ mbubreyo ukpukhör’ 
eyedu, 
Nyin ikop, Esier’ O! 

3. Utom ökpösöñ eyesöp etre, 
Öböñ k’ese nte iñwanade, 
Enye eyenö nyin akwa utip, 
Esiere! Esier’ O! 

4. Eka iso ewut eti uwem, 
Edu k’ ima ye k’erikpep 
Esie, 
Iyedök mfri utom nyin 
k’enyöñ, 
Do, Esier’ iduhe! 

5. “Esier’ O!” usen uwem 
emetre, 
Inemesit uwem ’yetre ñko, 
Ko ke enyöñ iyedu k’nsinsi, 
Esiere! Esier’ O!

 Amen.
      """
    },
    {
      "id": 917,
      "title": "NDI OWO INYENE ",
      "audio": "",
      "body": """
      KEY G 4/4

{:s, .d |m .m :m .r ld :d .m |r .d 
:d .L, ld } 

1. NDI eyen Abasi, eyet mi 
k’iyip Jesus, 
Ami menyene inyene ko 
k’enyöñ; 
K’nsañade mi k’isöñ, emi 
edi ikwö mi, 
S: Ndi owo inyene 
ATB: Ndi owo, ndi owo 
inyene. 

Körös: 
Owo inyene… owo inyene, 
Ete mi enyene enyöñ y’isöñ 
ndi, Esie (ndi Esie) 
Owo inyene… owo inyene, 
S: Ndi owo inyene 
ATB: Ndi owo, ndi owo 
inyene. 

2. Ke ’namde utom Öböñ, 
ndude k’ikö Esie, 
Öfön akan inyene ererimbot; 
Enye ada mi usuñ, öbök mi 
k’uyo uwem, 
S: Ndi owo inyene 
ATB: Ndi owo, ndi owo 
inyene. 

3. Öböñ, nyekpono Fi ye mö 
oro efakde, 
Ñkan me inemesit uwem 
emi; 
Ete mi edi Öböñ, nyesuk 
ntor’ Enye, 
S: Ndi owo inyene 
ATB: Ndi owo, ndi owo 
inyene. 

4. Koro emenyaña mi, 
nyedara ke Öböñ, 
Okposuk usuñ uwem mi 
ösöñde; 
K’ntide uwak mfön Ete mi 
enyenede, 
S: Ndi owo inyene 
ATB: Ndi owo, ndi owo 
inyene. 

Amen. 
      """
    },
    {
      "id": 918,
      "title": "UFAN NDITÖWÖÑ EDI JESUS",
      "audio": "",
      "body": """
      KEY C 6/4  

{:s |s : -:s ls :m :s |L :-:-ld' :-:L 
|s :-:m lr :s :f |m :-:-l-:-} 

1. JESUS, Ufan nditö, 
Enye ke okot mö, 
Önö uwem k’ibuot mö, 
Man mö eduk heven. 

Körös: 
Ufan mö edi Jesus, 
Jesus, Jesus; 
Önö uwem ndifak mö, 
Enye ’di Ufan mö. 

2. Jesus, Ufan nditö, 
Enye amama mö, 
Ömöfiök mfukhö mö, 
Onyuñ ekpeme mö. 

3. Jesus, Ufan nditö, 
Ufan akpanikö, 
Ekpeme mebuötidem, 
Efen ibietk’ Enye. 

4. Jesus, Ufan nditö, 
Ömönö mö utom; 
Ke erinyim’ esit, mö 
Ekop uyo Esie. 

5. Jesus, Ufan nditö 
Mö ekpema Enye, 
Enye idikpöñke mö 
Kemi ye k’ nsinsi. 

Amen. 

      """
    },
    {
      "id": 919,
      "title": "UFAN ODU ÖNÖ NDITÖWÖÑ ",
      "audio": "",
      "body": """
      KEY Eb 6/4

{lm :-:m |f :-:m lr :-:m |d:-:-ld 
:-:r |m :-:f |s:m :L |s : -} 

1. UFAN nditöwöñ odu 
Ko ke edem enyöñ, 
Enye ikpukhökere, 
Edi Ufan ima; 
Ufan isöñ ebiaña 
Enyuñ ekpukhöre, 
Ufan emi omodot 
Enyiñ enöd’ Enye.
 
2. Ifure nditö odu 
Ko ke edem enyöñ, 
Mö ek’ emade Jesus 
Enyuñ ekotd’ Ete, 
Eyenyene ifure, 
Eböhö idiökñkpö 
K’ ebiet kpukpru nditö 
Eduökde odudu. 

3. Ufök nditöwöñ odu 
Ko ke edem enyöñ, 
Ebiet ukara Jesus, 
Iduñ idaresit 
Ufök isöñ iduhe 
Eke ebietd’ enye, 
Kpukpru edu k’idara 
Ke mö esimde do. 

4. Anyanya nditö odu 
Ko ke edem enyöñ, 
Kpukpru mö ’mi emade 
Jesus eyeyara 
Edisem anyany’ uböñ 
Enye edinöde 
Mö ekekutde mfön, 
Emad’ Enye k’ isöñ. 

5. Ikwö nditöwöñ odu 
Ko ke edem enyöñ, 
K’ekwö do kpukpru ini, 
Idikpaha mba; 
Ikwö emi me enjel 
Mifiökke ndikwö, 
Mö ifiökk’ Andinyaña, 
Eda Enye k’ Öböñ. 

6. Öföñ nditöwöñ odu 
Ko ke edem enyöñ, 
Harp ata inem ikwö 
Ye ikwö erikan: 
Akakan ñkpö-uto 
Ekut ke Christ ikpöñ, 
Öböñ nam ‘nditö efiök 
K’Afo enyene mö. 

Amen. 
      """
    },
    {
      "id": 920,
      "title": "ÖBÖÑ ENYÖÑ ",
      "audio": "",
      "body": """
      KEY Eb 4/2

{|s :m ld' :t |t :L ls :d |f:m lr :d|t, 
:d lr :-} 

1. ÖBÖÑ enyöñ kop ikwö nyin 
Nditö Fo ikwöde; 
Imedi y’ akwa ebeñe, 
Imetiene Fi Ete. 

2. Yak obio uböñ Fo edi, 
Yak m’idut ekut emem; 
Yak esuk ibuot enö Fi, 
Edara k’ eridiöñ Fo. 

3. Yak inem mbuk idara, 
Y’ utibe ima Öböñ; 
Anam nyin ikwö mi k’isöñ 
Nte me enjel k’ enyöñ. 

4. Ete, döñ ini Fo edi 
Man kpukpru ekpeyom Fi, 
Sia obio uböñ, y’odudu 
Y’ ukpono edid’ Okuo. 

Amen. 
      """
    },
    {
      "id": 921,
      "title": "YAK ÑKPRI NDITÖ ETIENE MI ",
      "audio": "",
      "body": """
      KEY Bb 4/4 

{|s, :m, .f, ls, :d .r |m:r .dls, : -|L, 
:d .L, lL, .s, :s, |f, :s, .m, |r :-} 

1. ÖBÖÑ nyin iyom ndidi Okuo, 
Tie ke ebekpo Fo se nyin k’mböm; 
Nam nyin idi me eröñ Fo mfin, 
Da nyin usuñ Öböñ nyuñ teme nyin. 

Körös: 
S: Nti ikö Afo eketiñde, 
ATB: Nti ikö eketiñde, nti ikö 
eketiñde 
SA: Yak nditö-öwöñ etiene 
Mi (’tiene Mi) 
TB: Yak nditö-öwöñ etiene Mi, 
Ih yak nditöwöñ edi etiene mi. 

2. Baba ufan isöñ ibietke Fi, 
Eti Ekpemeröñ, kpeme k’ima, 
Yama k’usuñ eke nyin ikade, 
Kpep nyin akpanikö ye ifiök Fo. 

3. Öböñ itiene Fi k’mbuötidem 
Nte ‘nditö eketienede Fi; 
K’inyimede ‘ndiyere ikot Fo, 
Öböñ Afo eyediöñ nyin kpupru. 

Amen. 
      """
    },
    {
      "id": 922,
      "title": "EDI, NDITÖ, EDI ",
      "audio": "",
      "body": """
      
KEY D 6/8

{|s :-:-ls :-:L |s :-:-lm : -:d |m 
:-:-|m :-:r|d :-:-l-:-:} 

1. ETI Andifak se nyin mi mfin, 
Iboho mi k’ikwö ye ke akam 
Ndikpep se Afo eketiñde, 
“Yak ñkpri nditö etiene Mi.” 

Körös: 
Etiene Mi (O) etiene Mi (di) 
‘Nditö, etiene Mi 
(’tiene Mi) 
Ikö eketiñde enem eti, 
“Yak ñkpri nditö etiene Mi.” 

2. Öböñ, imadara sia imonim 
K’Afo omonyime ndibö 
nyin, 
Nyin idifreke nti ikö Fo: 
“Yak ñkpri nditö etiene Mi.” 

3. Imököm Fi ke se önöde nyin, 
Ke uböñ Fo, nyin iyedu uwem, 
Idi s’etide y’ñkpö ukpono; 
“Yak ñkpri nditö etiene Mi.” 

4. K’ikurede isañ nyin mi k’isöñ, 
K’okotde nyin ‘ndikpöñ ererimbot, 
Afo ’yedöhö ke ikutde Fi “
Yak ñkpri nditö etiene Mi.” 

Amen. 
      """
    },
    {
      "id": 923,
      "title": "EKÖM KE USEN NDITÖ ",
      "audio": "",
      "body": """
      KEY D 4/4

{:m .,f |s :-.m ld' :d' |d' :-lt :t |L 
:-.Lls:fe|s:-l-} 

1. NYIN idi k’idaresit 
Ye ikwö itoro, 
Ndinam usen emi 
Öfön akan m’efen, 
Mendiye iköñ k’uyai, 
M’inuen k’inem ikwö, 
Ebuana ye nditö 
Edara k’usen mö. 

Koros: 
Dara… dara… 
Kwö ikwö idara 
Dara… dara… 
SA: Ke usen nditö 
TB: Ke usen idara ‘nditö. 

2. Ito k’obot ye k’usuk, 
K’obio, y’una-isöñ 
Yak nditö ebuana 
Ke ikwö idara; 
Iköm Fi k’idaresit 
Ke mboho emi, 
Iköm m’ufan, mendikpep 
Ke usen nditö. 

3. Ima ye mböm Öböñ 
Ke ekpekpeme nyin, 
Ndien ke ini emi 
Imedi ye m’enö; 
Ke eti usen emi 
Imayak idem nyin 
K’uwa inö Fi Öböñ, 
K’eti usen emi. 

4. Afo ekemen ‘nditö, 
K’ ima ödöh’ ete -
Ke heven enyene mö, 
Bö esit nyin, mbök, 
Yak nyin ima Fi Jesus 
K’erinam utom Fo, 
Iyedu k’mfia öföñ, 
Iyama k’nsinsi! 

Amen. 
      """
    },
    {
      "id": 924,
      "title": "NYIN IMADA NDITÖ IDI",
      "audio": "",
      "body": """
      KEY Bb 6/8 

{:s, |m :-:r ld :-:s, |L, :-:-ls, : -:s, 
|f :-:m lr : -:de |r :-:-l-:-} 

1. NYIN imada nditö 
Ito k’efak y’inuk, 
Ndibök mö ’nö Jesus 
Man mö ebö uwem. 

Körös: 12/8
S: Ida mö idi, Öböñ, 
ATB: Ida mö idi, Öböñ, idi kemi 
S: Kpeme mö sio k’idiök 
ATB: Kpeme mö k’isöñ, kpeme 
mö k’idiök 
S: O mum mö k’ubök kama, 
ATB: O mum mö kama, mum mö kama 
S: Ke ubök ima Fo. 
ATB: Ke ubök ima, k’ubök ima Fo. 

2. Nyin imada nditö 
Idi man mö ebö, 
Eti ‘mbuk Andinyaña, 
K’esit eyen-öwöñ. 

3. Imada ‘nditö idi 
Ndikpep mö ekwö 
‘Nte ekwöde ke temple, 
“Hosanna ’nö Öböñ” 

4. Imada ‘nditö idi 
K’esit akpanikö, 
Kuyak nyin ikpa mba, 
Kini utom emi. 

Amen. 
      """
    },
    {
      "id": 925,
      "title": "DA MÖ DUK KE OTU ",
      "audio": "",
      "body": """
      KEY Ab 6/8 

{|s, :-.L, :s, lm :r :d |r :d :r |m ::-|
s, :-.d:d lt, :L, :t, |d:-:-l -:-} 

1. NDITÖ ke eyo ekpöñ usuñ, 
Da mö duk di ke otu, 
Tiñ nö mö, Andifak k’okot mfin, 
Da mö duk di ke otu. 

Koros: 
Da mö, (duk di) da mö, 
(duk di) 
Da mö duk di ke otu; 
Da mö, (duk di) da mö, 
(duk di) 
Da mö duk di ke otu. 

2. Ediwak enana m’ufan y’iduñ, 
Da mö duk di ke otu, 
Tiñ baña Ufan ye iduñ oro, 
Da mö duk di ke otu. 

3. Tiñ baña obio ye akpa uwem, 
Da mö duk di ke otu, 
Ebetde mö ke ukut ebede, 
Da mö duk di ke otu. 

Amen. 
      """
    },
    {
      "id": 926,
      "title": "YAK ÑKPRI NDITÖ ETIENE MI ",
      "audio": "",
      "body": """
      KEY C 6/8

{|m :-:m lf :-:m ls :-:s lL :-:s 
|d' :t :L l s :f :m | r :m :f lm :-:-} 

1. ÖBÖÑ ekemen nditö 
Odori mmö ubök, 
Ödöhö ikö eridiöñ 
Ye eke ima, ete: 

Körös: 
“Eyak ñkpri nditö etiene Mi, 
Eyak ñkpri nditö etiene Mi, 
Eyak ñkpri nditö etiene Mi, 
Yak ekukpan mö, kor’ obio 
heven enyene (enyene) mö, 
Kor’ obio heven enyene mö, 
Obio uböñ heven enyene mö.” 

2. Eti Jesus nyin imedi, 
Da usuñ ke Spirit Fo, 
Idi ndibö eridiöñ, 
Nte Christ ödöhöde: 

3. Eti Andifak, k’idide, 
Dori nyin ubök k’ibuot, 
Diöñ nyin nte öködiöñde 
Nditö k’ikö emi: 

Amen. 

      """
    },
    {
      "id": 927,
      "title": "NTE OWO ODU EKPRIDE AKAN? ",
      "audio": "",
      "body": """
      KEY Bb 3/4 

{:s, |s, .s, :-:s, |s, :-: -lL, .L, ::
L, |L, :-:L, .L, |s, :-:s, .s, ld :r 
:m |r :-:-} 

1. NTE owo mi ekprid’ akan, 
Ekpeyakd’ enö Öböñ mfin? 
Nte owo mi ekprid’ akan 
Edibinde önyöñ k’mfukhö? 

Körös: 
Eyak ñkpri ‘nditö etiene Mi, 
Eyak ñkpri ‘nditö etiene Mi, 
Koro oruk mö edide obio Abasi. 

2. Nte owo mi okpond’ akan, 
Ekpeyakd’ enö Öböñ mfin? 
Nte owo mi okpond’ akan, 
Edibinde önyöñ k’nsinsi? 

3. Nte owo mi okopde ‘ndik 
‘Ndiyak idem ’nö Öböñ mfin? 
Nte owo mi okopde ‘ndik 
Me Öböñ ’yekop akam esie? 

4. Yak kpukpru edi, kpukpru edi, 
Man eyak mö en’ Öböñ mfin, 
Yak kpukpru edi, kpukpru edi, 
Etiene Andinö mö uwem. 

Amen. 
      """
    },
    {
      "id": 928,
      "title": "IKWÖ NDITÖWÖÑ ",
      "audio": "",
      "body": """
      
KEY G 9/8

{l m :r :d |m : -:-lm :-:-l m :r :d 
|f :-:-lf : -:-lf :m :r|s :-: -ld:: 
-|d :t, :d lt, :-:-l-:-:-} 

Smoothly, 

1. JESUS amama nditö, 
Ekedi eyen k’isöñ, 
Ana ke ebiet ufene, 
Ke me isua ebede, 
O, ima Esie ’mokpon 
K’ndidi eyenöwöñ. 

2. Jesus esese nditö, 
Ke utom ye ke mbre; 
Öfiök k’enemd’ Enye esit, 
Okop se mö etiñde, 
O ami ‘ñkpöfön didie, 
K’mfiökde Christ k’ese 
mi! 

3. Jesus ekpeme nditö 
Ke ekim okoneyo; 
Anam ede inem idap, 
Tutu eyo esiere, 
O, Enye öföñ ido, 
Ekpem’ eyen ‘nte ami. 

4. Jesus nte ekpemeröñ 
Oyom ñkpri nditö, 
Kini mö ekpöñde Enye, 
Ada mö afiak edi; 
Se nt’ Enye öfönde, 
Oyomde eyenöwöñ. 

5. Jesus oyom nditöwöñ, 
Enyen’ utom k’ibuot mö 
Ekpri eyen ye mmem-mem 
Iduhe k’utom Esie. 
Jesus Öböñ imedi, 
Idi Okuo k’nsinsi. 

Amen. 

      """
    },
    {
      "id": 929,
      "title": "ERIBÖ NDITÖWÖÑ ",
      "audio": "",
      "body": """
      
KEY A 6/8

{|s, :s, :s, ls, :L, :t, |d :-:-lm :-:|
r :r :d lt,:L, :t, |d :-:-l -:-: -} 

1. BERED’ usuñ nö nditö, 
Da mö suñ suñ duk k’esit; 
Tañ mö di ke kpukpru ebiet, 
Sio ke itie idiökñkpö, 
Ndusuk enana uñwam, 
Edu ke öbiöñ ye tuep; 
Bered’ usuñ nö nditö, 
Nyuñ da mö duk di ke otu. 

Körös: 
Da mö duk di..., da mö duk 
di... 
Da mö duk di ke otu 

2. Bered’ usuñ nö nditö, 
Se mö k’edi ke udim; 
Nam mö ebuana k’usoro, 
Kpep mö nti ikwö fo; 
Beñe Abasi ödiöñ mö, 
Onyuñ önö mö mfön; 
Bered’ usuñ nö nditö, 
“Obio heven enyene mö.” 

3. Bered’ usuñ nö nditö, 
Mum mö kama ke ubök, 
Wut mö usuñ akpanikö, 
Nam eka obio Canaan; 
Ndusuk enana uñwam 
Edu ke öbiöñ ye tuep; 
Bered’ usuñ nö nditö, 
Nyuñ da mö duk di ke otu. 

Amen. 

      """
    },
    {
      "id": 930,
      "title": "IKWÖ ÑKPRI NDITÖ ",
      "audio": "",
      "body": """
      KEY C 2/4

{:m .f |s .m' :m' .r' |r' .d' :s .d' |t .L 
:L .L |L :r .m |f .r' :r' .m' |r' .d' :s .d' 
|d' .s :m .L |s } 

1. IKPEKPRI, edi k’iköri 
K’ndinam utom Öböñ, 
K’Enye nyin ibö odudu, 
Inö Enye esit nyin, 
Kpukpr’ usen uñwan’ ayama 
Oto k’iduñ nyin k’enyöñ, 
K’usen k’usen nyin k’ikpere 
Öböñ emi imade. 


Körös: 
S: Nyin ke iköri ye ifiök 
k’ usuñ nyin 
ATB: Nyin k’iköri, nyin 
k’iköri ye ifiök ke 
usuñ nyin, 

S: K’isaña ikpere Jesus 
kpukpr’ usen, 
ATB: Nyin k’isaña ikpere, 
ikpere Jesus kpukpr’ 
usen 

S: Nyin k’iköri tutu isobo 
y’Enye 
ATB: Nyin k’iköri, nyin 
k’iköri tutu isobo 
y’Enye, 
All: K’ibere k’enyiñ Esie. 


2. Nyin mem-mem, Öböñ Ökpösöñ, 
K’uñwam Esie iyekan, 
Idiökñkpö k’añwana ye nyin, 
Edi nyin ididuöhö; 
Enye eyenö edidiöñ 
Esök nditö Esie, 
Ek’ enamde akpanikö, 
Esöñöde ke Enye. 

3. Me enyene mö ebetde 
Tutu k’ini öfönde? 
Me odu mö ekeyomde 
‘Nte ekpetrede ‘ndiyo? 
Sese eti ini k’ebe, 
Nsinam abiatd’ ini 
Munyuñ utieneke Enye? 
Di tiene Jesus kemi. 

Amen. 

      """
    },
    {
      "id": 931,
      "title": "ÑKPRI NDITÖ ",
      "audio": "",
      "body": """
      KEY Db 4/4

{|s .m :f .L ls :m |L .d' :t .L ls :|
f.m :r.mlf:r|m.d':t.Lls :-} 

1. NYIN idi nditö, ñkpri nditö, 
Nyin iyebeñe uñwöñö Andifak 
K’ ibakd’ iyom Enye, 
k’idide mfin, 
Iyedi Esiemö, oyom nyin idi. 

Körös: 
Iyekpono inyuñ ima Fi, Öböñ 
Andinyaña nyin y’Ufan nditö, 
Iyedu uwem ndinem Fi esit, 
Isaña y’Afo tutu ke utit. 

2. Ñkpri ufan Jesus, k’isaña y’ Enye, 
K’ukpem’ ubök Esie, ada nyin usuñ, 
Iyema Enye ke ofri esit nyin, 
Ndien k’obio Esie, iyekut Enye. 

Amen. 
      """
    },
    {
      "id": 932,
      "title": "KE OKOT ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{|s, .,s, :s, .,L, ls, :d |m .,d :r .,d lL, 
:-|s, .,s, :s, .,L, ls, :d |r .,de 
:r .,m |r :-} 

1. NDITÖ etiene Jesus ke uyen, 
Eyeda fi usuñ ke akpanikö, 
Eyeda fi usuñ ke ima Esie, 
Osim iduñ ko k’enyöñ. 

Körös: 
S: Ke okot mi, 
ATB: K’okot, ih, k’okot fi ye 
ami kemi 
S: ‘Ndikpöñ idiök 
ATB: K’ikö Esie iböhö idiök 
y’mkpa 
S: Oböñ medi, 
ATB: Andinyañ’ ami metiene 
Fi kemi 
All: Ebiet odu k’ubök Fo. 

2. Jesus k’okot nditö nte k’eset, 
Nt’ Ekpemeröñ eyesin mö k’otu, 
Eyeda mö usuñ heven ke emem, 
Osim nsinsi uböñ. 

3. Enye ke okot fi ye ami kemi, 
Osio k’ idiök y’mkpa ke ikö Esie, 
Yom obio heven ’to ke ima Esie, 
Yom eti obio k’eñyöñ. 

Amen. 
      """
    },
    {
      "id": 933,
      "title": "EKOP! UYO NDITÖ KE EKWÖ ",
      "audio": "",
      "body": """
      KEY A 4/4

{|s, :-.s, l L, .s , : m, .f , |s, :d lm :lm 
:-.r lf :m|r :d ld :t, } 

1. EKOP, uyo nditö 
Mö ekwö hallelujah 
K’idara enö Öböñ 
Emi mifreke nyin; 
Iboho mi k’idara, 
Imenere uyo nyin 
K’ikwö itoro Öböñ 
Emi mifreke nyin. 

2. Edi ke ukot Esie, 
Ke edisana ebiet, 
Etoro Ekpemeröñ 
Okotde nyin idi; 
Kwö kor’ Enye önö nyin 
Ediwak nti ñkpö; 
Kpukpru ke enyöñ y’ isöñ, 
Mfön Esie ewak. 

3. K’usukhör’ itie owo, 
Enye ekedi k’isöñ, 
Etoro enyiñ Esie; 
Nditö ekekwö, 
Nyin ibuana k’ikwö mö, 
Ke ata inem ikwö; 
Itoro y’ inemesit 
K’erikwö hosanna. 

4. Öböñ odu ke enyöñ 
Okot nditö edi, 
Sin nyin ke uñwana Fo, 
Nsinsi Uñwana; 
Öböñ, nyin idi mem-mem, 
Nam nyin iböhö idiök, 
Yöhö nyin k’odudu Fo, 
Ñwam nyin k’usen k’usen. 

5. Nam nyin idi mendikan, 
Ida ke akpanikö, 
Nö nyin odudu heven, 
Nam ibere y’ Afo; 
Nyin ikwe usuñ iso 
Edi k’ebiet ikade 
Yak nditö Fo ekut 
K’Afo ada usuñ. 

6. Afo ’yeda nyin usuñ 
Osim nsinsi iduñ, 
M’ufan ekebemd’ iso 
Mö edu k’ uñwana; 
Do, iyekwö k’ idara 
Ke uyo ndiye harp 
Inö Andibök eröñ 
Itoro ye uböñ. 

Amen. 
      """
    },
    {
      "id": 934,
      "title": "JESUS AMA ÑKPR NDITÖ ",
      "audio": "",
      "body": """
      KEY Bb 4/4

{:s, .,f, |m, .,s, :d .,r ld :d .,t, |L, .,d 
:d .,L, ls, } 

1. JESUS okot nditö, 
Et’ edi, ekufeghe, 
Ami ’mama nditö 
k’ererimbot, 
Ami ‘nyemum Fi ubök, 
Nduk ke eti isöñ, 
Ami ’mama nditö 
k’ererimbot. 

Körös: 
S: Jesus ama ñkpri ‘nditö, 
ATB: Jesus amama ñkpri nditö 
All: Nditö k’ererimbot; 
Mfia y’mbubit owo 
Kpukpru edi ‘ñkpö-uto, 
Jesus ama nditö 
k’ererimbot. 

2. Jesus Andikpem’ eröñ, 
Ododu ye mbufo, 
Enye ama nditö 
k’ererimbot, 
Ökpösöñ Andinyaña, 
’Yesio mbufo k’ idiök, 
Enye ama nditö 
k’ererimbot. 

3. Ke ntiene Fi Öböñ, 
Ndi owo eköñ Fo, 
Enye ama nditö 
k’ererimbot, 
Nyenyuñ ’biom cross Esie, 
Nsöñö nda y’Enye, 
Enye ama nditö 
k’ererimbot. 

Amen. 
      """
    },
    {
      "id": 935,
      "title": "O ETE, AFO ANDIBOT KPUKPRU ",
      "audio": "",
      "body": """
      KEY F 4/2 Chant 

{|ME ls :f lm :r |d :-.dlr :f |m:-l:-|
ME ls :-.s lf :m |r :r lm :r |r :-l-} 

1. {O ETE, Afo Andibot kpu-} 
kpru ñkpö, imebeñe k’ima, 
{Se ekpri eyen emi ke u-} 
yo Fo odukde usuñ uwem, 
Tim kpeme enye k’ima Fo, 
nam uwem esie ’biet Okuo, 
O Ete kop. 

2. {O Jesus Christ, emi 
akakpade} imada eyen 
nyin isök Fi; 
{Afo eti Andikpeme, da} 
enye ‘nte Okuo k’nsi nsi 
Nam enye akan ke eñwan, 
nyuñ da enye usuñ uwem, 
Andinyaña. 

3. {Edisana Spirit Abasi} di 
duk eyen emi ke idem; 
{Nam enye odu eti uwem} 
ke Spirit ke edisana möñ 
Nam Enye ke uyen edi eti 
eyen ye iduñ Fo, 
Eti Spirit. 

4. {O, Abasi, imanam} uyo 
Fo, itiñ k’ukeme Fo, 
{Eyen emi inyene-} ke 
ifiök, nö enye uñwana 
Ke mbuötidem ye k’ima, 
Afo utin k’enyöñ y’isöñ, 
O Abasi. 

Amen. 
      """
    },
    {
      "id": 936,
      "title": "ANDINYAÑA KE MFÖN ",
      "audio": "",
      "body": """
      KEY F 3/2

Moderately slow 

{|m :-:f ls :-:s |L :-:L |s :m :-|m 
:-:r |d:-:d |r :-:r |m :-:-} 

1. ANDINYAÑA y’ Ekpemeröñ, 
Amama ‘nditö-öwöñ, 
Afo ’kemen mö k’ubök Fo, 
Akama k’ikpanesit, 
Tim kpeme mö, nam eböhö 
Afaneköñ y’unana. 

2. Eti Ekpemeröñ, kuyak 
Mö ediyo ekpöñ Fi, 
Da mö usuñ ke ima Fo, 
Ke mkpafakha usuñ; 
Dip mö ke idak mba Fo, 
Man mö eböhö idiök. 

3. Yak ikö Fo eteme mö, 
Yöhö mö k’uñwana Fo, 
Mfön y’ima Fo enyik mö, 
Man efiök se inende, 
Nam mö efiök k’ökpönö Fo 
Y’ mbiomo Fo efere. 

4. Kpep mö ekwö itoro Fo, 
Emi ekwöde k’isöñ, 
Ke eti esit ye uyo 
Yak mö ekwö itoro; 
Ndien y’ nti owo k’ uböñ, 
Mö etoro Edidem. 

Amen. 
      """
    },
    {
      "id": 937,
      "title": "KE ISO EBEKPO ABASI",
      "audio": "",
      "body": """
      
KEY C 4/2 

{:d |d :m.f ls :s |L :L ls :d' |L :r' ls 
:L .t |d':-l-} 

1. K’ISO ebekpo Abasi 
Do nditö eda, 
Emi efende m’idiök mö, 
Edisana udim, 
K’ekwö “uböñ! uböñ! uböñ!” 
K’ekwö “uböñ! uböñ! uböñ!” 

2. Ns’ ida mö ika heven 
Emi eyed’ eti; 
Öyöhöde y’emem y’ima? 
Didie ke esim do? 
K’ekwö “uböñ! uböñ! uböñ!” 
K’ekwö “uböñ! uböñ! uböñ!” 

3. Koro Christ oköduökd’ iyip, 
Man eyet idiök mö; 
Ekeyere k’eti iyip, 
Sese mö esana, 
K’ekwö “uböñ! uböñ! uböñ!” 
K’ekwö “uböñ! uböñ! uböñ!” 

4. Ekeyom ‘mfon Öböñ k’isöñ, 
Ema enyiñ Esie; 
Kemi eda k’iso Esie, 
Ekut Eyeneröñ, 
K’ekwö “uböñ! uböñ! uböñ!” 
K’ekwö “uböñ! uböñ! uböñ!” 

Amen. 
      """
    },
    {
      "id": 938,
      "title": "NDITÖ JERUSALEM ",
      "audio": "",
      "body": """
      KEY E 4/4

{|d : d .m lm.r :f .r ld :t, ld :-|m 
:m .s ls .m :d' .L |s :fe ls :-} 

1. NDITÖ Jerusalem, 
Ekekwö enyiñ Jesus; 
Nditö eyo emi, 
’Dian uyo, kwö Andifak. 

Körös: 
Kop, kop, kop, uyo nditöwöñ, 
Kop, kop, kop, uyo nditöwöñ, 
Kwö hosanna, kwö hosanna, 
Kwö hosanna nö Öböñ. 

2. Ekpep nyin ima Öböñ, 
Ekpep nyin ikö Esie, 
Ekpep nyin usuñ heven; 
Yak inö Öböñ eköm. 

3. M’andikpep, ñkpri y’ ikpö, 
Ediana ke itoro; 
Ekwö k’ökpösöñ uyo, 
Hosanna osim k’enyöñ. 

Amen. 
      """
    },
    {
      "id": 939,
      "title": "ME HARP GOLD ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{|s, :d lL, :r |d :-lt, :-|t, :m ld :f 
|m :-lr :-} 

1. K’UYO ndiye harp me 
enjel k’ekwö, 
Inua ’top eberede önö Öböñ, 
Christ Edidem uböñ ye Öböñ ima 
Ödök ke erikan ke obio Esie. 

Körös: 
Enye amanyaña, yak nyin 
idara, 
Christ ömödök k’uböñ, 
toro Edidem! 

2. Enye akakpade ndinyaña nyin, 
Kemi odu k’uböñ ke ñkañ Ete; 
Ikwe ukut aba, ikpaha aba, 
Jesus Öböñ uböñ ödök ke 

3. K’anam mkpe ubök k’ediye ebiet, 
K’okot ‘nditö k’uböñ, k’önö mö mfön, 
Otim eti ebiet önö nditö, 
Jesus andima nyin odu k’nsinsi. 

Amen. 
      """
    },
    {
      "id": 940,
      "title": " ÑKPRI UFAN JESUS ",
      "audio": "",
      "body": """
      KEY D 2/2 

{|s.f:m.f|s:mlr.m:f.s|m :|
L .d' :t .L |s :m lr .s :fe .L |s : -} 

1. Nyin idi nditö, ñkpri nditö, 
Imenyen’ udeme k’uñwöñö 
Esie. 

Körös: 
K’ ibakd’ iyom Enye k’idide 
mfin, 
Iyedi m’ufan Esie, k’okot 
nyin kemi, 

2. Ñkpri ufan Jesus, imenem 
esit 
Ke eti uñwöñö Bible 
ekpepde. 

3. Ñkpri ufan Jesus, k’isaña 
y’Enye, 
Enye akama nyin, ada nyin usuñ. 

4. Iyema Enye ke ofri esit 
nyin, 
Nyin iyekut Enye k’iduñ 
nyin k’enyöñ. 

Amen. 
      """
    },
    {
      "id": 941,
      "title": "ETI MBUK ",
      "audio": "",
      "body": """
      KEY C 4/4

{|s:s l L .s :fe .s |d':s l L .s :fe.s ls 
:f lf :m |m :r lr :-} 

1. IMOKOP uyo nditö 
Ke ekwö inem ikwö, 
K’ata akwa idaresit, 
Ebuana k’ikwö emi. 

Körös: 
Inem ikwö, yak nyin ikop 
kpukpru ini, 
Nditöwöñ ekudop ikwö 
mbufo 
\$ ppKop! kop! Mö ke ekwö 
fInem ikwö. DS. 

2. Imokop uyo nditö 
Ekwöde ke ökpösöñ, 
Uyo ikwö omosim nyin 
Nte otode k’enyöñ. 

3. Obio ayama k’ekopde 
Me inem ikwö oro 
Ebinde mfukhö efep 
Onyuñ önöd’ idara. 

4. Ekwö inem ikwö emi 
Ke esit asanade; 
Imokop, enyöñ k’edara 
Inem ikwö ekopde. 

Amen. 

      """
    },
    {
      "id": 942,
      "title": "INEM MBUK ESET",
      "audio": "",
      "body": """
      
KEY Eb 4/4 

{:d .r |m :r .m ls .f :m .f |L .s :s .,s 
ls:m.f |s.m :d'.t|L.s :f.m|m:r 
l-} 

1. MEKERE, k’ñkotde inem 
‘mbuk eset, 
Kini Jesus ’kodude mi, 
Nt’ okotde nditö ‘nte eröñ edi, 
Ami ‘mkpama ndidu ye mö. 
Ami ‘mkpama ubök Esie 
k’ibuot mi 
Ubök Esie onyuñ omum mi. 
Man ‘ñkpokut Enye kini 
öködöhöde, 
“Yak ñkpri ‘nditö etiene Mi” 

2. Edi mekeme ‘nditien’ Enye k’akam, 
Man önö mi ima Esie, 
Edieke ntimde nyom Enye kemi, 
Nyekut Enye ko ke enyöñ, 
K’ ediye ebiet akade nditim 
Nö kpukpru enamde esana; 
Do k’ndima ñkpri nditö eboho 
Kor’ obio heven enyene mö. 

3. Mö mikokopk’ ibaña obio oro, 
Eyo, eduöñö ke usuñ; 
Moyom mö efiök k’ebiet 
odu önö mö 
Ke Jesus omoyom mö edi; 
Idara ini oro ke ödöñ mi, 
Eyenem onyuñ öfön ama 
Ke ndima nditö ke kpukpru eyo 
Ediböde eridiöñ Esie. 

Amen. 
      """
    },
    {
      "id": 943,
      "title": "JESUS OMOYOM NYIN IYAMA ",
      "audio": "",
      "body": """
      KEY G 4/4

{|d .s, :s .s, ls, :d .r |d :t, lt, :-|r .s, 
:s, .s, ls, :r |r .d :d .r |m :-} 

1. JESUS omoyom nyin ndiyama, 
Nte ekpri ikañ asakde k’ekim, 
Iyeyama k’ererimbot emi, 
Afo ke itie fo, ami k’okim. 

2. Jesus omoyom nyin ndiyama, 
Enye öfiök k’uñwana nyin 
okimde, 
Etie k’enyöñ ese k’iyamade, 
Afo ke itie fo, ami k’okim. 

3. Jesus omoyom nyin ndiyama, 
Ekim omokpon k’ererimbot emi, 
Yama k’uföt ukut ye unana, 
Afo ke itie fo, ami k’okim. 

Amen. 
      """
    },
    {
      "id": 944,
      "title": "NYIN IDI MMEMMEM ÑKPRI NDITÖ",
      "audio": "",
      "body": """
      
KEY C 4/4

{:s|s :-.L ls :d' |m :r ld :r |m :-.f 
|s :L |s :m lr } 

1. NYIN idi ñkpri nditö, 
Ito k’usukhöre itie 
Nso k’inam inö Jesus 
K’uwak mfön Esie ye nyin? 

2. Nditö enyene utom 
Ndinam k’ufök ye k’esien, 
Utom ndikpa ’nö Jesus, 
Nyuñ ñwana mböhö idiök. 

3. Ke esit nyin odobide, 
Ke iyaresit y’iseri 
Y’ndot ndot ikö inua, 
Eyet y’mfukhö anam nyin.
 
4. Nyin iyetre ifiop-esit 
Iyekara edeme nyin, 
Iyenö suñ suñ ibörö, 
Iñwan’ eköñ inö Öböñ.
 
5. Ima y’emem ke uwem 
nyin 
’Yenam iduñ nyin ayama, 
Anam inemesit odu 
K’inamde ke ntak Jesus. 

6. Kpukpru nditöwöñ emi 
Enyene cross mö ndibiom, 
Utom ima ye itoro, 
Enam kpukpru k’ntak Jesus. 

Amen. 
      """
    },
    {
      "id": 945,
      "title": "ÑKPÖ-UTO ",
      "audio": "",
      "body": """
      KEY E 3/4

{:d .r |m :m :m .f |s:s :L |m :m :r 
|d :d } 

1. K’ENYE ’dide, k’Enye 
’dide 
‘Ndida iköt Esie 
Ata nti ñkpö-uto 
Ed’ iköt Esie. 

Körös: 
Nte ntanta öfiöñ 
Usiere esemde, 
Mö eyeyama k’uyai 
Anyanya Esie. 

2. Eyeda mö, eyeda mö 
Önyöñ k’obio uböñ 
Mendisana, mendiyama 
Ed’ iköt Esie. 

3. Ñkpri ‘nditö, ñkpri ‘nditö 
Emade Andifak, 
Edi ata ñkpö-uto 
Kpa iköt Esie. 

Amen. 
      """
    },
    {
      "id": 946,
      "title": "ETE YE UFAN ",
      "audio": "",
      "body": """
      
KEY Ab 3/4 

{:m | m :r :d | d :t , :L,| s, :m :r |d ::
s, | s, :f :m | m:r :d | s:m :d |r :-} 

1. AKWA Ete omonyime 
Ndidi Ete y’ Ufan mi? 
Ami idiök eyen Fo kiet, 
Afo Öböñ enyöñ y’isöñ.
 
2. Ete nte eyeyö mi 
Ndikop eseme y’akam? 
M’eyebö itoro eke 
Ekpri eyen Fo önöde? 

3. Nte Afo ’di Ete mi? 
Nam mi ndi eti eyen, 
K’ikö y’ido y’ekikere, 
Ndinam s’Afo amade. 

4. Nte Afo ’di Ete mi? 
Ami nyebere k’Afo, 
Nyedomo ukeme mi, 
‘Ndinam s’inende Fi 
k’enyin. 

5. Nte Afo ’di Ete mi? 
K’usen mi k’isöñ ebede, 
Döñ edimen mi k’ima Fo, 
Man ‘ndi eyen Fo ko 
k’enyöñ. 

Amen. 
      """
    },
    {
      "id": 947,
      "title": "JESUS AMA MI! ",
      "audio": "",
      "body": """
      KEY Eb 2/4 

{|s.m :m .r |m .s :s |L .L :d' .L 
|L .s :s } 

1. MÖFIÖK Jesus ama mi, 
Nte Bible etiñde; 
Nditö edi Esie, 
Mö emem, Enye ösöñ. 

Körös: 
Jesus ama mi 
Jesus ama mi 
Jesus ama mi 
Bible etiñ ntre. 

2. K’ima, Jesus akakpa 
Ndiyet m’idiökñkpö mi, 
Ebered’ usuñ heven 
Man eyen Esie oduk. 

3. Jesus otim ama mi! 
Odu y’ami kpukpr’ ini 
Ke ’made Enye, k’mkpa 
Enye ’yeda mi önyöñ. 

4. Jesus dida esit mi 
Nam man otim asana, 
Afo akakpa ’nö mi 
Kemi nyedi Okuo. 

Amen. 
      """
    },
    {
      "id": 948,
      "title": "TIÑ AKPANIKÖ KPUKPRU INI ",
      "audio": "",
      "body": """
      KEY E 4/4

{|s:-.m lf :L |s :m ld :-|m :-.m lr 
:r |d :-l-:-} 

1. KE ñkpö ekededi, 
Tiñ akpanikö; 
Kini utom me k’mbre, 
Tiñ akpanikö 
Ekukpöñ item emi, 
Dip enye ke esit fo, 
Sin enye ke uwem fo, 
Tiñ akpanikö. 

2. Akpanikö enenem, 
Tiñ akpanikö, 
Nsu ödödiök eti, 
Tiñ akpanikö, 
Osu ‘nsu edi ofn; 
Owo ek’ akwañade 
Ada k’nsu; kop uko 
Tiñ akpanikö. 

3. Kini afo eduede, 
Tiñ akpanikö; 
Eyenyene erikan, 
Tiñ akpanikö; 
Owo osude nsu, 
Ödödiöñ anam idiök, 
K’uko ye nsöñidem; 
Tiñ akpanikö. 

Amen. 
      """
    },
    {
      "id": 949,
      "title": "“ÖBÖÑ ODU KE EDISANA TEMPLE ESIE” ",
      "audio": "",
      "body": """
      
KEY Db 4/4 

{:m|m :-.m lm .m :m .m |m :f lm 
:m |s:-.s ls .s :s.s |s :L ls } 

ÖBÖÑ ke edisana temple, 
Öböñ ke edisana temple, 
Yak midut edop uyo, 
Yak edop uyo ke iso Esie, 
Dop uyo ke iso Abasi. 


Amen. 
      """
    },
    {
      "id": 950,
      "title": "UKPÖÑ MI KÖM ÖBÖÑ",
      "audio": "",
      "body": """
      KEY Eb 4/4

{|.m :-.m lr :d |r :d .r lm :-.m |m 
:-l . } 

UKPÖÑ mi, köm Öböñ, 
Öböñ, Afo ’möfön. 

Amen. 

      """
    },
    {
      "id": 951,
      "title": "EDIDIÖÑ",
      "audio": "",
      "body": """
      KEY F 4/4


{:s, |d :r lm :r .d |f :-lm :d|L :L .L 
ls :s .s |f:-lm :r .r |d :d lr :r |m :-} 

YAK Öböñ ekpeme fi; 
Iso Esie ayama ’nö fi, 
Onyuñ öfön önö fi 
Enen iso ye afo onyuñ önö 


fi ifure. 

Amen. 

      """
    },
    {
      "id": 952,
      "title": "UKPEME CHRISTIAN",
      "audio": "",
      "body": """
      KEY F 4/4 

{|m:m lm :f |s :-l-:s .m |r .de 
:r .f lm :r |d :-l-} 

“M’ÖFIÖK m’eröñ Mi 
Mö emenyuñ ekop uyo Mi, 
Ami nyuñ nö mö nsinsi 

uwem 
Mö idinyuñ itakke 
Baba kiet isioho 
Mö k’ubök Mi ifep.” 


Amen. 
      """
    },
    {
      "id": 953,
      "title": "NÖ EDIDEM HEVEN KEMI ",
      "audio": "",
      "body": """
      KEY D 4/2 

{:d|m :m ls :s |d' :-l-:d'|t:L ls 
:fe |s :-l-} 

Nö Edidem heven 
Itoro ke ikwö, 
Uböñ enyen’ Enye, 
Odudu y’ukpono 
K’ofri ebiet yak kpukpr’ 

owo 
Etor’ Enye k’nsi nsi. 


Amen. 
      """
    },
    {
      "id": 954,
      "title": "EKEM YE AMI",
      "audio": "",
      "body": """
      KEY Eb 6/8 

{:s |L .L :-:L ld' :-:L |L .s :-:s ls ::
m |f :m:f |r :s :f |m :-:-ls :-} 

EKEM ye ami, ekem ye 


ami, 
Mfön Esie awak eti; 
Idara odu k’ukut me ubiak 
Mfön Esie ekem y’ ami! 

(y’ ami)! 
Amen. 

      """
    },
    {
      "id": 955,
      "title": "KUFIAK EDEM ",
      "audio": "",
      "body": """
      KEY Bb 2/2
      
{|d m.-:mlf.,m:r|t, ,r .-:r lm .,r :d } 

UFAN kufiak edem, 
Ufan kufiak edem, 
Ufan kufiak edem, 
Kufiak edem; 
Öböñ et’ ebiet odu, 
Odu ke heven önö fi, 
Öböñ et’ ebiet odu, 
Kufiak edem. 


Amen. 
      """
    },
    {
      "id": 956,
      "title": "KUSE NSAKHI ",
      "audio": "",
      "body": """
      
KEY F 4/2 

{:s.,f|m d.-:d.,dld:d.,d|d, 

:d .,d ld :L .,L |s :m .,m lm .r :d 
|r :-:-} 

YAK ikuse nsakhi, 
Y’esuen’ ererimbot 
Kor’ inyene ndibiom 


cross, 
Eyenam anyanya nyin 
Otim ayama 
Kini edinöde nyin. 

Amen. 
      """
    },
    {
      "id": 957,
      "title": "EYESOBO YE NYIN?",
      "audio": "",
      "body": """
      
KEY C 4/2

{|s :-.f lm .s :d' .r'|m' :-.r' ld' :|
L :-.t ld' .t :d.L |s :-.f lm :-} 

1. ETE, ’yesobo ye nyin, 
Ete ’yesobo ye nyin, 
Ete ’yesobo ye nyin, 
K’mben esuk Canaan? 
Körös: 

K’mfön Öböñ iyesobo, 
K’mfön Öböñ iyesobo, 
K’mfön Öböñ iyesobo, 
K’mben esuk Canaan. 

Amen. 

NB: (Emekeme ndikwö ñko nnö: 
Eka, ‘Nditö ye Pastor etc.) 

      """
    },
    {
      "id": 958,
      "title": "AMA EKEM",
      "audio": "",
      "body": """
      
KEY F 4/4 

{|m:-.r ld :f |m :-.r ld :-|r :-.d 
lt, :L |s :-f lm :-} 

AMAKEM ’yekut Öböñ, 
Amakem ’yekut Öböñ, 
Amakem ’yekut Öböñ, 
Inö Enye uböñ, 
Inö Enye uböñ, 
Inö Enye uböñ, 
Inö Enye uböñ, 
Inö Enye uböñ. 


Amen. 
      """
    },
    {
      "id": 959,
      "title": "ABASI ÖBÖRÖ AKAM",
      "audio": "",
      "body": """
      KEY C 4/4

{|s :-l-:fe |L :s lf :m |s :-lf :-|f:l-} 


MONIM Öböñ ’kop 

akam, 
Möfiök Öböñ ’kop akam, 
Mokut Öböñ ’kop akam, 
Tor’ enyiñ Esie. 

Amen. 
      """
    },
    {
      "id": 960,
      "title": "NSI NSI UKPONO ",
      "audio": "",
      "body": """
      
KEY A 4/4

{|d:-.d ld :d .d |r :r l : |r :-lr :s 
|r :r lr :d|t, :-lL, :-|s, :-l } 

UKPONO enyen’ Ete 
Ye Eyen ye Edisana Spirit, 
Kpa nte ke eritöñö, 
Kemi ye kpukpru ini, 
K’nsi nsi Amen -Amen. 

      """
    },
    {
      "id": 961,
      "title": "ETORO ABASI ",
      "audio": "",
      "body": """
      KEY G 2/4 

{:d|d:t, |L, :s,|d :r lm :m lm :m 
|r :d |f :m |r } 

ETOR’ Abasi Andinö; 
Etor’ Enye, kpukpru ñkpö; 
Etor’ Enye, mbon enyöñ, 
Ete, Eyen y’Eti Spirit. 

Amen. 
      """
    },
    {
      "id": 962,
      "title": "AMI NDI USUÑ ",
      "audio": "",
      "body": """
      KEY A 6/4 

{|s, :s, :d ld :-:-|L,:L, :r |r :-:|
t, :t, :t, lt, :d:r |m :-:d ls, :-:-} 

“EDI Ami ndi usuñ, 
Owo ekedukde ke Ami, 
Eyeböhö, eyeböhö, 
Eyeböhö! 

Amen. 
      """
    },
    {
      "id": 963,
      "title": "ANIE EFEN EDITIENE?",
      "audio": "",
      "body": """
      KEY Bb 4/2
      
{|d :s, .,s ls, : |d :L, .,L, lL, : |t, 
:t, .,dlr :m .r ld :s, |m, :s, } 

EDI anie, edi anie? 
Anie ’fen editiene Jesus? 
Anie efen editiene Jesus? 
Tien’ Enye kemi. 

Amen. 
      """
    },
    {
      "id": 964,
      "title": "NSI NSI INI! ",
      "audio": "",
      "body": """
      
KEY A 4/2 

{:s, |d .,r :m l-:s, |d .,r :m l-:m 
lr .,m :f l -:r |m .,f:s l-} 

NSINS’ ini, nsins’ ini, 
Möñ k’edidu k’nsins’ ini? 
Nsins’ ini, nsins’ ini, 
Möñ k’edidu k’nsins’ ini? 


Amen.
      """
    },
    {
      "id": 965,
      "title": "O UBÖÑ! ",
      "audio": "",
      "body": """
      KEY Eb 9/8 

{:s |L :f :L ls :-:-lm :-:s |L :f:L 
ls :-:-l-:-: } 

O UBÖÑ, O uböñ, 
Akwa idara! 
Mokut Edidem ke uyai; 
Mökwö itor’ Esie 
Sia Öböñ Jesus 
Önöde mi mböm Esie. 


Amen. 
      """
    },
    {
      "id": 966,
      "title": "MÖFIÖK! MÖFIÖK!",
      "audio": "",
      "body": """
      KEY Eb 4/4 

{:d|m :-l-:d |s :-l-:m |s :-.L ls 
:m lr :d :-} 

MÖFIÖK… möfiök… 
Menyene ufök efen 
Möfiök… möfiök… 
Inamke k’ubök. 

Amen. 
      """
    },
    {
      "id": 967,
      "title": "MOYOM KPUKPRU OWO EFIÖK ",
      "audio": "",
      "body": """
      KEY Ab 6/8 

{:s, |s, :-.d :dlm :r :d lr :-:-l-::
s, lr :-.r :r |f :m :rlm :-:-l-:-} 

MOYOM kpukpru owo efiök 
Jesus emi amade mi; 
Mayak ini mi k’ndude 
k’uwem 
Man ‘ñwam kpukpru owo 
‘ndifiök. 

Amen. 

      """
    },
    {
      "id": 968,
      "title": "SE ENYE ANAMDE ÖNÖ MI!",
      "audio": "",
      "body": """
      KEY F 4/4

{|s :-l-:m .,d lr :flf :-lf:-l-:r .,t, 
ld :s ls:-} 

O (se ’namde) se ’namde 
’nö mi! 
O (se ’namde) se ’namde 
’nö mi! 
K’ntiñde tutu k’nsinsi 
Ndibukke s’ Enye ’namde 
’nö mi! 

Amen. 

      """
    },
    {
      "id": 969,
      "title": "ETI IYIP ",
      "audio": "",
      "body": """
      KEY Eb 4/4 

{|d:-.d ld' :-.s |L :L ls :-ld:-.r lm 
:L |s :m lr :-} 

O IYIP, eti iyip, 
’Köduökde ke Calvary; 
O iyip, eti iyip, 
Tor’ Öböñ, emeyet (eyet) mi. 

Amen. 

      """
    },
    {
      "id": 970,
      "title": "MMASAÑA MBE ",
      "audio": "",
      "body": """
      KEY Ab 4/4 

{|s :m .s ld :m .r ld :L, .d ls, :-ls, 
:d .d ld :m lm.r :r .de lr :-} 

’MASAÑA ‘mbe Jesus, 
’masaña ‘mbe, 
Okposuk se mö eken 
enamde 
Nyesaña ye mbio Akpanikö 
’Masaña ‘mbe, Jesus, 
’masaña ‘mbe. 

Amen. 
      """
    },
    {
      "id": 971,
      "title": "ENYE EYEBUÑ KPUKPRU ÑKPÖKÖBI ",
      "audio": "",
      "body": """
      KEY C 4/4 

{:m.f |s :s lL :-.s |s .d':l :d' .r' 
|m':m'lm':-.r'|r'.d':l } 

1. ENYE eyebuñ ‘ñkpököbi, 
Enye eyebuñ ‘ñkpököbi, 
Enye eyebuñ ‘ñkpököbi, 
Anam öböhö. 

2. Enye omobuñ ‘ñkpököbi, 
Enye omobuñ ‘ñkpököbi, 
Enye omobuñ ‘ñkpököbi, 
Ami möböhö. 

Amen. 
      """
    },
    {
      "id": 972,
      "title": "IKPAT KE IKPAT ",
      "audio": "",
      "body": """
      KEY Eb 4/4 

{|m:d ls :-|d' :L ls :-|s :-.L ls :m 
|m :-lr :-} 

IKPAT kiet ye Jesus, 
Ami nyetiene, 
Kpukpr’ usen, kpukpr’ 
usuñ, 
Nsaña ye Jesus. 

Amen. 
      """
    },
    {
      "id": 973,
      "title": "ÑKPÖ ISÖÑKE",
      "audio": "",
      "body": """
      KEY F 6/8

{:s, |s, :d :d ld:-:r|m :-:-l-:-:r 
|m :m :m lm :-:f |s :-:-l-:-:-} 

1. ÑKPÖ isöñk’ ikan Fi, 
(Öböñ) 
Ñkpö isöñk’ ikan Fi, 
Baba, baba 
Ñkpö isöñk’ ikan Fi. 


2. Ami mbere y’Afo, (Öböñ) 
Ami mbere y’Afo, 
’Bere, ’bere, 
Ami mbere y’Afo. 

Amen. 
      """
    },
    {
      "id": 974,
      "title": "KA ISO, IYEKAN",
      "audio": "",
      "body": """
      
KEY C 4/4

{|m' :-ld' :s .,m |f :r' lr' :-|f' :-lt 
:t .,L ls :d' ld':-} 

KA ISO! Nyin iyekan, 
Kop, Andinyañ’ ödöhö: 
“Ka iso tutu akan” 
Eyekop “omotim anam.” 

Amen. 
      """
    },
    {
      "id": 975,
      "title": "KE EDI KE ISO",
      "audio": "",
      "body": """
      
KEY Eb 4/4 

{|m m.-:m.,f|s:-.Llm m::m .,f ls :-.s |d' .d' :t .L lt .t 
:-.s|L :fe ls :-. } 

K’EDI ke iso, Ih! K’edi ke iso, 
Eti usen eyesiere ke (edem) 
enyöñ, 
Kutre ndibuötidem, 
Kubup Enye ntak, 
Koro erikan k’edi (k’edi) 
ke iso. 

Amen. 
      """
    },
    {
      "id": 976,
      "title": "MÖFIÖK NYEYUKHÖ",
      "audio": "",
      "body": """
      KEY C 4 

{:m .f |s :-l-:d' .t |L :-l-:r' .d' |t 
:r .m lf .s :t .L ls:-l-} 

‘NYEYUKHÖ… 
‘nyeyukhö... 
Ami möfiök nyetim 
‘nyukhö (‘nyeyukhö); 
Kini ndikutde me utibe 
ñkpö 
Möfiök ke nyeyukhö 
(‘nyeyukhö). 

Amen. 
      """
    },
    {
      "id": 977,
      "title": "NYEBIET ENYE",
      "audio": "",
      "body": """
      KEY Eb 6/8 

{lm :-.m :m |f :m :-ls :-.s :s |L :s 
:-} 

NYEBIET Enye, nyebiet 
Enye, 
K’uyama uyai Esie, 
Nyebiet Enye, k’utibe usuñ, 
Jesus Andinyaña mi. 

Amen. 
      """
    },
    {
      "id": 978,
      "title": "MOYOM NDIKA ISO ",
      "audio": "",
      "body": """
      KEY Db 6/8 

{:s |s :-:s ls :-:s |L :-:-lL :L :L |s 
:-:s ld' :-:d' |r' :-:-l-:-} 

MOYOM ‘ndika iso 
Ufan, moyom ‘ndika iso, 
Ami ñka ke Zion, 
Ih! Moyom ‘ndika iso. 

Amen. 
      """
    },
    {
      "id": 979,
      "title": "TIÑ ENYE NÖ JESUS ",
      "audio": "",
      "body": """
      KEY D 6/8 

{:s |d' :-.d' :d'ld' :-.t :L |s :-.m 
:L ls .m :-} 

TIÑ enye nö Jesus, 
Eyedöñ fi esit, 
Enye ’yebuana ke ukut; 
Tiñ enye nö Jesus, 
Enye k’ebebet fi, 
Ka k’etiñ nö Enye k’akam. 

Amen. 
      """
    },
    {
      "id": 980,
      "title": "JESUS AKAKPA ÖNÖ MI",
      "audio": "",
      "body": """
      KEY Eb 3/2 

{: m s|L:-.d':t.L|s:-:s.,mlr .f . 
:-.f :m .r lm :-} 

MOKOP uyo etiñde (suñ suñ) 
Me idorenyin odu (’nö mi)? 

Nyeyom mböm y’mfön Esie, 
Jesus akakpa ’nö mi. 

Amen. 

      """
    },
    {
      "id": 981,
      "title": "EKEM YE AFO ",
      "audio": "",
      "body": """
      KEY C 6/4 

{:s |s :L :m ls :-:-|-:-:-|-:-:d' 
|d' :r' :t ld' :-:-|-: -:-l-:-} 

EKEM y’Afo…ekem y’Afo… 
S: Nam esit mi ekem y’Afo 
ATB: Nam esit mi, nam esit mi 
ekem y’Afo. 

Amen. 
      """
    },
    {
      "id": 982,
      "title": "TÖÑÖ NTE EKEFENDE MI ",
      "audio": "",
      "body": """
      KEY Bb 3/4

{|m, :f, :s, |L, :-:s, |d :-:-|t, :-:|
t, :L, :s, |t, :-:L, |s, :-:-l-:-: } 

SA: TÖÑÖ ekefende mi 
TB: Töñö ekefen mi 

SA: Mokut iso Esie 
TB: Ami mokut iso Esie 

All: Ke isañade kiet 
Ami menyen’ emem 
(emem). 

Amen. 
      """
    },
    {
      "id": 983,
      "title": "EKPRI IKÖ YE JESUS ",
      "audio": "",
      "body": """
      KEY Eb 4/2 

{.s |s .s :fe .s lL .s :m .d|t, :f lf 
:-.f |f .f:m .flt .L :s .f |m :L ls :-} 

EKPRI ikö ye Jesus, 
Anam ‘ñkpö öfön, 
Ekpri ikö ye Jesus, 
Anam ‘ñkpö öfön, 
Mököm Öböñ, mokut, 
Ke kpukpru afaneköñ, 
Ekpri ikö y’ Öböñ Jesus, 
Anam ‘ñkpö öfön. 

Amen. 
      """
    },
    {
      "id": 984,
      "title": "MEKPE MBIERE NDISIM UTIT ",
      "audio": "",
      "body": """
      KEY Eb 4/2
      
{|d' .d' :-.L ls .m :-.d|m .m :r .d 
lm :-|d' .d':-.L ls .m :-.m |r .m 
:fe .L ls } 

MEKPE mbiere ndisöñö nda, 
Jesus ye ami, mebere ke Enye, 

Ami menyen’ erinyaña, 
Mokop ntre k’ukpöñ mi, 
Mekpe mbiere ndisim ke utit. 

Amen. 
      """
    },
    {
      "id": 985,
      "title": "TIÑ KPUKPRU NÖ JESUS ",
      "audio": "",
      "body": """
      KEY G 6/4 

{|f:-:f ld : -:r |m :-:-l -: -:|r ::
r lfe:-:r |s:-:-l-:-: } 

TIÑ kpukpru nö Christ, 
(nö Enye) 
Tiñ kpukpru nö Christ 

(nö Enye) 
Ñwaña esit fo nö Enye, 
Tiñ kpukpru nö Christ. 

Amen.
      """
    },
    {
      "id": 986,
      "title": "ETI UÑWANA, DA USUÑ ",
      "audio": "",
      "body": """
      KEY Ab 6/4
1st tune 

{|s, :d :r lm :-.m :r |d :L, :d 
|L,:-:sl,-:-:-} 

KEY G 4/4 
2nd tune 

{|m:-lm :m |f :-l-:m |m :r ld :r 
|m :-l-:d |r :-lt, :-|d:-l-:-} 

1. ETI uñwana ke uföt ekim, 
Da mi usuñ, 
Ekim ösöñ, iduñ oyom eti, 
Da mi usuñ, 
Kpem’ ukot mi, mfiökke 
s’idude 
K’usuñ iso, da mi ikpat 
k’ikpat. 

2. Ami ñkoyomke nte Afo 
Eteme mi, 
Ñkemek usuñ mi, edi kemi, 
Da mi usuñ, 
Idiök udöñ y’iser’ iyakke mi 
Ñkere Fi, mbök, kuti oro. 

3. Odudu Fo ’mi öködiöñde mi 
Eyeda mi 
Ebe k’idiök usuñ emi tutu 
Ekim ebe, 
Ke usiere m’ufan eyedara 
Ndikut mi ñkosopde usuñ. 

Amen. 
      """
    },
    {
      "id": 987,
      "title": "IKWÖ USUANA ",
      "audio": "",
      "body": """
      KEY Gb 4/4

{|m:-lm :f |m :-lr :-|d :t,ld:r |m 
: -l-:-|s :-ls :L |s : -lf :-|m :r lm 
:fe |s :-l-: } 

1. ANDINYAÑA, itoro enyiñ Fo 
Ye esit kiet, k’ikwö usuana 
nyin; 
Imököm Fi, k’iso nyin isuana, 
Iduö k’ukot ibet ikö emem. 

2. Nö nyin emem Fo ke inyöñöde, 
Afo ’kötöñö, da nyin sim k’utit; 
Sio nyin fep ke idiökñkpö 
ye ke but, 
K’ikotde enyiñ Fo k’ufök emi. 

3. Nö nyin emem k’okoneyo emi, 
Nam ekim esie edi uñwana; 
Sio nditö Fo fep k’ndik 
y’ubiak, 
Koro ekim miduhe ye Afo. 

4. Nö nyin emem Fo ke uwem emi, 
Ndöñesit y’ukpeme ke eñwan; 
K’uyo Fo anamd’ eñwan 
nyin etre, 
Kot nyin iduk k’nsinsi 
emem Fo. 

Amen. 
      """
    },
    {
      "id": 988,
      "title": "IKWÖ USUANA ",
      "audio": "",
      "body": """
      KEY D 6/8

{:m|m :-:f |s :-:s |L :-:s |d' :-:d' 
|d' :t :t |t :-:t | L :s :s ls :-} 

1. ÖBÖÑ, Andinö nyin uwem, 
Inö Fi itoro y’eköm, 
Kini akam ye ukpono, 
Y’ nduök odudu k’utom nyin. 


Körös: 
S: Ete nyin k’enyöñ kpeme nyin, 
ATB: Ete nyin k’enyöñ kpeme nyin, 
Ke Eyen Fo, diöñ nyin kpukpru; 

S: Ke Eyen Fo diöñ nyin 
kpukpru; 
ATB: Ete nyin k’enyöñ kpeme 
nyin, 
Ke Eyen Fo, diöñ nyin 
kpukpru; 

All: Ke ikpöñde ebiet emi, 
Yöhö nyin k’odudu y’mfön, 

S: Yöhö nyin k’odudu y’mfön 
ATB: Yöhö nyin ke odudu ye mfön. 


2. Nam mendikpep esin ifik, 
O ñwam mö kpukpru man efiök, 
K’erikpep mö ekpepde nyin 
Idiwöröke ikpikpu. 

3. Nam mendikop ekpañ utöñ, 
Man mendikpep enyuñ ekut 
Nsuk ibuot nyin k’ikö Fo, 
Ke imonyime s’ikopde. 

4. Öböñ dikpeme k’isañ nyin, 
Kpem’ esit nyin k’usen k’usen, 
Nö nyin Edisana Spirit, 
Man ifön k’idude k’uwem. 

Amen. 

      """
    },
    {
      "id": 989,
      "title": "ETI MBUK IDARA ",
      "audio": "",
      "body": """
      KEY C 3/4

{:s |s :m :s |s :m :s |m' :r' :d' |s ::
s |L :f:L |L :f :L |r' :d':L |s :-} 

1. ETIMBUK idara, utibe ima! 
Etop emi otod’ Ete nyin 
k’enyöñ 
Edi Jesus anam osim 
kpukpr’ owo 
Etop mböm ösöñd’ urua 
akan gold. 

Körös: 
Eti…‘mbuk ida…ra 
O edi utibe, utibe ima, 
Eti…‘mbuk ida…ra 
Imadara eti ‘mbuk utib’ ima. 

2. Okot m’akpamba ete, 
“etiene Mi,” 
M’osukidem eyekut uböñ Esie, 
Ödiöñ m’esukesit ke nti ikö, 
Enye anam m’atua eyet edara. 

3. Me andima Öböñ edara 
didie! 
Ema nti item ke ikö Esie; 
Beñ’ idem ndikop nyuñ söp 
ndinam, 
Etien’ ikpat Esie k’uyama 
usuñ. 

Amen. 
      """
    },
    {
      "id": 990,
      "title": "DA JESUS NYÖÑ UFÖK ",
      "audio": "",
      "body": """
      KEY Ab 6/8  

{:s, |d :t, :d lr :d :L, |s, :s, :L, ls, 
:-:-|L, :se, :L, lr :-:L, |r :-:-l-:-} 

1. KE ökpöñde ufök Abasi emi 
Ti k’uñwöñö odu 
Ete, iyedu ye nyin k’ofri 
ebiet, 
Da Jesus nyöñ ufök. 

Körös: 
Da Jesus nyöñ ufök (ufök) 
Enye ’di Ufan fo (k’akpan) 
Ima Esie ododu kpukpr’ ini 
Da Jesus nyöñ ufök (ufök). 

2. Edieke öböde edidiöñ mfön, 
Kuyak enye ebe, 
K’uwem fo, yak uñwana 
iso Esie 
Ayama k’esit fo. 

3. Ke ukpöñ fo adarade 
Edidem, 
Da Enye nyöñ ufök 
Kini utom fo suk bere ke Enye, 
Eyedemere fi. 

Amen. 
      """
    },
    {
      "id": 991,
      "title": "O NSINAM MIDIGHE KEMI? ",
      "audio": "",
      "body": """
      
KEY F 4/4

{:d .r |m :m lm .,m :re .,m |d :-l:
m |s:s ls .,f :r .,f |m :-l-} 

1. O KUYAK ikö ökpöñ fi, 
Kunyuñ usin uñwan’ Esie, 
Anamidiök kusöñ esit, 
O! böhö kemi. 

Körös: 
O! böhö kemi (böhö kemi) 
O! böhö kemi (böhö kemi) 
Eyeböhö (eyeböhö)? 
SA: Ebet ‘nso kemi 
TB: Ebet, ebet nso kemi? 

2. Ndusuk udemekere 
Ndikut usiere usen, 
Kemi nyene ibuot ndien, 
O! böhö kemi. 

3. Öböñ nyin k’ebebet 
k’mböm, 
Me afo eyesin Enye? 
Kpöñ idiök ekikere fo, 
O! böhö kemi. 

4. Öböñ nyin isinke baba 
Eke etienede Enye; 
Buötidem, utom okure, 
O! böhö kemi. 

Amen. 

      """
    },
    {
      "id": 992,
      "title": "USEN EMI AFO ÖKÖNÖDE ",
      "audio": "",
      "body": """
      KEY A 3/4

{:s, | m :f :m | s :m :r l d:r :L, |d :t, 
:L, |s, :-:s, |d :r :m |r :-:d |t, :-} 

1. USEN Fo, Öböñ, omokure, 
Ekim öduö ke uyo Fo; 
Ikwö inöde Fi k’usiere 
Ödök onyuñ önö emem. 

2. Imököm Fi koro iköt Fo, 
K’ofri ererimbot emi, 
Mö kpukpru edu ke 
ukpeme, 
K’okoneyo y’uwemeyo. 

3. Ke ikpö ye ke ñkpri obio 
Nte eyo esierede, 
Uyo owo k’akam idopke 
Inyuñ ikpaha ‘mba k’ikwö. 

4. Utin Fo emi osopde mi, 
Asiakha ke idut efen, 
Kini, kini m’idut ke ebuk, 
Utibe utom Fo k’enyöñ. 

5. Christ, ebekpo Fo ididuöhö 
Nte uböñ ererimbot; 
Uböñ Fo ada k’ nsi nsi, 
Tutu kpukpru edi Okuo. 

Amen. 
      """
    },
    {
      "id": 993,
      "title": "ÖBÖÑ , SUAN NYIN",
      "audio": "",
      "body": """
      KEY A 4/4

{|d :t, .L, ls, :m, |L, :d ls, :m, |m 
:r .d lL, :r |d :t, ld :-} 

1. ÖBÖÑ suan nyin y’edidiöñ Fo, 
Nö nyin idara y’emem, 
Nam nyin inyene ima Fo, 
Idara ke mfön Fo; 
Nö odudu, nö odudu, 
Ke isañ nyin mi k’isöñ. 

2. Nyin inö eköm y’ukpono 
Ke ikö idara Fo, 
Yak mfri erinyaña Fo 
Otim awak k’esit nyin; 
K’akpanikö, k’akpanikö, 
Yak ida k’nsi nsi. 

3. Ke enöde nyin idiöñö 
Ndikpöñ isöñ emi, 
Iyenyöñ k’mba me enjel, 
Idara k’ikot Esie; 
Iyekara, iyekara, 
Ye Enye k’ nsi nsi. 

Amen. 

      """
    },
    {
      "id": 994,
      "title": "IKWÖ MBUBREYO",
      "audio": "",
      "body": """
      KEY Ab 6/4 

{|d :-:d ld :-:L, |s, :-:fe, ls, :-:|
d :-:d ld :-:L, |s, :-:fe, ls, :-:-} 

1. USEN oyom ‘ndikure, 
Nduök odudu edi; 
Bet, tuak ibuot nö Enye 
K’öfiöñ önöd’ uñwana 
K’okoneyo. 

Körös: 
pEdisana Abasi me udim! 
Afo ’du k’enyöñ y’isöñ, 
cresEnyöñ y’isöñ k’ekwö Fi, 
Abasi-Ibom. 

2. Öböñ uwem ke enyöñ, 
Andikara ke isöñ, 
Da nyin iyomd’ iso Fo 
Sin k’ubök ukpeme Fo, 
Emekpere. 

3. K’ mfut ösukhörede, 
Ima Fo ofuk kpukpru, 
Oto k’uböñ ye mfön 
Ye uñwana iso Fo, 
Nyin iyom Fi. 

4. Ke nyin midikwe aba 
Uñwana usen y’ekim, 
Öböñ me enjel nam nyin 
Ikut ‘nsinsi usiere, 
Ukut etre. 

Amen. 
      """
    },
    {
      "id": 995,
      "title": "UWEMEYO KE EBE ",
      "audio": "",
      "body": """
      KEY Ab 4/4

{|m:m lf:f |s :-lm :-|f :f lm :m 
|r :-l-} 

1. UWEMEYO k’ebe, 
Ekim k’ekpere, 
Mfut mbubreyo 
Onion akakha. 

2. Jesus nö m’akpa ‘mba 
Ifure idap, 
Y’eti eridiöñ Fo 
Kini idede. 

3. Kini okoneyo, 
Yak enjel etat 
Mba mö efuk nyin, 
Ekpeme kpukpru. 

4. Ndien ke usiere 
Yak idemere 
K’edisana uwem, 
Ida k’iso Fo. 

5. Uböñ enyen’ Ete, 
Ye Eyen ñko 
Y’Edisana Spirit 
K’ofri emana. 

Amen. 

      """
    },
    {
      "id": 996,
      "title": "ABASI ODU YE AFO! ",
      "audio": "",
      "body": """
      KEY Db 4/4 

{|m:-.mlm.m:m.m|s:rlm: |L 
:-.L lL .L :L .L |L :-ls : } 

1. YAK Abasi odu ye afo, 
Ekpeme fi k’ikö Esie, 
Ofuk fi ye m’eröñ Esie, 
Odu y’afo tutu isobo. 

Körös: 
Tutu nyin (ifiak) isobo 
Isobo k’ukot Jesus, (isobo) 
Tutu nyin (ifiak) isobo, 
Yak Abasi odu ye afo. 

2. Yak Abasi odu ye afo, 
Ofuk fi ke mba Esie, 
Önö udia k’usen k’usen, 
Odu y’afo tutu isobo. 

3. Yak Abasi odu ye afo, 
K’ukut uwem ofukde fi, 
Akama fi k’ubök Esie, 
Odu y’afo tutu isobo. 

4. Yak Abasi odu ye afo 
Ofuk fi ke ima Esie 
Akan mkpa ke iso fo, 
Odu y’afo tutu isobo. 

Amen. 
      """
    },
    {
      "id": 997,
      "title": "ÖBÖÑ KPEME NYIN KE OKONEYO EMI ",
      "audio": "",
      "body": """
      KEY G 4/4 

{:s, |s, :s, lL, :L, |s, :-l-:s, |s, :s, 
ld :d |r :-l-} 

Softly & slowly 

K’OKONEYO emi, 
Öböñ sio nyin k’ndik, 
Yak enjel Fo ekpeme nyin 
Tutu ke usiere. 

Amen.
      """
    },
    {
      "id": 998,
      "title": "URUK ORO ÖFÖN EKE ÖBÖPDE ",
      "audio": "",
      "body": """
      KEY F 3/4

{:m|m :d :m|r:t, :r |d :-:d ld:L, 
:d ld :s, :d |t, :-} 

1. URUK oro öfön, 
Öböpde nyin k’ima, 
Anam ibuana ke ñkpö 
Nte mbon enyöñ. 

2. Inam mkpe ubök, 
Ke ebekpo Öböñ; 
Ndik y’idorenyin y’uduak 
Nyin, kpukpru edi kiet. 

3. Ibuan’ afaneköñ, 
Ibiom mbiomo kiet, 
Inyuñ ifukhö ye owo 
Eke öfukhöde. 

4. K’ufan ökpöñde nyin 
Önö nyin mfukhö, 
Iyesuk idi kiet k’esit 
Koro iyesobo. 

Amen. 
      """
    },
    {
      "id": 999,
      "title": "ESISIT ISAÑ MBA",
      "audio": "",
      "body": """
      KEY A 4/4

{:d|m : -ld :-|r :d lL, :d |s, :-.s, 
ld :m |r:-:-} 

1. OSUK esisit isañ, iyesim iduñ, 
Osuk esisit ukut, iyesim iduñ, 
Esisit usen ‘ndibiom cross 
man iyar’ anyanya ye Christ, 
Osuk esisit isañ, iyesim iduñ. 

Körös: 
SA: Ke uwem ebede 
TB: Ke uwem isöñ ebede 
SA: Iyeduök odudu 
TB: Iyeduök, ’yeduök odudu, 
All: Ukut ididuhe 
Ke isimd’ iduñ. 

2. Osuk esisit eyet, iyesim iduñ, 
Ye esisit ukpeme, iyesim iduñ, 
Esisit erikan k’idiök, esisit 
eriyom ukpöñ, 
Osuk esisit isañ, iyesim iduñ. 

3. Esisit erikpöñ kiet, iyesim 
iduñ, 
Esisit nti ikö, iyesim iduñ, 
Esisit erikpöñ isöñ, ndien 
ika k’obio Canaan, 
Osuk esisit isañ, iyesim iduñ. 

Amen. 
      """
    },
    {
      "id": 1000,
      "title": "IKWÖ USUANA",
      "audio": "",
      "body": """
      KEY Ab 4/4

{|d:-lt, :d|L, :d ls, :-|m :d lf :r |d 
:t, ld :-} 

1. K’ISO nyin isuana, 
Etoro Andifak, 
Yak kpukpr’ esit y’uyo 
Etor’ Eyeneröñ. 

Körös: 
Jesus ke nyin iköm, 
Ufan m’idiök owo, 
Itoro idopke, 
Tor’ Enye k’nsinsi. 

2. K’mfön Fo, nyin idi, 
Nö eridiöñ oro, 
Ikedi k’enyiñ Fo, 
Isuana ke Afo. 

3. Ke nti ikö Fo, 
Idu ’wem, iköri, 
Inyuñ ifiök Öböñ, 
Isin ke erinam. 

Amen. 
      """
    },
  ];
}
