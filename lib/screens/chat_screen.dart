import 'package:chat_app/screens/widgets/msg_account.dart';
import 'package:chat_app/screens/widgets/story_box.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        onlineBox(),
        const SizedBox(
          height: 520, // need to fix as dynamic height
          child: SingleChildScrollView(
            child: Column(children: [
              MsgAccount(
                  name: 'Tiger',
                  msg: "Hey Boy! Are you alive? I am Coming",
                  time: "12:00 PM",
                  imageUrl: 'assets/images/3.jpg',
                  isMuted: false,
                  isSeen: false),
              MsgAccount(
                  name: 'Pagol',
                  imageUrl: 'assets/images/8.jpg',
                  msg: 'Hi, I am good now',
                  time: '1:43 AM',
                  isMuted: true,
                  isSeen: false),
              MsgAccount(
                  name: 'Tuk Tuki',
                  imageUrl: 'assets/images/7.png',
                  msg: 'Bro, The app is working. Thanks!',
                  time: '10:43 AM',
                  isMuted: false,
                  isSeen: true),
              MsgAccount(
                  name: 'Takao',
                  imageUrl: 'assets/images/1.png',
                  msg: 'Sir, Whats the plan for today?',
                  time: '10:43 AM',
                  isMuted: true,
                  isSeen: true),
              MsgAccount(
                  name: 'Baby Man',
                  imageUrl: 'assets/images/9.png',
                  msg: 'Ha ha ha. You mad.',
                  time: '7:03 PM',
                  isMuted: false,
                  isSeen: false),
              MsgAccount(
                  name: 'Mr. Mango',
                  imageUrl: 'assets/images/5.jpg',
                  msg: 'Wow. Its Nice..',
                  time: '7:20 PM',
                  isMuted: true,
                  isSeen: true),
            ]),
          ),
        ),
      ],
    );
  }

  SingleChildScrollView onlineBox() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StoryBox(
            name: "Takao",
            imageUrl: 'assets/images/1.png',
          ),
          StoryBox(
            name: 'Pagol',
            imageUrl: 'assets/images/8.jpg',
          ),
          StoryBox(
            name: 'Tiger',
            imageUrl: 'assets/images/3.jpg',
          ),
          StoryBox(
            name: 'Beluga',
            imageUrl: 'assets/images/7.png',
          ),
          StoryBox(
            name: 'Bandor',
            imageUrl: 'assets/images/10.png',
          ),
        ],
      ),
    );
  }
}
