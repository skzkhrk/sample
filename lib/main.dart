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

  // ■リスト表示用配列
  final List<Map<String, dynamic>> listItems = [
    {
      'text': 'Item 1',
      'color': Colors.green[600],
    },
    {
      'text': 'Item 2',
      'color': Colors.green[300],
    },
    {
      'text': 'Item 3',
      'color': Colors.green[100],
    },
  ];

  @override
  Widget build(BuildContext context) {
    // ■ マテリアルデザイン用ウィジェット
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

    // ■ 縦・横
    // return Scaffold(
    //   body: Column(
    //     children: <Widget>[
    //       Container(
    //         width: double.infinity,
    //         height: 60,
    //         color: Colors.grey[200],
    //         child: const Column(
    //           children: <Widget>[
    //             Text('first line'),
    //             Text('second line'),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: 70,
    //         color: Colors.lightGreen,
    //         child: const Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: <Widget>[
    //             Text('***'),
    //             Text('中央寄せ'),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: 60,
    //         color: Colors.grey[200],
    //         child: const Column(
    //           mainAxisAlignment: MainAxisAlignment.end,
    //           children: <Widget>[
    //             Text('***'),
    //             Text('下寄せ'),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: 60,
    //         color: Colors.lightGreen,
    //         child: const Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: <Widget>[
    //             Text('***'),
    //             Text('均等に配置'),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: 60,
    //         color: Colors.grey[200],
    //         child: const Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //             Text('***'),
    //             Text('左寄せ'),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: 60,
    //         color: Colors.lightGreen,
    //         child: const Column(
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           children: <Widget>[
    //             Text('***'),
    //             Text('右寄せ'),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // ■ ボタン
    // return Scaffold(
    //   body: Column(
    //     children: <Widget>[
    //       Container(
    //         padding: const EdgeInsets.only(top: 32),
    //         child: const Text('TextButton'),
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: <Widget>[
    //           const TextButton(
    //             onPressed: null,
    //             child: Text('disabled'),
    //           ),
    //           TextButton(
    //             onPressed: () {},
    //             child: const Text('enabled'),
    //           ),
    //           TextButton(
    //             style: TextButton.styleFrom(
    //               backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //             ),
    //             onPressed: () {},
    //             child: const Text('enabled'),
    //           ),
    //         ],
    //       ),
    //       Container(
    //         padding: const EdgeInsets.only(top: 32),
    //         child: const Text('OutlinedButton'),
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: <Widget>[
    //           const OutlinedButton(
    //             onPressed: null,
    //             child: Text('disabled'),
    //           ),
    //           OutlinedButton(
    //             onPressed: () {},
    //             child: const Text('enabled'),
    //           ),
    //           OutlinedButton(
    //             onPressed: () {},
    //             style: OutlinedButton.styleFrom(
    //               backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //             ),
    //             child: const Text('enabled'),
    //           ),
    //         ],
    //       ),
    //       Container(
    //         padding: const EdgeInsets.only(top: 32),
    //         child: const Text('ElevatedButton'),
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: <Widget>[
    //           const ElevatedButton(
    //             onPressed: null,
    //             child: Text('disabled'),
    //           ),
    //           ElevatedButton(
    //             onPressed: () {},
    //             child: const Text('enabled'),
    //           ),
    //           ElevatedButton(
    //             onPressed: () {},
    //             style: ElevatedButton.styleFrom(
    //               backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //               elevation: 16,
    //             ),
    //             child: const Text('enabled'),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );

    // ■ リスト
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 125,
            padding: const EdgeInsets.all(4),
            // childrenを指定してリスト表示
            child: ListView(
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.blue[600],
                  child: const Text('Item 1'),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[300],
                  child: const Text('Item 2'),
                ),
                Container(
                  height: 50,
                  color: Colors.blue[100],
                  child: const Text('Item 3'),
                ),
              ],
            ),
          ),
          Container(
            height: 125,
            padding: const EdgeInsets.all(4),
            // 配列を元にリスト表示
            child: ListView.builder(
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  color: listItems[index]['color'],
                  child: Text(listItems[index]['text']),
                );
              },
            ),
          ),
          Container(
            height: 125,
            padding: const EdgeInsets.all(4),
            // 各アイテムの間にスペースなどを挟みたい場合
            child: ListView.separated(
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  color: listItems[index]['color'],
                  child: Text(listItems[index]['text']),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}
