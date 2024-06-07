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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setState()でbuild()を再呼び出し
      _counter++;
      debugPrint("HelloWorld");
    });
  }

  @override
  Widget build(BuildContext context) {
    // マテリアルデザイン用ウィジェット
    return Scaffold(
      appBar: AppBar(
        // テーマに合ったカラー
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // 色を直接指定もできる
        // backgroundColor: Colors.lightGreenAccent,
        title: Text(widget.title),
      ),
      body: Center(
        // 中央寄せウィジェット
        child: Column(
          // テキスト用ウィジェット
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 太さを指定
            const Text(
              'Bold',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // スタイルを指定
            const Text(
              'Italic',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            // サイズを指定
            const Text(
              'fontSize = 36',
              style: TextStyle(fontSize: 36),
            ),
            // 色を指定
            const Text(
              'Red',
              style: TextStyle(color: Colors.red),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // アクションボタン用ウィジェット
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // 末尾カンマはbuild()の自動フォーマットをいい感じにする
    );
  }
}
