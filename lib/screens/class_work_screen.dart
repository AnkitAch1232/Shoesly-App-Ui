// import 'package:flutter/material.dart';

// class ClassWorkScreen extends StatelessWidget {
//   const ClassWorkScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "The Nep Tech Cafe",
//             style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           bottom: TabBar(tabs: [
//             Container(
//               height: 30,
//               width: 130,
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1,
//                 ),
//               ),
//               child: Text("Cold Drinks"),
//             ),
//             Container(
//               height: 30,
//               width: 130,
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1,
//                 ),
//               ),
//               child: Text("Soft Drinks"),
//             ),
//             Container(
//               height: 30,
//               width: 130,
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1,
//                 ),
//               ),
//               child: Text("Hard Drinks"),
//             ),
//           ]),
//         ),
//         body: TabBarView(children: [
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Container(
//               height: double.maxFinite,
//               width: double.maxFinite,
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1,
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: CircleAvatar(
//                       radius: 25,
//                       backgroundImage: 
//                       //Image.network(
//                       //   "https://c8.alamy.com/comp/E5CEK2/coca-cola-bottle-coke-bottle-E5CEK2.jpg",
//                       // ),
//                     ),
//                     title: Text("COco Cola"),
//                     subtitle: Column(
//                       children: [
//                         Text("500ml"),
//                         Text("For quick refresher"),
//                         Text("Rs. 65"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Text("Hard Drinks"),
//           Text("Hard Drinks"),
//         ]),
//       ),
//     );
//   }
// }
