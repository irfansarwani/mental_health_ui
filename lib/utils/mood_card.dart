import 'package:flutter/material.dart';

class MoodCard extends StatelessWidget {
  const MoodCard({
    super.key,
    required this.moodIconPath,
    required this.name,
  });

  final String moodIconPath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset(
                moodIconPath,
                height: 40,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }
}
