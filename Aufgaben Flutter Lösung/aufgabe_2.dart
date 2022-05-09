import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ich bin ein Student',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ich bin ein Student'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Tristan Damm',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Sommersemester 2022',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
