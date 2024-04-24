// import 'package:batch_32b/screen/arithmetic_screen.dart';
// import 'package:batch_32b/screen/simple_interest_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber[100],
//       appBar: AppBar(
//         backgroundColor: Colors.amber[100],
//         title: const Text('Dashboard'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8),
//         child:Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder:(context) => const SimpleInterestScreen(),
//                   ),
//                 );
//               },
//               child: const Text("Simple Interest"),
//             ),
//             const SizedBox(height: 8),
//             ElevatedButton(
//               onPressed: (){
//                   Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder:(context) => const ArithmeticScreen(),
//                   ),
//                 );
//               }, 
//             child: const Text("Arthmetic Screen"),
//             ),
//           ],
//         )
//       ),

//     );
//   }
// }

// class ArithmeticScreen {
//   const ArithmeticScreen();
// }
