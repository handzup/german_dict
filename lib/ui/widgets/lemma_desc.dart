import 'package:flutter/material.dart';

import '../../core/theme.dart';

class LemmaDescBox extends StatelessWidget {
  final String description;

  const LemmaDescBox({Key key, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return description != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Beschreibung des Lemmas',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: 'GT Eesti Pro',
                    fontWeight: FontWeight.w600),
              ),
              Divider(
                color: AppTheme.yellow,
                height: 15,
                thickness: 5,
                endIndent: 60,
              ),
              Text(
                description,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'GT Eesti Pro',
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        : SizedBox.shrink();
  }
}
