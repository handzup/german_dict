import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/lemma.dart';
import 'animated_icon.dart';

class CustomListTile extends StatelessWidget {
  final Lemma lemma;
  const CustomListTile({Key key, @required this.lemma}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4, bottom: 4),
      child: Container(
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
        child: ListTile(
            onTap: () => Get.toNamed('/details', arguments: lemma),
            trailing: IconButton(
              onPressed: () => print('book '),
              icon: CustomAnimatedIcon(
                index: lemma.lemma.hashCode,
              ),
            ),
            title: Text(
              lemma.lemma ?? '',
              style: Theme.of(context).textTheme.bodyText1,
            )),
      ),
    );
  }
}
