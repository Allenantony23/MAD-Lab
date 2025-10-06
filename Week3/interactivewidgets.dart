import 'package:flutter/material.dart';

class InteractiveWidgetsExample extends StatefulWidget {
  @override
  _InteractiveWidgetsExampleState createState() => _InteractiveWidgetsExampleState();
}

class _InteractiveWidgetsExampleState extends State<InteractiveWidgetsExample> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = "";

  void _onPressed() {
    setState(() {
      _displayText = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interactive Widgets Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter some text',
                prefixIcon: Icon(Icons.edit),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _onPressed,
              icon: Icon(Icons.send),
              label: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              _displayText,
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
