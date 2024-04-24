import 'package:flutter/material.dart';

class IconDesignScreen extends StatelessWidget {
  const IconDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon
                (Icons.call), Text("CALL")],
            ),
            Column(
              children: [Icon(Icons.navigation), Text("ROUTE")],
            ),
            Column(
              children: [Icon(Icons.share), Text("SHARE")],
            )
          ],
        ),
      ),
    );
  }
}