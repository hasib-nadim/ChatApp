import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  const StoryBox({super.key, required this.name, required this.imageUrl});

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage(imageUrl),
          ),
          Text(name, style: const TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    );
  }
}
