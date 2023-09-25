import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memo_0924/database/db.dart';
import '../database/memo.dart';

class EditPage extends StatelessWidget{
  String title = '';
  String text = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon:const Icon(Icons.delete),
            onPressed: (){},
          ),
          IconButton(
            icon:const Icon(Icons.save),
            onPressed: saveDB,
    )
        ],
      ),

      body:
      Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String title){this.title=title;},
              style : TextStyle(fontSize : 15,fontWeight: FontWeight.w500),
              keyboardType:  TextInputType.multiline,
              maxLines: null,
             // obscureText:true,
              decoration: InputDecoration(
                hintText: '식단을 입력해주세요.',
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),//식단 사이 간격

            TextField(
             // obscureText:true,
              onChanged: (String text){this.title=title;},
              style : TextStyle(fontSize : 15,fontWeight: FontWeight.w500),
              keyboardType:  TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: '식단을 입력해주세요.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> saveDB() async{
  DBHelper sd = DBHelper();

  var fido = Memo(
    id:3,
    title: this.title,
    text: this.text,
  );

  await sd.insertMemo(fido);

  print(await sd.memos());
}