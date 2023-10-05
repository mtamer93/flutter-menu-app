import 'package:flutter/material.dart';
import 'package:simple_ui_design_speedcoding/subPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Discovery',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          height: MediaQuery.of(context).size.height,
          color: Colors.grey.shade300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('beer', 'Bars & Hotels', '42 Place'),
                    getExpanded('cuisine', 'Fine Dining', '15 Place'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('cafe', 'Cafes', '28 Place'),
                    getExpanded('tracking', 'Nearby', '34 Place'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('dining', 'Fast Foods', '29 Place'),
                    getExpanded('fast-food', 'Featured Foods', '21 Place'),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.pin_drop)),
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ]));
  }

  Expanded getExpanded(String image, String mainText, String subText) {
    return Expanded(
      child: TextButton(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/$image.png',
                  height: 80.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  mainText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  subText,
                  style: TextStyle(fontSize: 10.0),
                ),
              ],
            ),
          ),
          margin:
              EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(),
            ],
          ),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.all(0),
          ),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SubPage(mainText)));
        },
      ),
    );
  }
}
