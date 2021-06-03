-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 22, 2021 at 01:07 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `taborskym`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `cdate` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `uid`, `cdate`, `message`) VALUES
(1, 'martin', '2021-01-03 12:21:49', 'Treba viac osoliť quinoový šalát'),
(2, 'jakub', '2021-01-03 12:24:11', 'Mega dobre recepty. Dakujem za napad'),
(3, 'Fero', '2021-01-03 12:27:15', 'Skvela praca'),
(4, 'Laco', '2021-01-03 12:28:38', 'Quinoovy salat je delicious');

-- --------------------------------------------------------

--
-- Table structure for table `proba`
--

CREATE TABLE `proba` (
  `ID` int(11) NOT NULL,
  `Content-sk` text NOT NULL,
  `Content-hu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proba`
--

INSERT INTO `proba` (`ID`, `Content-sk`, `Content-hu`) VALUES
(1, 'Z hľadiska výživy a biochemických vlastností sú oveľa lepšie ako kuracie a majú cenné antibakteriálne, protinádorové a imunomodulačné účinky. Päť prepeličích vajec sa hmotnosťou rovná jednému kuraciemu. Prepeličie vajíčka v porovnaní s bežnými kuracím vajíčkami obsahujú stopové prvky a vitamíny.Množstvo bielkovín a aminokyselín v prepeličích vajciach je väčšie ako vo vajciach iných vtákov. Prepeličie vajcia sa môžu užívať pri liečbe rôznych ochorení, napríklad pri zníženej imunite, dôvodom ktorej sa zvyšuje citlivosť na ochorenia dýchacích ciest ako aj tendencia k chronickej bronchitíde a zápalu pľúc, astme a tuberkulóze. Taktiež prospievajú pri poruchách nervového systému, anémii, ochoreniach tráviaceho traktu, najmä pri vredoch a gastritíde, zápale brušnej sliznice. Nepopierateľne pozitívne účinky sa potvrdili aj pri cukrovke. Diabetikom sa odporúča jesť šesť prepeličích vajec týždenne. Takáto liečba môže znížiť hladinu glukózy v krvi až o dve jednotky. V kombinácii s vhodnou stravou je možné dosiahnuť ešte lepšie výsledky.', 'A táplálék és a biokémia szempontjából sokkal jobb tulajdonságai vannak mint a tyúk tojásnak. Antibakteriális, daganatellenes, immunerösítő hatással bír. Öt fürj tojás eggyezik egy tyúk tojás súlyával. Fürj tojás hasonlóan a tyúk tojáshoz tartalmaz vitaminokat. Aminosav és a fehérje tartalma sokkal nagyobb mint bármelyik más madár tojásának. Fürj tojást használhassák különbözö léguti betegségek gyógyitására mint például tüdő gyulladás, asztma, tuberkolózis. Ugyanúgy megfelelnek az idegrendszeri problémáknál, emésztési problémáknál, gyomor fekélynél, hasnyálmirigy gyulladásnál. Pozitív hatásai vannak cukor betegséggel szemben is. Az orvosok heti 6 fürjtojás fogyasztását ajánlják egészséges körülmények mellett. Ez a gyógymód csökkentheti a vérben a glukóz szintet akár 2 egységgel. Kombinálva az egészséges táplálkozással még jobb eredmények érhetöek el.'),
(2, '<p class=\"kozep\">Železo – 4x viac ako kuracie vajíčko</p>\r\n            <p class=\"kozep\">Vitamín A – viac ako 2,5 krát</p>\r\n            <p class=\"kozep\">Meď – 2,2 krát viac</p> \r\n            <p class=\"kozep\">Vitamín B1– 2,8 krát viac</p> \r\n            <p class=\"kozep\">Kobalt – 2,2 krát viac</p>\r\n            <p class=\"kozep\">Vitamín B2 – 2,2 krát viac</p> \r\n            <p class=\"kozep\">Fosfor – 4,5 krát viac</p>\r\n            <p class=\"kozep\">Draslík – 4,5 krát viac</p>\r\n', '<p class=\"kozep\">vas – 4x több mint a tyúk tojásban</p>\r\n            <p class=\"kozep\">Vitamín A – több mint 2,5x</p>\r\n            <p class=\"kozep\">Réz – több mint 2,2x</p> \r\n            <p class=\"kozep\">Vitamín B1 - több mint 2,8x</p> \r\n            <p class=\"kozep\">Kobalt – több mint 2,2x</p>\r\n            <p class=\"kozep\">Vitamín B2 – több mint 2,2x</p> \r\n            <p class=\"kozep\">Foszfor – több mint 4,5x</p>\r\n            <p class=\"kozep\">Kálium – több mint 4,5x</p>\r\n'),
(3, 'Užívanie prepeličích vajec v kombinácii s diétou pomáha posilniť imunitu, obnovuje a zlepšuje látkovú výmenu, čo je základom pre zlepšenie celkového stavu organizmu a zdravotného stavu. Vzhľadom na vysoký obsah fosforu, majú prepeličie vajíčka tiež výborný účinok na povzbudenie potencie.Prepeličie vajíčka sa ľahko vstrebávajú, bez toho aby vyvolali akékoľvek nežiaduce účinky, o čom svedčí množstvo údajov z medicínskych pozorovaní. Rodičia, ktorí boli nútení do svojho jedálnička zaradiť prepeličie vajíčka z dôvodu častého ochorenia svojich detí, potvrdzujú významné zlepšenie ich zdravotného stavu už po niekoľkých mesiacoch užívania vajec.avyše prepeličie vajcia obsahujú vitamín D, ktorý prispieva k rastu. Deti, ktoré zaostávali za svojimi rovesníkmi, narástli za rok o viac ako 8 cm.Veľmi dobrý vplyv majú prepeličie vajcia aj na koktanie. Bez ohľadu na povahu ochorenia (či už je vrodená alebo nervového pôvodu), po troch až štyroch mesiacoch užívania, bude dieťa alebo dospelý schopný normálnej konverzácie.Fosfor obsiahnutý v prepeličích vajciach stimuluje duševný vývoj, zlepšuje pamäť a urýchľuje vývoj inteligencie u detí a dospievajúcich, preto je vhodné podávať vajcia deťom s oneskoreným vývojom.', 'Fürj tojás használata diétával kombinálva segít megerősíteni az immun rendszert és javítja az anyag cserét. Tekintettel  a magas foszfor tartalomra, nagyon jó hatása van a potencia növelésére. Szülök akiknek muszáj volt a saját étlapjukba beletenni a fürj tojást a gyerekeik gyakori megbetegedése végett igazolják a kitüntető egészségügyi javulásokat pár hónap fürj tojás fogyasztás után. Ráadásul a fürj tojás tartalmaz D vitamint ami a növéshez kell. Gyerekek akik lemaradtak kortársaikhoz képest egy év alatt 8 cm-t nőttek. A betegség eredetétől függetlenül (legyen veleszületett vagy ideg alapú) 3 vagy 4 hónap tojás fogyasztás után a gyermek vagy felnőtt képes lesz normális komunikációra. Foszfor javítja a memóriát, gyorsítja az inteligencia kifejlődését a gyerekeknek ezért érdemes már kis kortól tojást adni.'),
(4, '<p class=\"opis\">Ľudia trpia rôznymi kožnými ochoreniami, napríklad ekzém, lupienka, rôzne poškodenia pokožky, atď.  Pre týchto ľudí máme dobrú správu. Prepeličie vajíčka obsahujú živiny, ktoré vo veľkej miere prispievajú k udržiavaniu zdravej pokožky a k predchádzaniu kožných ochorení. Prepeličie vajíčka sú bohaté na esenciálne mastné kyseliny, čím zabezpečujú prirodzenú vlhkosť buniek. Je to dôležité pri liečení pokožky poškodenej nadmernou suchosťou. Prepeličie vajíčka obsahujú vitamín B2 riboflavín a vitamín A retinol, ktoré sú dôležité pre obnovovaní poškodených kožných tkanív. Obsahujú taktiež vitamín B12, ktorý pomáha zabrániť produkcii zápalových cytokínov, ktorú sú primárnou príčinou alergických ochorení kože.</p>\r\n          <p class=\"opis\">Medzi najčastejšie sa vyskytujúce ochorenia žalúdka patria hlavne žalúdočné vredy, gastritída a vredy dvanástnika. Prepeličie vajíčka sú vysoko zásadité a obsahujú antioxidanty, a ako jedlo bohaté na selén a vitamíny sa prepeličie vajcia považujú za antioxidant. Tieto vlastnosti robia prepeličie vajcia efektívnou prírodnou alternatívou liekov a liečiv určených na znižovanie hladiny žalúdočnej kyseliny a liečbu vredov. Táto skutočnosť je potvrdená klinickými štúdiami, kedy sa používali prírodné antioxydanty na liečbu peptických vredov a gastritídy spôsobených oxidačným stresom a premnoženými voľnými radikálmi.</p>\r\n          <p class=\"opis\">O prepeličích vajciach je známe, že neobsahujú žiadne alebo len veľmi malé množstvo uhlohydrátov. Obsahujú HDC cholesterol, to znamená lipoproteín s vysokou hustotou. Jedná sa o dobrý cholesterol, ktorý pláva v krvnom riečišti, pričom kontrolovaním a znižovaním krvného tlaku znižuje riziko srdcových ochorení. Prepeličie vajcia, ako súčasť vášho jedálnička, predĺžia váš život kontrolou a znižovaním krvného tlaku a znižovaním rizika vzniku srdcových ochorení.</p>\r\n          <p class=\"opis\">Prepeličie vajcia sú považované za antioxidanty, pretože sú bohaté na vitamín A a selén a preto sú veľmi odporúčané, ak chceme predísť rakovine tým, že chránime bunky pred týmito voľnými radikálmi. Prepeličie vajcia môžu konzumovať aj pacienti, ktorí podstupujú liečbu rakoviny aby zvýšili zásaditosť svojho organizmu, čím sa vytvára prostredie nevhodné pre rast rakoviny.</p>\r\n          <p class=\"opis\">Chudokrvnosť je stav, kedy telo nemá dostatočné množstvo zdravých červených krviniek, ktoré dovážajú oxygen do tkanív v celom tele. Chudokrvnosť môže byť spôsobená nedostatkom vitamínu B12 a železa. Prepeličie vajcia sú všeobecne známym 100% prírodným zdrojom železa, vitamínu A a vitamínu B12. S nimi už nebudete potrebovať klasické pilulky na doplnenie železa.</p>\r\n          <p class=\"opis\">Prepeličie vajcia predstavujú nízko-uhlohydrátovú, nízkokalorickú liečbu cukrovky pre udržanie bezpečnej hladiny cukru a cholesterolu. Jedným z najlepších spôsobov ako sa vyliečiť z cukrovky je viesť zdravý aktívny životný štýl a zároveň dodržiavať vyrovnanú diabetickú diétu.  Konzumácia prepeličích vajec môže taktiež zmierniť liečbu cukrovky tým, že sa zníži potreba inzulínových injekcií.</p>\r\n          <p class=\"opis\">V prípadoch, keď je medicínska liečba nedostačujúca alebo nedostupná, je veľmi dôležité užívať tak veľa prírodných liečiv ako je len možné.</p>\r\n          <p class=\"opis\">Takmer 90% detského mozgu sa vyvíja do 5 rokov života dieťaťa. Musíme zabezpečiť, aby deti dostali všetko čo potrebujú. Existujú tri výnimočné výhody, ktoré prepeličie vajíčka ponúkajú v súvislosti s konzumáciou v detskom veku. Omega 3 pre rozvoj mozgu a nervového systému plodu. Cholín a Omega-3 & 6 potrebné pre neustály rozvoj IQ dieťaťa. Obsahujú živiny potrebné pre zdravý vývoj mozgu dieťaťa a neobsahujú cukor. Vplyv podvýživy u malých detí (vo veku 0-8), môže mať zničujúce a trvalé následky. Môže narušiť behaviorálny a kognitívny vývoj, vzdelávateľnosť a vychovateľnosť a produktívne zdravie. Mnoho rokov tvorili prepeličie vajcia jadro ázijskej stravy, keďže odborníci na výživu a lekári uznávali ich prínos v podpore dobrej pamäte a pre zvýšenie mozgovej aktivity a reguláciu nervového systému. Prepeličie vajcia sú prirodzeným zdrojom cholínu, ktorý produkuje acetylcholín, potrebný pre lepší rozvoj detského mozgu. Omega-3 mastné kyseliny taktiež známe ako kyselina dokosahexaenová (DHA) sú veľmi dôležité pre optimálnu funkciu mozgu. Počas tehotenstva sa Omega-3 mastné kyseliny prenášajú z matkinej krvi do krvi plodu placentou, sú veľmi dôležité pre rozvoj membrány sietnice mozgu plodu. To znamená, že množstvo DHA, ktoré dieťa dostane závisí od toho aké množstvo omega 3 mastných kyselín príjme matka v podobe potravy.</p>\r\n          <p class=\"opis\">Nutričná strava predstavuje asi 80% výhod, ktoré sú zahrnuté v zdravom životnom štýle. Narastajúci výskum ukazuje, že potraviny, ktoré sú bohaté na určité živiny výrazným spôsobom ovplyvňujú dĺžku nášho života. Zistilo sa, že prepeličie vajíčka obsahujú aspoň 90% týchto živín. Prepeličie vajíčka dodajú vašej pleti mladý a zdravý vzhľad. Prepeličie vajíčka posilnia vašu imunitu voči chorobám a spomalia starnutie vašich orgánov a predĺžia váš život. Taktiež chránia nervový systém a mozog pred poškodením a problémami spojenými so stratou pamäte. Ak chcete starnúť elegantne, prirodzené metódy ako zdravý životný štýl, cvičenia, oddych a taktiež prepeličie vajíčka zaradené do jedálnička môžu spraviť zázraky. So živinami, ktoré obsahujú prepeličie vajíčka dosiahnete krásnu a zdravú pleť. Pravidelná konzumácia prepeličích vajíčok taktiež napomáha tvoriť zdravé membrány kožných buniek, čím sa zabezpečí vhodná vlhkosť pokožky, ktorá vyzerá mlado a zvodne. Je to z dôvodu prítomnosti Omega 3 mastných kyselín, vitamínu B, atď..</p>\r\n          <p class=\"opis\">Prepeličie vajíčka poskytujú efektívnu prírodnú alternatívu konvenčných antihistaminík, ktoré pomáhajú znížiť obštrukcie na sliznici. Prepeličie vajíčka sú bohatým zdrojom vitamínu A, retinolu a antioxidantov; pôsobí ako prírodný histamínový tlmič a zároveň lieči sliznicu.</p>\r\n', '<p class=\"szoveg\">Emberek akik szenvednek valamilyen bőr betegségben, mint például ekszéma, lupienka, bőr sérülések, stb.  Ezek emberek számára van egy jó hírünk. Fürj tojás tartalmaz tápanyagokat, amik nagy mértékben hozzájárulnak az egészséges bör megtartására és a bőr betegségek elkerülésére. Fürj tojás gazdag olyan zsír svakban, ami bebiztosítják a természetes nedvességét a sejteknek. Ez nagyon fontos a nagymértéku bőrszárazság kezelésénél. Fürjtojás tartalmaz B2 vitamint és A vitamint, melyek fontosak a sérült bör szövetek megújításához. Tartalmaz ugyanúgy B12 vitamint, segítt megakadájozni zápalových cytokínov termelését ,ami a fő okozója az alergiás bőrbetegségnek.</p>\r\n          <p class=\"szoveg\">A leggyakoribb gyomorbetegségek elsősorban a gyomorfekélyt, a gyomorhurutot és a nyombélfekélyt tartalmazzák. A fürjtojások erősen lúgosak és antioxidánsokat tartalmaznak, szelénben és vitaminokban gazdag ételként a fürjtojásokat antioxidánsnak tekintik. Ezek a tulajdonságok teszik a fürjtojásokat a gyomorsavszint csökkentésére és a fekélyek kezelésére tervezett gyógyszerek és gyógyszerek hatékony természetes alternatívájává. Ezt természetes antioxidánsokkal végzett klinikai vizsgálatok igazolják az oxidatív stressz és a megnövekedett szabad gyökök által okozott peptikus fekélyek és gyomorhurut kezelésére.</p>\r\n          <p class=\"szoveg\">\r\nA fürjtojások köztudottan kevés vagy egyáltalán nem tartalmaznak szénhidrátot. HDC-koleszterint, azaz nagy sűrűségű lipoproteint tartalmaznak. Ez egy jó koleszterin, amely a véráramban lebeg, míg a vérnyomás csökkentése és csökkentése csökkenti a szívbetegségek kockázatát. A fürjtojások, az étrend részeként, meghosszabbítják az életét azáltal, hogy szabályozzák és csökkentik a vérnyomást, és csökkentik a szívbetegségek kockázatát.</p>\r\n          <p class=\"szoveg\">\r\nA fürjtojásokat antioxidánsoknak tekintik, mivel A-vitaminban és szelénben gazdagok, ezért nagyon ajánlottak, ha a rákot úgy akarjuk megakadályozni, hogy megvédjük a sejteket ezektől a szabad gyököktől. A fürjtojásokat a rákkezelés alatt álló betegek is fogyaszthatják testük lúgosságának növelése érdekében, a rák növekedésére alkalmatlan környezetet teremthetnek.\r\n</p>\r\n          <p class=\"szoveg\">A vérszegénység olyan állapot, amikor a szervezetnek nincs elegendő egészséges vörösvértestje ahhoz, hogy oxigént juttasson a test szövetébe. A vérszegénységet a B12-vitamin és a vas hiánya okozhatja. A fürjtojások a vas, az A-vitamin és a B12-vitamin közismert, 100% -ban természetes forrása. Velük már nem lesz szükség klasszikus vas-kiegészítőkre.</p>\r\n          <p class=\"szoveg\">A fürjtojás alacsony szénhidráttartalmú, alacsony kalóriatartalmú cukorbetegség-kezelés a biztonságos cukor- és koleszterinszint fenntartása érdekében. A cukorbetegség gyógyításának egyik legjobb módja az egészséges, aktív életmód vezetése, miközben kiegyensúlyozott cukorbeteg étrendet követ. A fürjtojások fogyasztása enyhítheti a cukorbetegség kezelését is, csökkentve az inzulininjekció szükségességét.</p>\r\n          <p class=\"szoveg\">\r\nAbban az esetben, ha az orvosi kezelés nem elegendő vagy nem érhető el, nagyon fontos, hogy minél több természetes gyógymódot vegyen be.</p>\r\n          <p class=\"szoveg\">A gyermek agyának majdnem 90% -a a gyermek életétől számított 5 éven belül fejlődik ki. Biztosítanunk kell, hogy a gyerekek mindent megkapjanak, amire szükségük van. Három kivételes előnye van a fürjtojásoknak, amikor gyermekként fogyasztják őket. Omega 3 az agy és a magzati idegrendszer fejlődéséhez. Kolin és Omega-3 és 6 szükséges a gyermek IQ állandó fejlődéséhez. Tartalmazzák a gyermek agyának egészséges fejlődéséhez szükséges tápanyagokat, és nem tartalmaznak cukrot. Az alultápláltság következményei a kisgyermekeknél (0–8 év) pusztító és tartós következményekkel járhatnak. Ronthatja a viselkedési és kognitív fejlődést, az iskolázhatóságot és a taníthatóságot, valamint a produktív egészséget. Sok éven át a fürjtojás állt az ázsiai étrend középpontjában, mivel a táplálkozási szakemberek és az orvosok felismerték hozzájárulásukat a jó memória elősegítéséhez, az agyi aktivitás növeléséhez és az idegrendszer szabályozásához. A fürjtojás a kolin természetes forrása, amely a gyermek agyának jobb fejlődéséhez szükséges acetilkolint termeli. Az omega-3 zsírsavak, más néven dokozahexaénsav (DHA) nagyon fontosak az optimális agyműködés szempontjából. Terhesség alatt az omega-3 zsírsavak az anya véréből a magzat vérébe kerülnek a placentán keresztül, ezek nagyon fontosak a retina agy retinahártyájának kialakulásához. Ez azt jelenti, hogy a gyermek által kapott DHA mennyisége attól függ, hogy az anya mennyi omega 3 zsírsavat kap élelmiszer formájában.</p>\r\n          <p class=\"szoveg\">A táplálkozási étrend az egészséges életmódban rejlő előnyök mintegy 80% -át képviseli. Az egyre növekvő kutatások azt mutatják, hogy bizonyos tápanyagokban gazdag ételek jelentős hatással vannak életünkre. Megállapították, hogy a fürjtojások tartalmazzák ezen tápanyagok legalább 90% -át. A fürjtojások fiatal és egészséges megjelenést kölcsönöznek a bőrének. A fürjtojások megerősítik a betegségekkel szembeni immunitást, lassítják a szervek öregedését és meghosszabbítják az életedet. Ezenkívül megvédi az idegrendszert és az agyat a memóriavesztéssel járó károsodásoktól és problémáktól. Ha elegánsan szeretne öregedni, az olyan természetes módszerek, mint az egészséges életmód, a testmozgás, a pihenés és az étrendben szereplő fürjtojások is csodákra képesek. A fürjtojásokban található tápanyagokkal gyönyörű és egészséges bőrt érhet el. A fürjtojások rendszeres fogyasztása szintén hozzájárul az egészséges bőrsejtek membránjának kialakulásához, ezáltal biztosítva a megfelelő bőrnedvességet, amely fiatalnak és csábítónak tűnik. Ennek oka az Omega 3 zsírsavak, a B-vitamin stb.</p>\r\n          <p class=\"szoveg\">A fürjtojások hatékony természetes alternatívát jelentenek a hagyományos antihisztaminokkal szemben, amelyek segítenek csökkenteni a nyálkahártya elzáródását. A fürjtojások gazdag A-vitamin-, retinol- és antioxidáns-források; természetes hisztamin-szuppresszorként működik, és ugyanakkor meggyógyítja a nyálkahártyát.</p>\r\n'),
(5, '<p class=\"szoveg\">Hovorí sa, že prepeličie vajíčka majú veľmi nízky obsah kalórií, a veľmi malý obsah karbohydrátov. Sú plné esenciálnych živín ako:</p>\r\n<ul style=\'font-weight:bold;color: black;\'>\r\n          <li><p class=\"sorolas\">Vitamín A (retinol)</p></li>\r\n          <li><p class=\"sorolas\">Vitamín B2 (Riboflavin)</p></li>\r\n          <li><p class=\"sorolas\">Vitamín B12</p></li>\r\n          <li><p class=\"sorolas\">Vitamín B6</p></li>\r\n          <li><p class=\"sorolas\">Vitamín B1</p></li>\r\n          <li><p class=\"sorolas\">Vitamín C</p></li>\r\n          <li><p class=\"sorolas\">Vitamín D</p></li>\r\n          <li><p class=\"sorolas\">Vitamín E</p></li></ul>\r\n          <p class=\"szoveg\">Výskumy taktiež potvrdili, že prepeličie vajcia obsahujú antioxidanty a taktiež obsahujú :</p>\r\n<ul style=\'font-weight:bold;color: black;\'>\r\n          <li><p class=\"sorolas\">Omega-3</p></li>\r\n          <li><p class=\"sorolas\">Omega-6</p></li>\r\n          <li><p class=\"sorolas\">Selén</p></li>\r\n          <li><p class=\"sorolas\">Cholín</p></li>\r\n</ul>\r\n          <p class=\"szoveg\">Sú takisto bohaté na minerálne látky ako:</p>\r\n<ul style=\'font-weight:bold;color: black;\'>\r\n          <li><p class=\"sorolas\">Horčík</p></li>\r\n          <li><p class=\"sorolas\">Draslík</p></li>\r\n          <li><p class=\"sorolas\">Kyselina listová</p></li>\r\n          <li><p class=\"sorolas\">Železo</p></li>\r\n          <li><p class=\"sorolas\">Fosfor</p></li>\r\n          <li><p class=\"sorolas\">Zinok</p></li>\r\n<br>\r\n</ul>\r\n', '<p class=\"szoveg\">Azt mondjak hogy a furj tojasnak nagyon keves  kaloriat tartalmaz, es keves karbohydrátot. Tele van fontos vitaminokkal mint:</p>\r\n          <ul style=\'font-weight:bold;color: black;\'>\r\n              <li><p class=\"sorolas\">Vitamín A (retinol)</p></li>\r\n              <li><p class=\"sorolas\">Vitamín B2 (Riboflavin)</p></li>\r\n              <li><p class=\"sorolas\">Vitamín B12</p></li>\r\n              <li><p class=\"sorolas\">Vitamín B6</p></li>\r\n              <li><p class=\"sorolas\">Vitamín B1</p></li>\r\n              <li><p class=\"sorolas\">Vitamín C</p></li>\r\n              <li><p class=\"sorolas\">Vitamín D</p></li>\r\n              <li><p class=\"sorolas\">Vitamín E</p></li>\r\n          </ul>\r\n          <p class=\"szoveg\">Kutatások igazolták, hogy a fürj tojás tartalmaz antioxidantot és ugyan úgy tartalmaz :</p>\r\n          <ul style=\'font-weight:bold;color: black;\'>\r\n              <li><p class=\"sorolas\">Omega-3</p></li>\r\n              <li><p class=\"sorolas\">Omega-6</p></li>\r\n              <li><p class=\"sorolas\">Szelén</p></li>\r\n              <li><p class=\"sorolas\">Cholín</p></li>\r\n          </ul>\r\n          <p class=\"szoveg\">Ásványi anyagokban is gazdak mint :</p>\r\n\r\n          <ul style=\'font-weight:bold;color: black;\'>\r\n              <li><p class=\"sorolas\">Magnézium</p></li>\r\n              <li><p class=\"sorolas\">Kálium</p></li>\r\n              <li><p class=\"sorolas\">Folsav</p></li>\r\n              <li><p class=\"sorolas\">Vas</p></li>\r\n              <li><p class=\"sorolas\">Foszfor</p></li>\r\n              <li><p class=\"sorolas\">Higany</p></li>\r\n          </ul>\r\n'),
(6, '<p class=\"szoveg\">Čínski lekári používajú prepeličie vajcia na liečenie chorôb už tisíce rokov. Britský výskumníci tvrdia, že vajcia by mali byť vyhlásené za „superstravu“. Hovorí sa, že prepeličie vajcia obsahujú najviac dôležitých výživových zložiek, a mali by sme ich konzumovať denne.</p>\r\n             <div class=\"card\"><p class=\"sorolas\">Prepeličie vajcia sú vhodné:</p>  \r\n             <ol style=\'font-weight:bold;color: black;\'> \r\n                <li><p class=\"sorolas\">Pre zdravú pleť a pokožku</p></li>\r\n                <li><p class=\"sorolas\">Na zlepšenie sexuálnej potencie</p></li>\r\n                <li><p class=\"sorolas\">Pri liečbe obličkových kameňov</p></li>\r\n                <li><p class=\"sorolas\">Pri liečbe vredov</p></li>\r\n                <li><p class=\"sorolas\">Pri liečbe srdcových ochorení</p></li>\r\n                <li><p class=\"sorolas\">Pri liečbe rakoviny</p></li>\r\n                <li><p class=\"sorolas\">Pri liečbe chudokrvnosti</p></li>\r\n                <li><p class=\"sorolas\">Pri liečbe cukrovky</p></li>\r\n                <li><p class=\"sorolas\">Napomáhajú rozvoju detského mozgu</p></li>\r\n                <li><p class=\"sorolas\">Sú prírodným prípravkom proti starnutiu</p></li>\r\n              </ol>\r\n</div>\r\n', '<p class=\"szoveg\">Kinia orvosok év ezredek óta használják a fürj tojást betegségek gyógyitására. Azt mondják hogy a fürj tojás tartalmazza a legfontosabb tápanyag összetevöket ezért minden nap kéne fogyasztani.</p>\r\n            <div class=\"card\">\r\n                <p class=\"sorolas\">A fürj tojás megfelelő:</p>\r\n                <ol style=\'font-weight:bold;color: black;\'>\r\n                    <li><p class=\"sorolas\">Az egészséges bőrért.</p></li>\r\n                    <li><p class=\"sorolas\">Szexuális potencia javítására.</p></li>\r\n                    <li><p class=\"sorolas\">Vese köveknél.</p></li>\r\n                    <li><p class=\"sorolas\">Gyomor fekély.</p></li>\r\n                    <li><p class=\"sorolas\">Szívbetegségek gyógyításánál.</p></li>\r\n                    <li><p class=\"sorolas\">Rák gyógyitásánál.</p></li>\r\n                    <li><p class=\"sorolas\">Vérszegénység gyógyitásánál.</p></li>\r\n                    <li><p class=\"sorolas\">Cukorbetegségnél.</p></li>\r\n                    <li><p class=\"sorolas\">Segíti a gyermek agyának fejlődését.</p></li>\r\n                    <li><p class=\"sorolas\">Természetes szer az öregedés ellen.</p></li>\r\n               </ol>  \r\n           </div>'),
(7, '<p class=\"szoveg\">V nižšie uvedenej tabuľke nájdete návrhy, ako správne užívať prepeličie vajíčka. Nasledujúce odporúčania sú radené podľa veku: Veková Kategória	Celkové (minimálne odporúčané) množstvo prepeličích vajec	Celkový počet dní	Prvý deň	Druhý deň	Tretí deň	Od štvrtého dňa ďalej</p>\r\n          <table>\r\n            <tr>\r\n              <th>Veková Kategória</th>\r\n              <th>Celkové (minimálne odporúčané) množstvo prepeličích vajec</th>\r\n              <th>Celkový počet dní</th>\r\n              <th>Prvý deň</th>\r\n              <th>Druhý deň</th>\r\n              <th>Tretí deň</th>\r\n              <th>Od štvrtého dňa ďalej</th>\r\n            </tr>\r\n            <tr>\r\n              <td>Dospelí</td>\r\n              <td>240</td>\r\n              <td>49</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>4</td>\r\n              <td>5</td>\r\n            </tr>\r\n            <tr>\r\n                <td>Dospelí</td>\r\n                <td>120</td>\r\n                <td>25</td>\r\n                <td>3</td>\r\n                <td>3</td>\r\n                <td>4</td>\r\n                <td>5</td>\r\n            </tr>\r\n            <tr>\r\n              <td>16-18 rokov</td>\r\n              <td>120</td>\r\n              <td>25</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>4</td>\r\n              <td>5</td>\r\n            </tr>\r\n            <tr>\r\n              <td>16-18 rokov</td>\r\n              <td>120</td>\r\n              <td>31</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>4</td>\r\n            </tr>\r\n            <tr>\r\n              <td>8-10 rokov</td>\r\n              <td>90</td>\r\n              <td>30</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n            </tr>\r\n            <tr>\r\n              <td>4-7 rokov</td>\r\n              <td>60</td>\r\n              <td>20</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n            </tr>\r\n            <tr>\r\n              <td>1-3 roky</td>\r\n              <td>60</td>\r\n              <td>30</td>\r\n              <td>2</td>\r\n              <td>2</td>\r\n              <td>2</td>\r\n              <td>2</td>\r\n            </tr>\r\n            <tr>\r\n              <td>3 mesiace - 1 rok</td>\r\n              <td>30</td>\r\n              <td>30</td>\r\n              <td>1</td>\r\n              <td>1</td>\r\n              <td>1</td>\r\n              <td>1</td>\r\n            </tr>\r\n            </table>\r\n<p class=\"szoveg\">Prírodní liečitelia odporúčajú používanie prepeličích vajec pri liečení rôznych chorôb alebo problémov podľa nasledovnej tabuľky (uvádza sa minimálne odporúčané množstvo vajec):</p>\r\n', '<p class=\"szoveg\">Lejjeb a feltuntetett tablazatban megtalaljak, hogyan kell helyesen fogyasztani a furj tojast. A követlező ajánlatok az életkor alapján lett összeállítva:</p>\r\n            <table>\r\n              <tr>\r\n                <th>Életkor alapján</th>\r\n                <th>Egészen (ajánlott minimum) mennyiség a fürj tojásból</th>\r\n              <th>Napok száma</th>\r\n              <th>Első nap</th>\r\n              <th>Második nap</th>\r\n              <th>Harmadik nap</th>\r\n              <th>Negyedik naptól tovább</th>\r\n            </tr>\r\n            <tr>\r\n              <td>Felnőtt</td>\r\n              <td>240</td>\r\n              <td>49</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>4</td>\r\n              <td>5</td>\r\n            </tr>\r\n            <tr>\r\n              <td>Felnőtt</td>\r\n              <td>120</td>\r\n              <td>25</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>4</td>\r\n              <td>5</td>\r\n            </tr>\r\n            <tr>\r\n              <td>16-18 éves</td>\r\n              <td>120</td>\r\n              <td>25</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>4</td>\r\n              <td>5</td>\r\n            </tr>\r\n            <tr>\r\n              <td>16-18 éves</td>\r\n              <td>120</td>\r\n              <td>31</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>4</td>\r\n            </tr>\r\n            <tr>\r\n              <td>8-10 éves</td>\r\n              <td>90</td>\r\n              <td>30</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n            </tr>\r\n            <tr>\r\n              <td>4-7 éves</td>\r\n              <td>60</td>\r\n              <td>20</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n              <td>3</td>\r\n            </tr>\r\n            <tr>\r\n              <td>1-3 éves</td>\r\n              <td>60</td>\r\n              <td>30</td>\r\n              <td>2</td>\r\n              <td>2</td>\r\n              <td>2</td>\r\n              <td>2</td>\r\n            </tr>\r\n            <tr>\r\n              <td>3 hónapos - 1 éves</td>\r\n              <td>30</td>\r\n              <td>30</td>\r\n              <td>1</td>\r\n              <td>1</td>\r\n              <td>1</td>\r\n              <td>1</td>\r\n            </tr>\r\n          </table>\r\n            <p class=\"szoveg\">Természet gyógyászok ajánják fürj tojás használatát sokféle betegségek gyógyításra vagy problémákra a táblázat alapján.</p>\r\n'),
(8, '<table>\r\n            <tr>\r\n              <th>Kus</th>\r\n              <th>Cena</th>\r\n            </tr>\r\n            <tr>\r\n              <td>Vajíčko - 1ks (1 balík = 18ks)</td>\r\n              <td>0,10€</td>\r\n            </tr>\r\n            <tr>\r\n              <td>Vajíčko údené/nakladané - (18ks vo flaše) - na objednávok</td>\r\n              <td>Nedostupné</td>\r\n            </tr>\r\n            <tr>\r\n              <td>Prepelice živé - na objednávok</td>\r\n              <td>2,50€</td>\r\n            </tr>\r\n            <tr>\r\n              <td>Prepelice pripravené do kuchyne - na objednávok</td>\r\n              <td>10€/kg</td>\r\n            </tr>\r\n            </table>', '<table>\r\n              <tr>\r\n                <th>Darab</th>\r\n                <th>Ár</th>\r\n              </tr>\r\n              <tr>\r\n                <td>Tojás - 1db (1 csomag = 18db)</td>\r\n                <td>0,10€</td>\r\n              </tr>\r\n              <tr>\r\n                <td>Tojás füstölt/befőtt - (Egy üvegben 18db) - megrendelésre</td>\r\n                <td>Nem aktuális</td>\r\n              </tr>\r\n              <tr>\r\n                <td>Fürj élő - megrendelésre</td>\r\n                <td>2,50€</td>\r\n              </tr>\r\n              <tr>\r\n                <td>Fürj konyhakész - megrendelésre</td>\r\n                <td>10€/kg</td>\r\n              </tr>\r\n            </table>'),
(9, '        <div class=\"keret\">\r\n            <p class=\"szovge\"><b>Postup 1:</b> Zrnká quinoy pred tepelnou úpravou namočíme na niekoľko hodín do vody. Varíme ich na miernou ohni asi 15 až 20 minút, jeden a pol hrnčeka vody na jeden hrnček quinoy. Zeleninový vývar necháme zovrieť, potom ho osolíme. Zalejeme ním vopred pripravenú quinou v miske a zakryjeme potravinárskou fóliou na 15 minút. Medzitým vložíme do vriaceho hrnca s osolenou vodou prepeličie vajíčka, povaríme ich 3 minúty a potom schladíme v studenej vode. </p>\r\n            <p class=\"szoveg\"><b>Postup 2:</b> Na masle opražíme asi dvojcentimetrové plátky maslovej ryby. Pridáme pretlačený cesnak, tymian a pražíme z každej strany asi 2 minúty.</p>\r\n            <p class=\"szoveg\"><b>Postup 3:</b> Quinou zamiešame s olivovým olejom, jarnou cibuľkou, cherry paradajkami, baby špenátom, čakankou a červenou cibuľou. Takto zamiešaný šalát podávame spolu s rybou. Dozdobíme podľa chuti koriandrom a prepeličími vajíčkami. Šalát možno podávať v teplej aj v studenej forme.</p>\r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Suroviny</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>250 g</td>\r\n                    <td>quinoa</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>500 ml</td>\r\n                    <td>vývar zeleninový</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>3 g</td>\r\n                    <td>soľ</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>50 g</td>\r\n                    <td>maslo</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>400 g</td>\r\n                    <td>ryba maslová</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>100 g</td>\r\n                    <td>cibuľa červená</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>12 ks</td>\r\n                    <td>vajcia prepeličie</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>200 g</td>\r\n                    <td>paradajky cherry</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>100 ml</td>\r\n                    <td>olej olivový</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>5 g	</td>\r\n                    <td>vňať koriandrová</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>100 g</td>\r\n                    <td>baby špenát</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>50 g </td>\r\n                    <td>čakanka</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>20 g </td>\r\n                    <td>cibuľka jarná</td>\r\n                </tr> \r\n            </table>	   \r\n        </div>', '        <div class=\"keret\">\r\n            <p class=\"szovge\"><b>Lepes 1:</b> \r\nA quinoa babot főzés előtt néhány órán át áztassa vízben. Főzzük őket alacsony lángon körülbelül 15-20 percig, másfél csésze vizet egy csésze quinoához. Hagyja forrni a zöldséglevest, majd sózza meg. Öntse az előkészített quinoát egy tálba, és 15 percig takarja le ételfóliával. Közben tegye a fürjtojásokat egy forrásban lévő sós vízbe, forralja őket 3 percig, majd hideg vízben lehűtse. </p>\r\n            <p class=\"szoveg\"><b>Lepes 2:</b> Körülbelül két centis vajhal szeleteket vajon megsütünk. Hozzáadunk zúzott fokhagymát, kakukkfüvet, és mindkét oldalon kb. 2 percig sütjük.</p>\r\n            <p class=\"szoveg\"><b>Lepes 3:</b> Keverjük össze a quinoát olívaolajjal, újhagymával, koktélparadicsommal, baba spenóttal, cikóriával és lilahagymával. Ezt a salátát a halakkal együtt szolgálják fel. Ízlés szerint korianderrel és fürjtojással díszítjük. A salátát meleg és hideg formában is tálalhatjuk.</p>\r\n            <table class=\"table-recept\">\r\n                <tr>                 \r\n                 <th colspan=\"2\">Alapanyagok</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>250 g</td>\r\n                    <td>quinoa</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>500 ml</td>\r\n                    <td>zöldség leves</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>3 g</td>\r\n                    <td>só</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>50 g</td>\r\n                    <td>vaj</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>400 g</td>\r\n                    <td>vajas hal</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>100 g</td>\r\n                    <td>vörös hagyma</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>12 db</td>\r\n                    <td>fürj tojás</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>200 g</td>\r\n                    <td>cherry paradicsom</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>100 ml</td>\r\n                    <td>oliva olaj</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>5 g</td>\r\n                    <td>koriander</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>100 g</td>\r\n                    <td>spenót</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>50 g </td>\r\n                    <td>cikória</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>20 g </td>\r\n                    <td>újhagyma</td>\r\n                </tr> \r\n            </table>	   \r\n        </div>'),
(10, '        <div class=\"keret\">\r\n            <p class=\"szovge\"><b>Postup 1:</b> Prepeličie vajíčka vložíme do hrnca s vodou, privedieme do varu a varíme asi 4 minúty. Vodu zlejeme a vajíčka necháme vychladnúť.</p>\r\n            <p class=\"szoveg\"><b>Postup 2:</b> Na oleji dozlatista osmažíme pokrájanú šalotku a z cesnak. Zalejeme zeleninovým vývarom, pridáme soľ, korenie a muškátový oriešok. Povaríme asi 15 minút a pridáme smotanu s baby špenátom.</p>\r\n            <p class=\"szoveg\"><b>Postup 3:</b> Keď polievka opäť začne vrieť, stiahneme ju z ohňa a rozmixujeme na hladký krém, ktorý zjemníme maslom. Špenátový krém podávame s olúpanými prepeličími vajíčkami.</p>\r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Suroviny</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>250 g</td>\r\n                    <td>špenát baby</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>300 ml</td>\r\n                    <td>smotana na šľahanie</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>600 ml</td>\r\n                    <td>vývar zeleninový</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>50 g</td>\r\n                    <td>šalotka</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>10 g</td>\r\n                    <td>cesnak</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>50 g</td>\r\n                    <td>maslo</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>štipka</td>\r\n                    <td>oriešok muškátový</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>podľa chuti</td>\r\n                    <td>korenie čierne mleté</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>podľa chuti</td>\r\n                    <td>soľ</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>20 ml</td>\r\n                    <td>olej</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>12 ks</td>\r\n                    <td>vajcia prepeličie</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>50 g </td>\r\n                    <td>čakanka</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>20 g </td>\r\n                    <td>cibuľka jarná</td>\r\n                </tr> \r\n            </table>	   \r\n        </div>', '        <div class=\"keret\">\r\n            <p class=\"szoveg\"><b>Lépes 1:</b> Tegye a fürjtojásokat egy fazék vízbe, forralja fel és főzze körülbelül 4 percig. Engedje le a vizet, és hagyja kihűlni a tojásokat.</p>\r\n            <p class=\"szoveg\"><b>Lépés 2:</b> A szeletelt medvehagymát és a fokhagymát pirítsd meg aranyolajban. Öntsünk zöldséglevest, adjunk hozzá sót, borsot és szerecsendiót. Főzzük kb. 15 percig, és adjuk hozzá a tejszínt baba spenóttal.</p>\r\n            <p class=\"szoveg\"><b>Lépés 3:</b> Amikor a leves újra forrni kezd, kivesszük a tűzből, és sima krémbe keverjük, amelyet vajjal megpuhítunk. A spenótkrémet hámozott fürjtojással szolgálják fel.</p>\r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Alapanyagok</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>250 g</td>\r\n                    <td>spenót</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>300 ml</td>\r\n                    <td>tejszin</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>600 ml</td>\r\n                    <td>zöldség leves</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>50 g</td>\r\n                    <td>saláta</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>10 g</td>\r\n                    <td>hagyma</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>50 g</td>\r\n                    <td>vaj</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>csipetnyi</td>\r\n                    <td>mogyoro</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>izlés alapján</td>\r\n                    <td>örölt bors</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>Ízlés alapján</td>\r\n                    <td>só</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>20 ml</td>\r\n                    <td>olaj</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>12 db</td>\r\n                    <td>fürj tojás</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>50 g </td>\r\n                    <td>cikória</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>20 g </td>\r\n                    <td>újhagyma</td>\r\n                </tr> \r\n            </table>	   \r\n        </div>'),
(11, '        <div class=\"keret\">\r\n            <p class=\"szovge\"><b>Postup 1:</b> Bagetu šikmým rezom narežeme na 1 – 1,5 cm hrubé plátky, ktoré poukladáme na plech a zapečieme v rúre pri teplote 200 °C asi 5 minút. Ricottu podľa potreby dochutíme soľou a bielym korením a natrieme na vychladnuté bagetky.</p>\r\n            <p class=\"szoveg\"><b>Postup 2:</b> Baby špenát podusíme na panvici s cesnakom, ochutíme soľou a čerstvo mletým čiernym korením. Po vychladnutí dáme na ricottu. Vajíčka upečieme na panvici ako volské oči.</p>\r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Suroviny</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 ks (celozrnná)</td>\r\n                    <td>bageta</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>250 g</td>\r\n                    <td>ricotta</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>500 g</td>\r\n                    <td>špenát baby</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>3 strúčiky</td>\r\n                    <td>cesnak</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 - 2 PL</td>\r\n                    <td>olej olivový</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>12 ks</td>\r\n                    <td>vajcia prepeličie</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>štipka</td>\r\n                    <td>oriešok muškátový</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>podľa chuti</td>\r\n                    <td>korenie čierne mleté</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>podľa chuti</td>\r\n                    <td>soľ</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>20 ml</td>\r\n                    <td>olej</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>12 ks</td>\r\n                    <td>vajcia prepeličie</td>\r\n                </tr>  \r\n            </table>	   \r\n        </div>', '        <div class=\"keret\">\r\n            <p class=\"szovge\"><b>Lépés 1:</b> Felmetéljük a bagetát 1 – 1,5 cm vastag korongokra, majd rátesszük tepsire és 200 fokon 5 percig sütjük. Ricottat izlés alapján megsózzuk és megkenyjük a bagetákat.</p>\r\n            <p class=\"szoveg\"><b>Lépés 2:</b> Spenótót és a hagymát megdunsztoljuk serpenyöbe, megizesitjük sóval és frissen örölt borsal. Ízesités utan rátesszük a ricottra. Fürj tojásokat megsütjük tükörtojásnak.</p>\r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Alapanyagok</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 db (barna)</td>\r\n                    <td>bageta</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>250 g</td>\r\n                    <td>ricotta</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>500 g</td>\r\n                    <td>spenót</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>3 karika</td>\r\n                    <td>hagyma</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 - 2 PL</td>\r\n                    <td>oliva olaj</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>12 db</td>\r\n                    <td>fürj tojás</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>csipetnyi</td>\r\n                    <td>mogyoró</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>izlés alapján</td>\r\n                    <td>örölt bors</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>izlés alapján</td>\r\n                    <td>só</td>\r\n                </tr> \r\n                <tr>\r\n                    <td>20 ml</td>\r\n                    <td>olaj</td>\r\n                </tr>  \r\n            </table>	   \r\n        </div>'),
(12, '        <div class=\"keret\">\r\n            <p class=\"szovge\"><b>Postup 1:</b> Zeleninu nakrájať na kúsky,ktoré vám vyhovujú. Vajíčka uvariť, ošúpať a prekrojiť na polovice, alebo aj štvrťky. Všetkú zeleninu zamiešať, dochutiť podla chuti a pokvapkať olivovým olejom. Naložiť na tanier, ozdobiť cottage syrom a prepeličími vajíčkami. Ja som to podávala s pečivom. A teda kto akú zeleninu ešte doma má, tak nie je na škodu, keď sa pridá.  </p>\r\n        \r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Suroviny</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 viazanička</td>\r\n                    <td>reďkovky</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>1 viazanička</td>\r\n                    <td>jarná cibuľka</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>250 g</td>\r\n                    <td>paradajky cherry</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 ks</td>\r\n                    <td>paprika červená</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 ks</td>\r\n                    <td>cibuľa červená</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 ks</td>\r\n                    <td>Cottage Cheese</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>10 ks</td>\r\n                    <td>ovajcia prepeličie</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>trochu</td>\r\n                    <td>soľ</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>pokvapkať</td>\r\n                    <td>olej olivový</td>\r\n                </tr>  \r\n            </table>	   \r\n        </div>', '        <div class=\"keret\">\r\n            <p class=\"szovge\"><b>Lépés 1:</b> Felszeleteljük a zöldséget, amiket szeretnének. Tojást megfözni, megpucolni és félbevágni, vagy negyedekre. Összes zöldséget összekeverni, izesiteni a saját tetszés szerint maj megcsöpögtetve oliva olajjal. Rátenni tányérra, kidiszétenni ottage sajtal és fürj tojással.</p>\r\n        \r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Alapanyagok</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 köteg</td>\r\n                    <td>retek</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>1 köteg</td>\r\n                    <td>uj hagyma</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>250 g</td>\r\n                    <td>cherry pardicsom</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 db</td>\r\n                    <td>piros paprika</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 db</td>\r\n                    <td>vörös hagyma</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 db</td>\r\n                    <td>Cottage Cheese</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>10 db</td>\r\n                    <td>fürj tojás</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>kis</td>\r\n                    <td>só</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>megcsöpögtetni</td>\r\n                    <td>oliva olajjal</td>\r\n                </tr>  \r\n            </table>	   \r\n        </div>'),
(13, '       <div class=\"keret\">\r\n            <p class=\"szoveg\"><b>Postup 1:</b>Očistené, uvarené bažantie prsia nakrájame na malé kocky. Pridáme majonézu, soľ, korenie a na malé kocky pokrájaný uvarený zeler.</p>\r\n            <p class=\"szoveg\"><b>Postup 2:</b>Očistený miešaný šalát dochutíme balzamikovým octom, olivovým olejom, soľou a korením.</p>\r\n            <p class=\"szoveg\"><b>Postup 3:</b>Do pripraveného šalátu pridáme uvarené očistené prepeličie vajíčka a podávame.</p>\r\n            <p class=\"szoveg\"><b>Postup 4:</b>Náš tip: Bažant poskytuje vynikajúce mäso, ale len vtedy, ak po zastrelení visí v perí najmenej 6-7 dní. Až keď sa riadne odleží, opatrne ho ošklbeme a vypitveme. Varí sa 2 hodiny do mäkka.</p>\r\n\r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Suroviny</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>8 ks</td>\r\n                    <td>vajcia prepeličie</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>150 g</td>\r\n                    <td>šalát rôzne druhy</td>\r\n                </tr>\r\n                <tr>\r\n                    <td></td>\r\n                    <td>soľ</td>\r\n                </tr>\r\n                <tr>\r\n                    <td></td>\r\n                    <td>korenie čierne mleté</td>\r\n                </tr>\r\n                <tr>\r\n                    <td></td>\r\n                    <td>olej olivový</td>\r\n                </tr>\r\n                <tr>\r\n                    <td></td>\r\n                    <td>ocot balzamikový</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>100 g</td>\r\n                    <td>bažantie prsia</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>20 g</td>\r\n                    <td>majonéza</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td></td>\r\n                    <td>zeler</td>\r\n                </tr> \r\n            </table>	   \r\n        </div>', '       <div class=\"keret\">\r\n            <p class=\"szoveg\"><b>Lépés 1:</b>\r\nA megtisztított, megfőtt fácánmelleket apró kockákra tisztítjuk. Adjunk hozzá majonézt, sót, borsot és kockára vágott zellert.</p>\r\n            <p class=\"szoveg\"><b>Lépés 2:</b>A megtisztított vegyes salátát balzsamecettel, olívaolajjal, sóval és fűszerekkel ízesítjük.</p>\r\n            <p class=\"szoveg\"><b>Lépés 3:</b>Az elkészített salátához főtt, megtisztított fürjtojást adunk, és tálaljuk.</p>\r\n            <p class=\"szoveg\"><b>Lépés 4:</b>Tippünk: A fácán kiváló húst biztosít, de csak akkor, ha a lövés után legalább 6-7 napig lóg a tollakban. Csak akkor, amikor megfelelően megöregedett, gondosan kiragadjuk és boncolgatjuk. 2 órán át puhára főzzük.</p>\r\n\r\n            <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Alapanyagok</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>8 db</td>\r\n                    <td>fürj tojás</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>150 g</td>\r\n                    <td>bármilyen saláta</td>\r\n                </tr>\r\n                <tr>\r\n                    <td></td>\r\n                    <td>só</td>\r\n                </tr>\r\n                <tr>\r\n                    <td></td>\r\n                    <td>örölt bors</td>\r\n                </tr>\r\n                <tr>\r\n                    <td></td>\r\n                    <td>oliva olaj</td>\r\n                </tr>\r\n                <tr>\r\n                    <td></td>\r\n                    <td>ecet</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>100 g</td>\r\n                    <td>fácán mell</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>20 g</td>\r\n                    <td>majonéz</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td></td>\r\n                    <td>zeller</td>\r\n                </tr> \r\n            </table>	   \r\n        </div>'),
(14, '        <div class=\"keret\">\r\n        <p class=\"szoveg\"><b>Postup 1:</b>Srnčí chrbát očistíme a najemno rozsekáme nožom. Pridáme najemno rozsekanú šalotku, mätu, horčicu, 50 ml olivového oleja, červené víno a brusnice, žĺtok, koreniny a všetko dobre premiešame.</p>\r\n        <p class=\"szoveg\"><b>Postup 2:</b>Zo zmesi vytvarujeme gule. Na panvičke opečieme prepeličie vajíčka a pridáme k hotovému tataráčiku.</p>\r\n        <p class=\"szoveg\"><b>Postup 3:</b>Náš tip: Srnčie mäso z prírody je také zdravé, že nemôže ublížiť ani v surovom stave – aj vďaka tomu, že srnec je bylinožravec. Kto má však obavu z nákazy, môže si mäso aspoň krátko podusiť.</p>\r\n        <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Suroviny</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>600 g, z chrbta</td>\r\n                    <td>srnčie mäso</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>5 g</td>\r\n                    <td>mäta pieporná</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>8 ks</td>\r\n                    <td>vajcia prepeličie</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>30 g</td>\r\n                    <td>horčica dijonská</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>100 ml</td>\r\n                    <td>olej olivový</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 ks</td>\r\n                    <td>šalotka</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>50 ml</td>\r\n                    <td>víno červené</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>20 g</td>\r\n                    <td>brusnice</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>1 ks</td>\r\n                    <td>žĺtok</td>\r\n                </tr> \r\n                <tr>\r\n                    <td></td>\r\n                    <td>soľ</td>\r\n                </tr> \r\n                <tr>\r\n                    <td></td>\r\n                    <td>korenie čierne mleté</td>\r\n                </tr> \r\n            </table>\r\n            </div>', '        <div class=\"keret\">\r\n        <p class=\"szoveg\"><b>Lépés 1:</b>Öz hátát megtisztitjuk és felmetéljük késsel. Hozzáadunk finomra fellmetélt salátát, menta, horčicat, 50 ml oliva olajat, vörös bort és vörös áfonyat, tojás sárgáját, füszereket és öszekeverjük.</p>\r\n        <p class=\"szoveg\"><b>Lépés 2:</b>A keverékböl kialakitunk golyót.Serpenyön megsütjük a fürj tojást majd hozzáadjuk a kész tajrahoz.</p>\r\n        <p class=\"szoveg\"><b>Lépés 3:</b>Mi tippünk: Az öz hús olyan egészséges, hogy nem árthat nyers állapotban se – annak köszönhetöen hogy az öz növényevö. Aki fél a fertözéstöl egy kis idöre sütheti.</p>\r\n        <table class=\"table-recept\">\r\n                <tr>\r\n                    <th colspan=\"2\">Alapanyagok</th>\r\n                </tr>\r\n                <tr>\r\n                    <td>600 g, hátból</td>\r\n                    <td>öz hús</td>\r\n                </tr>\r\n            	<tr>\r\n                    <td>5 g</td>\r\n                    <td>menta</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>8 db</td>\r\n                    <td>fürj tojás</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>30 g</td>\r\n                    <td>horčica dijonská</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>100 ml</td>\r\n                    <td>oliva olaj</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>1 db</td>\r\n                    <td>hagyma</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>50 ml</td>\r\n                    <td>vörös bor</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>20 g</td>\r\n                    <td>áfonya</td>\r\n                </tr>    \r\n                <tr>\r\n                    <td>1 db</td>\r\n                    <td>tojás sárgája</td>\r\n                </tr> \r\n                <tr>\r\n                    <td></td>\r\n                    <td>só</td>\r\n                </tr> \r\n                <tr>\r\n                    <td></td>\r\n                    <td>füszerek</td>\r\n                </tr> \r\n            </table>\r\n            </div>');

-- --------------------------------------------------------

--
-- Table structure for table `recept1`
--

CREATE TABLE `recept1` (
  `Id` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `datehu` datetime NOT NULL,
  `komment` text,
  `kommentsk` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recept1`
--

INSERT INTO `recept1` (`Id`, `uid`, `datehu`, `komment`, `kommentsk`) VALUES
(1, 'martin', '2021-01-19 15:34:48', NULL, 'comment user one sk'),
(2, 'martin', '2021-01-19 15:35:51', 'comment user one hu', NULL),
(3, 'jakub', '2021-01-19 15:36:33', NULL, 'comment user two sk'),
(4, 'jakub', '2021-01-19 15:37:22', 'comment user two hu', NULL),
(5, 'Fero', '2021-01-19 15:38:36', 'comment user three hu', NULL),
(6, 'Fero', '2021-01-19 15:39:20', NULL, 'comment user three sk'),
(7, 'Laco', '2021-01-19 15:40:07', NULL, 'comment user four sk'),
(8, 'Laco', '2021-01-19 15:41:00', 'comment user four hu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recept2`
--

CREATE TABLE `recept2` (
  `Id` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `datehu` datetime NOT NULL,
  `komment` text,
  `kommentsk` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recept2`
--

INSERT INTO `recept2` (`Id`, `uid`, `datehu`, `komment`, `kommentsk`) VALUES
(1, 'martin', '2021-01-19 15:35:08', NULL, 'comment user one sk'),
(2, 'martin', '2021-01-19 15:36:02', 'comment user one hu', NULL),
(3, 'jakub', '2021-01-19 15:36:47', NULL, 'comment user two sk'),
(4, 'jakub', '2021-01-19 15:37:56', 'comment user two hu', NULL),
(5, 'Fero', '2021-01-19 15:38:54', 'comment user three hu', NULL),
(6, 'Fero', '2021-01-19 15:39:32', NULL, 'comment user three sk'),
(7, 'Laco', '2021-01-19 15:40:21', NULL, 'comment user four sk'),
(8, 'Laco', '2021-01-19 15:41:15', 'comment user four hu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recept3`
--

CREATE TABLE `recept3` (
  `Id` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `datehu` datetime NOT NULL,
  `komment` text,
  `kommentsk` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recept3`
--

INSERT INTO `recept3` (`Id`, `uid`, `datehu`, `komment`, `kommentsk`) VALUES
(1, 'martin', '2021-01-19 15:35:13', NULL, 'comment user one sk'),
(2, 'martin', '2021-01-19 15:36:06', 'comment user one hu', NULL),
(3, 'jakub', '2021-01-19 15:37:01', NULL, 'comment user two sk'),
(4, 'jakub', '2021-01-19 15:38:01', 'comment user two hu', NULL),
(5, 'Fero', '2021-01-19 15:38:59', 'comment user three hu', NULL),
(6, 'Fero', '2021-01-19 15:39:36', NULL, 'comment user three sk'),
(7, 'Laco', '2021-01-19 15:40:25', NULL, 'comment user four sk'),
(8, 'Laco', '2021-01-19 15:41:19', 'comment user four hu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recept4`
--

CREATE TABLE `recept4` (
  `Id` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `datehu` datetime NOT NULL,
  `komment` text,
  `kommentsk` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recept4`
--

INSERT INTO `recept4` (`Id`, `uid`, `datehu`, `komment`, `kommentsk`) VALUES
(1, 'martin', '2021-01-19 15:35:19', NULL, 'comment user one sk'),
(2, 'martin', '2021-01-19 15:36:10', 'comment user one hu', NULL),
(3, 'jakub', '2021-01-19 15:37:05', NULL, 'comment user two sk'),
(4, 'jakub', '2021-01-19 15:38:04', 'comment user two hu', NULL),
(5, 'Fero', '2021-01-19 15:39:04', 'comment user three hu', NULL),
(6, 'Fero', '2021-01-19 15:39:41', NULL, 'comment user three sk'),
(7, 'Laco', '2021-01-19 15:40:29', NULL, 'comment user four sk'),
(8, 'Laco', '2021-01-19 15:41:25', 'comment user four hu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recept5`
--

CREATE TABLE `recept5` (
  `Id` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `datehu` datetime NOT NULL,
  `komment` text,
  `kommentsk` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recept5`
--

INSERT INTO `recept5` (`Id`, `uid`, `datehu`, `komment`, `kommentsk`) VALUES
(1, 'martin', '2021-01-19 15:35:23', NULL, 'comment user one sk'),
(2, 'martin', '2021-01-19 15:36:14', 'comment user one hu', NULL),
(3, 'jakub', '2021-01-19 15:37:10', NULL, 'comment user two sk'),
(4, 'jakub', '2021-01-19 15:38:08', 'comment user two hu', NULL),
(5, 'Fero', '2021-01-19 15:39:08', 'comment user three hu', NULL),
(6, 'Fero', '2021-01-19 15:39:46', NULL, 'comment user three sk'),
(7, 'Laco', '2021-01-19 15:40:33', NULL, 'comment user four sk'),
(8, 'Laco', '2021-01-19 15:41:29', 'comment user four hu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recept6`
--

CREATE TABLE `recept6` (
  `Id` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `datehu` datetime NOT NULL,
  `komment` text,
  `kommentsk` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recept6`
--

INSERT INTO `recept6` (`Id`, `uid`, `datehu`, `komment`, `kommentsk`) VALUES
(1, 'martin', '2021-01-19 15:35:28', NULL, 'comment user one sk'),
(2, 'martin', '2021-01-19 15:36:18', 'comment user one hu', NULL),
(3, 'jakub', '2021-01-19 15:37:15', NULL, 'comment user two sk'),
(4, 'jakub', '2021-01-19 15:38:12', 'comment user two hu', NULL),
(5, 'Fero', '2021-01-19 15:39:14', 'comment user three hu', NULL),
(6, 'Fero', '2021-01-19 15:39:54', NULL, 'comment user three sk'),
(7, 'Laco', '2021-01-19 15:40:53', NULL, 'comment user four sk'),
(8, 'Laco', '2021-01-19 15:41:33', 'comment user four hu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwd`) VALUES
(1, 'Martin Taborsky', 'taborsky.martin@icloud.com', 'martin', '$2y$10$eb2Am8h8KpWtsxtI7xiN1uAxPtIFRyc88NAxN69rJotBkOxa0bfDW'),
(2, 'Jakub Knaz', 'jakub.knaz@gmail.com', 'jakub', '$2y$10$r48uGSSIrFd.kWZ1Q3t4MOklskb8zOn.FgzaycC9glnnTE0ugYSoi'),
(3, 'Fero Nagy', 'nagyfero@gmail.com', 'Fero', '$2y$10$HLrAcVpNDfpG.8PEZnkdZuwg/sjPHH3nAvFVif4fdRtYWA5fL1DH6'),
(4, 'Laco', 'laco@gmail.com', 'Laco', '$2y$10$coY7zAWoKhqvedH2lH55d.2bzMxSIArDiZSbCxYZT.tOIXgQq1q52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `proba`
--
ALTER TABLE `proba`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `recept1`
--
ALTER TABLE `recept1`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recept2`
--
ALTER TABLE `recept2`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recept3`
--
ALTER TABLE `recept3`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recept4`
--
ALTER TABLE `recept4`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recept5`
--
ALTER TABLE `recept5`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recept6`
--
ALTER TABLE `recept6`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proba`
--
ALTER TABLE `proba`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `recept1`
--
ALTER TABLE `recept1`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recept2`
--
ALTER TABLE `recept2`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recept3`
--
ALTER TABLE `recept3`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recept4`
--
ALTER TABLE `recept4`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recept5`
--
ALTER TABLE `recept5`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recept6`
--
ALTER TABLE `recept6`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
