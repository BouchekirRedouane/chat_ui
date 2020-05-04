import 'package:chat_ui/Models/Message.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ChatPageState();
  }
}

class ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.yellow[600], //change your color here
        ),
        title: new Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(
                60.0,
              ),
              child: Image(
                height: 30.0,
                width: 30.0,
                image: AssetImage('images/surf.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            new SizedBox(
              width: 10,
            ),
            new Text(
              'Surf Craw',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.phone,
              color: Colors.yellow,
              size: 30,
            ),
            onPressed: () {
              setState(() {});
            },
          ),
          IconButton(
            icon: Icon(
              Icons.video_call,
              color: Colors.yellow,
              size: 30,
            ),
            onPressed: () {
              setState(() {});
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: new Container(
          color: Colors.white,
          child: new Column(
            children: <Widget>[
              _ChatContent(),
              _buildMessageComposer(),
            ],
          )),
    );
  }

  Widget _ChatContent() {
    return new Expanded(
        child: new ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        final Message = chats[index];
        if (Message.sender.id == 0) {
          //Case of current user
          return _CurrentUserMessageWidget(Message);
        }
        return _RecievedMessageWidget(Message);
      },
    ));
  }

  Widget _CurrentUserMessageWidget(Message message) {
    return new Container(
      padding: EdgeInsets.all(10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                width: MediaQuery.of(context).size.width * 0.65,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: new Text(
                  message.text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              )
            ],
          ),
          SizedBox(
            width: 5,
          ),
          new CircleAvatar(
            radius: 8,
            backgroundImage: AssetImage(message.sender.imageUrl),
          ),
        ],
      ),
    );
  }

  Widget _RecievedMessageWidget(Message message) {
    return new Container(
      padding: EdgeInsets.all(10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          new CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(message.sender.imageUrl),
          ),
          SizedBox(
            width: 5,
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(left: 5, bottom: 3),
                child: new Text(
                  message.sender.name,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.65,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: new Text(
                  message.text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.8, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: new Row(
        children: <Widget>[
          Icon(
            Icons.border_all,
            color: Colors.green[400],
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.green[400],
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.photo,
            color: Colors.green[400],
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.mic,
            color: Colors.green[400],
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          new Expanded(
              child: Container(
            height: 35,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Aa",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.person_pin,
                      color: Colors.green[400],
                      size: 30,
                    ),
                    onPressed: () {
                      print('Message...');
                    },
                    iconSize: 30.0,
                  )),
            ),
          )),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.check_circle,
            color: Colors.green[400],
            size: 30,
          ),
        ],
      ),
    );
  }
}
