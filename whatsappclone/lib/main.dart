import 'package:flutter/material.dart';
import 'package:whatsappclone/ChatScreen.dart';
import 'package:whatsappclone/ChatTile.dart';
import 'package:whatsappclone/StatusTile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //   return ChatScreen();
    // }
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
          backgroundColor: Color(0xFF075e54),
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Center(
                  child: Text(
                "Camera",
                style: TextStyle(fontSize: 23),
              )),
            ),
            Container(
                child: ListView(
              children: <Widget>[
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
                ChatTile(),
              ],
            )),
            Container(
              child: Container(
                  child: ListView(
                children: <Widget>[StatusTile(), StatusTile(), StatusTile()],
              )),
            ),
            Container(
              child: Center(
                  child: Text(
                "Calls Screen",
                style: TextStyle(fontSize: 23),
              )),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          onPressed: () {},
          backgroundColor: Colors.green[800],
        ),
      ),
    );
  }
}
