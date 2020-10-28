import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final List<Widget> widgets;

  const MyCard({Key key, this.widgets}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
            children: widgets,
          ),
        ),
      ),
    );
  }
}
