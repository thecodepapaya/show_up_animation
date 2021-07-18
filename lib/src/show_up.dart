import 'dart:async';

import 'package:flutter/material.dart';

import 'enums.dart';

/// Wrapper class to implement slide and fade animations at the same time to
/// the [child]. Wrap the widget that you wish to make appearance with slide-fade transition
/// or better known as the "Show Up" animation in this class.
class ShowUpAnimation extends StatefulWidget {
  /// The child on which to apply the given [ShowUpAnimation].
  final Widget child;

  /// The offset by which to slide and [child] into view from [Direction].
  /// Use negative value to reverse animation [direction]. Defaults to 0.2.
  final double offset;

  /// The curve used to animate the [child] into view.
  /// Defaults to [Curves.easeIn]
  final Curve curve;

  /// The direction from which to animate the [child] into view. [Direction.horizontal]
  /// will make the child slide on x-axis by [offset] and [Direction.vertical] on y-axis.
  /// Defaults to [Direction.vertical].
  final Direction direction;

  /// The delay with which to animate the [child]. Takes in a [Duration] and
  /// defaults to 0.0 seconds.
  final Duration delayStart;

  /// The total duration in which the animation completes. Defaults to 800 milliseconds.
  final Duration animationDuration;

  /// The value sets the `from` value of the fade animation controller.
  final double fadeBegin;

  final bool enable;

  ShowUpAnimation({
    required this.child,
    this.offset = 0.2,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.delayStart = const Duration(seconds: 0),
    this.animationDuration = const Duration(milliseconds: 800),
    this.fadeBegin = -1.0,
    this.enable = true,
    Key? key,
  }) : super(key: key);

  @override
  _ShowUpAnimationState createState() => _ShowUpAnimationState();
}

class _ShowUpAnimationState extends State<ShowUpAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animationSlide;

  AnimationController? _animationController;

  late Animation<double> _animationFade;

  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    if (_isDisposed || !widget.enable) {
      return;
    } else {
      _animationController = AnimationController(
        vsync: this,
        duration: widget.animationDuration,
      );

      //configure the animation controller as per the direction
      if (widget.direction == Direction.vertical) {
        _animationSlide =
            Tween<Offset>(begin: Offset(0, widget.offset), end: Offset(0, 0))
                .animate(CurvedAnimation(
              curve: widget.curve,
              parent: _animationController!,
            ));
      } else {
        _animationSlide =
            Tween<Offset>(begin: Offset(widget.offset, 0), end: Offset(0, 0))
                .animate(CurvedAnimation(
              curve: widget.curve,
              parent: _animationController!,
            ));
      }

      _animationFade =
          Tween<double>(begin: widget.fadeBegin, end: 1.0).animate(
              CurvedAnimation(
                curve: widget.curve,
                parent: _animationController!,
              ));

      Timer(widget.delayStart, () {
        if (_animationController != null && !_isDisposed)
          _animationController!.forward();
      });
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.enable)
      return FadeTransition(
        opacity: _animationFade,
        child: SlideTransition(
          position: _animationSlide,
          child: widget.child,
        ),
      );
    return widget.child;
  }
}
