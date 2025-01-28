import 'package:flutter/material.dart';

class ChatReceiverBubble extends StatelessWidget {
  const ChatReceiverBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(right: 35, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    'hola',
                    style: TextStyle(color: Colors.white),
                  ),
                  _ChatImageBubble()
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}

class _ChatImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        width: size.width * 0.7,
        height: 200,
        fit: BoxFit.cover,
        'https://yesno.wtf/assets/yes/14-b57c6dc03aa15a4b18f53eb50d6197ee.gif'
      ),
    );
  }
}