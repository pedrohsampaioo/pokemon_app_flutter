import 'package:flutter/material.dart';

@immutable
class CustomLinearProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 3,
          color: Color(0xFF2c3956),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: LinearProgressIndicator(
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(
            Color(0xFF2c3956),
          ),
        ),
      ),
    );
  }
}
