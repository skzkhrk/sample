import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  // runApp(const MyApp2());
  runApp(const MyTodoApp());
}

// ====================== MyApp ======================

// 自分で作成したウィジェット
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // マテリアルデザイン用ウィジェット
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
      // ■ appbar
      appBar: AppBar(
        // 左側のアイコン
        leading: const Icon(Icons.arrow_back),
        // タイトルテキスト
        title: const Text(
          'Sample App',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        // 右側のアイコン一覧
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            tooltip: 'favorite',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.access_alarm),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
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

// ====================== /MyApp ======================

// ====================== MyApp2 ======================

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  // 使用するStateを指定
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(count.toString()),
        ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          onPressed: () {
            // データを更新する時は setState を呼ぶ
            setState(() {
              // データを更新
              count = count + 1;
            });
          },
          child: const Text('カウントアップ'),
        ),
      ],
    );
  }
}

// ====================== /MyApp2 ======================

// ====================== MyTodoApp ======================

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        // Material3 : Googleが提供しているオープンソースデザインシステム
        useMaterial3: false,
      ),
      home: const TodoListPage(),
    );
  }
}

// リスト一覧画面用ウィジェット
class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  // Todoリストのデータ
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト一覧'),
        backgroundColor: Colors.blueGrey,
      ),
      // データを元にListViewを作成
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(todoList[index]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // pushで新規画面に遷移
          final newListText = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const TodoAddPage();
            }),
          );
          if (newListText != null) {
            // キャンセルした場合は newListText が null となるので注意
            setState(() {
              // リスト追加
              todoList.add(newListText);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// リスト追加画面用ウィジェット
class TodoAddPage extends StatefulWidget {
  const TodoAddPage({super.key});

  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  // 入力されたテキスト用
  String _text = '';

  // データをもとに表示するウィジェット
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingが自動設定になってる？
        title: const Text('リスト追加'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        // ボタンサイドの余白を付ける
        padding: const EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 入力されたテキストを表示
            Text(
              _text,
              style: const TextStyle(color: Colors.blue),
            ),
            const SizedBox(height: 8),
            // テキスト入力
            TextField(
              onChanged: (String value) {
                // データが変更したことを知らせる（画面を更新する）
                setState(() {
                  // データを変更
                  _text = value;
                });
              },
            ),
            const SizedBox(height: 8),
            SizedBox(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // リスト追加ボタン
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  // "pop"で前の画面に戻る
                  // "pop"の引数から前の画面にデータを渡す
                  Navigator.of(context).pop(_text);
                },
                child:
                    const Text('リスト追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // キャンセルボタン
              child: TextButton(
                // ボタンをクリックした時の処理
                onPressed: () {
                  // "pop"で前の画面に戻る
                  Navigator.of(context).pop();
                },
                child: const Text('キャンセル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// ====================== /MyTodoApp ======================