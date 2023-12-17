
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late FlutterGifController controller1, controller2, controller3, controller4;

  @override
  void initState() {
    controller1 = FlutterGifController(vsync: this);
    controller2 = FlutterGifController(vsync: this);
    controller4 = FlutterGifController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller1.repeat(
        min: 0,
        max: 53,
        period: const Duration(milliseconds: 200),
      );
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller2.repeat(
        min: 0,
        max: 13,
        period: const Duration(milliseconds: 200),
      );
      controller4.repeat(
        min: 0,
        max: 13,
        period: const Duration(milliseconds: 200),
      );
    });
    controller3 = FlutterGifController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          const Text("From asset file"),
          GifImage(
            controller: controller1,
            image: const AssetImage("images/login_gif.gif"),
          ),
          const Text("Internet"),
        ],
      ),
    );
  }
}
