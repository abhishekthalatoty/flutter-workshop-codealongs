import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor;
  String hexCode;
  @override
  initState() {
    backgroundColor = getRandomColor();
    hexCode = backgroundColor.toString().substring(10, 16);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Generate Colors"),
        ),
        body: Builder(
            builder: (context) => Container(
                width: MediaQuery.of(context).size.width,
                color: backgroundColor,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Tooltip(
                        child: FlatButton(
                          color: Colors.white,
                          child: Text(
                            "the hex value is " + hexCode,
                            style: TextStyle(fontSize: 22),
                          ),
                          onPressed: () {
                            var snackBar = SnackBar(
                              content: Text(
                                  "Voila! you have copied the code : " +
                                      hexCode),
                            );

                            Scaffold.of(context).showSnackBar(snackBar);
                            Clipboard.setData(
                                ClipboardData(text: "hexcode: " + hexCode));

                            print("Flat Button is pressed.");
                          },
                        ),
                        message:
                            "Please click this button to copy the hexvalue",
                      ),
                      Padding(
                        child: RaisedButton(
                          child: Text(
                            "Generate Colors",
                            style: TextStyle(fontSize: 18),
                          ),
                          onPressed: () {
                            setState(() {
                              backgroundColor = getRandomColor();
                              hexCode =
                                  backgroundColor.toString().substring(10, 16);
                            });

                            print(backgroundColor.toString());
                            print("Raised Button is pressed.");
                          },
                        ),
                        padding: EdgeInsets.only(top: 40),
                      )
                    ],
                  ),
                ))));
  }

  Color getRandomColor() {
    var random = Random();
    int randomRed = random.nextInt(255);
    int randomGreen = random.nextInt(255);
    int randomBlue = random.nextInt(255);

    Color generatedColor =
        Color.fromARGB(255, randomRed, randomGreen, randomBlue);

    return generatedColor;
  }
}
