// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   final String title = "老板通";
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: title,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: FooterPage(title: title),
//     );
//   }
// }
// class FooterPage extends StatefulWidget {
//   const FooterPage({super.key, required this.title});
//
//   final String title;
//   @override
//   State<FooterPage> createState() => FooterPageState();
// }
//
// class FooterPageState extends State<FooterPage> {
//
//   final Color primaryColor = Colors.lightBlue;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//           backgroundColor: primaryColor,
//           title: Text(widget.title, style: const TextStyle(fontWeight:FontWeight.w200)),
//       ),
//       drawer: const Drawer(),
//       // body: FooterView(
//       //     footer: Footer(
//       //       backgroundColor: Colors.grey[200],
//       //       child: Center(
//       //           child: Row(
//       //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //             children: <Widget>[
//       //               _buildFooterIcons(Colors.grey, Colors.red, Icons.home_filled, "营业"),
//       //               _buildFooterIcons(Colors.grey, Colors.black, Icons.restaurant_menu_outlined, "菜品"),
//       //               _buildFooterIcons(Colors.grey, Colors.black, Icons.diamond_outlined, "老板通+"),
//       //               _buildFooterIcons(Colors.grey, Colors.black, Icons.attach_money_sharp, "贷款"),
//       //               _buildFooterIcons(Colors.grey, Colors.black, Icons.apps, "应用"),
//       //             ],
//       //           ),
//       //         ),
//       //     ),
//         flex: 2,
//         children: const <Widget>[
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(top: 50, left: 70),
//                 child: Text('Scrollable View Section'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Column _buildFooterIcons(Color fontColor, Color iconColor, IconData iconData, String label) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         IconButton(
//           onPressed: (){ debugPrint("我是: $label");},
//           icon: Icon(iconData, color: iconColor),
//           selectedIcon: Icon(iconData, color: Colors.red),
//         ),
//         Container(
//           margin: const EdgeInsets.only(top: 8),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.w400,
//               color: fontColor,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
