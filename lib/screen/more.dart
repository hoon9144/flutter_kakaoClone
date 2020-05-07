import 'package:flutter/material.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('더보기', style: TextStyle(fontSize: 27),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, size: 25, color: Colors.white,),
              onPressed: null),
          IconButton(
              icon: Icon(Icons.add_to_queue, size: 25, color: Colors.white,),
              onPressed: null),
          IconButton(
              icon: Icon(Icons.music_note, size: 25, color: Colors.white,),
              onPressed: null),
          IconButton(icon: Icon(Icons.settings, size: 25, color: Colors.white,),
              onPressed: null),
        ],
        elevation: 0.0,
      ),
    );
  }
}