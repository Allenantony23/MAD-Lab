import 'package:flutter/material.dart';

void main() {
  runApp(MyStyledApp());
}

class MyStyledApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styling and Theming Example',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 18, color: Colors.deepPurple.shade700),
          headline6: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Styled UI')),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade50,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.3),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Text(
              'Hello, Styled Flutter!',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
    );
  }
}
