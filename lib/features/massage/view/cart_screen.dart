import 'package:flutter/material.dart';
import '../model/massage_model.dart';

class MessageScreen extends StatelessWidget {
  final List<Message> messages = [
    Message(
        text: "Customer Not receiving call what can i do?",
        isMe: false,
        time: "8:45am",
        avatarUrl: ''),
    Message(
        text: "okay", isMe: true, time: "8:46am", avatarUrl: ''),
    Message(
        text: "Customer Not receiving call what can i do?",
        isMe: false,
        time: "8:47am",
        avatarUrl: ''),
    Message(
        text: "okay", isMe: true, time: "8:48am", avatarUrl: ''),
  ];

  MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Jacob Bator",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          // 🔹 Date Divider
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const Text(
              "Today, August 12",
              style: TextStyle(color: Colors.grey),
            ),
          ),

          // 🔹 Messages
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: message.isMe
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    // Left side avatar (if not me)
                    if (!message.isMe)
                      const CircleAvatar(child: Icon(Icons.person)),

                    const SizedBox(width: 6),

                    // Chat bubble
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      constraints: BoxConstraints(
                          maxWidth:
                              MediaQuery.of(context).size.width * 0.65),
                      decoration: BoxDecoration(
                        color: message.isMe
                            ? Colors.blue[100]
                            : Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(message.text),
                          const SizedBox(height: 4),
                          Text(
                            message.time,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 6),

                    // Right side avatar (if me)
                    if (message.isMe)
                      const CircleAvatar(child: Icon(Icons.person)),
                  ],
                );
              },
            ),
          ),

          // 🔹 Input Box
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Text Message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text("Send"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
