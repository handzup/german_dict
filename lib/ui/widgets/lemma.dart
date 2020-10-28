import 'package:flutter/material.dart';
import 'package:german_dict/core/theme.dart';

class LemmaBox extends StatelessWidget {
  final String lemma;
  final Color dividerColor;
  final TextStyle fontStyle;
  final String title;
  const LemmaBox(
      {Key key,
      this.lemma,
      this.dividerColor = AppTheme.red,
      this.fontStyle,
      @required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return lemma != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: 'GT Eesti Pro',
                    fontWeight: FontWeight.w600),
              ),
              Divider(
                color: dividerColor,
                height: 15,
                thickness: 5,
                endIndent: 60,
              ),
              Text(
                lemma,
                style: fontStyle,
              ),
            ],
          )
        : SizedBox.shrink();
  }
}
