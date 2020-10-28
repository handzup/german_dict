import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../core/hive.dart';
import '../../core/theme.dart';
import '../../domain/lemma.dart';

class CustomAnimatedIcon extends StatefulWidget {
  final Color color;
  final int index;
  const CustomAnimatedIcon(
      {Key key, this.color = AppTheme.red, @required this.index})
      : super(key: key);
  @override
  _CustomAnimatedIconState createState() => _CustomAnimatedIconState();
}

class _CustomAnimatedIconState extends State<CustomAnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  HiveWrapper hive = Get.find();
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.5,
    ).animate(CurvedAnimation(curve: Curves.decelerate, parent: _controller));
    _scaleAnimation
      ..addStatusListener((status) {
        switch (status) {
          case AnimationStatus.forward:
            Future.delayed(Duration(milliseconds: 50))
                .then((value) => setBookmark());
            break;
          case AnimationStatus.completed:
            _controller.reverse();
            break;

          default:
        }
      });
    super.initState();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  animateIcon() {
    _controller.forward();
  }

  setBookmark() {
    Future.delayed(Duration(milliseconds: 50))
        .then((value) => hive.isFav(index: widget.index, name: 'lemma'));
  }

  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('lemma').listenable(),
      builder: (context, Box box, child) {
        Lemma item = box.get(widget.index);
        return GestureDetector(
          onTap: () => animateIcon(),
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Icon(
              item.isFav ? Icons.bookmark : Icons.bookmark_border,
              color: item.isFav ? widget.color : null,
            ),
          ),
        );
      },
    );
  }
}
