import 'package:flutter/material.dart';

void main() {
  
  runApp(App());
}
 class App extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
  return MaterialApp(
    home: Column(
      children: [
        Container(
          color: Colors.purple,
          height: 200,
          width: 200,
        ),
        Container(
          color: Colors.blue,
          height: 150,
          width: 300,
        ),
        Container(
          color: Colors.white,
          height: 200,
          width: 500,
        ),
      ],
    ),
  );
 }
}
