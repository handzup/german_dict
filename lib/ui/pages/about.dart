import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  _launchURL(String mail) async {
    var url = 'mailto:$mail';
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Kurz über Autoren',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset('assets/images/user1.png'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        """       Sh. S. Imyaminova ist Kandidat der Philologischen Wissenschaften, Professorin, Lehrstuhlleiterin für Deutsche Philologie an der Fakultät für ausländische Philologie der Nationalen Mirso Ulugbek Universität. Sie hat Vorlesungen in den Fächern „Deutsche Lexikologie”, “Übersetzungstheorie und Praxis”, „Vergleichende Typologie“, „Direkte und indirekte Übersetzung”, “Lesen und Schreibpraxis”, „Moderne Sprachwissenschaft”, “Vergleichende Sprachwissenschaft” und andere für die Studenten des Bachelor- und Masterstudiums.  """,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        """     Von 2009 bis 2016 beschäftigte sie sich mit den Problemen der Erstellung des Deutsch-Usbekischen Wörterbuchs im Rahmen eines GIP Projekts mit dem Institut für Germanistik der Westfälischen Universität  in Münster. Sie nahm an den Seminaren des Goethe Instituts in den Jahren 1996, 2002, 2008, 2011 an den Goethe-Instituten in München, Berlin, Dresden, Freiburg und Münster. 
            
        Professorin Imyaminova ist Autorin von einer Monographie, 9 Lehrbüchern, 3 Handbüchern, 4 Wörterbüchern, 15 Lehrwerke und 200 wissenschaftlichen Artikeln. Sie arbeitete 15 Jahre lang als Stellvertreterin des Dekans für erzieherische Angelegenheiten und 5 Jahre leitete sie die Fakultät für ausländische Philologie als Dekanin. 
     """,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset('assets/images/user2.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        """       Zayniddin Ibodullayevich Sanakulov ist derzeit Doktorand an der Nationalen Universität Usbekistans, und arbeitet auch als Deutschlehrer im Chirchiker Staatlichen Pädagogischen Institut. Er hat sein Magisterstudium an der Usbekischen Staatlichen Weltsprachenuniversität, an der Fakultät für deutsche Philologie 2009 beendet. Der Autor hatte gute Gelegenheit, seine Kenntnisse und Sprachfertigkeiten an renommierten Universitäten in Kasachstan, Russland und Deutschland zu verbessern. Er ist Autor von mehr als einem Dutzend wissenschaftlichen Artikeln und mehr als zwanzig wissenschaftlichen Arbeiten in den Bereichen der vergleichenden Linguistik, kontrastiven Lexikographie und Übersetzungswissenschaft. Bislang hat er außerdem zwei Wörterbücher sowie drei Lehr- und Methodenhandbücher für örtliche Deutschlerner zusammengestellt. 
          
         Dieses deutsch-usbekische E-Wörterbuch der adjektivbildender Affixe ist auch die erste derivatologische Quelle in der usbekischen Lexikographie für das Sprachenpaar Deutsch-Usbekisch. Aus diesem Grund begrüßt und schätzt der Autor das positive und negative Feedback von Lesern Nutzern, wie es verbessert werden kann """,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Kontakt:  ',
                            textAlign: TextAlign.right,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => _launchURL('rumrreich @mail.ru'),
                                child: Text(
                                  'rumrreich @mail.ru',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                          color: Colors.blueAccent,
                                          fontSize: 14),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _launchURL('z.sanakulov@cspi.uz'),
                                child: Text(
                                  'z.sanakulov@cspi.uz',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                          color: Colors.blueAccent,
                                          fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
