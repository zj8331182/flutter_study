import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Column buildButtonColumn(IconData icon, String lable) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              lable,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    Widget titleSection = new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Row(
          children: <Widget>[
            new Expanded(
                child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    "First Title",
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                new Text(
                  "Second Title",
                  style: new TextStyle(color: Colors.grey[500]),
                )
              ],
            )),
            new Icon(
              Icons.star,
              color: Colors.red,
            ),
            new Text("41")
          ],
        ));
    Widget buttonWidget = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, "Call"),
          buildButtonColumn(Icons.mail, "Mail"),
          buildButtonColumn(Icons.message, "Message")
        ],
      ),
    );

    Widget text = new Container(
      margin: EdgeInsets.all(32.0),
      child: new Text(
        '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. 
        Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. 
        A gondola ride from Kandersteg, followed by a half-hour walk through 
        pastures and pine forest, leads you to the lake, which warms to 20 degrees 
        Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    Widget image = new Image.asset(
      'image/test.png',
      width: 600.0,
      height: 240.0,
      fit: BoxFit.cover,
    );

    Widget s = new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo"),
      ),
      body: new ListView(
        children: <Widget>[image, buttonWidget, titleSection, text],
      ),
    );

    MaterialApp materialApp = new MaterialApp(
        title: "Demo",
        theme: new ThemeData(primaryColor: Colors.blue),
        home: s);
    return materialApp;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _counter = 0;

  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    Widget titleSection = new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Row(
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    "First Title",
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                new Text(
                  "Second Title",
                  style: new TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
            new Icon(
              Icons.star,
              color: Colors.red,
            ),
            new Text("41")
          ],
        ));
    return titleSection;
  }
}
