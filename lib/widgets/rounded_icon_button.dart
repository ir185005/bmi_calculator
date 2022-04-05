import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.onPress})
      : super(key: key);
  final IconData icon;

  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        constraints: const BoxConstraints.tightFor(width: 56, height: 56),
        shape: const CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        elevation: 6.0,
        onPressed: onPress);
  }
}
