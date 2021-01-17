import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{

 // NaxtPage(this.name);
//  final String name;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('画面２'),
      ),
    body: Container(
      child: Column(children:<Widget>[
  //      Text(name),
        Center(
          child:RaisedButton(
              child:Text('戻るよ'),
              onPressed:(){
                Navigator.pop(context);
                },
        ),
    )
      ])
       )
    );
    }
/*

test

  // 変数のデフォルトはNULL
  int i = 0;
  var v = 0;
  final f = 0x0f; // finalは変更不可
  const c = 0x0c; //const はコンパイル定数
  //static const sc;

  var foo = const [];
  double d=00.1;

  String s= 'test';
  bool b =null;

  num n = 0.5;//num はint かdouble どちらかが入る

  var one = int.parse('2'); //string > int
  assert ( n == 1);// ???
  var onepointone = double.parse('1.1');

  var multiString='''
  一行目\n
  二行目
  三行目
  ''';
  print(multiString);


  for (int i = 0; i < 20; i++,d+=0.1) {
  //   print('hello ${i}');
  print('hello ${s} ${d}');
  }
*/

}
