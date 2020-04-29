import 'package:example/styles.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ShowUpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.toStringShort()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ShowUpAnimation(
              child: Text(
                'Show up Animation',
                key: Key("Show up Animation"),
                style: kstyle,
              ),
            ),
            SizedBox(height: 10),
            ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              child: Text(
                'Show up Animation with delay',
                key: Key("Show up Animation with delay"),
                style: kstyle,
              ),
            ),
            SizedBox(height: 10),
            ShowUpAnimation(
              delayStart: Duration(seconds: 2),
              direction: Direction.horizontal,
              child: Text(
                'Direction horizontal',
                key: Key("Direction horizontal"),
                style: kstyle,
              ),
            ),
            SizedBox(height: 10),
            ShowUpAnimation(
              offset: 5,
              delayStart: Duration(seconds: 3),
              child: Text(
                'Large offset',
                key: Key('Large offset'),
                style: kstyle,
              ),
            ),
            SizedBox(height: 10),
            ShowUpAnimation(
              offset: 5,
              delayStart: Duration(seconds: 4),
              direction: Direction.horizontal,
              child: Text(
                'Large horizontal offset',
                key: Key('Large horizontal offset'),
                style: kstyle,
              ),
            ),
            SizedBox(height: 10),
            ShowUpAnimation(
              delayStart: Duration(seconds: 5),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -0.2,
              child: Text(
                'Curve bounceIn',
                key: Key('Curve bounceIn'),
                style: kstyle,
              ),
            ),
            SizedBox(height: 10),
            ShowUpAnimation(
              animationDuration: Duration(seconds: 2),
              delayStart: Duration(seconds: 6),
              child: Text(
                'Slo Mo',
                key: Key('Slo Mo'),
                style: kstyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
