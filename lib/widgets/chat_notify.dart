import 'package:flutter/material.dart';

class ChatNotify extends StatelessWidget {
  const ChatNotify({
    super.key,
    required this.number,
    this.boxSize = 30,
    this.color = Colors.red,
  });

  final int number;
  final double boxSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: number > 0,
      child: Container(
        alignment: Alignment.center,
        width: boxSize,
        height: boxSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Text(
          "$number",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
