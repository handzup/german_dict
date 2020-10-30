import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

const htmlData = """ 
<ol>
 <strong> I.	Lemmalar.  </strong>Lemmalar lug&lsquo;atda alfavit tartibida joylashtirilgan bo&lsquo;lib, bunda ular (<strong>-a&middot;bel</strong>) bo&lsquo;g&lsquo;inlarga ajratilishi qalin nuqta belgisi (<strong>&middot;</strong>) orqali va ular yordamida hosil qilingan yasama so&lsquo;zlar <strong><em>yarimqalin qiya bosma &ndash;kursiv</em></strong> harflar bilan ajratib yozilgan. Lemmaga tegishli qo&lsquo;shimcha ma&rsquo;lumotlar (<em>kammahsul, urg&lsquo;uli, sermahsul </em>va shu kabilar) kursiv harflarda, tarjimalar va ularning sinonimlari esa och rangli harflar bilan berilgan. Lemmalar so&lsquo;z yasovchi elementlardan tarkib topganligi sababli, dastavval, o&lsquo;sha affiksning ma&rsquo;nosi, so&lsquo;ngra, u bilan hosil qilingan yasama so&lsquo;zlar tarjimalari berilgan. Masalan: 
</ol>
<p><strong>&nbsp;</strong></p>
<p><strong>al</strong><strong>&middot;</strong><strong>lo</strong><strong>-</strong>, <em>unlilar oldidan </em><strong>all</strong><strong>- </strong>[al-] <em>shaklida,</em> <em>mahsulsiz o&lsquo;zlashma prefiks</em> &lt;<em>grek.&gt; </em></p>
<p>sifatlarga o&lsquo;zgaruvchanlik, xilma-xillik ma&rsquo;nosini beradi; <strong><em>allochromatisch</em></strong> [-k-] alloxromatik □ chromatisch,<strong> <em>allochton</em></strong> <em>geol.</em> alloxtonnik □ autochton, <strong><em>allogam</em></strong> kzndalang changlanadigan/urug&lsquo;lanadigan</p>
<p>&nbsp;</p>
<p>Lemmalar tarjimalari bir so&lsquo;z yoki mazmunan bir-biriga yaqin sinonimlar orqali ifodalangan.&nbsp;</p>
<p>Bir necha ma&rsquo;no qatoriga ega bo&lsquo;lgan affiks <em>ko&lsquo;p ma&rsquo;noli</em> deya qayd etilgan va uning ma&rsquo;nolari bir-biridan arab raqami bilan ajratilgan.</p>
<p><strong>&nbsp;</strong></p>
<p><strong>-al</strong> <em>urg&lsquo;uli, kammahsul suffiks</em></p>
<ol>
<li>kim/nimaningdir holatida, tarzida, kim/nima kabi/singari <em>&asymp; </em>-artig, -haft;<strong><em> horizontal </em></strong>gorizantal<strong><em>, katastrophal</em></strong> falokatli<strong><em>, normal</em></strong> normal, tabiiy, mo&lsquo;tadil; odatiy<strong><em>, triumphal</em></strong> zafar (g&lsquo;alaba)ga oid, zafar ...; g&lsquo;olibona</li>
<li><em>darajasiz</em>; -dan kelib chiqib, -ga tayanib, -ga oid;<strong><em> formal</em></strong> formaga oid, formal; rasmiy<strong><em>, hormonal</em></strong> gormonal, gormon...<em>,<strong> kolonial </strong></em>mustamlakachilikka va mustamlakalarga oid; kolonial; mustamlaka...; mustamlakachilik...; koloniya (qaram) bo&lsquo;lgan, mustamlaka; qaram<em>,<strong> national</strong></em> millatga tegishli, milliy<strong><em>, regional</em></strong> regionga oid; hududiy</li>
</ol>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; So&lsquo;z yasovchi elementlar turlarini farqlashda M.D. Stepanova (&laquo;Slovar slovoobrazovatelnыx elementov nemetskogo yazыka&raquo;, Moskva: Russkiy yazыk, 1979) ning klassifikatsiyasiga tayanildi, masalan, suffiks, yarimsuffiks, o&lsquo;zlashma suffiks, murakkab suffiks, prefiks, yarimprefiks, o&lsquo;zlashma prefiks, murakkab prefiks, murakkab sifatning birinchi chastotali komponenti. Ular lemmadan keyin <em>(yarimprefiks va shu kabilar) kursiv </em>harflarda berilgan:</p>
<p><strong>al&middot;ler<em>-</em></strong> <em>urg&lsquo;uli, sermahsul yarimprefiks, dealiktik so&lsquo;zlashuv uslubiga xos</em>; orttirma daraja mazmunini yanada kuchaytirish/orttirish uchun ishlatiladi;<strong><em> allerbest-</em></strong> eng yaxshi</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Muayyan affiksdan hosil qilingan leksemalarning so&lsquo;z yasalish asosi □ belgisidan keyin berilgan. Agar mazkur belgi mavjud bo&lsquo;lmasa, ushbu leksema unikal asos hisoblanadi. Masalan:</p>
<p><strong>-a&middot;bel</strong> <em>fe&rsquo;llardan (asosan &ndash;ieren bilan tugagan)keyin qo&lsquo;shiladi, urg&lsquo;uli, kammahsul o&lsquo;zlashma suffiks &lt;lot. -fr.&gt;</em></p>
<p>nimadir mumkin, imkonli yoki kim/nimadir biror narsa uchun yaroqliligini ifodalaydi <em>&asymp; </em>-bar;<strong><em> akzeptabel </em></strong>maqbul, ma&rsquo;qul □ Akzept <em>n</em><em>,<strong> deklinabel</strong></em> turlanuvchi □ Deklination <em>f, </em><em>&asymp; </em>deklinierbar <em>&harr; </em>indeklinabel &lt;ein Wort&gt;,<strong><em> transportabel</em></strong> &lt;ein Fernsehapparat&gt; ko&lsquo;chma, ko&lsquo;chiriladigan □ Transport <em>m</em>,<strong><em> praktikabel</em></strong> &lt;eine L&ouml;sung, eine Methode&gt; amaliy, amalga oshirsa bo&lsquo;ladigan □ Praktik <em>f</em>,<strong><em> reparabel</em></strong> tuzatib (to&lsquo;g&lsquo;irlab) bo&lsquo;ladigan □ reperiren, <em>&asymp;</em>&nbsp; reparierbar <em>&harr; </em>irreparabel &lt;ein Schaden&gt;</p>
<p>Lemma yordamida hosil qilingan yasama so&lsquo;zlarning pragmatik xususiyatini yoritish maqsadida &lt;...&gt; belgisida ushbu leksema bilan so&lsquo;z birikmasi hosil qilinishi mumkin bo&lsquo;lgan so&lsquo;zlar berilgan:</p>
<p><strong>-a&middot;bel</strong> <em>...<strong> deklinabel</strong></em> turlanuvchi <em>&asymp; </em>deklinierbar <em>&harr; </em>indeklinabel &lt;ein Wort&gt; turlanmaydigan,<strong><em> transportabel</em></strong> &lt;ein Fernsehapparat&gt; ko&lsquo;chma, ko&lsquo;chiriladigan,<strong><em> praktikabel</em></strong> &lt;eine L&ouml;sung, eine Methode&gt; amaliy, amalga oshirsa bo&lsquo;ladigan</p>
<p>Lemma maqolasiga kiritilmagan qo&lsquo;shimcha ma&rsquo;lumotlar Izoh: shaklida berilgan:</p>
<p>&nbsp;</p>
<p><strong>a-</strong> <em>kammahsul prefiks</em>; o&lsquo;zidan keyin kelgan sifatning antonimi, qarama-qarshi ma&rsquo;nosini bildiradi; <em>.<strong> asymmetrisch</strong></em> &lt;eine Figur&gt; asimmetrik, nosimmetrik, simmemetriyasiz</p>
<p>|| Izoh: bu prefiks <em>abnorm </em>noto&lsquo;g&lsquo;ri, nonormal so&lsquo;zida <em>ab- </em>shaklida hamda <em>anorganisch </em>noorganik, jonsiz so&lsquo;zida <em>an- </em>shaklida keladi.</p>
<p>&nbsp;</p>
<p>Agar lemma allamorfema shakllariga ega bo&lsquo;lsa, o&lsquo;sha morfema maqola berilgan asosiy lemma(morfema)ga &uarr; yoki &darr; belgisi orqali yo&lsquo;naltirilgan:</p>
<p><strong>&nbsp;</strong></p>
<p><strong>il-</strong> <em>prefiks</em>; &darr;in-</p>
<p>Lemmadan adabiy til leksemalaridan boshqa sath birliklari yasalsa, ular <em>kursiv </em>harflarda qayd etilgan:</p>
<p><strong>in-</strong> <em>urg&lsquo;uli, kammahsul o&lsquo;zlashma prefiks, yozma uslubga xos</em></p>
<p>shaxs yoki predmet so&lsquo;z yasalishi asosidan anglashilgan narsaga, belgiga, xususiyatga ega emasligini bildiruchi sifat yasaydi</p>
<ol>
 <strong> II. Talaffuz. </strong>Lemmalarning talaffuziga oid ma&rsquo;lumotlar, asosan, o&lsquo;zga tillardan o&lsquo;zlashgan va odatiy nemis tili talaffuz qoidalariga mos kelmaydigan birliklardan keyin [-] belgida berilgan: 
</ol>
<p><strong>&nbsp;</strong></p>
<p><strong>-&auml;</strong><strong>r</strong></p>
<p>[-'<strong>ɛ</strong>: r] <em>mahsulli o&lsquo;zlashma suffiks</em> <strong>&lt;</strong><em>lot</em>.-<em>fr.&gt;, ko&lsquo;p ma&rsquo;noli</em></p>
<ol>
<li>nimgadir tegishli, qarashli ekanlik ma&rsquo;nosini ifodalaydi <em>(ba&rsquo;zan tovush o&lsquo;zgarishi sodir bo&lsquo;lishi mumkin);</em> <strong><em>muskul</em></strong><strong><em>&auml;</em></strong><strong><em>r</em></strong> muskul(lar)ga, mushaklarga oid; muskul...; mushak... □ Muskel <em>t</em>, <strong><em>reaktion</em></strong><strong><em>&auml;</em></strong><strong><em>r</em></strong> <strong>1)</strong> reaksion <strong>2)</strong> reaksiya chaqiruvchi □ Reaktion <em>f</em><em>,</em><strong><em>revolution</em></strong><strong><em>&auml;</em></strong><strong><em>r</em></strong> revolyutsion, inqilobiy, revolyutsion (inqilobiy) ruhdagi, revolyutsion (inqilobiy) ruh bilan sug&lsquo;orilgan □ Revolution <em>f,</em> <strong><em>autorit</em></strong><strong><em>&auml;</em></strong><strong><em>r</em></strong> obro&lsquo;ga ega bo&lsquo;lgan, obro&lsquo;li, nufuzli, etiborli □ Autorit&auml;t <em>f,</em> <strong><em>quatern</em></strong><strong><em>&auml;</em></strong><strong><em>r</em></strong> <em>xim.</em> to&lsquo;rtlamchi (davrga oid) □ Quart&auml;r <em>p, </em><strong><em>sanit</em></strong><strong><em>&auml;</em></strong><strong><em>r</em></strong> sanitariyaga oid; sanitariya... □ Sanit&auml;t <em>f</em></li>
<li>nima bilandir bog&lsquo;liq, u bilan aloqador; <strong><em>bazill&auml;r</em> </strong>batsilla (tayoqcha shaklidagi bakteriya)ga oid □ Bazillen <em>pl,</em> <strong><em>legend&auml;r</em> </strong>(<em>ham.</em> legend&auml;r) afsonadan (rivoyatdan) iborat bo&lsquo;lgan; afsonalarda bo&lsquo;ladigan, afsonaviy □ Legende <em>f</em>, <strong><em>vision&auml;r</em> 1)</strong> xayolda (tasavvurda) ko&lsquo;rinadigan, xayoldagi, xayoliy <strong>2)</strong> bashoratli, bashorat qilib aytilgan, dohiyona □ Vision <em>f </em></li>
</ol>
 """;

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
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('LUG’ATDAN FOYDALANISH UCHUN KO’RSATMALAR',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontSize: 15,
                        )),
                SizedBox(
                  height: 20,
                ),
                Html(
                  data: htmlData,
                  style: {
                    "html": Style(
                      fontSize: FontSize.large,
                      fontFamily: 'GT Eesti Pro',
                      textAlign: TextAlign.justify,
                    ),
                    "strong": Style(
                      fontFamily: 'Regular',
                      fontSize: FontSize.large,
                    ),
                    "table": Style(
                      backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
                    ),
                    "tr": Style(
                      border: Border(bottom: BorderSide(color: Colors.grey)),
                    ),
                    "th": Style(
                      padding: EdgeInsets.all(6),
                      backgroundColor: Colors.grey,
                    ),
                    "td": Style(
                      padding: EdgeInsets.all(6),
                    ),
                    "var": Style(fontFamily: 'serif'),
                  },
                ),

                // RichText(
                //     textAlign: TextAlign.justify,
                //     text: TextSpan(
                //         style: Theme.of(context).textTheme.bodyText1.copyWith(
                //               fontSize: 15,
                //             ),
                //         text: 'I.	Lemmalar. ',
                //         children: [
                //           TextSpan(
                //               text:
                //                   'Lemmalar lug‘atda alfavit tartibida joylashtirilgan bo‘lib, bunda ular',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w400,
                //                   )),
                //           TextSpan(
                //               text: ' (-a·bel)',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w800,
                //                   )),
                //           TextSpan(
                //               text:
                //                   'bo‘g‘inlarga ajratilishi qalin nuqta belgisi (·) orqali va ular yordamida hosil qilingan yasama so‘zlar',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w400,
                //                   )),
                //           TextSpan(
                //               text: ' yarimqalin qiya bosma –kursiv',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                       fontSize: 15,
                //                       fontWeight: FontWeight.w800,
                //                       fontStyle: FontStyle.italic)),
                //           TextSpan(
                //               text:
                //                   'harflar bilan ajratib yozilgan. Lemmaga tegishli qo‘shimcha ma’lumotlar',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w400,
                //                   )),
                //           TextSpan(
                //               text:
                //                   ' kammahsul, urg‘uli, sermahsul va shu kabilar)',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                       fontSize: 15,
                //                       fontWeight: FontWeight.w400,
                //                       fontStyle: FontStyle.italic)),
                //           TextSpan(
                //               text:
                //                   'kursiv harflarda, tarjimalar va ularning sinonimlari esa och rangli harflar bilan berilgan. Lemmalar so‘z yasovchi elementlardan tarkib topganligi sababli, dastavval, o‘sha affiksning ma’nosi, so‘ngra, u bilan hosil qilingan yasama so‘zlar tarjimalari berilgan. Masalan:',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w400,
                //                   )),
                //         ])),
                // SizedBox(
                //   height: 20,
                // ),
                // RichText(
                //     textAlign: TextAlign.center,
                //     text: TextSpan(
                //         style: Theme.of(context).textTheme.bodyText1.copyWith(
                //               fontSize: 13,
                //             ),
                //         text: 'al·lo- ',
                //         children: [
                //           TextSpan(
                //               text: 'unlilar oldidan',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                       fontSize: 13,
                //                       fontWeight: FontWeight.w400,
                //                       fontStyle: FontStyle.italic)),
                //           TextSpan(
                //               text: ' all- ',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w800,
                //                   )),
                //           TextSpan(
                //               text: '[al-] ',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w400,
                //                   )),
                //           TextSpan(
                //               text:
                //                   ' shaklida, mahsulsiz o‘zlashma prefiks <grek.> ',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                       fontSize: 15,
                //                       fontWeight: FontWeight.w400,
                //                       fontStyle: FontStyle.italic)),
                //           TextSpan(
                //               text:
                //                   'sifatlarga o‘zgaruvchanlik, xilma-xillik ma’nosini beradi; ',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w400,
                //                   )),
                //           TextSpan(
                //               text: ' allochromatisch ',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                       fontSize: 15,
                //                       fontWeight: FontWeight.w800,
                //                       fontStyle: FontStyle.italic)),
                //           TextSpan(
                //               text: '[-k-] ',
                //               style: Theme.of(context)
                //                   .textTheme
                //                   .bodyText1
                //                   .copyWith(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.w400,
                //                   )),
                //         ])),

