import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// final player = AudioPlayer();
// play(int noteNo) async {
//   await player.setSource(AssetSource('sounds/$noteNo.wav'));
// }
// // AudioPlayer audioPlayer = AudioPlayer();
// String url = 'assets/';
// play(int noteNo) async {
//   int result = await audioPlayer.play(url, isLocal: true);
//   if (result == 1) {
//     print('song played');
//     // success
//   }
// }   //  not included

Expanded xylophone({required Color color, required int noteNo}) {
  final player = AudioCache();
  return Expanded(
      child: InkWell(
    onTap: (() {
      player.play('note$noteNo.wav');
    }),
    child: Container(
      color: color,
    ),
  ));
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          xylophone(color: Colors.lime, noteNo: 1),
          xylophone(color: Colors.red, noteNo: 2),
          xylophone(color: Colors.orange, noteNo: 3),
          xylophone(color: Colors.yellow, noteNo: 4),
          xylophone(color: Colors.green, noteNo: 5),
          xylophone(color: Colors.pink, noteNo: 6),
          xylophone(color: Colors.purple, noteNo: 7)
        ],
      ),
    ));
  }
}
