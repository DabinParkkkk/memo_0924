import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Row(children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left:20, bottom: 20),
                child:Text('피부를 부탁해',style:TextStyle(fontSize : 36, color: Colors.blue))
            )
          ]),
          ...LoadMemo()
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => EditPage())
          );
        },
        tooltip: '식단 추가하려면 클릭하세요',
        label: Text('식단 추가'),
        icon: Icon(Icons.add),
      ),
    );
  }

  List<Widget> LoadMemo() {
    List<Widget> memoList = [];
    memoList.add(Container(color: Colors.blueGrey, height: 100,));
    return memoList;
  }
}