//                 Text("""
//       I.	Lemmalar. Lemmalar lug‘atda alfavit tartibida joylashtirilgan bo‘lib, bunda ular (-a·bel) bo‘g‘inlarga ajratilishi qalin nuqta belgisi (·) orqali va ular yordamida hosil qilingan yasama so‘zlar yarimqalin qiya bosma –kursiv harflar bilan ajratib yozilgan. Lemmaga tegishli qo‘shimcha ma’lumotlar (kammahsul, urg‘uli, sermahsul va shu kabilar) kursiv harflarda, tarjimalar va ularning sinonimlari esa och rangli harflar bilan berilgan. Lemmalar so‘z yasovchi elementlardan tarkib topganligi sababli, dastavval, o‘sha affiksning ma’nosi, so‘ngra, u bilan hosil qilingan yasama so‘zlar tarjimalari berilgan. Masalan:

//       al·lo-, unlilar oldidan all- [al-] shaklida, mahsulsiz o‘zlashma prefiks <grek.>
// sifatlarga o‘zgaruvchanlik, xilma-xillik ma’nosini beradi; allochromatisch [-k-] alloxromatik □ chromatisch, allochton geol. alloxtonnik □ autochton, allogam kzndalang changlanadigan/urug‘lanadigan

//       Lemmalar tarjimalari bir so‘z yoki mazmunan bir-biriga yaqin sinonimlar orqali ifodalangan.
//       Bir necha ma’no qatoriga ega bo‘lgan affiks ko‘p ma’noli deya qayd etilgan va uning ma’nolari bir-biridan arab raqami bilan ajratilgan.

