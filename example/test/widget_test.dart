// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('Text visible test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    // Finish all animations
    await tester.pumpAndSettle(Duration(seconds: 1));
    expect(find.byKey(Key("Show up Animation")), findsOneWidget);
    expect(find.byKey(Key("Show up Animation with delay")), findsOneWidget);
    expect(find.byKey(Key("Direction horizontal")), findsOneWidget);
    expect(find.byKey(Key("Large offset")), findsOneWidget);
    expect(find.byKey(Key("Large horizontal offset")), findsOneWidget);
    expect(find.byKey(Key("Curve bounceIn")), findsOneWidget);
    expect(find.byKey(Key("Slo Mo")), findsOneWidget);
  });
}
