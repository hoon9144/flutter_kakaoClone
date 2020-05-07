import 'package:flutter/material.dart';

class HashTag extends StatefulWidget {
  @override
  _HashTagState createState() => _HashTagState();
}

class _HashTagState extends State<HashTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('',style: TextStyle(fontSize: 27),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,size: 25,color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.group_add,size: 25,color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.music_note,size: 25,color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.settings,size: 25,color: Colors.white,), onPressed: null),
        ],
        elevation: 0.0,
      ),
    );
  }
}
