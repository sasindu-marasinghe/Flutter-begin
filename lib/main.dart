import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Header'),
        ),
        body: Column(
          children: [
            // Hero Section
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200.0,
              child: const Center(
                child: Text(
                  'Hero Section',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            // Form Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle form submission here
                      // For now, just print a message
                      print('Form Submitted!');
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
            // Hello Sasindu Text
            const Expanded(
              child: Center(
                child: Text('Hello sasindu!'),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50.0,
            color: Color.fromARGB(255, 113, 148, 14),
            child: const Center(
              child: Text(
                'Footer',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
