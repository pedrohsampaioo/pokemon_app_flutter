import 'package:flutter/material.dart';

class TextWithActionWidget extends StatelessWidget {
  final Function action;
  final Color color;
  final String text;

  const TextWithActionWidget({
    Key key,
    @required this.action,
    @required this.color,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      onTap: action,
    );
  }
}
