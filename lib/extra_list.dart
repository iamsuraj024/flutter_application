import 'package:flutter/material.dart';

class MyExtraList extends StatefulWidget {
  const MyExtraList({Key? key}) : super(key: key);
  @override
  State<MyExtraList> createState() => _MyExtraListState();
}

class _MyExtraListState extends State<MyExtraList> {
  bool isON = false;
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extra Types of Widgets',
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text('Extra Types of Widgets'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  isON = !isON;
                  setState(() {});
                },
                child: Text(isON ? 'ON' : 'OFF'),
              ),
              Column(
                children: [
                  Text(
                    'Rating: ${rating.toStringAsFixed(1)}',
                  ),
                  Slider(
                    value: rating,
                    min: 0,
                    max: 5,
                    divisions: 5,
                    onChanged: (value) {
                      setState(() {
                        rating = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
