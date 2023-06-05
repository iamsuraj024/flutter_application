import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Vertical List'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your button 2 functionality here
                },
                child: const Text('Horizontal List'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your button 3 functionality here
                },
                child: const Text('Extras'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}