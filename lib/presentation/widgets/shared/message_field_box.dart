import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final OutlineInputBorder inputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final InputDecoration inputDecoration = InputDecoration(
      filled: true,
      hintText: 'Message',
      enabledBorder: inputBorder,
      focusedBorder: inputBorder,
      disabledBorder: inputBorder,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          textController.clear();
        },
      ),
    );

    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },
      // onTapOutside: (event) => focusNode.unfocus(),
    );
  }
}
