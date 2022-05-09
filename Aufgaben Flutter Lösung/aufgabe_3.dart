import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ich bin ein Student',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ich bin ein Student'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _semester = 2022;
  String _semesterText = 'Sommersemester 2022';

  void _incrementSemester() {
    setState(() {
      if (_semesterText.startsWith('Wintersemester')) {
        _semester++;
        _semesterText = 'Sommersemester $_semester';
      } else {
        _semesterText = 'Wintersemester $_semester';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ich bin ein Student'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tristan Damm',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              _semesterText,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementSemester,
        child: const Icon(Icons.add),
      ),
    );
  }
}
