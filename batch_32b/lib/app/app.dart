import 'package:batch_32b/screen/column_screen.dart';
import 'package:batch_32b/screen/mathematical_screen.dart';
// import 'package:batch_32b/screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
 
class App extends StatelessWidget {
  const App({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mathematical(),
    );
  }
}