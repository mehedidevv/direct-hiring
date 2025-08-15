
import 'package:direct_hiring/view/onBoarding_view/messageView/widget/chatWidget.dart';
import 'package:direct_hiring/view/onBoarding_view/messageView/widget/helpWidget.dart';
import 'package:flutter/material.dart';

import '../../../res/appColors/App_Colors.dart';
import '../../../res/appImages/App_images.dart';
import '../../../res/commonWidget/customText.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String selectedTab = "Chat";
  final TextEditingController _messageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      body: SafeArea(
        child: Column(
          children: [
            /// App Bar Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  //Back Icon
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: const Color(0xFFE6F4EA),
                      radius: 25,
                      child: const Icon(Icons.arrow_back, color: Color(0xFF4C4C4C)),
                    ),
                  ),

                  const SizedBox(width: 12),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _tabButton("Chat", isActive: selectedTab == "Chat"),
                        const SizedBox(width: 10),
                        _tabButton("Help", isActive: selectedTab == "Help"),
                      ],
                    ),
                  ),
                  const SizedBox(width: 36),
                ],
              ),
            ),

            const SizedBox(height: 8),

            /// Dynamic Body Section
            Expanded(
              child: selectedTab == "Chat"
                  ? const ChatWidget()
                  : Helpwidget(),
            ),

            /// Bottom Input Field (only for Chat tab)
            if (selectedTab == "Chat") _chatInputField(),


            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }

  /// Tab Button
  Widget _tabButton(String title, {required bool isActive}) {
    String iconPath = title == "Chat"
        ? AppImages.chatIcon
        : AppImages.helpIcon;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = title;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF33A954)),
          borderRadius: BorderRadius.circular(8),
          color: isActive ? const Color(0xFF33A854) : Colors.transparent,
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 20,
              width: 20,
              color: isActive ? Colors.white : AppColors.primaryColor,
            ),
            const SizedBox(width: 4),
            CustomText(
              title: title,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: isActive ? Colors.white : AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  /// Chat Input Field
  Widget _chatInputField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),

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
              child:  Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
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
              )




            ),
          ),
          const SizedBox(width: 12),
          const Icon(Icons.send, size: 24, color: Colors.black),
        ],
      ),
    );
  }

  /// Help Widget
  Widget _helpWidget() {
    return const Center(
      child: Text(
        "Help Section",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
