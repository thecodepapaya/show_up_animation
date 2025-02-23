// ignore_for_file: unnecessary_this

import 'styles.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ShowUpDemo extends StatelessWidget {
  const ShowUpDemo({super.key});

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
              child: const Text(
                'Show up Animation',
                key: Key("Show up Animation"),
                style: kStyle,
              ),
            ),
            const SizedBox(height: 10),
            ShowUpAnimation(
              delayStart: const Duration(seconds: 1),
              child: const Text(
                'Show up Animation with delay',
                key: Key("Show up Animation with delay"),
                style: kStyle,
              ),
            ),
            const SizedBox(height: 10),
            ShowUpAnimation(
              delayStart: const Duration(seconds: 2),
              direction: Direction.horizontal,
              child: const Text(
                'Direction horizontal',
                key: Key("Direction horizontal"),
                style: kStyle,
              ),
            ),
            const SizedBox(height: 10),
            ShowUpAnimation(
              offset: 5,
              delayStart: const Duration(seconds: 3),
              child: const Text(
                'Large offset',
                key: Key('Large offset'),
                style: kStyle,
              ),
            ),
            const SizedBox(height: 10),
            ShowUpAnimation(
              offset: 5,
              delayStart: const Duration(seconds: 4),
              direction: Direction.horizontal,
              child: const Text(
                'Large horizontal offset',
                key: Key('Large horizontal offset'),
                style: kStyle,
              ),
            ),
            const SizedBox(height: 10),
            ShowUpAnimation(
              delayStart: const Duration(seconds: 5),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -0.2,
              child: const Text(
                'Curve bounceIn',
                key: Key('Curve bounceIn'),
                style: kStyle,
              ),
            ),
            const SizedBox(height: 10),
            ShowUpAnimation(
              animationDuration: const Duration(seconds: 2),
              delayStart: const Duration(seconds: 6),
              child: const Text(
                'Slo Mo',
                key: Key('Slo Mo'),
                style: kStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
