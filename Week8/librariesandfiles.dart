import 'dart:convert'; 
import 'package:flutter/material.dart'; 
 
void main() => runApp(const MyApp()); 
 
class MyApp extends StatefulWidget { 
  const MyApp({super.key}); 
 
  @override 
  State<MyApp> createState() => _MyAppState(); 
} 
 
class _MyAppState extends State<MyApp> { 
  Map<String, dynamic> user = {}; 
 
  @override 
  void initState() { 
    super.initState(); 
    loadJson(); 
  } 
 
  void loadJson() { 
    // JSON data embedded directly 
    const jsonString = ''' 
{ 
  "name": "Allen Antony", 
  "age": 19, 
  "skills": ["Flutter", "Dart", "Firebase"] 
} 
'''; 
 
    setState(() { 
      user = Map<String, dynamic>.from(json.decode(jsonString)); 
    }); 
  } 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: Scaffold( 
        appBar: AppBar(title: const Text("User JSON Demo")), 
        body: Center( 
          child: user.isEmpty 
              ? const Text("Loading...", style: TextStyle(fontSize: 20)) 
              : Column( 
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [ 
                    Text("Name: ${user['name']}", 
                        style: const TextStyle(fontSize: 24)), 
                    Text("Age: ${user['age']}", 
                        style: const TextStyle(fontSize: 24)), 
                    Text("Skills: ${user['skills'].join(', ')}", 
                        style: const TextStyle(fontSize: 24)), 
                  ], 
                ), 
        ), 
      ), 
    ); 
  } 
} 