import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      elevation: 6,
      constraints: BoxConstraints(
        minWidth: 56.0,
        minHeight: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
  }
}
