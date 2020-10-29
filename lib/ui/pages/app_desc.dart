import 'package:flutter/material.dart';

class AppDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('LUG’ATDAN FOYDALANISh UChUN KO’RSATMALAR',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontSize: 15,
                        )),
                SizedBox(
                  height: 20,
                ),
                Text("""
I.	Lemmalar. Lemmalar lug‘atda alfavit tartibida joylashtirilgan bo‘lib, bunda ular (-a·bel) bo‘g‘inlarga ajratilishi qalin nuqta belgisi (·) orqali va ular yordamida hosil qilingan yasama so‘zlar yarimqalin qiya bosma –kursiv harflar bilan ajratib yozilgan. Lemmaga tegishli qo‘shimcha ma’lumotlar (kammahsul, urg‘uli, sermahsul va shu kabilar) kursiv harflarda, tarjimalar va ularning sinonimlari esa och rangli harflar bilan berilgan. Lemmalar so‘z yasovchi elementlardan tarkib topganligi sababli, dastavval, o‘sha affiksning ma’nosi, so‘ngra, u bilan hosil qilingan yasama so‘zlar tarjimalari berilgan. Masalan:
al·lo-, unlilar oldidan all- [al-] shaklida, mahsulsiz o‘zlashma prefiks <grek.>
sifatlarga o‘zgaruvchanlik, xilma-xillik ma’nosini beradi; allochromatisch [-k-] alloxromatik □ chromatisch, allochton geol. alloxtonnik □ autochton, allogam kzndalang changlanadigan/urug‘lanadigan

Lemmalar tarjimalari bir so‘z yoki mazmunan bir-biriga yaqin sinonimlar orqali ifodalangan.
Bir necha ma’no qatoriga ega bo‘lgan affiks ko‘p ma’noli deya qayd etilgan va uning ma’nolari bir-biridan arab raqami bilan ajratilgan.
-al urg‘uli, kammahsul suffiks
1. kim/nimaningdir holatida, tarzida, kim/nima kabi/singari ≈ -artig, -haft; horizontal gorizantal, katastrophal falokatli, normal normal, tabiiy, mo‘tadil; odatiy, triumphal zafar (g‘alaba)ga oid, zafar ...; g‘olibona
2. darajasiz; -dan kelib chiqib, -ga tayanib, -ga oid; formal formaga oid, formal; rasmiy, hormonal gormonal, gormon..., kolonial mustamlakachilikka va mustamlakalarga oid; kolonial; mustamlaka...; mustamlakachilik...; koloniya (qaram) bo‘lgan, mustamlaka; qaram, national millatga tegishli, milliy, regional regionga oid; regional…
	So‘z yasovchi elementlar turlarini farqlashda M.D. Stepanova («Slovar slovoobrazovatelnыx elementov nemetskogo yazыka», Moskva: Russkiy yazыk, 1979) ning klassifikatsiyasiga tayanildi, masalan, suffiks, yarimsuffiks, o‘zlashma suffiks, murakkab suffiks, prefiks, yarimprefiks, o‘zlashma prefiks, murakkab prefiks, murakkab sifatning birinchi chastotali komponenti. Ular lemmadan keyin (yarimprefiks va shu kabilar) kursiv harflarda berilgan:
al·ler- urg‘uli, sermahsul yarimprefiks, dealiktik so‘zlashuv uslubiga xos; orttirma daraja mazmunini yanada kuchaytirish/orttirish uchun ishlatiladi; allerbest- eng yaxshi
	Muayyan affiksdan hosil qilingan leksemalarning so‘z yasalish asosi □ belgisidan keyin berilgan. Agar mazkur belgi mavjud bo‘lmasa, ushbu leksema unikal asos hisoblanadi. Masalan:
-a·bel fe’llardan (asosan –ieren bilan tugagan)keyin qo‘shiladi, urg‘uli, kammahsul o‘zlashma suffiks <lot. -fr.>
nimadir mumkin, imkonli yoki kim/nimadir biror narsa uchun yaroqliligini ifodalaydi ≈ -bar; akzeptabel maqbul, ma’qul □ Akzept n, deklinabel turlanuvchi □  Deklination f, ≈ deklinierbar ↔ indeklinabel <ein Wort>, transportabel <ein Fernsehapparat> ko‘chma, ko‘chiriladigan □ Transport m, praktikabel <eine Lösung, eine Methode> amaliy, amalga oshirsa bo‘ladigan □ Praktik f, reparabel tuzatib (to‘g‘irlab) bo‘ladigan □ reperiren, ≈  reparierbar ↔ irreparabel <ein Schaden>
Lemma yordamida hosil qilingan yasama so‘zlarning pragmatik xususiyatini yoritish maqsadida <...> belgisida ushbu leksema bilan so‘z birikmasi hosil qilinishi mumkin bo‘lgan so‘zlar berilgan:
-a·bel ... deklinabel turlanuvchi ≈ deklinierbar ↔ indeklinabel <ein Wort> turlanmaydigan, transportabel <ein Fernsehapparat> ko‘chma, ko‘chiriladigan, praktikabel <eine Lösung, eine Methode> amaliy, amalga oshirsa bo‘ladigan
Lemma maqolasiga kiritilmagan qo‘shimcha ma’lumotlar || Izoh: shaklida berilgan:
a- kammahsul prefiks; o‘zidan keyin kelgan sifatning antonimi, qarama-qarshi ma’nosini bildiradi ≈ un-; ... asymmetrisch <eine Figur> asimmetrik, nosimmetrik, simmemetriyasiz
|| Izoh: bu prefiks abnorm noto‘g‘ri, nonormal so‘zida ab- shaklida hamda anorganisch noorganik, jonsiz so‘zida an- shaklida keladi.

Agar lemma allamorfema shakllariga ega bo‘lsa, o‘sha morfema maqola berilgan asosiy lemma(morfema)ga ↑ yoki ↓ belgisi orqali yo‘naltirilgan:
il- prefiks; ↓in-
Lemmadan adabiy til leksemalaridan boshqa sath birliklari yasalsa, ular kursiv harflarda qayd etilgan:
in- urg‘uli, kammahsul o‘zlashma prefiks, yozma uslubga xos
shaxs yoki predmet so‘z yasalishi asosidan anglashilgan narsaga, belgiga, xususiyatga ega emasligini bildiruchi sifat yasaydi
II.	Talaffuz. Lemmalarning talaffuziga oid ma’lumotlar, asosan, o‘zga tillardan o‘zlashgan va odatiy nemis tili talaffuz qoidalariga mos kelmaydigan birliklardan keyin  [-] belgida berilgan:
-iv [--] urg‘uli, kammahsul suffiks; ma’lum belgiga, xususiyatga egalikni (aggressiv agressiyaga, tajovuzkorlikka, bosqinchilikka asoslangan, agressiya yo‘lini tutuvchi, agressiv, tajovuzkor, bosqinchi, depressiv ruhi tushgan, g‘amgin, mayus, explosiv portlovchi, portlaydigan, kooperativ hamkor, kooperativga oid, qarashli; kooperatsiya asosidagi; kooperativ...
""",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontSize: 15,
                        )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Qo‘llanilgan qisqartmalar ro‘yxati',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontSize: 18,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("""<grek.> – grekcha
<isp.> – ispancha
<lot. -fr.> – lotincha-fransuzcha
<lot.> –lotincha
<roman.> – romancha
<fr.> – fransuzcha
aniql. – aniqlovchi
bad. – badiiy
bot. – botanika
geol. – geologiya
gram. – grammatika
haz. – hazil
""",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 14,
                            )),
                    Text("""zool. – yozma uslub
lingv. – lingvistika
mat. – matematika
neol. – neologizm
poet. – poetik
tex. –texnika
tib. –tibbiyot
fiz. – fizika
xim. – ximiya
haz. – hazil

""",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 14,
                            )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
