import 'package:flutter/material.dart';

class MyHorizontalList extends StatefulWidget {
  const MyHorizontalList({Key? key}) : super(key: key);

  @override
  State<MyHorizontalList> createState() => _MyHorizontalListState();
}

class _MyHorizontalListState extends State<MyHorizontalList> {
  List<int> numberList = List<int>.generate(30, ((index) => index + 1));
  final List<String> expansionTitlesItem = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested Horizontal ListView in ExpansionTile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nested Horizontal ListView in ExpansionTile'),
        ),
        body: ListView.builder(
          itemCount: numberList.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
              title: Text('Item ${numberList[index]}'),
              children: <Widget>[
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: expansionTitlesItem.length,
                    itemBuilder: (BuildContext context, int subIndex) {
                      return Container(
                        width: 150,
                        margin: EdgeInsets.all(8),
                        color: Colors.blue,
                        child: Center(
                          child: Text(' ${expansionTitlesItem[subIndex]}',
                              style: TextStyle(color: Colors.white)),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
