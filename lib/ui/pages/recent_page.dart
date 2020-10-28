import 'package:flutter/material.dart';
import '../../core/theme.dart';
import '../../domain/lemma.dart';
import '../widgets/list_tile.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RecentPage extends StatelessWidget {
  List<Lemma> reverse(Box box) {
    List<Lemma> list = <Lemma>[];
    for (var i = 0; i < box.length; i++) {
      list.add(box.getAt(i));
    }
    return list.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              child: Container(
                width: double.maxFinite,
                height: double.infinity,
                color: Theme.of(context).backgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Recently viewed',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Expanded(
                        child: ValueListenableBuilder(
                      valueListenable: Hive.box('history').listenable(),
                      builder: (context, Box box, child) {
                        List<Lemma> ln = reverse(box);
                        if (ln.isEmpty) return child;
                        return ListView.builder(
                            physics: ClampingScrollPhysics(),
                            padding: EdgeInsets.only(top: 10.0, bottom: 55),
                            itemCount: ln.length,
                            itemBuilder: (context, index) {
                              return CustomListTile(
                                lemma: ln[index],
                              );
                            });
                      },
                      child: Center(
                        child: Icon(
                          Icons.history,
                          size: 50,
                          color: AppTheme.red,
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
