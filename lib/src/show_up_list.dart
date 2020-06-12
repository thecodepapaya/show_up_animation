import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'show_up_builder.dart';
import 'enums.dart';

/// Wrapper class to simplify the use of multiple [ShowUpAnimation] for a list of widgets.
/// Supply all the children that you wish to animate to the widget as a list of widgets.
///
/// Use if the number of [children] widgets are not huge as it may have performace impacts
/// on the application. If the count of children is likely to exceed a few hundreads,
/// consider using [ShowUpBuilder].
class ShowUpList extends StatefulWidget {
  /// The list of children on which to apply the [ShowUpAnimation] in a series, one
  /// after the other.
  final List<Widget> children;

  /// The offset by which to slide the [children] into view from [Direction].
  /// Use negative value to reverse animation [direction]. Defaults to 0.2.
  final double offset;

  /// The curve used to animate the [children] into view.
  /// Defaults to [Curves.easeIn]
  final Curve curve;

  /// The direction from which to animate the [children] into view. [Direction.horizontal]
  /// will make the child slide on x-axis by [offset] and [Direction.vertical] on y-axis.
  /// Defaults to [Direction.vertical].
  final Direction direction;

  /// The delay between animating each [children] into view. The delay is equally
  /// divided into all the chidren. Takes in a [Duration] and defaults to 300 milliseconds.
  final Duration delayBetween;

  /// The total duration in which the animation of each child completes. Defaults to 500 milliseconds.
  final Duration animationDuration;

  /// Enable lazy loading to build the list lazily. Recommended for large or infinite lists
  final bool enableLazyLoading;

  ShowUpList({
    @required this.children,
    this.offset = 0.2,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.enableLazyLoading = false,
    this.delayBetween = const Duration(milliseconds: 300),
    this.animationDuration = const Duration(milliseconds: 500),
  }) : assert(children.length > 0);

  @override
  _ShowUpListState createState() => _ShowUpListState();
}

class _ShowUpListState extends State<ShowUpList> {
  List<Widget> _animatedChildren;

  @override
  void initState() {
    super.initState();
    if (widget.enableLazyLoading) {
      return;
    } else {
      int _length = widget.children.length;
      _animatedChildren = List<Widget>(_length);
      for (int i = 0; i < _length; i++) {
        _animatedChildren[i] = ShowUpAnimation(
          child: widget.children[i],
          animationDuration: widget.animationDuration,
          curve: widget.curve,
          offset: widget.offset,
          direction: widget.direction,
          delayStart: widget.delayBetween * (i + 1),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.enableLazyLoading) {
      return ListView.builder(
          itemCount: widget.children.length,
          itemBuilder: (BuildContext context, int index) {
            return ShowUpAnimation(
              child: widget.children[index],
              delayStart: widget.delayBetween,
              animationDuration: widget.animationDuration,
              curve: widget.curve,
              direction: widget.direction,
              offset: widget.offset,
            );
          });
    } else
      return Column(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _animatedChildren,
      );
  }
}
