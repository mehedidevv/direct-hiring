
import 'package:flutter/material.dart';

import '../../../../res/appImages/App_images.dart';
import '../../../../res/commonWidget/customText.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        children: [

          Align(
            alignment: Alignment.center,
            child: CustomText(
                title: 'Chat',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0XFF545454),
              letterSpacing: 0.2,
            ),
          ),

          Divider(
            color: Color(0XFFB0B0B0),
            thickness: 1,
          ),

          /// Message from Mr. Tan
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

          /// Message from Me
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

          /// Message from Mr. Tan Again
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
          title:   name,
           fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.2,
            color: Color(0XFF4C4C4C),
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
          color: isSender ? Color(0XFF33A954) : const Color(0xFFE6F4EA),
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
              color: isSender ? Colors.white : Color(0xFF3C3C3C),  // Text color change for sender/receiver
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  title: time,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: isSender ? Colors.white70 : Color(0XFF767676),  // Time color change for sender/receiver
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
