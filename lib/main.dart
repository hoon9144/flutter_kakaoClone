import 'package:flutter/material.dart';
import 'package:flutterkakao/screen/comment.dart';
import 'package:flutterkakao/screen/friend_page.dart';
import 'package:flutterkakao/screen/more.dart';

import 'screen/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      title: 'Flutter Demo',
     theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
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
  int _currentIndex = 0;

  final List<Widget> _children = [FriendPage(), Comment(), HashTag(),More()];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black38,
            type: BottomNavigationBarType.fixed,
            onTap: _onTap,
            currentIndex: _currentIndex,
            items: [
               BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(''),
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.mode_comment),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.share),
                title: Text(''),
              ),BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                title: Text(''),
              )

            ]));
  }
}