//       -al urg‘uli, kammahsul suffiks
//       1. kim/nimaningdir holatida, tarzida, kim/nima kabi/singari ≈ -artig, -haft; horizontal gorizantal, katastrophal falokatli, normal normal, tabiiy, mo‘tadil; odatiy, triumphal zafar (g‘alaba)ga oid, zafar ...; g‘olibona
//       2. darajasiz; -dan kelib chiqib, -ga tayanib, -ga oid; formal formaga oid, formal; rasmiy, hormonal gormonal, gormon..., kolonial mustamlakachilikka va mustamlakalarga oid; kolonial; mustamlaka...; mustamlakachilik...; koloniya (qaram) bo‘lgan, mustamlaka; qaram, national millatga tegishli, milliy, regional regionga oid; hududiy
//     	So‘z yasovchi elementlar turlarini farqlashda M.D. Stepanova («Slovar slovoobrazovatelnыx elementov nemetskogo yazыka», Moskva: Russkiy yazыk, 1979) ning klassifikatsiyasiga tayanildi, masalan, suffiks, yarimsuffiks, o‘zlashma suffiks, murakkab suffiks, prefiks, yarimprefiks, o‘zlashma prefiks, murakkab prefiks, murakkab sifatning birinchi chastotali komponenti. Ular lemmadan keyin (yarimprefiks va shu kabilar) kursiv harflarda berilgan:
//       al·ler- urg‘uli, sermahsul yarimprefiks, dealiktik so‘zlashuv uslubiga xos; orttirma daraja mazmunini yanada kuchaytirish/orttirish uchun ishlatiladi; allerbest- eng yaxshi
//       	Muayyan affiksdan hosil qilingan leksemalarning so‘z yasalish asosi □ belgisidan keyin berilgan. Agar mazkur belgi mavjud bo‘lmasa, ushbu leksema unikal asos hisoblanadi. Masalan:
//       -a·bel fe’llardan (asosan –ieren bilan tugagan)keyin qo‘shiladi, urg‘uli, kammahsul o‘zlashma suffiks <lot. -fr.>
// nimadir mumkin, imkonli yoki kim/nimadir biror narsa uchun yaroqliligini ifodalaydi ≈ -bar; akzeptabel maqbul, ma’qul □ Akzept n, deklinabel turlanuvchi □ Deklination f, ≈ deklinierbar ↔ indeklinabel <ein Wort>, transportabel <ein Fernsehapparat> ko‘chma, ko‘chiriladigan □ Transport m, praktikabel <eine Lösung, eine Methode> amaliy, amalga oshirsa bo‘ladigan □ Praktik f, reparabel tuzatib (to‘g‘irlab) bo‘ladigan □ reperiren, ≈  reparierbar ↔ irreparabel <ein Schaden>
//       Lemma yordamida hosil qilingan yasama so‘zlarning pragmatik xususiyatini yoritish maqsadida <...> belgisida ushbu leksema bilan so‘z birikmasi hosil qilinishi mumkin bo‘lgan so‘zlar berilgan:
//       -a·bel ... deklinabel turlanuvchi ≈ deklinierbar ↔ indeklinabel <ein Wort> turlanmaydigan, transportabel <ein Fernsehapparat> ko‘chma, ko‘chiriladigan, praktikabel <eine Lösung, eine Methode> amaliy, amalga oshirsa bo‘ladigan
//       Lemma maqolasiga kiritilmagan qo‘shimcha ma’lumotlar Izoh: shaklida berilgan:

