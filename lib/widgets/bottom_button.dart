import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.text, required this.onPress})
      : super(key: key);
  final String text;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(child: Text(text)),
        color: redContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: redContainerHeight,
      ),
    );
  }
}
