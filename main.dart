import 'package:flutter/material.dart';

void main() => runApp(const NewApp());

class NewApp extends StatefulWidget {
  const NewApp({super.key});
  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('My New App 2026'), backgroundColor: Colors.teal),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Clicks Counter:', style: TextStyle(fontSize: 20)),
              Text('$counter', style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.teal)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => setState(() => counter++),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                child: const Text('Click Me', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
