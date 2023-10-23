import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
  const Emojis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final texts = ['Love', 'Cool', 'Happy', 'Sad'];

    return Wrap(
      spacing: 30.0, 
      children: List.generate(
          4, (index) => EmojisItem(index: index, text: texts[index])),
    );
  }
}

class EmojisItem extends StatelessWidget {
  final int index;
  final String text;

  EmojisItem({required this.index, required this.text});

  @override
  Widget build(BuildContext context) {
    String emojiImagePath = 'assets/images/emoji$index.png';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xffE4E7EC),
            image: DecorationImage(image: AssetImage(emojiImagePath)),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        SizedBox(height: 8), 
        Text(
          text, 
          style: TextStyle(
            fontSize: 14, 
            fontWeight: FontWeight.w500, 
          ),
        ),
      ],
    );
  }
}
