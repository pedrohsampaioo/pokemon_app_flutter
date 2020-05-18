import 'package:flutter/material.dart';

class SocialNetworkButton extends StatelessWidget {
  final String imagePath;
  final Function action;

  const SocialNetworkButton({
    Key key,
    @required this.imagePath,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 48,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 2,
              color: Color(0xFF2c3956),
            ),
          ),
          child: Image.asset(
            imagePath,
            height: 32,
          ),
        ),
        onTap: action,
      ),
    );
  }
}
