import 'package:flutter/material.dart';
import 'package:german_dict/ui/widgets/list_tile.dart';

class RecentPage extends StatelessWidget {
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
                      child: Text('Some text'),
                    ),
                    Expanded(
                      child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          padding: EdgeInsets.only(top: 10.0, bottom: 55),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return CustomListTile(index: index);
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
