import 'package:flutter/material.dart';
import 'package:german_dict/core/theme.dart';
import 'package:german_dict/ui/widgets/animated_icon.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.red,
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
                color: Colors.grey[100],
                child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    padding: EdgeInsets.only(top: 10.0, bottom: 55),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 4, bottom: 4),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 0.5,
                                    spreadRadius: 0.5,
                                    offset: Offset(0, 1))
                              ]),
                          child: ListTile(
                              trailing: IconButton(
                                onPressed: () => print('book $index'),
                                icon: CustomAnimatedIcon(),
                              ),
                              title: Text(
                                '$index title',
                              )),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
