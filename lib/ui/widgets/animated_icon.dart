import 'package:flutter/material.dart';
import '../../core/theme.dart';

class CustomAnimatedIcon extends StatefulWidget {
  @override
  _CustomAnimatedIconState createState() => _CustomAnimatedIconState();
}

class _CustomAnimatedIconState extends State<CustomAnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _scaleAnimation;
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
                .then((value) => setState(() => checked = !checked));
            break;
          case AnimationStatus.completed:
            _controller.reverse();
            break;

          default:
        }
      });
    super.initState();
  }

  animateIcon() {
    _controller.forward();
  }

  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => animateIcon(),
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Icon(
          checked ? Icons.bookmark : Icons.bookmark_border,
          color: checked ? AppTheme.red : null,
        ),
      ),
    );
  }
}
