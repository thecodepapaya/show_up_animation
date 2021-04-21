import 'package:flutter/material.dart';

import 'enums.dart';

/// Wrapper class to implement slide and fade animations at the same time to
/// the [children]. Wrap the widget that you wish to make appearance with slide-fade transition
/// or better known as the "Show Up" animation in this class.
class ShowUpBuilder extends StatefulWidget {
  /// The child on which to apply the given [ShowUpBuilder].
  final Widget Function(BuildContext context, int index) builder;

  /// The offset by which to slide and [children] into view from [Direction].
  /// Use negative value to reverse animation [direction]. Defaults to 0.2.
  final double offset;

  /// The curve used to animate the [children] into view.
  /// Defaults to [Curves.easeIn]
  final Curve curve;

  /// The direction from which to animate the [children] into view. [Direction.horizontal]
  /// will make the child slide on x-axis by [offset] and [Direction.vertical] on y-axis.
  /// Defaults to [Direction.vertical].
  final Direction direction;

  /// The delay with which to animate the [children]. Takes in a [Duration] and
  /// defaults to 0.0 seconds.
  final Duration delayStart;

  /// The total duration in which the animation completes. Defaults to 800 milliseconds.
  final Duration animationDuration;

  ShowUpBuilder({
    required this.builder,
    this.offset = 0.2,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.delayStart = const Duration(seconds: 0),
    this.animationDuration = const Duration(milliseconds: 800),
  });

  @override
  _ShowUpBuilderState createState() => _ShowUpBuilderState();
}

class _ShowUpBuilderState extends State<ShowUpBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 150,
      itemBuilder: widget.builder,
    );
  }
}
