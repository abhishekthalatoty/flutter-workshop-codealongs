import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:whatsappclone/ChatScreen.dart';

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    List<StoryItem> items = [
      StoryItem.text(
          title: "Taddaa our story view!", backgroundColor: Colors.red),
      StoryItem.text(
          title: "Taddaa our story view 2!", backgroundColor: Colors.red),
      StoryItem.text(
          title: "Taddaa our story view 3!", backgroundColor: Colors.red),
    ];
    return StoryView(
      storyItems: items,
      controller: controller,
      repeat: false,
      onComplete: () {
        Navigator.pop(context);
      },
      onVerticalSwipeComplete: (direction) {
        if (direction == Direction.up) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatScreen()));
        } else if (direction == Direction.down) {
          Navigator.pop(context);
        }
      },
    );
  }
}
