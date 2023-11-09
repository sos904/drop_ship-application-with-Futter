import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('chat with Admin'),
        backgroundColor: Color.fromARGB(255, 73, 247, 30),
        elevation: 0,
      ),
      body: Tawk(
        directChatLink:
            'https://tawk.to/chat/64644bb2ad80445890ed5f5e/1h0jsfd21',
        visitor: TawkVisitor(
          name: 'Customer',
          email: 'example@email.com',
        ),
        onLoad: () {
          print('');
        },
        onLinkTap: (String url) {
          print(url);
        },
        placeholder: const Center(
          child: Text('loading....'),
        ),
      ),
    );
  }
}
