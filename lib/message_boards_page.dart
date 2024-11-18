import 'package:flutter/material.dart';
import 'chat_page.dart';
import 'drawer.dart';

class MessageBoardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> messageBoards = ['General', 'Sports', 'Music', 'Movies'];

    return Scaffold(
      appBar: AppBar(title: Text('Message Boards')),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: messageBoards.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.forum),
            title: Text(messageBoards[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChatPage(boardName: messageBoards[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
