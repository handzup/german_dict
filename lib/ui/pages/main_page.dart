import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/lemma.dart';
import '../widgets/list_tile.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 0.5),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    Flexible(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                      child: TextFormField(
                        maxLines: 1,
                        controller: _textController,
                        cursorColor: Theme.of(context).cursorColor,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    )),
                    IconButton(
                      icon: Icon(Icons.clear),
                      padding: EdgeInsets.zero,
                      onPressed: () => _textController.clear(),
                    )
                  ],
                ),
              ),
            ),
          ),
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
                  child: ValueListenableBuilder(
                    valueListenable: Hive.box('lemma').listenable(),
                    builder: (context, Box box, child) => ListView.builder(
                        physics: ClampingScrollPhysics(),
                        padding: EdgeInsets.only(top: 10.0, bottom: 55),
                        itemCount: box.values.length,
                        itemBuilder: (context, index) {
                          Lemma item = box.getAt(index);
                          return CustomListTile(
                            index: index,
                            lemma: item,
                          );
                        }),
                    child: Center(
                      child: Text('Loading'),
                    ),
                  )
                  //  GetBuilder<MainPageController>(
                  //   init: MainPageController(),
                  //   builder: (controller) => ListView.builder(
                  //       physics: ClampingScrollPhysics(),
                  //       padding: EdgeInsets.only(top: 10.0, bottom: 55),
                  //       itemCount: controller.list.length,
                  //       itemBuilder: (context, index) {
                  //         return CustomListTile(
                  //           index: index,
                  //           lemma: controller.list[index],
                  //         );
                  //       }),
                  // ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
