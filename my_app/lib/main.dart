import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Dasturi',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SnackBarExample(),
    );
  }
}

class SnackBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBar Misoli')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Bu SnackBar xabari!'),
                duration: Duration(seconds: 2),
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: () {},
                ),
              ),
            );
          },
          child: Text('SnackBar Ko‘rsatish'),
        ),
      ),
    );
  }
}
