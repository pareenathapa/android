import 'package:batch_32b/model/circle_model.dart';
import 'package:flutter/material.dart';
 
class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key}); // Fixed the constructor syntax
 
  @override
  State<CircleScreen> createState() => _CircleScreenState();
}
 
class _CircleScreenState extends State<CircleScreen> {
  double? radius;
// Made pi a static constant
  double result = 0;
  final GlobalKey<FormState> mykey =
      GlobalKey<FormState>(); // Added the type annotation
 
  CircleModel? circleModel;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text("Circle Area"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: mykey, // Added the key to the Form widget
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the radius";
                  }
                  return null; // Added to handle the case when validation passes
                },
                onChanged: (value) {
                  setState(() {
                    radius = double.tryParse(value); // Parsing safely
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.red),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.green),
                  ) ,
                  labelText: 'Enter radius ',
                ),
              ),
              const SizedBox(height: 16), // Increased the spacing
 
              // Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.yellow, // Changed backgroundColor to primary
                ),
                onPressed: () {
                  if (mykey.currentState!.validate()) {
                    setState(() {
                      circleModel = CircleModel(
                          radius: radius ?? 0); // Handling null radius
                      result = circleModel!.area();
                    });
                  }
                },
                child: const Text(
                  'Area of circle',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 16), // Increased the spacing
 
              // Display information
              Text(
                'Area of circle is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}