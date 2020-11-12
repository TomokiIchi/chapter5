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
  String _message;
  int _index = 0;

  @override
  void initState() {
    _message = 'ok.';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text(
          _message,
          style: const TextStyle(
            fontSize: 28.0,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('bottom'),
            icon: Icon(Icons.android),
          ),
          BottomNavigationBarItem(
            title: Text("bottom"),
            icon: Icon(Icons.favorite),
          ),
        ],
        onTap: tapBottomIcon,
      ),
    );
  }

  void tapBottomIcon(int value) {
    var items = ['Android', 'Heart'];
    setState(() {
      _index = value;
      _message = 'you tapped: "' + items[_index] + '".';
    });
  }
}
