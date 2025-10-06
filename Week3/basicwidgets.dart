import 'package:flutter/material.dart';

class BasicLayoutExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basic Layout Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the whole Column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  margin: EdgeInsets.only(right: 10), // Margin between containers
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  margin: EdgeInsets.only(right: 10),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 20), // Space between Row and next Container
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.orange,
              padding: EdgeInsets.all(20), // Padding inside the container
              child: Center(child: Text('A big orange container')),
            ),
          ],
        ),
      ),
    );
  }
}
