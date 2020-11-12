import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _items = <Widget>[];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 10; i++) {
      var item = Container(
        color: i.isOdd ? Colors.blue : Colors.white,
        height: 100.0,
        child: Center(
          child: Text(
            'No, $i',
            style: const TextStyle(fontSize: 32.0),
          ),
        ),
      );
      _items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Sliver App Bar"),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://github.com/flutter/website/blob/master/examples/layout/lakes/interactive/images/lake.jpg?raw=true',
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.android),
                tooltip: 'icon button',
                onPressed: () {
                  print('pressd.');
                },
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_items),
          ),
        ],
      ),
    );
  }
}
