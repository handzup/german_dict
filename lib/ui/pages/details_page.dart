import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:german_dict/core/test.dart';
import 'package:german_dict/core/theme.dart';
import 'package:german_dict/domain/deatails_controller.dart';
import 'package:german_dict/domain/lemma.dart';
import 'package:german_dict/ui/widgets/animated_icon.dart';
import 'package:german_dict/ui/widgets/lemma.dart';
import 'package:german_dict/ui/widgets/lemma_desc.dart';
import 'package:german_dict/ui/widgets/my_card.dart';
import 'package:german_dict/ui/widgets/semantics_card.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Test test = Get.find();
    final Lemma lemma = Get.arguments;

    return GetBuilder<DetailsController>(
      init: DetailsController(lemma: lemma),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
              onPressed: () => Get.back()),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CustomAnimatedIcon(
                index: lemma.lemma.hashCode,
                color: Colors.white,
              ),
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            lemma.lemma,
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Theme.of(context).primaryColor,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            child: Container(
                color: Theme.of(context).backgroundColor,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      MyCard(
                        widgets: [
                          LemmaBox(
                            title: 'Lemma',
                            lemma: lemma.lemma,
                            dividerColor: AppTheme.red,
                            fontStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          LemmaBox(
                            title: 'Beschreibung des Lemmas',
                            lemma: lemma.description,
                            dividerColor: AppTheme.yellow,
                            fontStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SemanticsCard(
                        antonym: lemma.antonym,
                        synonym: lemma.synonym,
                      ),
                      MyCard(
                        widgets: [
                          LemmaBox(
                            title: 'Wortbildungsbedeutung',
                            lemma: lemma.meaning,
                            dividerColor: AppTheme.black,
                            fontStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            lemma.examples ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          LemmaBox(
                            title: 'Anmerkung',
                            lemma: lemma.annotation,
                            dividerColor: AppTheme.black,
                            fontStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
