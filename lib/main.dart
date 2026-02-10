import 'package:flutter/material.dart';
//awts
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AgeCheckerApp(),
    );
  }
}

class AgeCheckerApp extends StatelessWidget {
  // VARIABLES & DATA TYPES
  String name = "Maria Santos";
  int age = 20;
  bool isAdult = false;
  double height = 165.5;

  @override
  Widget build(BuildContext context) {

    // IF-ELSE & LOGICAL OPERATORS
    if (age >= 18) {
      isAdult = true;
    } else {
      isAdult = false;
    }

    // SWITCH STATEMENT
    String ageCategory;
    switch (age ~/ 10) {
      case 0:
      case 1:
        ageCategory = "Child";
        break;
      case 2:
        ageCategory = "Young Adult";
        break;
      case 3:
      case 4:
        ageCategory = "Adult";
        break;
      default:
        ageCategory = "Senior";
    }

    // LOOP
    String message = "";
    for (int i = 1; i <= 3; i++) {
      message += "Welcome! ";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Age Category Checker"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: $name", style: TextStyle(fontSize: 18)),
            Text("Age: $age", style: TextStyle(fontSize: 18)),
            Text("Height: $height cm", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Category: $ageCategory", style: TextStyle(fontSize: 18)),
            Text(
              "Status: ${isAdult ? "Adult" : "Minor"}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 15),
            Text("Message: $message"),
          ],
        ),
      ),
    );
  }
}
