import 'package:flutter/material.dart';

class ClosePageIconWidget extends StatelessWidget {
  final Function action;

  const ClosePageIconWidget({
    Key key,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.close),
      color: Color(0xFF2c3956),
      iconSize: 28,
      onPressed: action,
    );
  }
}
