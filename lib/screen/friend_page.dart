import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {

  List list = [
    {
      "name" : "김경태",
      "photo":"images/profile.png"
    },
    {
      "name" : "김인정,윤향숙,최지수,최진화,Anne",
      "photo":"images/group.png"
    },
    {
      "name" : "리더연석",
      "photo":"images/yeonse.png"
    },
    {
      "name" : "아이소이",
      "photo":"images/isoi.png"
    },
    {
      "name" : "광호찡",
      "photo":"images/yeom.png"
    },
    {
      "name" : "찐배",
      "photo":"images/jinho.png"
    },
    {
      "name" : "윤덩",
      "photo":"images/yoon.png"
    },{
      "name" : "이후봉",
      "photo":"images/profile.png"
    },
    {
      "name" : "유주환",
      "photo":"images/profile.png"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            '친구',
            style: TextStyle(fontSize: 27),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.person_add,
                  size: 25,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.music_note,
                  size: 25,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 25,
                  color: Colors.white,
                ),
                onPressed: null),
          ],
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[myAccount(), birthDay(),favorites(),friendList()],
              ),
            ),
          ),
        );
  }

  Widget myAccount() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: 65,
                  height: 65,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQrI9M8Y7vq1naHrQHMhlcnLoKHa7ipgTLAjHhV45dOTXncS1cK&usqp=CAU'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  '정훈',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey[900],
          )
        ],
      ),
    );
  }

  Widget birthDay() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('생일인 친구'),
              InkWell(onTap: () => null, child: Icon(Icons.keyboard_arrow_down))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 45,
                    height: 45,
                    child: CircleAvatar(
                        backgroundImage: AssetImage('images/birth.png')),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '친구의 생일을 확인해 보세요!',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '3',
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.right,
                  ),
                  InkWell(
                      onTap: () => null,
                      child: Icon(Icons.keyboard_arrow_right))
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey[900],
          )
        ],
      ),
    );
  }


  Widget favorites(){
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('즐겨찾기'),
          InkWell(onTap: () => null, child: Icon(Icons.keyboard_arrow_down))
        ],
      ),
    );
  }

  Widget friendList(){
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (BuildContext context , int index){
        return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('${list[index]['photo']}'),
        ),title: Text('${list[index]['name']}'),
      );
    });
  }


}
