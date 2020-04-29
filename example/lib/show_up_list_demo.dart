import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ShowUpListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.toStringShort()),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: ShowUpList(
            direction: Direction.horizontal,
            animationDuration: Duration(milliseconds: 1500),
            delayBetween: Duration(milliseconds: 800),
            offset: -0.2,
            children: <Widget>[
              for (int i = 0; i < 5; i++)
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  margin: EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/flower.jpg",
                    height: 200,
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
