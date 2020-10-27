import 'package:flutter/material.dart';
import 'package:german_dict/core/theme.dart';

class RecentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.red,
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
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Some text'),
                    ),
                    Expanded(
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
                                      icon: Icon(Icons.bookmark_border),
                                    ),
                                    title: Text(
                                      '$index title',
                                    )),
                              ),
                            );
                          }),
                    ),
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
