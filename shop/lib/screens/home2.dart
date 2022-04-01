import 'package:flutter/material.dart';

class home2 extends StatelessWidget {
  _getCard({String path = "./images/Grocery.png", String text = "Popular Items"}) {
      if (path[0] == 'h') {
        return Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Image(image: NetworkImage(path), height: 105, width: 130),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,5,0,5),
                child: Text(text.toUpperCase()),
              )
            ],
          ),
        );
      }
      else{
        return Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Image(image: AssetImage(path), height: 115, width: 170),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,5,0,5),
                child: Text(text.toUpperCase()),
              )
            ],
          ),
        );
      }
  }
  @override
  Widget build(BuildContext bt) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 5)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 18, 5, 18),
        child: Container(
          child: Column(
        
            children: [
              Row(
                children: [
                  Expanded(
                    child: _getCard(
                          path: "https://thumbs.dreamstime.com/b/lots-groceries-17001094.jpg",
                          text: "Popular Items"
                          ),
                  ),
                  Expanded(child: _getCard(
                          path: "https://thumbs.dreamstime.com/b/lots-groceries-17001094.jpg",
                          text: "Popular Items"
                          )),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _getCard(
                          path: "https://thumbs.dreamstime.com/b/lots-groceries-17001094.jpg",
                          text: "Popular Items"
                          ),),
                  Expanded(child: _getCard(
                          path: "https://thumbs.dreamstime.com/b/lots-groceries-17001094.jpg",
                          text: "Popular Items"
                          ),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _getCard(
                          path: "https://thumbs.dreamstime.com/b/lots-groceries-17001094.jpg",
                          text: "Popular Items"
                          ),),
                  Expanded(child: _getCard(
                          path: "https://thumbs.dreamstime.com/b/lots-groceries-17001094.jpg",
                          text: "Popular Items"
                          ),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: _getCard(
                          path: "https://thumbs.dreamstime.com/b/lots-groceries-17001094.jpg",
                          text: "Popular Items"
                          ),),
                  Expanded(child: _getCard(
                          path: "https://thumbs.dreamstime.com/b/lots-groceries-17001094.jpg",
                          text: "Popular Items"
                          ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
