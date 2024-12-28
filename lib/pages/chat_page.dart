import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/widgets/chat_buble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  CollectionReference messages =
      FirebaseFirestore.instance.collection(KMessagesCollections);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(KCreatedAt).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
          }
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
                  child: ListView.builder(
                      itemCount: messagesList.length,
                      itemBuilder: (context, index) {
                        return ChatBuble(
                          message: messagesList[index],
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages.add({
                        KMessage: data,
                        KCreatedAt: DateTime.now(),
                      });
                      controller.clear();
                    },
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
        } else {
          return const Text('Loading...');
        }
      },
    );
  }
}
