import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 自分で作成したウィジェット
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // マテリアルデザイン用ウィジェット
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Widgetに定義するフィールドは常にfinal
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // setState()でbuild()を再呼び出し
  //     _counter++;
  //     debugPrint("HelloWorld");
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // マテリアルデザイン用ウィジェット
    // return Scaffold(
    //   appBar: AppBar(
    //     // テーマに合ったカラー
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     // 色を直接指定もできる
    //     // backgroundColor: Colors.lightGreenAccent,
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     // 中央寄せウィジェット
    //     child: Column(
    //       // テキスト用ウィジェット
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         // 太さを指定
    //         const Text(
    //           'Bold',
    //           style: TextStyle(fontWeight: FontWeight.bold),
    //         ),
    //         // スタイルを指定
    //         const Text(
    //           'Italic',
    //           style: TextStyle(fontStyle: FontStyle.italic),
    //         ),
    //         // サイズを指定
    //         const Text(
    //           'fontSize = 36',
    //           style: TextStyle(fontSize: 36),
    //         ),
    //         // 色を指定
    //         const Text(
    //           'Red',
    //           style: TextStyle(color: Colors.red),
    //         ),
    //         const Text(
    //           'You have pushed the button this many times:',
    //         ),
    //         Text(
    //           '$_counter',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //         // コンテナウィジェット
    //         Container(
    //           // width: double.infinity,
    //           width: 200,
    //           height: 50,
    //           // colorとdecorationを両方使う場合は、decorationの中のcolorプロパティを利用する
    //           decoration: BoxDecoration(
    //             color: Theme.of(context).colorScheme.inversePrimary,
    //             // 枠線
    //             border: Border.all(color: Colors.white, width: 2),
    //             // 角丸
    //             borderRadius: BorderRadius.circular(8),
    //           ),
    //           // 表示位置を指定
    //           child: const Text('TextAlign.right', textAlign: TextAlign.right),
    //         ),
    //       ],
    //     ),

    //   ),
    //   // アクションボタン用ウィジェット
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ), // 末尾カンマはbuild()の自動フォーマットをいい感じにする
    // );

    // 縦・横
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.grey[200],
            child: const Column(
              children: <Widget>[
                Text('first line'),
                Text('second line'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.lightGreen,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('***'),
                Text('中央寄せ'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.grey[200],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('***'),
                Text('下寄せ'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.lightGreen,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('***'),
                Text('均等に配置'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.grey[200],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('***'),
                Text('左寄せ'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.lightGreen,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('***'),
                Text('右寄せ'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
