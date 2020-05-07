import 'package:flutter/material.dart';

class Comment extends StatefulWidget {
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {

  List commentList = [
    {
      "name":"김경태",
      "photo":"images/profile.png",
      "comment":"몇시에 만날깤ㅋ",
      "time":"12:57"
    },
    {
      "name":"이후봉",
      "photo":"images/profile.png",
      "comment":"후프로 오늘 필드나가야지?ㅋㅋ",
      "time":"12:50"
    },
    {
      "name":"빡세",
      "photo":"images/bbak.png",
      "comment":"몇시에 만날깤ㅋ",
      "time":"12:47"
    },
    {
      "name":"김영준",
      "photo":"images/joon.png",
      "comment":"웅이형이랑 홍어조지러 감?ㅋㅋ",
      "time":"12:30"
    },
    {
      "name":"연수형",
      "photo":"images/yeonsoo.png",
      "comment":"짬뽕 ㄱㄱ?",
      "time":"12:27"
    },
    {
      "name":"윤덩",
      "photo":"images/yoon.png",
      "comment":"오늘 사람많았어?",
      "time":"12:12"
    },
    {
      "name":"찐배",
      "photo":"images/jinho.png",
      "comment":"부럽다ㅠㅠㅠㅠㅠ",
      "time":"12:11"
    },
    {
      "name":"광팔",
      "photo":"images/yeom.png",
      "comment":"잘사냐ㅋㅋ",
      "time":"10:57"
    },
    {
      "name":"찌레이",
      "photo":"images/profile.png",
      "comment":"오 엄드래곤",
      "time":"02:51"
    },

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('채팅',style: TextStyle(fontSize: 27),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,size: 25,color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.add_comment,size: 25,color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.music_note,size: 25,color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.settings,size: 25,color: Colors.white,), onPressed: null),
        ],
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: commentList.length,
          itemBuilder: (context , index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(commentList[index]['photo']),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(commentList[index]['name'],style: TextStyle(fontSize: 17),),
                      SizedBox(height: 4,),
                      Text(commentList[index]['comment'],style: TextStyle(fontSize: 14,color: Colors.grey),)
                    ],
                  )
                ],
              ),
              Container(
                child: Text(commentList[index]['time'],style: TextStyle(fontSize: 12,color: Colors.grey),),
              )
            ],
          ),
        );
      }),
    );
  }
}
