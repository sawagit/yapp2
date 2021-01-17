import 'package:flutter/material.dart';
import 'package:flutter_yapp2/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page yasu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
      appBar: AppBar(
//        title: Text(widget.title),//
        title: Text('タイトル直接書く'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
          Icon(Icons.keyboard_return),
        ], //アイコン追加
      ),
      body: Center(
        child: RaisedButton(
          child: Text('次ボタン'),
          onPressed: (){
            Navigator.push(
              context, //ここ改行必須？
              MaterialPageRoute(
                builder:(context)=>NextPage(),
//                builder:(context)=>NextPage('引数テキスト'),
              ),
            );
          },
        ),

/*        child: Container(
          color: Colors.lightGreen, // 色
          color: Colors.white, // 色
          height: double.infinity,
          width: double.infinity,

          child: Column(//　縦に並ぶ
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
 //             'You have pushed the button this many times:',
                'テキストのテストの幅'
              ),
              Text('カラムで並んでる'),
              Text('カラムで並んでる'),
              Text('カラムで並んでる'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
 */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
