import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/chat_sender_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/chat_reply_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Anonymous'),
        leading: const Padding(
          // padding: EdgeInsets.all(8),
          padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/b/bb/Anonymous.jpg'),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const ChatReplyBubble()
                    : const ChatSenderBubble();
              },
            )),
            Text('Acá el input'),
          ],
        ),
      ),
    );
  }
}
