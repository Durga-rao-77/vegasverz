import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  String buttonName;
  Function() onTap;
  Button({required this.buttonName, required this.onTap, super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      child: Text(widget.buttonName),
    );
  }
}
