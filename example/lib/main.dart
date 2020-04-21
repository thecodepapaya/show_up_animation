import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = "Show up Demo";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: this.title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextStyle style = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ShowUpAnimation(
              child: Text(
                'Show up Animation',
                key: Key("Show up Animation"),
                style: style,
              ),
            ),
            SizedBox(height:10),
            ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              child: Text(
                'Show up Animation with delay',
                key: Key("Show up Animation with delay"),
                style: style,
              ),
            ),
            SizedBox(height:10),
            ShowUpAnimation(
              delayStart: Duration(seconds: 2),
              direction: Direction.horizontal,
              child: Text(
                'Direction horizontal',
                key: Key("Direction horizontal"),
                style: style,
              ),
            ),
            SizedBox(height:10),
            ShowUpAnimation(
              offset: 5,
              delayStart: Duration(seconds: 3),
              child: Text(
                'Large offset',
                key: Key('Large offset'),
                style: style,
              ),
            ),
            SizedBox(height:10),
            ShowUpAnimation(
              offset: 5,
              delayStart: Duration(seconds: 4),
              direction: Direction.horizontal,
              child: Text(
                'Large horizontal offset',
                key: Key('Large horizontal offset'),
                style: style,
              ),
            ),
            SizedBox(height:10),
            ShowUpAnimation(
              delayStart: Duration(seconds: 5),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -0.2,
              child: Text(
                'Curve bounceIn',
                key: Key('Curve bounceIn'),
                style: style,
              ),
            ),
            SizedBox(height:10),
            ShowUpAnimation(
              animationDuration: Duration(seconds: 2),
              delayStart: Duration(seconds: 6),
              child: Text(
                'Slo Mo',
                key: Key('Slo Mo'),
                style: style,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
