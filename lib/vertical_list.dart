import 'package:flutter/material.dart';

class MyVerticalList extends StatefulWidget {
  const MyVerticalList({Key? key}) : super(key: key);

  @override
  State<MyVerticalList> createState() => _MyVerticalListState();
}

class _MyVerticalListState extends State<MyVerticalList> {
  List<int> numberList = List<int>.generate(30, ((index) => index + 1));
  final List<String> secondLevelItems = ['A', 'B', 'C', 'D'];
  final List<String> finalLevelItems = ['a', 'b', 'c', 'd'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Three-layered Expansion List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Three-layered Expansion List'),
        ),
        body: ListView.builder(
          itemCount: numberList.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
              title: Text('First Layer ${numberList[index]}'),
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: secondLevelItems.length,
                  itemBuilder: (BuildContext context, int subIndex) {
                    return ExpansionTile(
                      title: Text(
                          'Second Layer ${numberList[index]} ${secondLevelItems[subIndex]}'),
                      children: <Widget>[
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: secondLevelItems.length,
                          itemBuilder: (BuildContext context, int innerMostIndex) {
                            return ListTile(
                              title: Text(
                                  'Third Layer ${numberList[index]} ${secondLevelItems[subIndex]} ${finalLevelItems[innerMostIndex]}'),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
