import 'package:flutter/material.dart';

class ChatSenderBubble extends StatelessWidget {
  const ChatSenderBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(left: 35, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Consequat proident sint nisi voluptate pariatur Lorem est elit.',
                style: TextStyle(color: Colors.white)
              ),
            ),
          )
        ]
      ),
    );
  }
}
