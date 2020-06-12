// import 'package:flutter/material.dart';
// import 'package:show_up_animation/show_up_animation.dart';

// class ShowUpBuilderDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(this.toStringShort()),
//       ),
//       body: Center(
//         child: ShowUpBuilder(
//           direction: Direction.horizontal,
//           animationDuration: Duration(milliseconds: 1500),
//           // delayBetween: Duration(milliseconds: 800),
//           offset: -0.2,
//           builder: (BuildContext context, int index) {
//             return ShowUpAnimation(
//               child: Text("data"),
//               delayStart: Duration(milliseconds: 50) * index,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
