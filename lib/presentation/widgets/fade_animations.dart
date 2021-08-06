import 'package:flutter/material.dart';

const kDuration = Duration(milliseconds: 600);
const kCurve = Curves.easeOutSine;

class FadeFromUpAnimation extends StatefulWidget {
  final Widget? child;
  final double? begin, end;
  final double? drop;

  const FadeFromUpAnimation({this.child, this.begin, this.end, this.drop});
  @override
  _FadeFromUpAnimationState createState() => _FadeFromUpAnimationState();
}

class _FadeFromUpAnimationState extends State<FadeFromUpAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: kDuration)
      ..addListener(() {
        setState(() {});
      })
      ..forward();
    _animation =
        Tween<Offset>(begin: Offset(0, widget.drop!), end: Offset(0, 0)).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Interval(widget.begin!, widget.end!, curve: kCurve)),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: AnimatedOpacity(
        child: widget.child,
        opacity: Tween<double>(begin: 0.0, end: 1.0)
            .animate(_animationController)
            .value,
        duration: kDuration,
      ),
    );
  }
}

class FadeFromDownAnimation extends StatefulWidget {
  final Widget? child;

  const FadeFromDownAnimation({this.child});
  @override
  _FadeFromDownAnimationState createState() => _FadeFromDownAnimationState();
}

class _FadeFromDownAnimationState extends State<FadeFromDownAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: kDuration)
      ..addListener(() {
        setState(() {});
      })
      ..forward();
    _animation = Tween<Offset>(begin: Offset(0, 50), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: _animationController, curve: kCurve),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: AnimatedOpacity(
        opacity: Tween<double>(begin: 0.0, end: 1.0)
            .animate(_animationController)
            .value,
        duration: kDuration,
        child: SlideTransition(
          position: _animation,
          child: widget.child,
        ),
      ),
    );
  }
}