import 'package:flutter/material.dart';


class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      title:const Text('Column'),
      ),
      body:Container(
        width: double.infinity,
        color:Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
          ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
           ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
          ],
        ),
      ),
    );
  }
}

