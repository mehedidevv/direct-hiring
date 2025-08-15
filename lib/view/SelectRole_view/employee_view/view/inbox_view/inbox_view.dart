import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:flutter/material.dart';
import '../../../../../res/appImages/App_images.dart';
import '../../../../../res/commonWidget/customText.dart';

class InboxView extends StatefulWidget {
  const InboxView({super.key});

  @override
  State<InboxView> createState() => _InboxViewState();
}

class _InboxViewState extends State<InboxView> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // AppBar could be added here if needed
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: ListView(
            children: [
              _chatHeader("Mr. Tan", AppImages.chatProfile),
              _chatBubble(
                text: "Lorem ipsum dolor sit amet consectetur. Donec et et odio in.",
                time: "10:10",
                isSender: false,
              ),
              _chatBubble(
                text: "Lorem ipsum dolor sit amet consectetur. Donec et et odio in.",
                time: "10:10",
                isSender: false,
              ),
              _chatBubble(
                text: "Lorem ipsum dolor sit amet consectetur. Donec et et odio in.",
                time: "10:15",
                isSender: true,
              ),
              _chatBubble(
                text: "Lorem ipsum dolor sit amet consectetur. Donec et et odio in.",
                time: "10:15",
                isSender: true,
              ),
              _chatHeader("Mr. Tan", AppImages.chatProfile),
              _chatBubble(
                text: "Lorem ipsum dolor sit amet consectetur. Donec et et odio in.",
                time: "10:20",
                isSender: false,
              ),
              _chatBubble(
                text: "Lorem ipsum dolor sit amet consectetur. Donec et et odio in.",
                time: "10:20",
                isSender: false,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _chatInputField(),
    );
  }

  /// Chat Input Field
  Widget _chatInputField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, -1),
            blurRadius: 6,
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.add, size: 24, color: Colors.black),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFE6F4EA),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [

                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      cursorColor: Color(0xFF3C3C3C),
                      decoration: const InputDecoration(
                        hintText: "Type Message",
                        hintStyle: TextStyle(
                          color: Color(0xFF3C3C3C),
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const Icon(Icons.emoji_emotions_outlined, color: Colors.black),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              // Handle send here
              print("Send: ${_messageController.text}");
              _messageController.clear();
            },
            child: const Icon(Icons.send, size: 24, color: Colors.black),
          ),
        ],
      ),
    );
  }

  /// Chat Header
  Widget _chatHeader(String name, String avatarPath) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundImage: AssetImage(avatarPath),
          ),
          const SizedBox(width: 8),
          CustomText(
            title: name,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.2,
            color: const Color(0XFF4C4C4C),
          ),
        ],
      ),
    );
  }

  /// Chat Bubble
  Widget _chatBubble({
    required String text,
    required String time,
    required bool isSender,
  }) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        constraints: const BoxConstraints(maxWidth: 280),
        decoration: BoxDecoration(
          color: isSender ? const Color(0XFF33A954) : const Color(0xFFE6F4EA),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft: Radius.circular(isSender ? 16 : 0),
            bottomRight: Radius.circular(isSender ? 0 : 16),
          ),
        ),
        child: Column(
          crossAxisAlignment:
          isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            CustomText(
              title: text,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.2,
              color: isSender ? Colors.white : const Color(0xFF3C3C3C),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  title: time,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: isSender ? Colors.white70 : const Color(0XFF767676),
                  letterSpacing: 0.2,
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.done_all,
                  size: 14,
                  color: isSender ? Colors.white70 : const Color(0xFF767676),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
