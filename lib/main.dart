import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

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
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text('BERITA TERBARU'),
                      Text('PERTANDINGAN HARI INI'),
                    ],
                  )
                ],
              ),
            ),
            Image.network(
                "https://akcdn.detik.net.id/community/media/visual/2022/09/15/juventus-4.jpeg?w=700&q=90"),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(7),
              child: const Text(
                'Costa Mendekat Ke Palmeiras',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              color: Colors.purple,
              child: const Text(
                'Transfer',
                style: TextStyle(fontSize: 15),
              ),
            ),
            News(),
            News(),
          ],
        ));
  }
}

class News extends StatelessWidget {
  const News({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      margin: const EdgeInsets.all(2.0),
      child: Column(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 2, color: Colors.blue))),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image.network(
                    "https://akcdn.detik.net.id/community/media/visual/2022/09/15/juventus-benfica-1.jpeg?w=700&q=90"),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Barcelona Feb 13, 2021'),
          ),
        )
      ]),
    );
  }
}