//       a- kammahsul prefiks; o‘zidan keyin kelgan sifatning antonimi, qarama-qarshi ma’nosini bildiradi; . asymmetrisch <eine Figur> asimmetrik, nosimmetrik, simmemetriyasiz
//       || Izoh: bu prefiks abnorm noto‘g‘ri, nonormal so‘zida ab- shaklida hamda anorganisch noorganik, jonsiz so‘zida an- shaklida keladi.

//       Agar lemma allamorfema shakllariga ega bo‘lsa, o‘sha morfema maqola berilgan asosiy lemma(morfema)ga ↑ yoki ↓ belgisi orqali yo‘naltirilgan:
//       il- prefiks; ↓in-
//       Lemmadan adabiy til leksemalaridan boshqa sath birliklari yasalsa, ular kursiv harflarda qayd etilgan:
//       in- urg‘uli, kammahsul o‘zlashma prefiks, yozma uslubga xos
//       shaxs yoki predmet so‘z yasalishi asosidan anglashilgan narsaga, belgiga, xususiyatga ega emasligini bildiruchi sifat yasaydi
//       II.	Talaffuz. Lemmalarning talaffuziga oid ma’lumotlar, asosan, o‘zga tillardan o‘zlashgan va odatiy nemis tili talaffuz qoidalariga mos kelmaydigan birliklardan keyin  [-] belgida berilgan:
//       -iv [-] urg‘uli, kammahsul suffiks; ma’lum belgiga, xususiyatga egalikni (aggressiv agressiyaga, tajovuzkorlikka, bosqinchilikka asoslangan, agressiya yo‘lini tutuvchi, agressiv, tajovuzkor, bosqinchi, depressiv ruhi tushgan, g‘amgin, mayus, explosiv portlovchi, portlaydigan, kooperativ hamkor, kooperativga oid, qarashli; kooperatsiya asosidagi; kooperativ...
// """,
//                     textAlign: TextAlign.justify,
//                     style: Theme.of(context).textTheme.bodyText1.copyWith(
//                           fontSize: 15,
//                         )),

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
""",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w400)),
                    Text("""
zool. – yozma uslub
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
                            fontSize: 14, fontWeight: FontWeight.w400)),
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
