import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/screens/widgets/chat/shared/message_field_box.dart';

import '../widgets/chat/her_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://beta.dopple.ai/_next/image?url=https%3A%2F%2Fimagedelivery.net%2FLBWXYQ-XnKSYxbZ-NuYGqQ%2Fa4f4a041-b212-43e3-4574-3d9ec4772c00%2Favatarhd&w=256&q=75'),
          ),
        ),
        title: const Text('Eris mi amorcito ❤️'),
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
                    itemCount: 101,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessageBubble()
                          : const MyMessageBubble();
                    })),

            ///Caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
