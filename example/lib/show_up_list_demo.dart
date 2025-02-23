import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ShowUpListDemo extends StatelessWidget {
  const ShowUpListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(toStringShort()),
      ),
      body: Center(
        // child: SingleChildScrollView(
        child: ShowUpList(
          enableLazyLoading: true,
          direction: Direction.horizontal,
          animationDuration: const Duration(milliseconds: 1500),
          delayBetween: const Duration(milliseconds: 1500),
          offset: -0.2,
          children: <Widget>[
            for (int i = 0; i < 10; i++)
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 8,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                margin: const EdgeInsets.all(8),
                child: Image.asset(
                  "assets/flower.jpg",
                  // height: 200,
                  // width: 200,
                  fit: BoxFit.fill,
                ),
              ),
          ],
        ),
        // ),
      ),
    );
  }
}
