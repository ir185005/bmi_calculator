import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.cardName, required this.icon})
      : super(key: key);
  final String cardName;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(height: 15.0),
        Text(
          cardName,
          style: cardTextStyle,
        ),
      ],
    );
  }
}
