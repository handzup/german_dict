import 'package:flutter/material.dart';
import 'package:german_dict/ui/widgets/lemma.dart';

class SemanticsCard extends StatelessWidget {
  final String synonym;
  final String antonym;

  const SemanticsCard({Key key, this.synonym, this.antonym}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (synonym == null && antonym == null) return SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Semantik des Lemmas',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).cardTheme.color,
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).cardTheme.shadowColor,
                        blurRadius: 0.5,
                        spreadRadius: 0.5,
                        offset: Offset(0, 1))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LemmaBox(
                      title: 'Synonym',
                      dividerColor: Colors.black,
                      lemma: synonym,
                      fontStyle: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    LemmaBox(
                        title: 'Antonym',
                        dividerColor: Colors.black,
                        lemma: antonym,
                        fontStyle: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(
                                fontSize: 16, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
