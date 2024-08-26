
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp())
}













// void main() {
//   runApp(MyApp());
// }
//
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       builder: (context, widget) => ResponsiveWrapper.builder(
//         BouncingScrollWrapper.builder(context, widget!),
//         maxWidth: 1200,
//         minWidth: 480,
//         defaultScale: true,
//         breakpoints: [
//           ResponsiveBreakpoint.resize(480, name: MOBILE),
//           ResponsiveBreakpoint.autoScale(800, name: TABLET),
//           ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//         ],
//         background: Container(color: Color(0xFFF5F5F5)),
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Responsive Design Example'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               Text(
//                 'FLUTTER WEB. THE BASICS',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//
//               Text(
//                 'A responsive design example that changes layout depending on screen size.',
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 20),
//
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Learn More'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

