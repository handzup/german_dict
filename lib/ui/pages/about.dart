import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  _launchURL() async {
    const url = 'mailto:z.sanakulov@cspi.uz';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/image.jpg'),
                    ),
                  ),
                  Text(
                    'Über den Autor',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    """     Zayniddin Ibodullayevich Sanakulov ist derzeit Doktorand an der Nationalen Universität Usbekistans, und arbeitet auch als Deutschlehrer im Chirchiker Staatlichen Pädagogischen Institut. Er hat sein Magisterstudium an der Usbekischen Staatlichen Weltsprachenuniversität, an der Fakultät für deutsche Philologie 2009 beendet. Der Autor hatte gute Gelegenheit, seine Kenntnisse und Sprachfertigkeiten an renommierten Universitäten in Kasachstan, Russland und Deutschland zu verbessern. Er ist Autor von mehr als einem Dutzend wissenschaftlichen Artikeln und mehr als zwanzig wissenschaftlichen Arbeiten in den Bereichen der vergleichenden Linguistik, kontrastiven Lexikographie und Übersetzungswissenschaft. Bislang hat er außerdem zwei Wörterbücher sowie drei Lehr- und Methodenhandbücher für örtliche Deutschlerner zusammengestellt. """,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    """      Dieses «Deutsch-usbekisches adjektivbildendes E-Affixenwörterbuch» ist auch die erste derivatologische Quelle in der usbekischen Lexikographie für das Sprachenpaar Deutsch-Usbekisch. Aus diesem Grund begrüßt und schätzt der Autor das positive und negative Feedback von Lesern und Nutzern, wie es verbessert werden kann.""",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Kontakt:  ',
                        textAlign: TextAlign.right,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () => _launchURL(),
                        child: Text(
                          'z.sanakulov@cspi.uz',
                          textAlign: TextAlign.right,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Muallif haqida',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    """     Zayniddin Ibodullayevich hozirda Mirzo Ulug’bek nomidagi O’zbekiston Milliy universiteti tayanch doktoranti sanaladi, shu bilan birga, Toschkent viloyati Chirchiq davlat pedagogika institutida nemis tili oq’ituvchisi sifatifa faoliyat ko’rsatmoqda. U 2003-2007-yillarda O’zbekiston davlat jahon tillari universitetining bakalavriyat, 2007-2009-yillarda esa magistratura bosqichini a’lo baholarga tamomlagan. Muallif Qozog’iston, Rossiya va Germaniya kabi davlatlarning nufuzli oliygohlarida o’z bilim va malakasini oshirish baxtiga muyassar bo’lgan. U qiyosiy tilshunoslik, chog’ishtirma leksikografiya va tarjimashunoslik sohalariga oid o’ndan ortiq ilmiy maqola, yigirmadan ortiq ilmiy tezislar muallifidir. Shuningdek, muallif tomonidan ikkita lug’at hamda uchta o’quv va uslubiy qo’llanmalar tuzib, nemis tili o’rganuvchilarining e’tiboriga havola etilgan. """,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    """      Mazkur «Nemischa-o’zbekcha sifat yasovchi affikslar lug’ati» ham o’zbek leksikografiyasida ushbu tillar ishtirokida yaratilgan ilk derivatologik manba sanaladi. Shu sababdan o’quvchi- va foydalanuvchilar tomonidan bildirilgan lug’at, uni takomillashtirish borasidagi –xoh ijobiy, xoh salbiy – fikr va mulohazalarni muallif mamnuniyat ila qabul qiladi hamda o’z minnaddorchiligini bildirib qoladi.""",
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Murojaat uchun:  ',
                        textAlign: TextAlign.right,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () => _launchURL(),
                        child: Text(
                          'z.sanakulov@cspi.uz',
                          textAlign: TextAlign.right,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     GestureDetector(
                  //       onTap: () => _launchURL(),
                  //       child: Text(
                  //         'z.sanakulov@cspi.uz',
                  //         textAlign: TextAlign.right,
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .bodyText1
                  //             .copyWith(color: Colors.blueAccent),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
