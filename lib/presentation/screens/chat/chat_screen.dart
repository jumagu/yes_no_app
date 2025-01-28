import 'package:flutter/material.dart';

import 'package:yes_no_app/presentation/widgets/chat/chat_reply_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/chat_sender_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Anonymous'),
        leading: const Padding(
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
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                    ? const ChatReplyBubble()
                    : const ChatSenderBubble();
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: MessageFieldBox(),
          ),
        ],
      ),
    );
  }
}
