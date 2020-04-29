import 'package:example/styles.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

// Will be available soon
class ShowUpBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.toStringShort()),
      ),
      body: Center(),
    );
  }
}
