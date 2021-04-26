import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final List storyList = [
    {
      "name": "Saleah",
      "imageUrl": "Asset/sa1.jpg",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Mariam",
      "imageUrl": "Asset/sa2.jpg",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Cecil",
      "imageUrl": "Asset/sa3.jpg",
      "isOnline": true,
      "hasStory": false,
    },
    {
      "name": "Thell",
      "imageUrl": "Asset/sa6.jpg",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Gracy",
      "imageUrl": "Asset/sa5.jpg",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Shontelle",
      "imageUrl": "Asset/sa7.jpg",
      "isOnline": false,
      "hasStory": true,
    }
  ];
  final List conversationList = [
    {
      "name": "Saleah",
      "imageUrl": "Asset/sa1.jpg",
      "isOnline": true,
      "hasStory": true,
      "message": "Where are you?",
      "time": "5:00 pm"
    },
    {
      "name": "Mariam",
      "imageUrl": "Asset/sa2.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Hello whats up?",
      "time": "7:00 am"
    },
    {
      "name": "Cecil",
      "imageUrl": "Asset/sa3.jpg",
      "isOnline": true,
      "hasStory": false,
      "message": "I love You too!",
      "time": "6:50 am"
    },
    {
      "name": "Thell",
      "imageUrl": "Asset/sa6.jpg",
      "isOnline": true,
      "hasStory": true,
      "message": "Got to go!! Bye!!",
      "time": "yesterday"
    },
    {
      "name": "Gracy",
      "imageUrl": "Asset/sa5.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Sorry, I forgot!",
      "time": "2nd Feb"
    },
    {
      "name": "Shontelle",
      "imageUrl": "Asset/sa7.jpg",
      "isOnline": false,
      "hasStory": true,
      "message": "No, I won't go!",
      "time": "28th Jan"
    },
    {
      "name": "Julia",
      "imageUrl": "Asset/sa7.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "How are you feeling shedrack?",
      "time": "25th Jan"
    },
    {
      "name": "Pearl",
      "imageUrl": "Asset/sa1.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Hi my name is pearl",
      "time": "15th Jan"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("Asset/sa7.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Findr",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.add_box_rounded),
                  Icon(FontAwesomeIcons.facebookMessenger),
                ],
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextField(
                  cursorColor: Color(0xFF000000),
                  controller: _searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF000000).withOpacity(0.5),
                      ),
                      hintText: "Search for girls",
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 20.0),
              _stories(),
              SizedBox(height: 20),
              _conversations(context)
            ],
          ),
        ),
      ),
    );
  }

  _conversations(BuildContext context) {
    return Column(
      children: List.generate(conversationList.length, (index) {
        return InkWell(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  child: Stack(
                    children: [
                      conversationList[index]['hasStory']
                          ? Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.blueAccent, width: 3),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          conversationList[index]['imageUrl']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      conversationList[index]['imageUrl']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      conversationList[index]['isOnline']
                          ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color(0xFF66BB6A),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Color(0xFFFFFFFF), width: 3),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      conversationList[index]['name'],
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 135,
                      child: Text(
                        conversationList[index]['message'] +
                            " - " +
                            conversationList[index]['time'],
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF000000).withOpacity(0.7)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  _stories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFe9eaec)),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 33,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 75,
                  child: Align(
                    child: Text(
                      "Your Story",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(storyList.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: Stack(
                        children: [
                          storyList[index]['hasStory']
                              ? Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 3,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Container(
                                      width: 75,
                                      height: 75,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            storyList[index]['imageUrl'],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          storyList[index]['imageUrl']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                          storyList[index]['isOnline']
                              ? Positioned(
                                  top: 38,
                                  left: 42,
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF66BB6A),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Color(0xFF66BB6A), width: 3),
                                      )),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 70,
                      child: Align(
                        child: Text(
                          storyList[index]['name'],
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
