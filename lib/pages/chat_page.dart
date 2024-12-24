import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/chat_buble.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              KLogo,
              height: 50,
            ),
            const Text(
              'Scholar Page',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ChatBuble();
            }),
          ),
          const Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  ),
                ),
                hintText: 'send a message',
                contentPadding: EdgeInsets.all(16),
                suffixIcon: Icon(
                  Icons.send,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
